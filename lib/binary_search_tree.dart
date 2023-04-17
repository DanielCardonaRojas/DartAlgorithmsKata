import 'package:algorithms/binary_tree.dart';

class BinarySearchTree<T extends Comparable> extends BinaryTree<T> {
  BinarySearchTree();

  void insert(T value) {
    final node = root;
    if (node == null) {
      root = BinaryNode<T>(value: value);
      return;
    }

    _insert(root, node, value);
  }

  void _insert(BinaryNode<T>? node, BinaryNode<T> parent, T value) {
    var current = node;

    if (current != null) {
      if (value.compareTo(current.value) <= 0) {
        _insert(current.left, parent, value);
      } else if (value.compareTo(parent.value) > 0) {
        _insert(current.right, parent, value);
      }
    } else {
      if (value.compareTo(parent.value) <= 0) {
        parent.left = BinaryNode(value: value);
      } else if (value.compareTo(parent.value) > 0) {
        parent.right = BinaryNode(value: value);
      }
    }
  }

  List<T> orderedItems() {
    return inOrderSearch();
  }

  T? get max {
    return _findMax(root, root);
  }

  T? get min {
    return _findMin(root, root);
  }

  T? _findMax(BinaryNode<T>? node, BinaryNode<T>? parent) {
    if (node == null) return parent?.value;
    return _findMax(node.right, node);
  }

  T? _findMin(BinaryNode<T>? node, BinaryNode<T>? parent) {
    if (node == null) return parent?.value;
    return _findMax(node.left, node);
  }
}
