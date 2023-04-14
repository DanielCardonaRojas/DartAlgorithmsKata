import 'package:algorithms/quick_sort.dart';
import 'package:test/test.dart';

void main() {
  test('quicksort works', () {
    final arr = [9, 3, 7, 4, 69, 420, 42];
    quickSort(arr);
    expect(arr, [3, 4, 7, 9, 42, 69, 420]);
  });
}
