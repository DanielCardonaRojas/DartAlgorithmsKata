import 'package:algorithms/trie.dart';
import 'package:test/test.dart';

void main() {
  test('can insert word', () {
    final trie = Trie();
    trie.insert('leaf');
    trie.insert('leave');
    assert(trie.words().length == 2);
  });

  test('can search all words starting with prefix', () {
    final trie = Trie();
    trie.insert('leaf');
    trie.insert('leave');
    trie.insert('car');

    final autoComplete = trie.words(prefixedBy: 'lea');
    expect(autoComplete, ['leaf', 'leave']);
  });

  test('can collect all inserted words', () {
    final trie = Trie();
    trie.insert('leaf');
    trie.insert('leave');
    final allWords = trie.words();
    expect(allWords, ['leaf', 'leave']);
  });
}
