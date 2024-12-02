
import 'dart:io';

Future<void> main() async {

  var input = File('input.txt');
  var lines = await input.readAsLines();

  List<int> left = []; 
  List<int> right = [];

  lines.forEach((value) {
    var lAndR = value.split('   ');
    left.add(int.parse(lAndR[0]));
    right.add(int.parse(lAndR[1]));
  }); 
  

  // var left = [3, 4, 2, 1, 3, 3];
  left.sort();
  // var right = [4, 3, 5, 3, 9, 3];
  right.sort();

  var result = 0;

  for (var i = 0 ; i < left.length ; i++) {
      result += (left[i] - (right[i])).abs();
  }
  print(result);
}


