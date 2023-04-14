import 'package:algorithms/binary_tree.dart';
import 'package:test/test.dart';

void main() {
  late BinaryTree tree;

  setUp(() {
    tree = BinaryTree(
      BinaryNode(
        value: 7,
        left: BinaryNode(
          value: 21,
          left: BinaryNode(
            value: 13,
          ),
          right: BinaryNode(
            value: 8,
          ),
        ),
        right: BinaryNode(
          value: 2,
          left: BinaryNode(
            value: 12,
          ),
          right: BinaryNode(
            value: 32,
          ),
        ),
      ),
    );
  });

  test('preorder traversal', () {
    final result = [7, 21, 13, 8, 2, 12, 32];
    final path = tree.preOrderSearch();
    expect(path, result);
  });

  test('postorder traversal', () {
    final result = [13, 8, 21, 12, 32, 2, 7];
    final path = tree.postOrderSearch();
    expect(path, result);
  });

  test('in order traversal', () {
    final result = [13, 21, 8, 7, 12, 2, 32];
    final path = tree.inOrderSearch();
    expect(path, result);
  });

  test('breath first seach traversal', () {
    final result = [7, 21, 2, 13, 8, 12, 32];
    final path = tree.bfsSearch();
    expect(path, result);
  });
}
