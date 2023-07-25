
// database.dart

// required package imports
import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;

import 'floordb/user_class_dao.dart';
import 'floordb/user_class.dart';

// part 'floordb/mydatabaseclass.g.dart'; // the generated code will be there

@Database(version: 1, entities: [User])
abstract class AppDatabase extends FloorDatabase {
  UserClassDao get userClassDao;
}