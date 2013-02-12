public class WordArticle extends Word {
  
  public WordArticle(String _w, String _pos) {
    super(_w, _pos);
  }
  
  public void render(int x, int y) {
    textFont(font, 18);
    fill(0, 255, 0, 255);
    text(word, x, y);
    fill(255, 255);
  }
}
