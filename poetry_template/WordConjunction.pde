public class WordConjunction extends Word {
  
  public WordConjunction(String _w, String _pos) {
    super(_w, _pos);
  }
  
  public void render(int x, int y) {
    textFont(font2, 20);
    fill(255, 215, 0, 255);
    text(word, x, y);
    fill(255, 255);
  }
}
