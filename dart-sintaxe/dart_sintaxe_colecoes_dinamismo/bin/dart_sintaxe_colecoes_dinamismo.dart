import 'transporte.dart';
import 'viagem.dart';

void main() {
   Viajar jalapao = Viajar(locomocao: Transporte.carro);
  jalapao.aventura(); // codigo sem enum
  jalapao.aventura2(); 

  List<String> destinos = [
    'Jalapão',
    'Chapada dos Veadeiros',
    'João Pessoa',
    'Chapada dos Veadeiros'
  ];
  print(destinos);

  Set destinosVisitados = <String>{ 
    'Rio de Janeiro',
    'Chapada dos Veadeiros',
    'São Paulo',
    'Chapada dos Veadeiros',
  };
  print(destinosVisitados);

  Set destinosDesejados = <String>{
    'Jalapão',
    'Califórnia',
    'Gramado',
    'Chapada Diamantina',
    'São Paulo'
  };
  print(destinosDesejados.intersection(destinosVisitados));

  //Map Literal
  Map<String, String> motivoMap = { // se ficar curto adicionar Elementos no Map
    'Jalapão': 'Natureza',
    'Califórnia': 'Arte',
    'Gramado': 'Chocolate',
    'Chapada Diamantina': 'Cachoeiras',
    'São Paulo': 'Compras',
  };
  print(motivoMap);
  //Map Contrutor
  Map<String, dynamic> precoMap = {
    'Jalapão': 2380.00,
    'Califórnia': 'MUITO CARO',
    'Gramado': 1200,
    'Chapada Diamantina': 600,
    'São Paulo': 'Barato',
  };
  print(precoMap);

  // Variaveis Dynamic
  var precoX = 1;// variavel do tipo num( int ou double)
  print(precoX.runtimeType);// prova Real
  // x = "frase"; -> vai brigar com a gente porque não podemos alterar a tipagem.

  dynamic precoY; // não sabe o tipo
  precoY = 1; // agora é um int
  print(precoY.runtimeType);
  precoY ='frase'; // agora é uma String
  print(precoY.runtimeType);

  //Variáveis Static
  jalapao.visitar();
  jalapao.visitar();
  jalapao.visitar();
  //mas e se eu for pra outro lugar?
  Viajar chapada = Viajar(locomocao: Transporte.bicicleta);
  chapada.visitar();
  chapada.visitar();

  chapada.visitas = 20;
  print(chapada.visitas);

  print(jalapao.numeroDeViagens) ;
  jalapao.alterarViagens = 200;
  print(jalapao.numeroDeViagens);
}
