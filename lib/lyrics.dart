///
class Lyrics {
  final List<String> _lines = [
    "Hey there, I just met you",
    "And this is craaaazy",
    "But here's my number",
    "So call me, maybe <3",
  ];

  int _currentLine = 0;

  /// Getter for _currentLine
  int get currentLine {
    return _currentLine;
  }

  /// Getter for _lines
  List<String> get lines {
    return _lines;
  }

  /// Method for moving to the next line of the song
  void toNextLine() {
    if (_currentLine < _lines.length - 1) {
      _currentLine++;
    }
  }
}
