import 'package:algorithms/binary_search_tree.dart';
import 'package:test/test.dart';

void main() {
  test('insert correctly', () {
    final tree = BinarySearchTree<int>();
    tree.insert(100);
    tree.insert(40);
    assert(tree.root != null);
    assert(tree.root?.left != null);
    assert(tree.root?.right == null);
  });

  test('can print ordered node list', () {
    final tree = BinarySearchTree<int>();
    tree.insert(100);
    tree.insert(40);
    tree.insert(500);

    final list = tree.inOrder();

    expect(list, [40, 100, 500]);
  });

  test('can find min and max', () {
    final tree = BinarySearchTree<int>();
    tree.insert(100);
    tree.insert(40);
    tree.insert(500);

    assert(tree.min == 40);
    assert(tree.max == 500);
  });
}
