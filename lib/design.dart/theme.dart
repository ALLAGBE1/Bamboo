import 'package:bamboo/design.dart/bamboo_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// THEMES
enum ThemeState { light, dark }

ThemeData getTheme(ThemeState state) {
  late BambooColors bambooColors;
  late ThemeData theme;

  if (state == ThemeState.dark) {
    bambooColors = lightbambooColors;
    theme = ThemeData.light();
  } else {
    bambooColors = lightbambooColors;
    theme = ThemeData.light();
  }

  return theme.copyWith(
    //Commenter
    // primaryColor: bambooColors.toshoPurple,
    // scaffoldBackgroundColor: bambooColors.white,
    // dialogBackgroundColor: Colors.transparent,

    // TEXTFIELD
    // inputDecorationTheme: InputDecorationTheme(
    //   filled: true,
    //   fillColor: bambooColors.backgroundActionDefault!.withAlpha(26),
    //   focusColor: bambooColors.backgroundActionFocus!.withAlpha(26),
    //   disabledBorder: const OutlineInputBorder(borderSide: BorderSide.none),
    //   focusedBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(8.0),
    //     borderSide:
    //         BorderSide(color: bambooColors.borderActionFocus!, width: 1.5),
    //   ),
    //   enabledBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(8.0),
    //     borderSide:
    //         BorderSide(color: bambooColors.borderActionDefault!, width: 1.5),
    //   ),
    //   errorBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(8.0),
    //     borderSide:
    //         BorderSide(color: bambooColors.borderStaticError!, width: 1.5),
    //   ),
    //   focusedErrorBorder: OutlineInputBorder(
    //     borderRadius: BorderRadius.circular(8.0),
    //     borderSide:
    //         BorderSide(color: bambooColors.borderActionFocusError!, width: 1.5),
    //   ),
    //   floatingLabelBehavior: FloatingLabelBehavior.never,
    //   floatingLabelAlignment: FloatingLabelAlignment.start,
    // ),

    // textButtonTheme: TextButtonThemeData(
    //   style: ButtonStyle(
    //     textStyle: MaterialStatePropertyAll(
    //       //TODO : fix this with constant and permanent textStyles with proper names
    //       GoogleFonts.montserrat(
    //         fontWeight: FontWeight.w400,
    //         fontSize: 17,
    //         color: bambooColors.textStaticDefaultInversed,
    //         height: 1.29,
    //         letterSpacing: -0.4,
    //       ),
    //     ),
    //     foregroundColor: MaterialStatePropertyAll(
    //       bambooColors.textStaticDefaultInversed,
    //       // ),
    //       // foregroundColor: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
    //       //   if (states.contains(MaterialState.disabled)) {
    //       //     return bambooColors.cadetGray!.withAlpha(26);
    //       //   }
    //       //   if (states.contains(MaterialState.hovered)) {
    //       //     return bambooColors.toshoPurple!;
    //       //   }
    //       //   if (states.contains(MaterialState.pressed)) {
    //       //     return bambooColors.toshoPurple!;
    //       //   }
    //       //   if (states.contains(MaterialState.focused)) {
    //       //     return bambooColors.toshoPurple!;
    //       //   }
    //       //   return bambooColors.toshoPurple!;
    //       // }),
    //     ),
    //   ),
    // ),

    //Commenter
    //LOADER
    // progressIndicatorTheme: ProgressIndicatorThemeData(
    //   color: toshoColors.toshoPurple,
    // ),

    // // CHECKBOX
    // checkboxTheme: CheckboxThemeData(
    //   shape: OutlinedBorder(
    //     side: BorderSide(color: toshoColors.toshoBorderPurple!, width: 1.5),
    //       borderRadius: BorderRadius.circular(4.0),
    //       borderSide: BorderSide(color: toshoColors.systemRed!, width: 1.5)),
    // ),

    // // ELEVATED BUTTON
    // elevatedButtonTheme: ElevatedButtonThemeData(
    //   style: ButtonStyle(

    //   )
    // ),

    //Commenter
    // TABBAR THEME
    // tabBarTheme: TabBarTheme(
    //   //TODO : Change to static textstyles
    //   unselectedLabelStyle: GoogleFonts.montserrat(
    //     fontWeight: FontWeight.w600,
    //     fontSize: 15,
    //     color: toshoColors.oxfordBlue,
    //     height: 1.33,
    //     letterSpacing: -0.24,
    //   ),
    //   labelStyle: GoogleFonts.montserrat(
    //     fontWeight: FontWeight.w600,
    //     fontSize: 15,
    //     color: toshoColors.oxfordBlue,
    //     height: 1.33,
    //     letterSpacing: -0.24,
    //   ),
    //   labelColor: toshoColors.cadetGray,
    //   unselectedLabelColor: toshoColors.cadetGray,
    //   indicator: ShapeDecoration(
    //     color: toshoColors.white,
    //     shape: RoundedRectangleBorder(
    //       borderRadius: BorderRadius.circular(100),
    //     ),
    //   ),
    //   indicatorSize: TabBarIndicatorSize.tab,
    //   labelPadding: const EdgeInsets.symmetric(horizontal: 21, vertical: 4),
    // ),

    extensions: <ThemeExtension<dynamic>>[
      bambooColors,
    ],
  );
}

// THEME PROVIDERS
final themeProvider = Provider((ref) {
  final isLight = ref.watch(toggleThemeProvider);
  return isLight ? getTheme(ThemeState.light) : getTheme(ThemeState.light);
});

final toggleThemeProvider = StateProvider<bool>((ref) {
  return true;
});
