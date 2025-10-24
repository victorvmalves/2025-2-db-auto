import 'package:dbauto/DatabaseHelper.dart';
import 'package:dbauto/auto.dart';

class autoDAO {
  final Databasehelper _databasehelper = Databasehelper();
  //insert de objetos auto
  Future<void> addAuto(Auto a) async {
    final db = await _databasehelper.database;
    await db.insert('auto', a.toMap());
  }

  //update de objetos auto
  Future<void> updateAuto(Auto a) async {
    final db = await _databasehelper.database;
    await db.update('auto', a.toMap(), where: "id = ?", whereArgs: [a.id]);
  }

  //delete de objetos auto
  Future<void> deleteAuto(Auto a) async {
    final db = await _databasehelper.database;
    await db.delete('auto', where: "id = ?", whereArgs: [a.id]);
  }

  //select de objetos auto
  Future<List<Auto>> getAuto() async {
    final db = await _databasehelper.database;
    final List<Map<String, dynamic>> maps = await db.query('auto');
    return List.generate(maps.length, (index) {
      return Auto.fromMap(maps[index]);
    });
  }
}
