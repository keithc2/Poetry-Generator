public class WordVerb extends Word {
 
  public WordVerb(String _w, String _pos) {
     super(_w, _pos);
  }

  public void render(int x, int y) {
    amount = 3000;
    amtmove = 100;
    current = millis();
    percent = (float) current / (float) amount;
    extrapix = (int) (percent * amtmove);
    //moving();
    
    textFont(font, 30);
    fill(255, 255, 255, 255);
    text(word, x, y);
    fill(255, 255);
  }
}
