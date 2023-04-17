class Trie {
  TrieNode root;

  Trie() : root = TrieNode(char: '*');

  void insert(String word) {
    TrieNode currentNode = root;

    for (var i = 0; i < word.length; i++) {
      final char = word[i];

      final childNode = currentNode.children[char];

      if (childNode != null) {
        currentNode = childNode;
      } else {
        final newNode = TrieNode(char: char);
        currentNode.children[char] = newNode;
        currentNode = newNode;
      }
    }

    currentNode.isTerminal = true;
  }

  bool search(String word) {
    final node = getNode(word);
    return node?.isTerminal ?? false;
  }

  bool containsPrefix(String word) {
    return getNode(word) != null;
  }

  List<String> words({String? prefixedBy}) {
    List<String> result = [];
    final prefix = prefixedBy;
    var initialNode = root;

    if (prefix != null) {
      initialNode = getNode(prefix) ?? root;
    }
    _collectWords(node: initialNode, words: result, word: prefix ?? '');
    return result;
  }

  void _collectWords(
      {required TrieNode? node,
      String word = '',
      List<String> words = const []}) {
    if (node == null) return;

    if (node.isTerminal) {
      words.add(word);
    }

    for (final entry in node.children.entries) {
      _collectWords(node: entry.value, word: word + entry.key, words: words);
    }
  }

  void collect({TrieNode? node, required List<String> array}) {}

  TrieNode? getNode(String word) {
    TrieNode? currentNode = root;

    for (var i = 0; i < word.length; i++) {
      final char = word[i];
      final childNode = currentNode?.children[char];
      if (childNode == null) return null;

      currentNode = childNode;
    }

    return currentNode;
  }
}

class TrieNode {
  String char;
  bool isTerminal;
  Map<String, TrieNode> children;

  TrieNode({required this.char})
      : children = <String, TrieNode>{},
        isTerminal = false;
}
