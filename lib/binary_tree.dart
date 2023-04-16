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
    return [];
  }

  _preOrderSearch(BinaryNode<T>? node, List<T> path) {}

  _inOrderSearch(BinaryNode<T>? node, List<T> path) {
    final current = node;
    if (current == null) return path;

    _inOrderSearch(current.left, path);
    path.add(current.value);
    _inOrderSearch(current.right, path);

    return path;
  }

  _postOrderSearch(BinaryNode<T>? node, List<T> path) {}
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
