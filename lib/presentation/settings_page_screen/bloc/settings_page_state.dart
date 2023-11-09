// ignore_for_file: must_be_immutable

part of 'settings_page_bloc.dart';

/// Represents the state of SettingsPage in the application.
class SettingsPageState extends Equatable {
  SettingsPageState({
    this.isSelectedSwitch = false,
    this.isSelectedSwitch1 = false,
    this.settingsPageModelObj,
  });

  SettingsPageModel? settingsPageModelObj;

  bool isSelectedSwitch;

  bool isSelectedSwitch1;

  @override
  List<Object?> get props => [
        isSelectedSwitch,
        isSelectedSwitch1,
        settingsPageModelObj,
      ];
  SettingsPageState copyWith({
    bool? isSelectedSwitch,
    bool? isSelectedSwitch1,
    SettingsPageModel? settingsPageModelObj,
  }) {
    return SettingsPageState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      isSelectedSwitch1: isSelectedSwitch1 ?? this.isSelectedSwitch1,
      settingsPageModelObj: settingsPageModelObj ?? this.settingsPageModelObj,
    );
  }
}
