void quickSort(List<int> array) {
  _quickSort(array, 0, array.length - 1);
}

void _quickSort(List<int> array, int start, int end) {
  if (end <= start) {
    return;
  }
  var pivotIndex = splitSort(array, start, end);
  _quickSort(array, start, pivotIndex - 1);
  _quickSort(array, pivotIndex, end);
}

int splitSort(List<int> array, int start, int pivotIndex) {
  final pivot = array[pivotIndex];

  for (var i = start; i <= pivotIndex; i++) {
    final value = array[i];
    if (value >= pivot) {
      //swap
      array[pivotIndex] = value;
      array[i] = pivot;
      pivotIndex = i;
    }
  }

  return pivotIndex;
}
