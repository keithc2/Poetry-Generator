public class WordPronoun extends Word {
  
  public WordPronoun(String _w, String _pos) {
    super(_w, _pos);
  }
  
  public void render(int x, int y) {
    textFont(font2, 28);
    fill(255, 0, 212, 255);
    text(word, x, y);
    fill(255, 255);
  }
}
