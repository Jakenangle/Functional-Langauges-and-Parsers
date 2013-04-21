/* Steven Cater
 * CS-435, Spring 2011
 * Driver file for Cool lexer
 */

/* Do _not_ edit this file. */

import org.antlr.runtime.*;
import org.antlr.runtime.tree.*;
import java.io.*;
import java.util.*;

public class CoolLexer {
   public static void main(String[] args) throws Exception {
      IdMap map = new IdMap("CoolLex.tokens");
      CharStream input = new ANTLRFileStream(args[0]);
      CoolLex lexer = new CoolLex(input);
      Token token;
      while ((token = lexer.nextToken()).getType()!=-1) {//Lexer.getEOFToken()) { //Token.EOF_TOKEN) {
	 System.out.println("#" + token.getLine()+ 
			    " " + map.name((token.getType())) +
			    " |" +token.getText() + "|");
      }
   }
}


class IdMap {
   String [] array = new String [300];
   
   IdMap(String fileName) throws IOException {
      Scanner sc = new Scanner(new File(fileName)).useDelimiter("[=\\s$]+");
      int index;
      String val;
      while(sc.hasNext()) {
	 val = sc.next();
	 index = sc.nextInt();
	 array[index] = val;
      }
      sc.close();
   }

   String name(int index) {
      if (index < 0) {
	 return("Bad index in IdMap.name: " + index);
      }
      else {
	 return array[index];
      }
      //return "Cannot happen";
   }
}

      
