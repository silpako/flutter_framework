import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper{
// create database
static Future<sql.Database> openOrcreateDB() async{
  return await sql.openDatabase("todo",
  version: 1,
  onCreate: (database,version) async{
    await createTable(database);
  });
  }
  static Future<void> createTable(sql.Database database) async {
    await database.execute(
      'CREATE TABLE task(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,title TEXT,content TEXT)');
  } 

  static Future<int> create(String title, String content) async{
    final db = await SQLHelper.openOrcreateDB();
    var data= {"title":title,"content":content};
    final id = await db.insert("task",data);
    return id;
  }
  
static Future<List<Map<String,dynamic>>> readTask() 
async{
  final db = await SQLHelper.openOrcreateDB();
  return db.query("task",orderBy: "id");
}

  static Future<int> update(int id, String utitile, String ucontent) async{
    final db = await SQLHelper.openOrcreateDB();
    var udata= {"title":utitile,"content":ucontent};
    final uid= await db.update("task", udata,whereArgs: [id]);
    return uid;

  }
   static Future<void> deleteTask(int id) async{
    final db= await SQLHelper.openOrcreateDB();
    try{
      await db.delete('title',where: 'id = ?',whereArgs: [id]);
    } 
    catch(e){
      throw Exception();

    }
   }
}