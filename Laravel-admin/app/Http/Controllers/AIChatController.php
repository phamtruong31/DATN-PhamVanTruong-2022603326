<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Http;

class AIChatController extends Controller
{
    public function chat(Request $request)
    {
        $userMessage = trim($request->input('message', ''));
        $apiKey = env('GEMINI_API_KEY');

        if (!$userMessage) {
            return response()->json([
                'reply' => 'Bạn hãy nhập câu hỏi nhé.'
            ], 400);
        }

        if (!$apiKey) {
            return response()->json([
                'reply' => 'Chưa cấu hình GEMINI_API_KEY.'
            ], 500);
        }

        /*
        |--------------------------------------------------------------------------
        | 1. Xác định câu hỏi có liên quan đến sản phẩm/shop hay không
        |--------------------------------------------------------------------------
        */

        $productKeywords = [
            'laptop',
            'máy tính',
            'sản phẩm',
            'máy',
            'asus',
            'acer',
            'lenovo',
            'dell',
            'hp',
            'msi',
            'apple',
            'macbook',
            'gigabyte',
            'microsoft',
            'huawei',
            'lg',
            'fujitsu',
            'giá',
            'bao nhiêu',
            'triệu',
            'còn hàng',
            'tồn kho',
            'stock',
            'ram',
            'ssd',
            'hdd',
            'cpu',
            'intel',
            'amd',
            'ryzen',
            'core i3',
            'core i5',
            'core i7',
            'core i9',
            'card',
            'gpu',
            'rtx',
            'gtx',
            'màn hình',
            'inch',
            'gaming',
            'văn phòng',
            'giảm giá',
            'khuyến mãi',
            'sale',
            'flash sale',
            'shop',
            'website',
            'thương hiệu'
        ];

        $lowerMessage = mb_strtolower($userMessage);

        $isProductQuestion = false;

        foreach ($productKeywords as $keyword) {
            if (str_contains($lowerMessage, mb_strtolower($keyword))) {
                $isProductQuestion = true;
                break;
            }
        }

        /*
        |--------------------------------------------------------------------------
        | 2. Nếu là câu hỏi về sản phẩm -> lấy dữ liệu thật từ database
        |--------------------------------------------------------------------------
        */

        $productContext = '';

        if ($isProductQuestion) {

            $query = Product::with([
                'brand',
                'productVariants',
                'attribute',
                'discount',
                'sub_category'
            ])
            ->where('status', '>', 0);

            /*
            |--------------------------------------------------------------------------
            | Tìm theo từ khóa trong tên / mô tả / thương hiệu
            |--------------------------------------------------------------------------
            */

            $searchTerms = preg_split('/\s+/', $userMessage);

            $searchTerms = array_filter($searchTerms, function ($term) {
                return mb_strlen($term) >= 2;
            });

            if (!empty($searchTerms)) {
                $query->where(function ($q) use ($searchTerms) {

                    foreach ($searchTerms as $term) {

                        $term = trim($term);

                        $q->orWhere('name', 'LIKE', "%{$term}%")
                            ->orWhere('description', 'LIKE', "%{$term}%")
                            ->orWhereHas('brand', function ($brandQuery) use ($term) {
                                $brandQuery->where('name', 'LIKE', "%{$term}%");
                            })
                            ->orWhereHas('attribute', function ($attributeQuery) use ($term) {
                                $attributeQuery
                                    ->where('key', 'LIKE', "%{$term}%")
                                    ->orWhere('value', 'LIKE', "%{$term}%");
                            });
                    }
                });
            }

            /*
            |--------------------------------------------------------------------------
            | Giới hạn kết quả để không gửi quá nhiều dữ liệu cho Gemini
            |--------------------------------------------------------------------------
            */

            $products = $query
                ->orderBy('import_date', 'desc')
                ->limit(10)
                ->get();

            /*
            |--------------------------------------------------------------------------
            | Nếu tìm được sản phẩm -> tạo context cho Gemini
            |--------------------------------------------------------------------------
            */

            if ($products->count() > 0) {

                $productData = [];

                foreach ($products as $product) {

                    $variants = [];

                    foreach ($product->productVariants as $variant) {

                        $variants[] = [
                            'option' => $variant->option,
                            'price' => $variant->price,
                            'stock' => $variant->stock,
                        ];
                    }

                    $attributes = [];

                    foreach ($product->attribute as $attribute) {

                        $attributes[] = [
                            'key' => $attribute->key,
                            'value' => $attribute->value,
                        ];
                    }

                    $discount = null;

                    if ($product->discount) {
                        $discount = [
                            'name' => $product->discount->name,
                            'description' => $product->discount->description,
                            'value' => $product->discount->value,
                            'time_start' => $product->discount->time_start,
                            'time_end' => $product->discount->time_end,
                        ];
                    }

                    $productData[] = [
                        'id' => $product->id,
                        'name' => $product->name,

                        'brand' => $product->brand
                            ? $product->brand->name
                            : null,

                        'category' => $product->sub_category
                            ? $product->sub_category->name
                            : null,

                        'description' => $product->description,

                        'variants' => $variants,

                        'attributes' => $attributes,

                        'discount' => $discount,
                    ];
                }

                $productContext = json_encode(
                    $productData,
                    JSON_UNESCAPED_UNICODE | JSON_PRETTY_PRINT
                );

            } else {

                $productContext = 'Không tìm thấy sản phẩm phù hợp trong cơ sở dữ liệu.';
            }
        }

        /*
        |--------------------------------------------------------------------------
        | 3. Context chung của website
        |--------------------------------------------------------------------------
        */

        $websiteContext = "
Bạn là trợ lý AI của website thương mại điện tử TMDT.

Thông tin website:
- Website chuyên bán laptop.
- Frontend sử dụng React.
- Backend sử dụng Laravel.
- Website có danh sách sản phẩm.
- Có tìm kiếm sản phẩm.
- Có xem chi tiết sản phẩm.
- Có giỏ hàng.
- Có sản phẩm yêu thích.
- Có đặt hàng và thanh toán.
- Có tài khoản người dùng.
- Có đánh giá sản phẩm.

Bạn có thể trả lời:
- Các câu hỏi thông thường.
- Các câu hỏi về laptop.
- Các câu hỏi về công nghệ và lập trình.
- Các câu hỏi liên quan đến website TMDT.

QUY TẮC QUAN TRỌNG:

1. Nếu câu hỏi liên quan đến dữ liệu sản phẩm của website,
hãy ưu tiên sử dụng dữ liệu sản phẩm được cung cấp bên dưới.

2. Không được tự bịa:
- tên sản phẩm
- giá
- tồn kho
- thương hiệu
- cấu hình
- chương trình giảm giá

3. Nếu dữ liệu sản phẩm không được cung cấp hoặc không tìm thấy,
hãy nói rõ rằng hiện chưa tìm thấy dữ liệu phù hợp trong cơ sở dữ liệu.

4. Nếu người dùng hỏi câu hỏi thông thường không liên quan đến shop,
hãy trả lời bình thường bằng kiến thức của Gemini.

5. Luôn trả lời bằng tiếng Việt.

6. Trả lời tự nhiên, dễ hiểu, không cần nói rằng bạn đang truy vấn database.

7. Nếu có nhiều sản phẩm phù hợp, có thể trình bày thành danh sách.

8. Khi nói về giá, hãy dùng đúng giá được cung cấp trong dữ liệu.

9. Khi nói về tồn kho:
- stock > 0: có thể nói sản phẩm còn hàng.
- stock = 0: nói hết hàng.
- Không được tự đoán số lượng nếu không có dữ liệu.

10. Nếu người dùng hỏi gợi ý laptop,
hãy dựa trên các sản phẩm thực tế được cung cấp thay vì tự tạo sản phẩm.
";

        /*
        |--------------------------------------------------------------------------
        | 4. Tạo prompt gửi Gemini
        |--------------------------------------------------------------------------
        */

        $prompt = $websiteContext;

        if ($isProductQuestion) {

            $prompt .= "

DỮ LIỆU SẢN PHẨM THỰC TẾ TỪ DATABASE:

" . $productContext;
        }

        $prompt .= "

CÂU HỎI CỦA NGƯỜI DÙNG:

" . $userMessage;

        /*
        |--------------------------------------------------------------------------
        | 5. Gọi Gemini
        |--------------------------------------------------------------------------
        */

        try {

            $response = Http::timeout(60)
                ->retry(3, 1000)
                ->post(
                    "https://generativelanguage.googleapis.com/v1beta/models/gemini-3.6-flash:generateContent?key={$apiKey}",
                    [
                        'contents' => [
                            [
                                'parts' => [
                                    [
                                        'text' => $prompt
                                    ]
                                ]
                            ]
                        ]
                    ]
                );

            if ($response->successful()) {

                $data = $response->json();

                $aiReply =
                    $data['candidates'][0]['content']['parts'][0]['text']
                    ?? 'Xin lỗi, tôi chưa hiểu rõ câu hỏi.';

                return response()->json([
                    'reply' => $aiReply
                ]);
            }

            return response()->json([
                'reply' => 'Gemini API lỗi: ' . $response->body()
            ], 500);

        } catch (\Exception $e) {

            return response()->json([
                'reply' => 'Không thể kết nối tới hệ thống AI. Vui lòng thử lại sau.'
            ], 500);
        }
    }
}