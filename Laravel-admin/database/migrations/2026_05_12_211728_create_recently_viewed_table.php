public function up()
{
    Schema::create('recently_viewed', function (Blueprint $table) {
        $table->id();
        $table->unsignedBigInteger('user_id')->nullable(); // Có thể null nếu khách chưa đăng nhập
        $table->unsignedBigInteger('product_id');
        $table->timestamps();
    });
}