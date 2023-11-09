import 'package:flutter/material.dart';
import 'package:ameentaccetelecom/presentation/welcomeone_screen/welcomeone_screen.dart';
import 'package:ameentaccetelecom/presentation/welcomthree_screen/welcomthree_screen.dart';
import 'package:ameentaccetelecom/presentation/splash_screen/splash_screen.dart';
import 'package:ameentaccetelecom/presentation/welcometwo_screen/welcometwo_screen.dart';
import 'package:ameentaccetelecom/presentation/signup_screen/signup_screen.dart';
import 'package:ameentaccetelecom/presentation/verifyemail_screen/verifyemail_screen.dart';
import 'package:ameentaccetelecom/presentation/log_in_screen/log_in_screen.dart';
import 'package:ameentaccetelecom/presentation/passreset_screen/passreset_screen.dart';
import 'package:ameentaccetelecom/presentation/home_page_container_screen/home_page_container_screen.dart';
import 'package:ameentaccetelecom/presentation/settings_page_screen/settings_page_screen.dart';
import 'package:ameentaccetelecom/presentation/services_page_screen/services_page_screen.dart';
import 'package:ameentaccetelecom/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String welcomeoneScreen = '/welcomeone_screen';

  static const String welcomthreeScreen = '/welcomthree_screen';

  static const String splashScreen = '/splash_screen';

  static const String welcometwoScreen = '/welcometwo_screen';

  static const String signupScreen = '/signup_screen';

  static const String verifyemailScreen = '/verifyemail_screen';

  static const String logInScreen = '/log_in_screen';

  static const String passresetScreen = '/passreset_screen';

  static const String homePageContainerScreen = '/home_page_container_screen';

  static const String homePageContainer1Page = '/home_page_container1_page';

  static const String settingsPageScreen = '/settings_page_screen';

  static const String servicesPageScreen = '/services_page_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        welcomeoneScreen: WelcomeoneScreen.builder,
        welcomthreeScreen: WelcomthreeScreen.builder,
        splashScreen: SplashScreen.builder,
        welcometwoScreen: WelcometwoScreen.builder,
        signupScreen: SignupScreen.builder,
        verifyemailScreen: VerifyemailScreen.builder,
        logInScreen: LogInScreen.builder,
        passresetScreen: PassresetScreen.builder,
        homePageContainerScreen: HomePageContainerScreen.builder,
        settingsPageScreen: SettingsPageScreen.builder,
        servicesPageScreen: ServicesPageScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: SplashScreen.builder
      };
}
