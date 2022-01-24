class AdressModel {
  int? id;
  String? street;
  String? suite;
  String? city;
  String? zipcode;

  AdressModel({this.id, this.street, this.suite, this.city, this.zipcode});
  AdressModel.fromJson(Map<String, dynamic> json) {
    this.id = json['id'];
     this.street = json['street'];
      this.suite = json['suite'];
       this.city = json['city'];
        this.zipcode = json['zipcode'];  
  }
}
