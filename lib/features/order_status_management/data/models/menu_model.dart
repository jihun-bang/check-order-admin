import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_model.freezed.dart';
part 'menu_model.g.dart';

@freezed
class MenuModel with _$MenuModel {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory MenuModel({
    required String id,
    required String name,
    required int totalPrice,
    required int count,
  }) = _MenuModel;

  factory MenuModel.fromJson(Map<String, dynamic> json) =>
      _$MenuModelFromJson(json);
}
