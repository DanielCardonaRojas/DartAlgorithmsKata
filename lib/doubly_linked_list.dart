class DoublyLinkedList<T> {
  DoublyLinkedListNode<T>? root;
  DoublyLinkedListNode<T>? tail;
  int _length = 0;

  int get length => _length;

  void append(T value) {}

  void prepend(T value) {}

  void delete(int index) {}
  void insert(T value, {required int at}) {}

  List<T> collect() {
    return [];
  }

  T? itemAt(int index) {
    return null;
  }
}

class DoublyLinkedListNode<T> {
  T value;
  DoublyLinkedListNode<T>? next;
  DoublyLinkedListNode<T>? previous;

  DoublyLinkedListNode({required this.value});
}
