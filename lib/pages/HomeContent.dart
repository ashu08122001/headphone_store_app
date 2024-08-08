class Homecontent {
  String image;
  String title;
  String descrption;
  String description;
  String price;

  Homecontent(
      {required this.title,
      required this.image,
      required this.price,
      required this.descrption,
      required this.description});
}

List<Homecontent> homeContents = [
  Homecontent(
      image: "assets/images/Headphone_1.png",
      title: "SONY WH-CH720N",
      price: "\$100",
      descrption: "Active Noise Cancelling",
      description: 'Soon'),
  Homecontent(
      image: "assets/images/Headphone_2.png",
      title: "boAt BassHeads",
      price: "\$80",
      descrption: "900 Wired Headset",
      description: 'Soon'),
  Homecontent(
      image: "assets/images/Headphone_3.png",
      title: "boAt Nirvanaa 751",
      price: "\$40",
      descrption: "Active Noise Cancellation",
      description: 'Soon'),
  Homecontent(
      image: "assets/images/Headphone_4.png",
      title: "Logitech H-111",
      price: "\$20",
      descrption: "Wired Headset",
      description:
          'the Logitech H390 USB Computer Headset is an ideal choice. It comes with a long cord that allows you to comfortably attend extended calls. And, this headset provides enhanced digital audio for gaming, music, and phone conversations, thanks to its laser-tuned drivers. Besides, this plug-and-play headset works with any PC or Mac computer, eliminating the need for software installation.'),
  Homecontent(
      image: "assets/images/Headphone_5.png",
      title: "ZEBRONICS Zeb",
      price: "\$45",
      descrption: "ZEBRONICS Zeb",
      description: 'Soon'),
  Homecontent(
      image: "assets/images/Headphone_6.png",
      title: "JBL Tune 520",
      price: "\$40",
      descrption: "With 57Hr Playtime",
      description: 'Soon'),
  Homecontent(
      image: "assets/images/Headphone_7.png",
      title: "Boat Rockerz",
      price: "\$30",
      descrption: "Bass Boosted Headphone",
      description: 'Soon'),
  Homecontent(
      image: "assets/images/Headphone_8.png",
      title: "Noise TWO",
      price: "\$10",
      descrption: "50 Hours Playtime",
      description: 'Soon'),
];
