import 'bloc/home_page_container_bloc.dart';
import 'models/home_page_container_model.dart';
import 'package:ameentaccetelecom/core/app_export.dart';
import 'package:ameentaccetelecom/presentation/home_page_container1_page/home_page_container1_page.dart';
import 'package:ameentaccetelecom/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomePageContainerScreen extends StatelessWidget {
  HomePageContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomePageContainerBloc>(
        create: (context) => HomePageContainerBloc(HomePageContainerState(
            homePageContainerModelObj: HomePageContainerModel()))
          ..add(HomePageContainerInitialEvent()),
        child: HomePageContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageContainerBloc, HomePageContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA70001,
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.homePageContainer1Page,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              })));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePageContainer1Page;
      case BottomBarEnum.Services2:
        return "/";
      case BottomBarEnum.History2:
        return "/";
      case BottomBarEnum.Setting:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePageContainer1Page:
        return HomePageContainer1Page.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
