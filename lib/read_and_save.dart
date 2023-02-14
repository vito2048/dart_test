import 'package:excel/excel.dart';
import 'dart:io';
import 'package:path/path.dart';

// quick set-up to read files from "assets" folder
// and save inside "outputs" folder

// to make this functions work, you have to create a String variable equal to
// path to 'dart_test' folder on your computer
// change "pathToFolder" to correct path
final String pathToFolder = "C:/Users/janis/flutter_projects/renx/dart_test";

// -----
// first func to read what Excel file contains
// we read files from "assets" folder
// only argument is Excel name
//
readExcel(String excelName) {
  // path to our Excel + name of Excel file we pass as argument
  var file = "$pathToFolder/assets/$excelName.xlsx";
  // we use dart io to read file as a list of bytes
  var bytes = File(file).readAsBytesSync();
  // we decode bytes to create Excel class from excel ext
  var excel = Excel.decodeBytes(bytes);
  // return excel file
  return excel;
}

// -----
// saving file
// this function will save Excel file ("excel" argument) inside "outputs" folder
// with name passed as "excelName" argument
//
saveExcel(dynamic excel, String excelName) {
  // path to save Excel (path to "outputs" folder + excelName argument)
  String outputFile = "$pathToFolder/outputs/$excelName.xlsx";
  // dart io method to save file
  List<int>? fileBytes = excel.save();
  if (fileBytes != null) {
    File(join(outputFile))
      ..createSync(recursive: true)
      ..writeAsBytesSync(fileBytes);
  }
}
