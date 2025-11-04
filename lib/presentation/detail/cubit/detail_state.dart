import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/detail_state.freezed.dart';

@freezed
abstract class DetailState with _$DetailState {
  const factory DetailState({dynamic item, @Default(false) bool isLoading, String? error}) =
      _DetailState;
}
