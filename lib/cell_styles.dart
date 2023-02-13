import 'package:excel/excel.dart';
import 'dart:io';
import 'package:path/path.dart';

// file for variables/functions that modify cell appearance

// -----
// Package "Excel" has a class "CellStyle", with parameters like "bold" (text bold: true or false)
// we can assign this class to an Excle cell, to format text, alignment, color, etc.
// it's a good practise to create a specific "CellStyle" class (for examples for table headers)
// so we can use it multiple times later
// in this case, if we want to create a header row, with red, bold text size 14
// we can just call tableHeaderCell()
//
CellStyle tableHeaderCell() {
  // create "header" CellStyle, with changed parameters:
  // "fontColorHex", "bold" and "fontSize" and return it
  CellStyle header = CellStyle(
    fontColorHex: "#fc0000",
    bold: true,
    fontSize: 14,
  );
  return header;
}

// -----
// let's say we want to center values inside a column (so text will be centered)
// we can do this by changing "CellStyle" of all cells inside this column,
// becouse "CellStyle" has a parameters "VerticalAlign" and "HorizontalAlign"
// function bellow will do this for specific column, from - to selected row index
//
columnCellsAlignCenter(sheet, String column, int first, int last) {
  // create 'centerCell' CellStyle with correct alignment
  CellStyle centerCell = CellStyle(
    verticalAlign: VerticalAlign.Center,
    horizontalAlign: HorizontalAlign.Center,
  );
  // for loop, we start with "i" equal to "first" argument, increment "i" by one
  // every time, and not stopping since "i" is less or equal to "last" argument
  for (var i = first; i <= last; i++) {
    // "i" is the row index number in this case, so to find cell name we have to
    // combine: "column" agrument (column letter) and "i"
    String cellName = "$column$i";
    var cell = sheet.cell(CellIndex.indexByString(cellName));
    // change this cell style to our "centerCell"
    cell.cellStyle = centerCell;
  }
}
//
// for example:
// columnCellsAlignCenter(Sheet1, "C", 1, 64)
// will change vertical and horizontal cell alignment
// of cells C1, C2, C3, ..., C64 inside "Sheet1" sheet
// to center

// -----
// columnCellsAlignCenter() is very limited - changing cell style only to
// center alignment and we need to specify first and last row index
// function below will always change all rows (no need for first and last argument)
// and we pass the CellStyle we want to implement, so we can ask for all
// modification available with CellStyle class
//
changeColumnStyle(sheet, CellStyle newStyle, String column) {
  // for loop, but this time we start at 1, and end at maximum row index (.maxRows method)
  for (int row = 1; row < sheet.maxRows; row++) {
    // cellName is combine: "column" argument (column letter) and "row" (row index)
    String cellName = "$column$row";
    var cell = sheet.cell(CellIndex.indexByString(cellName));
    // change cell style to argument "newStyle"
    cell.cellStyle = newStyle;
  }
}
