import 'package:flutter_october_vs/local_storage/hive_using_adapter/model/users.dart';
import 'package:hive/hive.dart';

class HiveDB{
  // hiveDB.constr();
  // static HiveDB instance = hiveDB.constr();
  // factory HiveDB(){
  // return instance;
  // }
static Future<void> addUser(Users users) async{
  final db =await Hive.openBox<Users>("userdata");
  db.put(users.id,users);
}


static Future<List<Users>>getallUsers() async{
  final db =await Hive.openBox<Users>("userdata");
  return db.values.toList();
 }
}