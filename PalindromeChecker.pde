public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palidrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palidrome.");
    }
  }
}

public boolean palindrome(String word)
{
    String w = new String(word);
    w = noSpaces(w);
    w = noPunctuation(w);
    w = noCapitals(w);
    if(w.equals(reverse(w)) == true)
    {
      return true;
    }
    /*if(word.equals(reverse(word)))
    {
      return true;
    }*/
    /*if(noCapitals(numLetters(word)).equals(noCapitals(numLetters(reverse(word)))))
    {
      return true;
    }*/
  return false;
}


public String reverse(String str)
{
    String sNew = new String();
    for(int i = str.length() - 1; i >= 0; i--)
    {
      sNew = sNew + str.substring(i, i + 1);
    }
    return sNew;
}

public String noSpaces(String sWord)
{
  String a = new String();
  for(int i = 0; i < sWord.length(); i++)
  {
    if(sWord.substring(i , i + 1).equals(" ") == false)
    {
      a = a + sWord.substring(i, i + 1);
    }
  }
  return a;
}

public String noPunctuation(String sString)
{
  String a = new String();
  for(int i = 0; i < sString.length(); i++)
  {
    if(Character.isLetter(sString.charAt(i)))
    {
      a = a + sString.charAt(i);
    }
  }
  return a;
}

public String noCapitals(String sWord){
  return sWord.toLowerCase();
}
