import 'package:dart_test/cell_styles.dart';
import 'package:dart_test/read_and_save.dart';
import 'package:excel/excel.dart';

void main(List<String> args) {
  var excel = readExcel("my_excel");
  Sheet sheet1 = excel['Sheet1'];

  changeColumnStyle(sheet1, tableHeaderCell(), "A");
  saveExcel(excel, "test_v2");
}
