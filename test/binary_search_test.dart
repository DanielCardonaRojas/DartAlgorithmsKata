import 'package:algorithms/binary_search.dart';
import 'package:test/test.dart';

void main() {
  test('binary return correct index when finds value', () {
    List<int> haystack = [1, 3, 7, 13, 52, 59, 77, 98, 121, 195];
    final result = binarySearch(haystack, 13);
    assert(result == 3);
  });

  test('binary search returns null when value not found', () {
    List<int> haystack = [1, 3, 7, 13, 52, 59, 77, 98, 121, 195];
    final result = binarySearch(haystack, 99);
    assert(result == null);
  });
}
