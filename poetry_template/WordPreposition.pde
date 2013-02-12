public class WordPreposition extends Word {
  
  public WordPreposition(String _w, String _pos) {
    super(_w, _pos);
  }
  
  public void render(int x, int y) {
    textFont(font, 26);
    fill(0, 100, 0, 255);
    text(word, x, y);
    fill(255, 255);
  }
}
