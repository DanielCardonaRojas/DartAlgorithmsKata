class LinkedList<T> {
  LinkedListNode<T>? root;
  int _length = 0;

  int get length => _length;

  void append(T value) {
    _length += 1;
    if (root == null) {
      root = LinkedListNode(value: value);
      return;
    }

    var current = root;
    while (current?.next != null) {
      current = current?.next;
    }

    current?.next = LinkedListNode(value: value);
  }

  void prepend(T value) {
    _length += 1;
    if (root == null) {
      root = LinkedListNode(value: value);
      return;
    }

    final next = root;

    root = LinkedListNode(value: value);
    root?.next = next;
  }

  void delete(int index) {
    if (index >= length) return;
    _length -= 1;
    final previous = _nodeAt(index - 1);
    final next = previous?.next?.next;
    previous?.next = next;
  }

  void insert(T value, int index) {
    if (index >= length) return;
    _length += 1;
    final previous = _nodeAt(index - 1);
    final current = previous?.next;
    final newNode = LinkedListNode(value: value);
    previous?.next = newNode;
    newNode.next = current;
  }

  LinkedListNode<T>? _nodeAt(int index) {
    if (index >= length) return null;

    var current = root;

    for (var i = 0; i < index; i++) {
      current = current?.next;
    }

    return current;
  }

  T? itemAt(int index) {
    return _nodeAt(index)?.value;
  }
}

class LinkedListNode<T> {
  T value;
  LinkedListNode<T>? next;

  LinkedListNode({required this.value});
}
