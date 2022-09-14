import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/features/form/views/form_page.dart';

import 'const/routes.dart';
import 'features/cupertino_widget/views/cupertino_widget_page.dart';
import 'features/dialog_widget/views/dialog_widget_page.dart';
import 'features/home/view/home_page.dart';
import 'features/incremental_number/views/increment_page.dart';
import 'features/simple_parse/views/parse_page.dart';
import 'features/slicing_ui/views/slicingui_page.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> route() {
    return {
      homeRoute: (context) => const HomePage(),
      incrementRoute: (context) => const IncrementPage(),
      '/slicing': (context) => const SlicingUIPage(),
      parseRoute: (context) => const ParsePage(),
      cupertinoRoute: (context) => const CupertinoWidgetPage(),
      dialogRoute: (context) => const DialogWidgetPage(),
      formRoute: (context) => const FormPage(),
    };
  }
}
