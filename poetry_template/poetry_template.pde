import java.util.*;

List<Word> words;

PImage img;
PFont font = createFont("Arial", 16);
PFont font2 = createFont("times", 16);


void setup() {
  size(669,426);
  img = loadImage("Conanpic.jpg");
  Map<String, List<String>> wordMap = loadInWords("words2.txt");  
  for (String k : wordMap.keySet()) {
    List<String> values = wordMap.get(k);
    for (String v : values) {
     // println("\tvalue = " + v);
    }
  }
  words = parseGrammar(wordMap, "grammar3.txt");
}

/*** 
  Loads in a text file indicating words assoicated with parts of speech, parses it, 
  and returns a Map of each part of speech and its assoicated List of words.
  Assumes each line looks like:
    POS:word1,word2,...,wordN
***/  
Map<String, List<String>> loadInWords(String filename) {
  
  Map<String, List<String>> m = new HashMap<String, List<String>>();
  String[] lines = loadStrings(filename);
  
  for (int i = 0 ; i < lines.length; i++) {
    //println(lines[i]);
    String[] chop = split(lines[i], ':');    
    String POS = chop[0];
    String wordsStr = chop[1];
    
    String[] wordsArr = split(wordsStr, ','); //split right side into an array of Strings
    List<String> wordsList = Arrays.asList(wordsArr); //turns array into a List
    
    for (String tmpStr : wordsList) {
      //println("\t\tword="+tmpStr);
    }
    m.put(POS, wordsList);
  }
  return m;
}

/***
  Reads through a text file of parts of speech and looks through a Map m for a random word 
  that corresponds to each part of speech. Returns a populated List of Word objects, where
  each type of Word has its own render() method.
***/

List<Word> parseGrammar( Map<String, List<String>> m, String filename) {
  
  List<Word> ws = new ArrayList<Word>();
  // TO DO - 
  // 1. Load in Strings from "grammar.txt" and loop through each line.
  String[] lines = loadStrings(filename);
    
  for(String line : lines) {
    println(line);  
    String[] posArr = line.split(" ");
    List<String> posList = Arrays.asList(posArr); //turns array into a List
    for (String p : posList) {
      //println("\t" + p);
      List<String> listOfWords = m.get(p);
      int rand = (int) random(0,listOfWords.size());
      String randomWord = listOfWords.get( rand );
      println("\t\t" + randomWord);
      
      Word w;
      if (p.equals("ADJECTIVE")) {
        w = new WordAdjective(randomWord, p);
      }
      else if (p.equals("ADVERB")) {
        w = new WordAdverb(randomWord, p);
      }
      else if (p.equals("ARTICLE")) {
        w = new WordArticle(randomWord, p);
      }
      else if (p.equals("CONJUNCTION")) {
        w = new WordConjunction(randomWord, p);
      }
      else if (p.equals("NOUN")) {
        w = new WordNoun(randomWord, p);
      }
      else if (p.equals("POSSESSIVEPRONOUN")) {
        w = new WordPossessivepronoun(randomWord, p);
      }
      else if (p.equals("PREPOSITION")) {
        w = new WordPreposition(randomWord, p);
      }
      else if (p.equals("PRONOUN")) {
        w = new WordPronoun(randomWord, p);
      }
      else if (p.equals("VERB")) {
        w = new WordVerb(randomWord, p);
      }
      else {
        w = new Word(randomWord, p);
      }
      
      ws.add(w);
    }
  }
  // 2. For each POS in the line, get the associated List of words from Map m.
  // 3. Choose a random word from the list.
  // 4. Place this word in a List that we will read from in the draw() loop. 
  
  return ws;
 }
 /***
 int movex;
 int movey;
 
 void moving() {
   movex++;
   movey++;
   if(movey >= height) {
     movey = 0;
   }
   if (movex+5 >= width) {
     movex = 0;
   }
 }
 ***/
int value = 0;

void draw() {
  image(img, 0, 0);
  tint(value, value, value, 128);
  
  int pX = 10;
  int pY = 35;
  
  for (Word w : words) {
    w.render(pX, pY);
    
    int sw = (int)textWidth(w.word);
    pX += sw + 10;
     
    if (pX > width - 100) {
      pX = 10;
      pY += 30;
    }
  }
}

void mouseClicked() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}

void mouseMoved() {
  value = value + 1;
  if (value > 255) {
    value = value - 1;
  }
  else if (value == 0) {
    value = value + 1;
  }
}
