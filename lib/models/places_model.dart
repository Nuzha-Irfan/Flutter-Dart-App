class placesmodel{

  final String name;
  final String image;
  final String shortDescription;
  final String description;
  final String place;

  placesmodel({required this.name, required this.place, required this.shortDescription, required this.image,required this.description});
  factory placesmodel.fromJson(Map<String,dynamic>json)=>placesmodel(
      name: json['name'],
      place: json['place'],
      shortDescription: json['short-detail'],
      image: json['image'],
      description: json['desc']);

}

/*List<placesmodel> listOfPlaces=[
  placesmodel(name: "EiffelTower",
      Description:"The tower was built by Gustave Eiffel’s civil engineering firm in two years,two months, and five days, using 7,500 tons of iron and 2.5 million rivets.The end result of Eiffel’s hard work dominates the Parisian skyline and its stark silhouette has been emulated around the world in China, Las Vegas, Greece, and, of course, Paris, Texas. Since opening in 1889, the Tower has welcomed over 300 million people and still welcomes almost seven million visitors a year. Despite the incredible number of people who have walked up the iron tower, there are still secrets to tell about it.,",
      place: "Paris",
      shortDescription:"The tower was built by Gustave Eiffel’s civil engineering firm in two years,two months,",
      image:"https://i.imgur.com/CyuN0bm.jpeg"),
  
  placesmodel(name: "Twelve Apostle",
      Description: "Their proximity to one another has made the site a popular tourist attraction. Seven of the original eight stacks remain standing at the Twelve Apostles viewpoint, after one collapsed in July 2005.[1] Though the view from the promontory by the Twelve Apostles never included twelve stacks, additional stacks—not considered part of the Apostles group—are located to the west within the national park.",
      place: "Australia",
      shortDescription:"Their proximity to one another has made the site a popular tourist attraction.",
      image: "https://i.imgur.com/CyuN0bm.jpeg"),

  placesmodel(name: "Sigirya",
      Description:"The capital and the royal palace were abandoned after the king's death. It was used as a Buddhist monastery until the 14th century.[3] Sigiriya today is a UNESCO listed World Heritage Site. It is one of the best preserved examples of ancient urban planning.The environment around the Sigiriya may have been inhabited since prehistoric times. There is clear evidence that the many rock shelters and caves in the vicinity were occupied by Buddhist monks and ascetics from as early as the 3rd century BC. The earliest evidence of human habitation at Sigiriya is the Aligala rock shelter to the east of Sigiriya rock, indicating that the area was occupied nearly five thousand years ago during the Mesolithic Period",
      place:"Sri Lanka",
      shortDescription:"The capital and the royal palace were abandoned after the king's death.",
      image: "https://i.imgur.com/CyuN0bm.jpeg")
  
];*/
