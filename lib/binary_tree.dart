class BinaryTree<T> {
  BinaryNode<T>? root;
  BinaryTree([this.root]);

  List<T> inOrderSearch() {
    List<T> path = [];
    _inOrderSearch(root, path);
    return path;
  }

  List<T> postOrderSearch() {
    List<T> path = [];
    _postOrderSearch(root, path);
    return path;
  }

  List<T> preOrderSearch() {
    List<T> path = [];
    _preOrderSearch(root, path);
    return path;
  }

  List<T> bfsSearch() {
    if (root == null) return [];
    List<T> path = [];
    List<BinaryNode<T>> queue = [];
    queue.add(root!);

    while (queue.isNotEmpty) {
      BinaryNode<T> curr = queue.removeAt(0);
      path.add(curr.value);
      final left = curr.left;
      final right = curr.right;

      if (left != null) {
        queue.add(left);
      }

      if (right != null) {
        queue.add(right);
      }
    }

    return path;
  }

  _preOrderSearch(BinaryNode<T>? node, List<T> path) {
    if (node == null) return;
    path.add(node.value);
    _preOrderSearch(node.left, path);
    _preOrderSearch(node.right, path);
  }

  _inOrderSearch(BinaryNode<T>? node, List<T> path) {
    if (node == null) return;
    _inOrderSearch(node.left, path);
    path.add(node.value);
    _inOrderSearch(node.right, path);
  }

  _postOrderSearch(BinaryNode<T>? node, List<T> path) {
    if (node == null) return;
    _postOrderSearch(node.left, path);
    _postOrderSearch(node.right, path);
    path.add(node.value);
  }
}

class BinaryNode<T> {
  T value;
  BinaryNode<T>? left;
  BinaryNode<T>? right;

  BinaryNode({
    required this.value,
    this.left,
    this.right,
  });
}
