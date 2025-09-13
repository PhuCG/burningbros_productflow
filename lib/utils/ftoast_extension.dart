import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

extension ToastExtension on BuildContext {
  void showToast(
    Widget child, {
    int duration = 2,
    ToastGravity gravity = ToastGravity.BOTTOM,
  }) {
    final fToast = FToast()..init(this);
    fToast.removeCustomToast();

    final Widget toast = GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () => fToast.removeCustomToast(),
      child: IntrinsicHeight(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            color: Colors.black87,
            borderRadius: BorderRadius.circular(8),
          ),
          child: child,
        ),
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: gravity,
      toastDuration: Duration(seconds: duration),
    );
  }
}
