import 'package:algorithms/binary_search.dart';
import 'package:test/test.dart';

void main() {
  test('binary search works', () {
    List<int> haystack = [1, 3, 7, 13, 52, 59, 77, 98, 121, 195];
    assert(binarySearch(haystack, 13));
  });
}
