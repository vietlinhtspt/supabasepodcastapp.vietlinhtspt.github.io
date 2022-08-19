import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../ui/popups/m3_popup.dart';

Future supabaseCallAPI(
  BuildContext context, {
  required Function function,
}) async {
  try {
    await function();
  } on GoTrueException catch (e, stacktrace) {
    await showM3Popup(context, descriptions: e.message, title: 'Lỗi');
    debugPrint(stacktrace.toString());
  } catch (e, stacktrace) {
    await showM3Popup(context,
        descriptions: 'Lỗi không xác định', title: 'Lỗi');
    debugPrint(stacktrace.toString());
  }
}