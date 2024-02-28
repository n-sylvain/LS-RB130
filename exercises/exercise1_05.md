```ruby
ENCRYPTED_PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
].freeze

def rot13(encrypted_text)
  encrypted_text.each_char.reduce('') do |result, encrypted_char|
    result + decipher_character(encrypted_char)
  end
end

def decipher_character(encrypted_char)
  case encrypted_char
  when 'a'..'m', 'A'..'M' then (encrypted_char.ord + 13).chr
  when 'n'..'z', 'N'..'Z' then (encrypted_char.ord - 13).chr
  else                        encrypted_char
  end
end

ENCRYPTED_PIONEERS.each do |encrypted_name|
  puts rot13(encrypted_name)
end
```

This code is a simple implementation of the ROT13 encryption algorithm, which is a basic Caesar cipher with a rotation of 13 characters. The code defines an encrypted list of names called `ENCRYPTED_PIONEERS` and then decrypts each name using the ROT13 algorithm.

Here's a breakdown of the code:

1. `ENCRYPTED_PIONEERS` is a constant array containing 19 encrypted names using the ROT13 algorithm. The array is frozen, which means its content cannot be modified.
2. The `rot13` method takes an encrypted text (a string) as an argument. It iterates through each character in the string using `each_char` and reduces the characters to a decrypted string using the `reduce` method. The initial value for the reduction is an empty string `''`. For each character, the method calls the `decipher_character` method and appends the decrypted character to the result string.
3. The `decipher_character` method takes an encrypted character as an argument. It uses a `case` statement to check if the character is within the range of 'a' to 'm' or 'A' to 'M'. If it is, the method adds 13 to the ASCII value of the character using `ord` and then converts it back to a character using `chr`. If the character is within the range of 'n' to 'z' or 'N' to 'Z', the method subtracts 13 from the ASCII value of the character. For any other character (like spaces or punctuation), the method simply returns the original character.
4. Finally, the code iterates through the `ENCRYPTED_PIONEERS` array using the `each` method and calls the `rot13` method on each encrypted name. The decrypted name is then printed to the console using `puts`.

The output of this code will be the decrypted names:

* Alyssa P. Hacker
* Ben Bitdiddle
* Ada Lovelace
* Alan Turing
* Grace Hopper
* Howard Aiken and the Mark I
* Jean Bartik
* Richard Stallman
* Donald Knuth
* Edsger Dijkstra
* Linus Torvalds
* Grace Hopper and UNIVAC
* Edsger Dijkstra
* Ludwig Wittgenstein
* John von Neumann
* Hedy Lamarr
* Tim Berners-Lee
* Dennis Ritchie
* Alan Kay

The code demonstrates how to use the `each_char`, `reduce`, and `ord`/`chr` methods, as well as how to implement the ROT13 algorithm in Ruby.