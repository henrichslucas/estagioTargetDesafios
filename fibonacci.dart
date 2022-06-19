//Para executar o script corretamente, abra o console no diretório onde esse arquivo está localizado, e digite 'dart fibonacci.dart'

import 'dart:io';

void checkFibonacci(sequencia, numero) {
  var check = 0;

  for (var i in sequencia) {
    if (numero == i) {
      check++;
    }
  }

  if (check == 0) {
    print('\n O numero ${numero} não existe na sequência de Fibonacci.\n ');
  } else {
    print('\n O numero ${numero} existe na sequência de Fibonacci.\n ');
  }
}

List fibonacci(limite) {
  var fibonacci = [0, 1];

  for (var i = 2; i < limite; i++) {
    fibonacci.add(i);
    fibonacci[i] = fibonacci[i - 2] + fibonacci[i - 1];
  }
  return fibonacci;
}

void main() {
  print('Escreva um número:\n');

  int? numero = int.parse(stdin.readLineSync()!);
  //Limite estipulado para a sequência de fibonacci
  int? limite = 30;

  checkFibonacci(fibonacci(limite), numero);
}
