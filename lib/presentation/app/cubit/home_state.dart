import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/home_state.freezed.dart';

enum AppPage { search, results, detail }

@freezed
abstract class HomeState with _$HomeState {
  const factory HomeState({@Default(AppPage.search) AppPage currentPage, dynamic selectedItem}) =
      _HomeState;
}
