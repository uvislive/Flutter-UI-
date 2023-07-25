// dao/person_dao.dart

import 'package:floor/floor.dart';
import 'user_class.dart';

@dao
abstract class UserClassDao {
  @Query('SELECT * FROM Person')
  Future<List<User>> findAllPersons();

  @Query('SELECT * FROM Person WHERE id = :id')
  Stream<User?> findPersonById(int id);

  @insert
  Future<void> insertPerson(User user);
}