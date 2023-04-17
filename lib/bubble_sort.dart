void bubbleSort(List<int> array) {
  var length = array.length;

  while (length > 1) {
    for (var i = 0; i < length - 1; i++) {
      if (array[i + 1] < array[i]) {
        final temp = array[i];
        array[i] = array[i + 1];
        array[i + 1] = temp;
      }
    }
    length = length - 1;
  }
}
