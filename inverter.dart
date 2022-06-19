import 'dart:io';

void main() {
  var palavraInvertida = [];
  var pos = 0;
  print('Digite a palavra que deseja inverter:\n');
  String palavra = stdin.readLineSync()!;

  for (var i = palavra.length - 1; i > -1; i--) {
    palavraInvertida.add(pos);
    palavraInvertida[pos] = palavra[i];
    pos++;
  }
  print(palavraInvertida.join());
}
