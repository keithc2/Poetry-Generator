public class WordNoun extends Word {
  
  public WordNoun(String _w, String _pos) {
    super(_w, _pos);
  }
  
  public void render(int x, int y) {
    amount = 5000;
    amtmove = 100;
    current = millis();
    percent = (float) current / (float) amount;
    extrapix = (int) (percent * amtmove);
    //moving();
    
    textFont(font, 22);
    fill(255, 255, 0, 255);
    
    rotate(.003);
    
    text(word, x, y);
    
    rotate(0);
    
    fill(255, 255);
  }
}
