import 'transporte.dart';

class Viajar {
  Transporte locomocao;

  int visitas = 0; //Aula 3
  static int _viagens = 0;
  static String test = 'test';
  Viajar({required this.locomocao});

  void visitar() {
    visitas++;
    _viagens++;
    print(
        'Você visitou esse lugar $visitas vezes \n Você já fez um total de $_viagens viagens \n');
  }

  int get numeroDeViagens {
    return _viagens;
  }

  void set alterarViagens(int novoValor) {
    if (novoValor < visitas) {
      print(
          'O valor de viagens total é menor que o valor de visitas ao local selecionado, isso não faz sentido. Alterando o valor desejado para o valor padrão');
      _viagens = visitas;
    } else {
      _viagens = novoValor;
    }
  }

  void aventura() {
    if (locomocao == 1) {
      print('Estou indo numa Aventura de Carro!');
    } else if (locomocao == 2) {
      print('Estou indo numa Aventura de Carro!');
    } else if (locomocao == 3) {
      print('Estou indo numa Aventura de Carro!');
    } else {
      print('Estou indo numa Aventura!');
    }
  }

  void aventura2() {
    switch (locomocao) {
      case Transporte.carro:
        print('Estou indo numa Aventura de Carro!');
        break;
      case Transporte.bicicleta:
        print('Estou indo numa Aventura de Bike!');
        break;
      case Transporte.onibus:
        print('Estou indo numa Aventura de Busão!');
        break;
      case Transporte.aviao:
        print('Estou indo numa Aventura de Avião!');
        break;
      case Transporte.andando:
        print('Estou indo numa Aventura a Pé!');
        break;
      case Transporte.helicoptero:
        print('Estou indo numa Aventura de Helicóptero!');
        break;
      case Transporte.patins:
        print('Estou indo numa Aventura de Patins!');
        break;
      case Transporte.skate:
        print('Estou indo numa Aventura de Skate!');
        break;
      default:
        {
          print('Estou indo numa Aventura!');
        }
    }
  }
}
