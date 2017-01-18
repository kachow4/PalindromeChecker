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
    if(word.equals(reverse(word)))
    {
      return true;
    }
    else if(noSpaces(word).equals(noSpaces(reverse(word))))
    {
      return true;
    }
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
  for(int i = sWord.length()-1; i > 0; i--)
  {
    if(sWord.substring(i , i + 1).equals(" ") == false)
    {
      a = a + sWord.substring(i, i + 1);
    }
  }
  return a;
}

public int numLetters(String sString)
{
  int a = 0;
  for(int i = 0; i < sString.length(); i++)
  {
    if(Character.isLetter(sString.charAt(i)))
    {
      a++;
    }
  }
  return a;
}

