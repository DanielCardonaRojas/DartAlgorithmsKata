import 'package:algorithms/linked_list.dart';
import 'package:test/test.dart';

void main() {
  test('prepend increases size', () {
    final ll = LinkedList<int>();
    ll.prepend(8);
    assert(ll.length == 1);
  });

  test('prepend increases size', () {
    final ll = LinkedList<int>();
    ll.append(1);
    assert(ll.length == 1);
  });

  test('delete decreases size', () {
    final ll = LinkedList<int>();
    ll.append(1);
    ll.delete(0);
    assert(ll.length == 0);
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
