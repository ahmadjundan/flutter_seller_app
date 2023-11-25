import 'package:flutter/material.dart';

import 'dimensions.dart';

const titilliumRegular = TextStyle(
  fontFamily: 'Sdk',
  fontSize: Dimensions.fontSizeSmall,
);
const titleRegular = TextStyle(
  fontFamily: 'Sdk',
  fontWeight: FontWeight.w500,
  fontSize: Dimensions.fontSizeDefault,
);
const titleHeader = TextStyle(
  fontFamily: 'Sdk',
  fontWeight: FontWeight.w600,
  fontSize: Dimensions.fontSizeLarge,
);
const titilliumSemiBold = TextStyle(
  fontFamily: 'Sdk',
  fontSize: Dimensions.fontSizeSmall,
  fontWeight: FontWeight.w600,
);

const titilliumBold = TextStyle(
  fontFamily: 'Sdk',
  fontSize: Dimensions.fontSizeDefault,
  fontWeight: FontWeight.w700,
);
const titilliumItalic = TextStyle(
  fontFamily: 'Sdk',
  fontSize: Dimensions.fontSizeDefault,
  fontStyle: FontStyle.italic,
);

const robotoRegular = TextStyle(
  fontFamily: 'Sdk',
  fontSize: Dimensions.fontSizeDefault,
);

const robotoBold = TextStyle(
  fontFamily: 'Sdk',
  fontSize: Dimensions.fontSizeDefault,
  fontWeight: FontWeight.w700,
);

const robotoMedium = TextStyle(
  fontFamily: 'Sdk',
  fontSize: Dimensions.fontSizeDefault,
  fontWeight: FontWeight.w500,
);

class ThemeShadow {
  static List<BoxShadow> getShadow(BuildContext context) {
    List<BoxShadow> boxShadow = [
      BoxShadow(
          color: Theme.of(context).primaryColor.withOpacity(.2),
          blurRadius: 5,
          spreadRadius: 1,
          offset: const Offset(1, 1))
    ];
    return boxShadow;
  }
}