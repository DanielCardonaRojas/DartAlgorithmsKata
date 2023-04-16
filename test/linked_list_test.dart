import 'package:algorithms/linked_list.dart';
import 'package:test/test.dart';

void main() {
  test('prepend increases size', () {
    final ll = LinkedList<int>();
    ll.prepend(8);
    assert(ll.length == 1);
  });

  test('append increases size', () {
    final ll = LinkedList<int>();
    ll.append(1);
    assert(ll.length == 1);
    assert(ll.itemAt(0) == 1);
  });

  test('delete decreases size', () {
    final ll = LinkedList<int>();
    ll.append(1);
    ll.delete(0);
    assert(ll.length == 0);
  });

  test('insert at a given position', () {
    final ll = LinkedList();
    ll.append(1);
    ll.append(2);
    ll.append(4);
    ll.insert(3, 2);

    assert(ll.itemAt(2) == 3);
    assert(ll.itemAt(3) == 4);
    assert(ll.length == 4);
  });

  test('can read value at a particular index', () {
    final ll = LinkedList<int>();
    ll.append(3);
    ll.append(7);
    ll.append(8);

    assert(ll.itemAt(1) == 7);
    assert(ll.length == 3);
  });
}
