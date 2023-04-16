class DoublyLinkedList<T> {
  DoublyLinkedListNode<T>? root;
  DoublyLinkedListNode<T>? tail;
  int _length = 0;

  int get length => _length;

  void append(T value) {
    _length += 1;

    if (root == null) {
      root = DoublyLinkedListNode(value: value);
      tail = root;
      return;
    }

    final node = DoublyLinkedListNode(value: value);
    node.previous = tail;
    tail?.next = node;
    tail = node;
  }

  void prepend(T value) {
    _length += 1;

    if (root == null) {
      root = DoublyLinkedListNode(value: value);
      tail = root;
      return;
    }

    final node = DoublyLinkedListNode(value: value);
    node.next = root;
    root?.previous = node;
    root = node;
  }

  void delete(int index) {
    var node = nodeAtIndex(index);
    if (node == null) return;
    _length -= 1;
    final previous = node.previous;
    final next = node.next;
    previous?.next = next;
    next?.previous = previous;
    node = null;
  }

  DoublyLinkedListNode<T>? nodeAtIndex(int index) {
    if (index >= length) return null;
    var idx = index;

    final indexFromEnd = (length - index) < index;
    idx = indexFromEnd ? (length - index - 1) : index;
    var current = indexFromEnd ? tail : root;

    for (var i = 0; i < idx; i++) {
      if (indexFromEnd) {
        current = current?.previous;
      } else {
        current = current?.next;
      }
    }

    return current;
  }

  void insert(T value, {required int at}) {
    final index = at;
    final node = nodeAtIndex(index);
    if (node == null) return;
    _length += 1;

    final newNode = DoublyLinkedListNode(value: value);
    newNode.previous = node.previous;
    node.previous?.next = newNode;
    newNode.next = node;
    node.previous = newNode;
  }

  List<T> collect() {
    var current = root;
    var result = <T>[];
    while (current != null) {
      result.add(current.value);
      current = current.next;
    }

  List<T> collect() {
    return [];
  }

  T? itemAt(int index) {
    return nodeAtIndex(index)?.value;
  }
}

class DoublyLinkedListNode<T> {
  T value;
  DoublyLinkedListNode<T>? next;
  DoublyLinkedListNode<T>? previous;

  DoublyLinkedListNode({required this.value});
}
