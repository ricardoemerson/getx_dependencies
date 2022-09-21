import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MiddlewareBinding extends GetMiddleware {
  @override
  List<Bindings>? onBindingsStart(List<Bindings>? bindings) {
    debugPrint('onBindingsStart: $bindings');

    return super.onBindingsStart(bindings);
  }

  @override
  GetPageBuilder? onPageBuildStart(GetPageBuilder? page) {
    debugPrint('onPageBuildStart: $page');

    return super.onPageBuildStart(page);
  }
}
