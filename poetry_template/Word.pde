public class Word {
  String word;
  String POS;
  int amount;
  int amtmove;
  int current;
  float percent;
  int extrapix;
  
  public Word(String _w, String _pos) {
    this.word = _w;
    this.POS = _pos;
  }
  
  public void render(int x, int y) {
    textFont(font, 32);
    text(word, x, y);
  }
}
