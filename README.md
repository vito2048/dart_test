# Dart with Excel

## Set up
### 1. Install IDE
IDE is a software to run and edit your code.
Download and install [Visual Studio Code], one of the most popular and complex IDE.
### 2. Create project folder
Create a folder for your dart code files and open it in Visual Studio Code.
Inside you need to create a `pubspec.yaml` file, necessary, if you want to use dart public packages.

`pubspec.yaml` need to have a proper construction:
- you have to add a `name` constraint
- to get packages add `dependencies` constraint. Below, always after a TAB, write a package name with version number. All packages with documentation and examples of use, are listed at [pub.dev].
```javascript
name: your_project_name

dependencies:
    excel: ^2.0.1
```
> Check on [pub.dev] if excel package have newer version than 2.0.1

When pubspec.yaml is ready, run this command with terminal:
```
dart pub get
```
> You can find terminal after typing "cmd" in Windows search. Also in Visual Studio Code you can use terminal, usually on the bottom bar of the screen.
>
> Remember to write commands inside your project folder. That means the path in terminal should be the path to the project folder.
> 
> When you open folder in Visual Studio Code, the terminal should already have a proper path. If not, you can navigate to project folder path using "cd name_of_the_next_element_of_the_path" command

You should receive information like this:

```sh
pubspec.yaml has no lower-bound SDK constraint.
You should edit pubspec.yaml to contain an SDK constraint:

environment:
  sdk: '^3.0.0-187.0.dev'
```
Add this `envirnoment` constraint with proper `sdk` to your `pubspec.yaml` file, save it and run command again.
If everything went well, this command should create:
- a `pubspec.lock` file,
- `.dart_tool` folder with `package_config.json` file

inside your folder. Do not edit these files - it will be automatically updated when you run `dart pub get` command.

### 3. Create a dart file
Inside your project folder create a file with `.dart` extension. It will contains our dart code. In this example it will be called `source_code.dart`.
To work with `excel` package we need an Excel file. Create an empty Excel inside project folder, in this example this is `dart_func.xlsx`.

## Dart basics
Dart is very similar to java-script language.

## Excel example
Download this repository folder and open in Visual Studio Code.
You should run `dart pub get` command.
`source_code.dart` file have some basics examples of `excel` package abilities.


   [Visual Studio Code]: <https://code.visualstudio.com>
   [pub.dev]: <https://pub.dev>
