class OnBoardingModel {
  final List<String> labels;
  final String imgUrl;

  OnBoardingModel({required this.labels, required this.imgUrl});
}

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    imgUrl: "assets/onboarding/onboard1.png",
    labels: ["Find people that ", "get your vibe ", "and don't judge"],
  ),
  OnBoardingModel(
    imgUrl: "assets/onboarding/onboard2.png",
    labels: ["Meet the new people ", "that share your interest ", ""],
  ),
  OnBoardingModel(
    imgUrl: "assets/onboarding/onboard3.png",
    labels: ["Participate in events"," and get ", "recommendations ", ""],
  ),
];
