using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Security.Cryptography;

namespace MobileStore.Utilities.Helper
{
    public enum HashAlgorithm
    {
        MD5,
        SHA1,
        SHA256,
        SHA512
    }

    public class CryptoHelper
    {
        public static string Hash(string Plaintext, HashAlgorithm ha = HashAlgorithm.SHA512)
        {
            if (ha == HashAlgorithm.SHA512)
                return SHA512Hashing(Plaintext);
            return SHA512Hashing(Plaintext);
        }

        private static string SHA512Hashing(string text)
        {
            UnicodeEncoding UE = new UnicodeEncoding();
            byte[] plaintBytes = UE.GetBytes(text);
            SHA512CryptoServiceProvider sha512 = new SHA512CryptoServiceProvider();
            byte[] cipherBytes = sha512.ComputeHash(plaintBytes);
            return Convert.ToBase64String(cipherBytes);
        }
    }
}
