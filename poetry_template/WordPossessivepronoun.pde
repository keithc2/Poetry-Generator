public class WordPossessivepronoun extends Word {
  
  public WordPossessivepronoun(String _w, String _pos) {
    super(_w, _pos);
  }
  
  public void render(int x, int y) {
    textFont(font2, 24);
    fill(0, 255, 255, 255);
    text(word, x, y);
    fill(255, 255);
  }
}
