import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_response_model.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class UserResponseModel {
  @Id()
  final String email;
  final String storeName;
  final String password;

  UserResponseModel({
    required this.email,
    required this.password,
    required this.storeName,
  });
}

@Collection<UserResponseModel>('users')
final userRef = UserResponseModelCollectionReference();
