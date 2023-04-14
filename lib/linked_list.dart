class LinkedList<T> {
  LinkedListNode? root;
  int _length = 0;

  int get length => _length;

  void append(T value) {}

  void prepend(T value) {}

  void delete(int index) {}

  T? itemAt(int index) {
    return null;
  }
}

class LinkedListNode<T> {
  T value;
  LinkedListNode? next;

  LinkedListNode({required this.value});
}
