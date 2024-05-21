import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class SqlDB {
  static Database? _db;

  Future<Database?> get db async{
    if (_db == null){
      _db = await  initialSqlDB();
      return _db;
    }else{
      return _db;
    }
  }

  initialSqlDB() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'Notes.db');
    Database myDb = await openDatabase(path, version: 1, onCreate: _OnCreate);
    return myDb;
  }

  _OnCreate(Database db, int version) async {
    await db.execute(
        '''
        CREATE TABLE "Notes" 
        (
        "id" INTEGER NOT NULL PRIMARY KEY,
        "Value" TEXT NOT NULL,
        "Number" INTEGER
         )'''
    );
  }

  ReadData(String sql)async{
    Database? mydb = await db;
    List<Map> response = await mydb!.rawQuery(sql);
    return response;
  }
  UpdateData(String sql)async{
    Database? mydb = await db;
    int response = await mydb!.rawUpdate(sql);
    return response;
  }
  InsertData(String sql)async{
    Database? mydb = await db;
    int response = await mydb!.rawInsert(sql);
    return response;
  }
  DeleteData(String sql)async{
    Database? mydb = await db;
    int response = await mydb!.rawDelete(sql);
    return response;
  }


}
