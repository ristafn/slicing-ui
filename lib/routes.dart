import 'package:flutter/material.dart';

import 'features/animated_container/views/animated_container_page.dart';
import 'features/counter_bloc/views/counter_page.dart';
import 'features/cupertino_widget/views/cupertino_widget_page.dart';
import 'features/dialog_widget/views/dialog_widget_page.dart';
import 'features/form/views/form_page.dart';
import 'features/home/view/home_page.dart';
import 'features/incremental_number/views/increment_page.dart';
import 'features/list_builder/views/list_builder_page.dart';
import 'features/list_separator/views/list_separator_page.dart';
import 'features/modal_bottom_sheet/views/modal_bottom_page.dart';
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
  static const statefulRoute = '/stateful';
  static const formRoute = '/form';
  static const downRoute = '/bottom';
  static const listBuilderRoute = '/list_builder';
  static const listSeparatorRoute = '/list_separator';
  static const pageViewRoute = '/page_view';
  static const counterBlocRoute = '/counter_bloc';
  static const animatedContainerRoute = '/animated_container';

  static const List<String> pages = [
    incrementRoute,
    slicingRoute,
    parseRoute,
    cupertinoRoute,
    dialogRoute,
    statefulRoute,
    formRoute,
    downRoute,
    listBuilderRoute,
    listSeparatorRoute,
    pageViewRoute,
    counterBlocRoute,
    animatedContainerRoute,
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
      counterBlocRoute: (context) => const CounterPage(),
      animatedContainerRoute: (context) => const AnimatedContainerPage(),
    };
  }
}
