import 'package:flutter/cupertino.dart';
import 'package:flutter_chart/ui/main_item.dart';

class MainTitleItem extends MainItem {
  MainTitleItem(
    this.title
  );
  final String title;

  @override
  Widget itemContent() => Text(
    title
  );
}