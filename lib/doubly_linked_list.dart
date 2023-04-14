class DoublyLinkedList<T> {
  DoublyLinkedListNode? root;
  int _length = 0;

  int get length => _length;

  void append(T value) {}

  void prepend(T value) {}

  void delete(int index) {}

  T? itemAt(int index) {
    return null;
  }
}

class DoublyLinkedListNode<T> {
  T value;
  DoublyLinkedListNode? next;
  DoublyLinkedListNode? previous;

  DoublyLinkedListNode({required this.value});
}
