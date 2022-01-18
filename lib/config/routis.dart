import 'package:bbpi_college/screen/department_details_view.dart';
import 'package:bbpi_college/screen/homepage.dart';



class AppRoutes {
  static final myInitRoute = AppConstant.homePage;
  static final routes = {
    AppConstant.homePage: (context) => const HomePage(),
    AppConstant.department: (context) => const DepartmentDetails(),
    
   
  };
}

class AppConstant {
  static var homePage;

  static var department;
}