using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for EncryptionManager
/// </summary>
public class EncryptionManager
{
    public string EncrptedCode(string PlainText)
    {
        string CyberText = "";
        int ASCIIValue;
        char NewChar;
        foreach (char ch in PlainText)
        {
            ASCIIValue = ch;
            if (ASCIIValue >= 65 && ASCIIValue <= 90)
            {
                ASCIIValue = 65 - ASCIIValue + 90;
            }
            else if (ASCIIValue >= 97 && ASCIIValue <= 122)
            {
                ASCIIValue = 97 - ASCIIValue + 122;
            }
            else if (ASCIIValue >= 48 && ASCIIValue <= 57)
            {
                ASCIIValue = 48 - ASCIIValue + 57;
            }
            NewChar = (char)ASCIIValue;  //Getting Character from ASCIIValue.
            CyberText = CyberText + NewChar;
        }

        return CyberText;
    }
}