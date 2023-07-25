


// @insert marks a method as an insertion method.
// dao/person_dao.dart
import 'user.dart';
import 'package:floor/floor.dart';
@dao
abstract class PersonDao {
  @Query('SELECT * FROM Person')
  Future<List<Person>> findAllPeople();
  @Query('SELECT name FROM Person')
  Stream<List<String>> findAllPeopleName();
  @Query('SELECT * FROM Person WHERE id = :id')
  Stream<Person?> findPersonById(int id);
  @insert
  Future<void> insertPerson(Person person);
}
