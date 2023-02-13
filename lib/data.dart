// data organized in lists like below can be used to write/analise in Excel
// this is only an example, there are plenty of variables types that might be
// more suitable for specific situations

// example is similar to CSV layout
// for big sets of data is better to use CSV, JSON or connect to database
// for example for CSV files there is a public package that will create
// similar list to showed below directly from CSV file

// list of table headers
List exapleHeaders = ["Name", "Revenue", "Date"];

// list of table rows
// every row is another list, with 3 values, like headers
List exampleRows = [
  ["name 1", 100, DateTime(2022, 10, 3)],
  ["name 2", 120, DateTime(2022, 11, 5)],
  ["name 3", 160, DateTime(2022, 2, 7)],
  ["name 4", 10, DateTime(2022, 4, 11)],
  ["name 5", 50, DateTime(2022, 3, 25)],
  ["name 6", 70, DateTime(2022, 9, 16)],
  ["name 7", 90, DateTime(2022, 10, 21)],
  ["name 8", 45, DateTime(2022, 12, 5)],
  ["name 9", 325, DateTime(2022, 7, 9)],
  ["name 10", 210, DateTime(2022, 6, 11)],
  ["name 11", 125, DateTime(2022, 6, 10)],
  ["name 12", 180, DateTime(2022, 10, 8)],
  ["name 13", 65, DateTime(2022, 11, 8)],
];
