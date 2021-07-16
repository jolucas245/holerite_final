import 'package:get/get_navigation/get_navigation.dart';
import 'package:holerite/app/ui/screens/initial_page.dart';
import 'package:holerite/app/ui/screens/pdf_page.dart';

import 'app_routes.dart';

class AppPages{
  static final routes = [
    GetPage(
      name: Routes.INITIAL,
      page: () => InitialPage(),
    ),
    GetPage(
      name: Routes.PDFPAGE,
      page: () => PdfPage(),
    ),
  ];
}