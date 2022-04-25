import 'dart:io';
import 'package:flutter_core_null_safety_2/core/abstarct/constant/core_common_contant.dart';
import 'package:meta/meta.dart';
import 'package:investlink_mobile/config/theme.dart';

String getBiometricImageResource({
  required bool useFaceID,
  required bool useTouchID,
}) {
  /// TODO return image path
  return CoreConstant.empty;
/*  if (Platform.isIOS) {
    if (useFaceID) {
      return AppImage.icFace;
    } else if (useTouchID) {
      return AppImage.icFinger;
    } else {
      return CoreConstant.empty;
    }
  } else if (Platform.isAndroid) {
    return AppImage.icFingerFace;
  } else {
    return CoreConstant.empty;
  }*/
}
