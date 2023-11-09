// ignore_for_file: must_be_immutable

part of 'services_page_bloc.dart';

/// Represents the state of ServicesPage in the application.
class ServicesPageState extends Equatable {
  ServicesPageState({this.servicesPageModelObj});

  ServicesPageModel? servicesPageModelObj;

  @override
  List<Object?> get props => [
        servicesPageModelObj,
      ];
  ServicesPageState copyWith({ServicesPageModel? servicesPageModelObj}) {
    return ServicesPageState(
      servicesPageModelObj: servicesPageModelObj ?? this.servicesPageModelObj,
    );
  }
}
