import 'package:flutter/material.dart';
import '../core.dart';

enum SizeText { size12, size13, size14, size15, size16, size17, size18, size19, size20, size21, size22, size23, size24, size25, size26, size27 }

extension SizeInt on SizeText {
  double getSizeInt() {
    switch (this) {
      case SizeText.size12:
        return 12;
      case SizeText.size13:
        return 13;
      case SizeText.size14:
        return 14;
      case SizeText.size15:
        return 15;
      case SizeText.size16:
        return 16;
      case SizeText.size17:
        return 17;
      case SizeText.size18:
        return 18;
      case SizeText.size19:
        return 19;
      case SizeText.size20:
        return 20;
      case SizeText.size21:
        return 21;
      case SizeText.size22:
        return 22;
      case SizeText.size23:
        return 23;
      case SizeText.size24:
        return 24;
      case SizeText.size25:
        return 25;
      case SizeText.size26:
        return 26;
      case SizeText.size27:
        return 27;
    }
  }
}

class AppTextStyle {
  /// /////////////////////////////////////////////Bold////////////////////////////////////////////////

  static TextStyle bold({SizeText sizeText = SizeText.size18}) {
    bool isDark = sl<AppSharedPrefs>().getIsDarkTheme();
    if (isDark) {
      return TextStyle(fontFamily: "MyriadPro", fontWeight: FontWeight.bold, fontSize: sizeText.getSizeInt(), color: AppColors.primaryColorDark);
    }
    return TextStyle(fontFamily: "MyriadPro", fontWeight: FontWeight.bold, fontSize: sizeText.getSizeInt(), color: AppColors.primaryColorLight);
  }

  /// /////////////////////////////////////////////SmiBold////////////////////////////////////////////////

  static TextStyle smiBold({SizeText sizeText = SizeText.size18}) {
    bool isDark = sl<AppSharedPrefs>().getIsDarkTheme();
    if (isDark) {
      return TextStyle(fontFamily: "MyriadPro", fontWeight: FontWeight.w600, fontSize: sizeText.getSizeInt(), color: AppColors.primaryColorDark);
    }
    return TextStyle(fontFamily: "MyriadPro", fontWeight: FontWeight.w600, fontSize: sizeText.getSizeInt(), color: AppColors.primaryColorLight);
  }

  /// /////////////////////////////////////////////Med////////////////////////////////////////////////

  static TextStyle med({SizeText sizeText = SizeText.size18}) {
    bool isDark = sl<AppSharedPrefs>().getIsDarkTheme();
    if (isDark) {
      return TextStyle(fontFamily: "MyriadPro", fontWeight: FontWeight.w500, fontSize: sizeText.getSizeInt(), color: AppColors.primaryColorDark);
    }
    return TextStyle(fontFamily: "MyriadPro", fontWeight: FontWeight.w500, fontSize: sizeText.getSizeInt(), color: AppColors.primaryColorLight);
  }

  /// /////////////////////////////////////////////Regular////////////////////////////////////////////////

  static TextStyle regular({SizeText sizeText = SizeText.size18}) {
    bool isDark = sl<AppSharedPrefs>().getIsDarkTheme();
    if (isDark) {
      return TextStyle(fontFamily: "MyriadPro", fontSize: sizeText.getSizeInt(), color: AppColors.primaryColorDark);
    }
    return TextStyle(fontFamily: "MyriadPro", fontSize: sizeText.getSizeInt(), color: AppColors.primaryColorLight);
  }
}

final BorderRadius basicBorderRadius = BorderRadius.circular(7);

class AppColors {
  static const Color primaryColorLight = Color({{primaryColor}});
  static const Color primaryColorDark = Color({{primaryColor}});
  static const Color secondaryColorLight = Color({{secondaryColor}});
  static const Color secondaryColorDark = Color({{secondaryColor}});
  static const Color backgroundColorLight = Color({{backgroundColor}});
  static const Color backgroundColorDark = Color({{backgroundColor}});
  static const Color secondaryBackgroundColorLight = Color({{backgroundColor}});
  static const Color secondaryBackgroundColorDark = Color({{backgroundColor}});

  static const Color transparent = Colors.transparent;
  static const Color white = Color(0xFFFFFFFF);
  static const Color lineGrey = Color(0xFF343243);
  static const Color black = Color(0xFF000000);
  static const Color primaryGrey = Color(0xFF8D8F92);
  static const Color secondaryGrey = Color(0xFFB6B0AA);
  static const Color subscriptionGray = Color(0xFF999999);
  static const Color darkGray = Color(0xFF2A2D30);
  static const Color greenColor = Color(0xFF00CA2C);
  static const Color redColor = Color(0xFFD54848);
  static const Color lightGrey = Color(0xFF9CA1C2);
}
