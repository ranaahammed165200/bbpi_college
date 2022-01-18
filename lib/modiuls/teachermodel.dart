class TeacherModel { 

   int? id;
  String? name;
  String? img;
  String? education;

   TeacherModel({
    this.id,this.name, this.img, this.education
  });
 TeacherModel.fromJson(Map<String, dynamic> json){
      this.id = json['id'];
      this.name = json['name'];
  }

  
}