class OnboardContent{
  String image;
  String title;
  String description;

  OnboardContent({required this.image,required this.title,required this.description});
}

List<OnboardContent> contents=[
  OnboardContent(
      image:"assets/images/onboard_original.png" ,
      title: "Select a Headphone that \n Fits You 🎧",
      description: "Silence the world & turn up \n the music"
  ),

  OnboardContent(
      image:"assets/images/onboard_2.png" ,
      title: "Give Music vibes to Your \n ears 🎵",
      description: "Tuning out the world , tuning in to \n your favorite tunes"
  ),

  OnboardContent(
      image:"assets/images/onboard_3.png" ,
      title: "Cash on Delivery Accepted 💸",
      description: "Silence the world & turn \n up the music"
  )
];