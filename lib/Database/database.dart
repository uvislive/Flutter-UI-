import 'package:flutter/material.dart';

// database.dart
// required package imports
import 'dart:async';
import 'package:floor/floor.dart';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'userDao.dart';
import 'user.dart';
part 'database.g.dart'; //



@Database(version: 1, entities: [Person])
abstract class AppDatabase extends FloorDatabase {
  PersonDao get personDao;
}
