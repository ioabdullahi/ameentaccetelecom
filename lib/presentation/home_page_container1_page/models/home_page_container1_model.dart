// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'listellipsefour_item_model.dart';

/// This class defines the variables used in the [home_page_container1_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomePageContainer1Model extends Equatable {
  HomePageContainer1Model({this.listellipsefourItemList = const []});

  List<ListellipsefourItemModel> listellipsefourItemList;

  HomePageContainer1Model copyWith(
      {List<ListellipsefourItemModel>? listellipsefourItemList}) {
    return HomePageContainer1Model(
      listellipsefourItemList:
          listellipsefourItemList ?? this.listellipsefourItemList,
    );
  }

  @override
  List<Object?> get props => [listellipsefourItemList];
}
