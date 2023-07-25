import 'package:floor/floor.dart';

@entity
class User{
  @primaryKey
  final int id;
  final String name;
  final String email;
  User({required this.id, required this.name, required this.email});
}