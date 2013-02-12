public class WordAdverb extends Word {
  
  public WordAdverb(String _w, String _pos) {
    super(_w, _pos);
  }
  
  public void render(int x, int y) {
    textFont(font2, 16);
    fill(255, 0, 0, 255);
    text(word, x, y);
    fill(255, 255);
  }
}
