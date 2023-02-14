import 'package:dart_test/read_and_save.dart';
import 'package:excel/excel.dart';

// main() void is the main, starting point of the app, and will be used to run our code.
// write what you want to achive here (you can call functions from other files)
// and run/debug the code.

//

void main() {
  // it is a good practice to use debug console to see what is happening
  // if you want to get some info from the program during debugging
  // you can use print()
  //
  // here we print "Starting..." on the start of the main() function
  // and we will see this on the debug console at the beginning
  print("Starting...");

  // inside "excel" variable we save data from "my_excel.xlsl" file (form assets folder)
  // and we print information after
  var excel = readExcel("my_excel");
  print("Excel read");
  // now we change the name of the "Sheet1" to "my_table"
  // and print information after
  excel.rename("Sheet1", "test");
  print("Sheet name changed");
  // now we save this excel inside outputs folder with saveExcel function
  // and print information after
  saveExcel(excel, "test_v1");
  print("New Excel saved");
  // thats all we want to do now, so we close the main() function, before which
  // we print information about closing
  print("Fuction finished!");
}
