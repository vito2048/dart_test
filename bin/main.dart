import 'package:dart_test/read_and_save.dart';
import 'package:excel/excel.dart';

void main() {
  var excel = readExcel("my_excel");
  excel.rename("Sheet1", "test");
  saveExcel(excel, "test_v1");
}
