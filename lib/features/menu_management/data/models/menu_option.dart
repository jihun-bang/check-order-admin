import 'package:freezed_annotation/freezed_annotation.dart';

part 'menu_option.g.dart';

@JsonSerializable(explicitToJson: true)
class MenuOptionModel {
  final String name;
  final int price;

  MenuOptionModel({
    this.name = '',
    this.price = 0,
  });

  factory MenuOptionModel.fromJson(Map<String, dynamic> json) =>
      _$MenuOptionModelFromJson(json);

  Map<String, dynamic> toJson() => _$MenuOptionModelToJson(this);
}
