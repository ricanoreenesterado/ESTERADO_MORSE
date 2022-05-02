import 'dart:io';
import 'dart:core';

var morseCode = [
  ".-",
  "-...",
  "-.-.",
  "-..",
  ".",
  "..-.",
  "--.",
  "....",
  "..",
  ".---",
  "-.-",
  ".-..",
  "--",
  "-.",
  "---",
  ".--.",
  "--.-",
  ".-.",
  "...",
  "-",
  "..-",
  "...-",
  ".--",
  "-..-",
  "-.--",
  "--.."
];
var alphaNumeric = [
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J",
  "K",
  "L",
  "M",
  "N",
  "O",
  "P",
  "Q",
  "R",
  "S",
  "T",
  "U",
  "V",
  "W",
  "X",
  "Y",
  "Z"
];

bool is_valid(var name) {
  for (var i = 0; i < 26; i++) if (name == morseCode[i]) return true;
  return false;
}

void decodeMorse(var encode, var decode) {
  if (encode.length == 0)
    print(decode);
  else {
    for (int i = 0; i < 26; i++) {
      if (encode.startsWith(morseCode[i])) {
        var tempDecode = decode + alphaNumeric[i];
        var temp_decode = encode.substring(morseCode[i].length);
        decodeMorse(temp_decode, tempDecode);
      }
    }
  }
}

void main() {
  print("Enter the morse code you wish to decode: ");
  var name = stdin.readLineSync();
  decodeMorse(name, "");
}
