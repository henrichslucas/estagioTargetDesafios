//Para executar o script corretamente, abra o console no diretório onde esse arquivo está localizado, e digite 'dart distribuidora.dart'

void main() {
  double total = 0;
  List<double> percent = [];
  int i = 0;

  var estados = {
    'sp': 67836.43,
    'rj': 36678.66,
    'mg': 29229.88,
    'es': 27165.48,
    'outros': 19849.53
  };

  total = ((estados['sp']! +
      estados['rj']! +
      estados['mg']! +
      estados['es']! +
      estados['outros']!));

  while (i < 5) {
    switch (i) {
      case 0:
        percent.add(0);
        percent[i] = (estados['sp']! / total) * 100;
        i++;
        break;
      case 1:
        percent.add(1);
        percent[i] = (estados['rj']! / total) * 100;
        i++;
        break;
      case 2:
        percent.add(2);
        percent[i] = (estados['mg']! / total) * 100;
        i++;
        break;
      case 3:
        percent.add(3);
        percent[i] = (estados['es']! / total) * 100;
        i++;
        break;
      case 4:
        percent.add(4);
        percent[i] = (estados['outros']! / total) * 100;
        i++;
        break;
    }
  }

  print(
      '\nO estado de São Paulo representa um total de ${percent[0].toStringAsFixed(1)} %\n');
  print(
      '\nO estado do Rio de Janeiro representa um total de ${percent[1].toStringAsFixed(1)} %\n');
  print(
      '\nO estado de Minas Gerais representa um total de ${percent[2].toStringAsFixed(1)} %\n');
  print(
      '\nO estado do Espirito Santo representa um total de ${percent[3].toStringAsFixed(1)} %\n');
  print(
      '\nOs outros estados representam um total de ${percent[4].toStringAsFixed(1)} %\n');
}
