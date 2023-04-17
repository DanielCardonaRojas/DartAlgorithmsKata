class Trie {
  TrieNode root;

  Trie() : root = TrieNode(char: '*');

  void insert(String word) {}

  bool search(String word) {
    return false;
  }

  List<String> words({String? prefixedBy}) {
    return [];
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
