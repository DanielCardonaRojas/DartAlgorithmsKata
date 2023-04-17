int? binarySearch(List<int> haystack, int needle) {
  int startIndex = 0;
  int endIndex = haystack.length - 1;

  while (startIndex < endIndex) {
    final midIndex = (startIndex + endIndex) ~/ 2;

    final value = haystack[midIndex];

    if (needle == value) {
      return midIndex;
    } else if (needle < value) {
      endIndex = midIndex;
    } else {
      startIndex = midIndex + 1;
    }
  }

  return null;
}
