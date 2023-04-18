void mergeSort(List<int> array) {
  final sorted = _mergeSort(array);
  for (var i = 0; i < array.length; i++) {
    array[i] = sorted[i];
  }
}

List<int> _mergeSort(List<int> array) {
  if (array.length <= 1) {
    return array;
  }

  final mid = array.length ~/ 2;
  var left = array.sublist(0, mid);
  var right = array.sublist(mid, array.length);

  left = _mergeSort(left);
  right = _mergeSort(right);
  return merge(left, right);
}

List<int> merge(List<int> left, List<int> right) {
  var newArray = <int>[];
  var leftIndex = 0;
  var rightIndex = 0;

  while (leftIndex < left.length && rightIndex < right.length) {
    if (left[leftIndex] < right[rightIndex]) {
      newArray.add(left[leftIndex]);
      leftIndex += 1;
    } else {
      newArray.add(right[rightIndex]);
      rightIndex += 1;
    }
  }

  newArray.addAll(left.sublist(leftIndex));
  newArray.addAll(right.sublist(rightIndex));
  return newArray;
}
