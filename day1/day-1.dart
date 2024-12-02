
import 'dart:io';

Future<void> main() async {
  var input = File('day1/input.txt');
  var lines = await input.readAsLines();

  List<int> left = []; 
  List<int> right = [];

  lines.forEach((value) {
    var lAndR = value.split('   ');
    left.add(int.parse(lAndR[0]));
    right.add(int.parse(lAndR[1]));
  }); 

  print('Part 1: ');
  print(part1(left, right));

  print('\n');

  print('Part 2: ');
  print(part2(left, right));
}

int part1(
  List<int> left,
  List<int> right
) {
  left.sort();
  right.sort();

  var result = 0;

  for (var i = 0 ; i < left.length ; i++) {
      result += (left[i] - (right[i])).abs();
  }

  return result;
}

int part2(
  List<int> left,
  List<int> right
) {
  var result = 0;

    for (var i = 0 ; i < left.length ; i++) {
      var found = right.where((value) {
        return value == left[i];
      });
      result += left[i] * found.length;
    }

  return result;
}
