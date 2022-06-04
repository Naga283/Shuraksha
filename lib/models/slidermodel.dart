class SliderModel {
  String? image;
  String? text;
  String? altText;
  String? bAltText;
  String? productImage;
  int? kBackgroundColor;

  SliderModel(this.image, this.text, this.altText, this.bAltText,
      this.productImage, this.kBackgroundColor);

  SliderModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    kBackgroundColor = json['kBackgroundColor'];
    text = json['text'];
    altText = json['altText'];
    bAltText = json['bAltText'];
    productImage = json['productImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['kBackgroundColor'] = this.kBackgroundColor;
    data['text'] = this.text;
    data['altText'] = this.altText;
    data['bAltText'] = this.bAltText;
    data['productImage'] = this.productImage;
    return data;
  }
}

List<SliderModel> slides =
    slideData.map((item) => SliderModel.fromJson(item)).toList();

var slideData = [
  {
    "image": "assests/images/slider1.jpg",
    "kBackgroundColor": 0xFF2c614f,
    "text": "",
    "altText": "",
    "bAltText": "",
   "productImage": "assests/images/100.png"
  },
  { 
    "image": "assests/images/slider2.jpg",
    "kBackgroundColor": 0xFF8a1a4c,
    "text": "",
    "altText": "",
    "bAltText":
        "",
    "productImage": "assests/images/slider3.jpg"
  },
  {
    "image": "assests/images/slider3.jpg",
    "kBackgroundColor": 0xFF0ab3ec,
    "text": "",
    "altText":
        "",
    "bAltText":
        "",
    "productImage": "assests/images/100.png"
  }
];
