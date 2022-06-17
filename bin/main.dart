import 'dart:convert';
import 'dart:io';
import 'dart:collection';

////////////////////////////////////////////////////////////////////////////////
// Fayllar bilan ishlash
/*
void main(){
  // Directory directory = Directory("F:\1. Dart projects\asinc_await_future_then");
  Directory directory = Directory.current;
  print("Path - ${directory.path}");
  print("Bu papkadan oldingi papka: ${directory.parent.path}");
  print("---------------------------------------------------------\n");

  Directory newDirectory = Directory(directory.path + "/myFolder");
  newDirectory.create();
  print("Path - ${newDirectory.path}");
  print("Bu papkadan oldingi papka: ${newDirectory.parent.path}");

  // newDirectory.delete();

}
*/
/*
void main() async{
  // Oddiy file
  Directory dir = Directory.current;

  File file = File(dir.path + "/bin/myFile");
  await file.create();
  file.writeAsStringSync("First comment");
  file.readAsStringSync() + "from oddiy file";
  file.uri;
  file.copy("yangi yo'lga copy qilish");
  // ohirgi o'zgartirilgan vaqtni qaytaradi
  file.setLastModified(DateTime.now());
  // file yaratilgan vaqtini o'zgartirish
  file.setLastAccessed(DateTime.now());
}
*/
/*
void main() async {
  Directory dir = Directory.current;
  Directory.fromUri(Uri(path: "F:\1. Dart projects"));

  Directory dir2 = Directory(dir.parent.path + "C++");

  File file = File(dir2.path + "/main/projects");
  file.setLastModified(DateTime.now());
  print(await file.lastModified());
}
*/
/*
void main(List<String> arguments) async {
  Directory dir = Directory.fromUri(Uri(path: "F:/C++"));

  Directory dir2 = Directory(dir.parent.path + "/C#");

  File file = File(dir2.path + "/db");
  await file.create();

  List<Map<String, dynamic>> list = [
    {
    "id": 0,
    "name": "Flutter B17",
    "date": DateTime.now().toString()
    },
    {
      "id": 1,
      "name": "Flutter B14",
      "date": DateTime.now().toString()
    }];

  file.writeAsStringSync(jsonEncode(list));
}
*/
/*
void main() async {
  Directory directory = Directory.fromUri(Uri(path: "D:/C++"));

  Directory directory1 = Directory(directory.parent.path + "/C#");

  File file = File(directory1.path + "/db");

  print(jsonDecode(await file.readAsString())[0]["id"]);
}
*/
/*
void main(){
  Directory dir = Directory("F:/");
  print(dir.path);

  File file = File(dir.path + "db.txt");
  file.writeAsStringSync("""void main(){
  int a = 10;
  int b = 30;
  int sum = (a + b) ~/ 2;
  print(sum);
  }""");
  print(file.readAsStringSync());
}
*/





////////////////////////////////////////////////////////////////////////////////
// Valid Perfect Square
/*
void main(){
  // Valid Perfect Square
  // 1-usul
  print(isPerfectSquare(16));
}

bool isPerfectSquare(int son){
  int i = 1;
  while(son > 0){
    son = son - i;
    i = i + 2;
  }
  return son == 0;
}
*/
/*
void main(){
  // Valid Perfect Square
  // 2-usul
  print(isPerfectSquare(16));
}

bool isPerfectSquare(int son){
  int x = son;
  while(x * x > son){
    x = (x + son / x) ~/ 2;
  }
  return x * x == son;
}
*/
////////////////////////////////////////////////////////////////////////////////
// Perfect number
/*
void main(){
  stdout.write("Perfect number: ");
  int n = int.parse(stdin.readLineSync()!);
  print(isPerfectNumber(n));
  main();
}

bool isPerfectNumber(int son){
  if(son <= 0){
    return false;
  }
  int sum = 0;
  for(int i = 1; i < son; i++){
    if(son % i == 0){
      sum += i;
    }
  }
  return sum == son;
}
*/
// Ugly number
/*
int uglyNum(int n) {
  int i = 1;
  int count = 1;
  while (n > count) {
    i++;
    count++;
  }
  return i;
}

void main() {
  stdout.write("n = ");
  int n = int.parse(stdin.readLineSync()!);
  print(uglyNumber(n));
}

bool uglyNumber(int no) {
  bool x = true;
  while (no != 1) {
    if (no % 5 == 0) {
      no ~/= 5;
    } else if (no % 3 == 0) {
      no ~/= 3;
    }
    // To check if number is divisible by 2 or not
    else if (no % 2 == 0) {
      no ~/= 2;
    } else {
      x = false;
      break;
    }
  }
  return x;
}
 */
// Add digits
/*
void main(){
  print(addDigit(11));
}

int addDigit(int son){
  int digitRoot = 0;
  while(son > 0){
    digitRoot += son % 10;
    son = son ~/ 10;
    if(son == 0 && digitRoot > 9){
      son = digitRoot;;
      digitRoot = 0;
    }
  }
  return digitRoot;
}
*/
////////////////////////////////////////////////////////////////////////////////
// Valid anagram
/*
void main(){
  stdout.write("a: ");
  String str1 = stdin.readLineSync()!;
  stdout.write("b: ");
  String str2 = stdin.readLineSync()!;
  print(isAnagram(str1, str2));
}

bool isAnagram(String str1, String str2) {
  String normalize(String str) => (str.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]', caseSensitive: false), '').split('')..sort()).join('');
  return normalize(str1) == normalize(str2);
}
*/
// Reverse String
/*
void main(){
  stdout.write("Text: ");
  String text = stdin.readLineSync()!;
  String revText = text.split('').reversed.join('');
  print("Reversed: $revText");
  main();
}
*/
// Rotate String
// Buddy String
////////////////////////////////////////////////////////////////////////////////





























