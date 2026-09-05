import Card from "../shared/Card";
import Heading from "../shared/Heading";
import ListRecommendation from "./hintForyou/ListRecommendation";

export default function PersonalizedRecommendation() {
  return (
    <Card>
      <Heading headingName="Gợi ý riêng cho bạn" />
      <div className="grid grid-cols-2 gap-1 pt-4 sm:gap-5 sm:pt-8 md:pt-10 lg:grid-cols-4 xl:grid-cols-4">
        <ListRecommendation dataaos="fade-up" />
      </div>
    </Card>
  );
}
