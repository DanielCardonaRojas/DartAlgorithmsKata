import 'package:algorithms/doubly_linked_list.dart';
import 'package:test/test.dart';

void main() {
  test('prepend increases size', () {
    final ll = DoublyLinkedList<int>();
    ll.prepend(8);
    assert(ll.length == 1);
    assert(ll.root?.value == 8);
  });

  test('append increases size', () {
    final ll = DoublyLinkedList<int>();
    ll.append(1);
    assert(ll.length == 1);
    assert(ll.tail?.value == 1);
  });

  test('delete decreases size', () {
    final ll = DoublyLinkedList<int>();
    ll.append(1);
    ll.delete(0);
    assert(ll.length == 0);
  });

  test('list with single item makes tail and head match', () {
    final ll = DoublyLinkedList();
    ll.append(1);
    assert(ll.root == ll.tail);
  });

  test('insert at a given position', () {
    final ll = DoublyLinkedList();
    ll.append(1);
    ll.append(2);
    ll.append(4);
    ll.insert(3, at: 2);

    assert(ll.itemAt(2) == 3);
    assert(ll.itemAt(3) == 4);
    assert(ll.length == 4);
  });

  test('can read value at a particular index', () {
    final ll = DoublyLinkedList<int>();
    ll.append(3);
    ll.append(7);
    ll.append(8);

    assert(ll.itemAt(2) == 8);
    assert(ll.itemAt(1) == 7);
    assert(ll.itemAt(0) == 3);
    assert(ll.tail?.value == 8);
    assert(ll.root?.value == 3);
    assert(ll.length == 3);
  });
}
