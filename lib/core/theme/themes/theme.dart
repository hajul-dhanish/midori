// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

String interFontFamily = "Inter";

abstract class AppTheme {
  static AppTheme of(BuildContext context) {
    return LightModeTheme();
  }

  late Color primaryColor;
  late Color secondaryColor;
  late Color secondaryColorPlus;
  late Color tertiaryColor;
  late Color tertiaryColorPlus;
  late Color alternate;
  late Color primaryBackground;
  late Color secondaryBackground;
  late Color primaryText;
  late Color secondaryText;
  late Color otpBoxBorderColor;
  late Color positiveColor;
  late Color negativeColor;
  late Color productPageColor;
  late Color offerPageColor;
  late Color blackwithMinOppac;
  late Color brandPageColor;
  late Color productTxtColor;
  late Color productTxtColor1;
  late Color whiteColor;
  late Color blackColor;
  late Color lineThroughColor;
  late Color myBasketPageColor;
  late Color cartUnAvailableProdColor;
  late Color addressPlaceHolderColor;
  late Color dashGreenColor;
  late Color lightGrayColor;
  late Color profileBGColor;
  late Color recentlyViewedBGColor;
  late Color miniCard;
  late Color showCount;
  late Color FOCColor;

  String get title1Family => typography.title1Family;
  TextStyle get title1 => typography.title1;
  String get title2Family => typography.title2Family;
  TextStyle get title2 => typography.title2;
  String get title3Family => typography.title3Family;
  TextStyle get title3 => typography.title3;
  String get subtitle1Family => typography.subtitle1Family;
  TextStyle get subtitle1 => typography.subtitle1;
  String get subtitle2Family => typography.subtitle2Family;
  TextStyle get subtitle2 => typography.subtitle2;
  String get bodyText1Family => typography.bodyText1Family;
  TextStyle get bodyText1 => typography.bodyText1;
  String get bodyText2Family => typography.bodyText2Family;
  TextStyle get bodyText2 => typography.bodyText2;

  Typography get typography => ThemeTypography(this);
}

class LightModeTheme extends AppTheme {
  // late Color primaryColor = const Color.fromRGBO(213, 125, 67, 1);
  late Color primaryColor = const Color(0xFFf48320);
  late Color secondaryColor = const Color.fromRGBO(251, 239, 231, 1);
  late Color tertiaryColor = const Color(0xFFF1F4F6);
  late Color alternate = const Color(0xFF37308B);
  late Color primaryBackground = const Color(0xFFF1F4F8);
  late Color secondaryBackground = const Color(0xFFFFFFFF);
  late Color primaryText = const Color(0xFF000000);
  late Color secondaryText = const Color(0xFFA7A7A7);
  late Color otpBoxBorderColor = const Color.fromARGB(255, 169, 169, 169);
  late Color positiveColor = const Color(0xFF008001);
  late Color negativeColor = const Color(0XFFE12121);
  late Color whiteColor = const Color(0xFFFFFFFF);
  late Color secondaryColorPlus = const Color.fromARGB(255, 255, 215, 180);
  late Color blackColor = const Color(0xFF000000);
  late Color productPageColor = const Color(0xFFD9CB18);
  late Color offerPageColor = const Color.fromARGB(255, 216, 18, 18);
  late Color blackwithMinOppac = const Color(0xFFDDDDDD);
  late Color brandPageColor = const Color(0xFF007FA0);
  late Color tertiaryColorPlus = const Color.fromARGB(255, 204, 204, 204);
  late Color productTxtColor = const Color(0xFFA7A7A7);
  late Color productTxtColor1 = const Color(0xFFABABAB);
  late Color lineThroughColor = const Color(0xFF9E9E9E);
  late Color myBasketPageColor = const Color(0xFF4fb4a2);
  late Color cartUnAvailableProdColor = const Color(0xFF777777);
  late Color addressPlaceHolderColor = const Color(0xFF999999);
  late Color dashGreenColor = const Color(0xFF83B51D);
  late Color lightGrayColor = const Color(0xFFeeeeee);
  late Color profileBGColor = const Color(0xFFECEDEE);
  late Color recentlyViewedBGColor = const Color(0xFFF5F6F8);
  late Color miniCard = const Color(0xFF36308D);
  late Color showCount = const Color(0xFFA1A1A1);
  late Color FOCColor = const Color(0xFFF48320);
}

abstract class Typography {
  String get title1Family;
  TextStyle get title1;
  String get title2Family;
  TextStyle get title2;
  String get title3Family;
  TextStyle get title3;
  String get subtitle1Family;
  TextStyle get subtitle1;
  String get subtitle2Family;
  TextStyle get subtitle2;
  String get bodyText1Family;
  TextStyle get bodyText1;
  String get bodyText2Family;
  TextStyle get bodyText2;
}

class ThemeTypography extends Typography {
  ThemeTypography(this.theme);

  final AppTheme theme;

  String get title1Family => interFontFamily;
  TextStyle get title1 => GoogleFonts.getFont(
        interFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      );
  String get title2Family => interFontFamily;
  TextStyle get title2 => GoogleFonts.getFont(
        interFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 20,
      );
  String get title3Family => interFontFamily;
  TextStyle get title3 => GoogleFonts.getFont(
        interFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
  String get subtitle1Family => interFontFamily;
  TextStyle get subtitle1 => GoogleFonts.getFont(
        interFontFamily,
        color: const Color(0xFFA7A7A7),
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );
  String get subtitle2Family => interFontFamily;
  TextStyle get subtitle2 => GoogleFonts.getFont(
        interFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 12,
      );
  String get bodyText1Family => interFontFamily;
  TextStyle get bodyText1 => GoogleFonts.getFont(
        interFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 14,
      );
  String get bodyText2Family => interFontFamily;
  TextStyle get bodyText2 => GoogleFonts.getFont(
        interFontFamily,
        color: theme.primaryText,
        fontWeight: FontWeight.w600,
        fontSize: 14,
      );
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String? fontFamily,
    Color? color,
    double? fontSize,
    FontWeight? fontWeight,
    double? letterSpacing,
    FontStyle? fontStyle,
    bool useGoogleFonts = true,
    TextDecoration? decoration,
    double? lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily = "Inter",
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              letterSpacing: letterSpacing ?? this.letterSpacing,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              letterSpacing: letterSpacing,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
