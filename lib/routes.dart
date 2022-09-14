import 'package:flutter/material.dart';
import 'package:flutter_application_1/features/form/views/form_page.dart';
import 'package:flutter_application_1/features/modal_bottom_sheet/views/modal_bottom_page.dart';

import 'features/cupertino_widget/views/cupertino_widget_page.dart';
import 'features/dialog_widget/views/dialog_widget_page.dart';
import 'features/home/view/home_page.dart';
import 'features/incremental_number/views/increment_page.dart';
import 'features/list_builder/views/list_builder_page.dart';
import 'features/list_separator/views/list_separator_page.dart';
import 'features/page_view/views/page_view_page.dart';
import 'features/simple_parse/views/parse_page.dart';
import 'features/slicing_ui/views/slicingui_page.dart';
import 'features/stateful_state/views/stateful_page.dart';

class Routes {
  static const homeRoute = '/';
  static const incrementRoute = '/increment';
  static const slicingRoute = '/slicing';
  static const parseRoute = '/parse';
  static const cupertinoRoute = '/cupertino';
  static const dialogRoute = '/dialog';
  static const formRoute = '/form';
  static const downRoute = '/down';
  static const statefulRoute = '/stateful';
  static const listBuilderRoute = '/list_builder';
  static const listSeparatorRoute = '/list_separator';
  static const pageViewRoute = '/page_view';

  static const List<String> pages = [
    incrementRoute,
    slicingRoute,
    parseRoute,
    cupertinoRoute,
    dialogRoute,
    formRoute,
    downRoute,
    statefulRoute,
    listBuilderRoute,
    listSeparatorRoute,
    pageViewRoute,
  ];

  static Map<String, Widget Function(BuildContext)> route() {
    return {
      homeRoute: (context) => const HomePage(),
      incrementRoute: (context) => const IncrementPage(),
      slicingRoute: (context) => const SlicingUIPage(),
      parseRoute: (context) => const ParsePage(),
      cupertinoRoute: (context) => const CupertinoWidgetPage(),
      dialogRoute: (context) => const DialogWidgetPage(),
      formRoute: (context) => const FormPage(),
      downRoute: (context) => const ModalBottomPage(),
      statefulRoute: (context) => const StatefulPage(),
      listBuilderRoute: (context) => const ListBuilderPage(),
      listSeparatorRoute: (context) => const ListSeparatorPage(),
      pageViewRoute: (context) => const PageViewPage(),
    };
  }
}
