public class WordAdjective extends Word {
  
  public WordAdjective(String _w, String _pos) {
    super(_w, _pos);
  }
  
  public void render(int x, int y) {
    textFont(font2, 14);
    fill(255, 165, 0, 255);
    text(word, x, y);
    fill(255,255);
  }
}
