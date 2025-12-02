import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:github_search_app/domain/entities/search_result.dart';

part 'generated/detail_state.freezed.dart';

@freezed
abstract class DetailState with _$DetailState {
  const factory DetailState({
    SearchResultItem? item,
    @Default(false) bool isLoading,
    String? error,
  }) = _DetailState;
}
