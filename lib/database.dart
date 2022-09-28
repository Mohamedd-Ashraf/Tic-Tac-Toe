// // ignore_for_file: library_private_types_in_public_api, unnecessary_import, duplicate_import, unnecessary_const, prefer_const_constructors, depend_on_referenced_packages

// import 'data.dart';
// import 'package:sqflite/sqflite.dart';
// import 'package:path/path.dart';
// import 'data.dart';

// import 'data.dart';


// class Data {
//   static late Database db;

//   List<datta> tData = [];

//   static void createDB() async {
//     var databasesPath = await getDatabasesPath(); // path database android/msp/
//     String path = join(databasesPath, 'demo.db');
//     // (path + Data.db)

//     await openDatabase(
//       path,
//       version: 1,
//       onCreate: (Database db, _) async {
//         db
//             .execute(
//                 "CREATE TABLE Data (id INTEGER PRIMARY KEY, name TEXT, score INTEGER)")
//             .then((value) {
//           print("Create Successfully");
//         }).catchError((error) {
//           print(path);
//           print(error.toString());
//         });
//       },
//     ).then((value) {
//       db = value;
//     }).catchError((error) {
//       print(error);
//     });
//   }

//   static void insertInDatabase({
//     required datta t,
//   }) {
//     db.rawInsert("INSERT INTO Data(name, score) VALUES(?,?)", [
//       t.name,
//       t.score,
//     ]).then((value) {
//       print(value.toString());
//     }).catchError((error) {
//       print(error.toString());
//     });
//   }

//   static Future<datta> getData({
//     required int id,
//   }) async {
//     late datta t;
//     try {
//       List<Map<String, Object?>> x =
//           await db.rawQuery("SELECT * FROM Data WHERE id = ?", [id]);
//       t = datta.fromJson(x[0]);
//     } catch (error) {
//       print(error.toString());
//     }
//     /*db.rawQuery("SELECT * FROM Data WHERE id = ?",[id]).then((value){
//       t = Data.fromJson(value[0]);
//     }).catchError((error){
//       print(error.toString());
//     });*/
//     return t;
//   }

//   static void closeDB() async => await db.close();
// }
