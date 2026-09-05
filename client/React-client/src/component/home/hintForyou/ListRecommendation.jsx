import { memo } from "react";
import CardLoading from "../../shared/CardLoading";
import ProductCard from "../../shared/ProductCard";
import { useFetch } from "../../../hook/useFeach";
import { fetchRecommendations } from "../../../api/home";

function ListRecommendation({ dataaos }) {
  const { fetchedData } = useFetch(fetchRecommendations, []);

  return (
    <>
      {!fetchedData ? (
        <>
          <CardLoading />
          <CardLoading />
          <CardLoading />
          <CardLoading />
        </>
      ) : (
        <>
          {fetchedData?.length > 0 ? (
            fetchedData.map((item, index) => (
              <ProductCard
                key={item.id}
                product={item}
                delay={index}
                dataaos={dataaos}
              />
            ))
          ) : (
            <p className="col-span-full text-center py-10 text-gray-500">
              Không có gợi ý nào cho bạn lúc này.
            </p>
          )}
        </>
      )}
    </>
  );
}

export default memo(ListRecommendation);
