// ignore_for_file: overridden_fields, annotate_overrides

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class FlutterFlowTheme {
  static FlutterFlowTheme of(BuildContext context) => LightModeTheme();

  Color primaryColor;
  Color secondaryColor;
  Color tertiaryColor;
  Color alternate;
  Color primaryBackground;
  Color secondaryBackground;
  Color primaryText;
  Color secondaryText;

  Color white;
  Color grayBG;
  Color darkBG;
  Color primaryBlack;
  Color primaryBtnText;
  Color lineColor;

  TextStyle get title1 => GoogleFonts.getFont(
        'Outfit',
        color: primaryBtnText,
        fontWeight: FontWeight.w500,
        fontSize: 34,
      );
  TextStyle get title2 => GoogleFonts.getFont(
        'Outfit',
        color: primaryText,
        fontWeight: FontWeight.w300,
        fontSize: 28,
      );
  TextStyle get title3 => GoogleFonts.getFont(
        'Outfit',
        color: primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 20,
      );
  TextStyle get subtitle1 => GoogleFonts.getFont(
        'Outfit',
        color: primaryText,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      );
  TextStyle get subtitle2 => GoogleFonts.getFont(
        'Inter',
        color: primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 16,
      );
  TextStyle get bodyText1 => GoogleFonts.getFont(
        'Inter',
        color: primaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
  TextStyle get bodyText2 => GoogleFonts.getFont(
        'Inter',
        color: secondaryText,
        fontWeight: FontWeight.normal,
        fontSize: 14,
      );
}

class LightModeTheme extends FlutterFlowTheme {
  Color primaryColor = const Color(0xFF3951D2);
  Color secondaryColor = const Color(0xFF252496);
  Color tertiaryColor = const Color(0xFFFFA077);
  Color alternate = const Color(0xFFF3F7FD);
  Color primaryBackground = const Color(0xFFEFF7F5);
  Color secondaryBackground = const Color(0xFFFFFFFF);
  Color primaryText = const Color(0xFFDEDADA);
  Color secondaryText = const Color(0xFF57636C);

  Color white = Color(0xFFFFFFFF);
  Color grayBG = Color(0xFFDBE2E7);
  Color darkBG = Color(0xFF1A1F24);
  Color primaryBlack = Color(0xFF131619);
  Color primaryBtnText = Color(0xFFFFFFFF);
  Color lineColor = Color(0xFFE0E3E7);
}

extension TextStyleHelper on TextStyle {
  TextStyle override({
    String fontFamily,
    Color color,
    double fontSize,
    FontWeight fontWeight,
    FontStyle fontStyle,
    bool useGoogleFonts = true,
    TextDecoration decoration,
    double lineHeight,
  }) =>
      useGoogleFonts
          ? GoogleFonts.getFont(
              fontFamily,
              color: color ?? this.color,
              fontSize: fontSize ?? this.fontSize,
              fontWeight: fontWeight ?? this.fontWeight,
              fontStyle: fontStyle ?? this.fontStyle,
              decoration: decoration,
              height: lineHeight,
            )
          : copyWith(
              fontFamily: fontFamily,
              color: color,
              fontSize: fontSize,
              fontWeight: fontWeight,
              fontStyle: fontStyle,
              decoration: decoration,
              height: lineHeight,
            );
}
