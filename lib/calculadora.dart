import 'dart:math';

class CalculadoraIMC {
  CalculadoraIMC({required this.altura, required this.peso});

  int altura;
  int peso;

  late double imc;

  void calcular() {
    double resultado = peso / pow(altura, 2);

    imc = resultado;
  }

  String getImc() {
    return imc.toStringAsFixed(1);
  }

  String getResultado() {
    if(imc >= 25){
      return "Acima do peso";
    } else if ( imc < 18.5){
      return "Abaixo do peso";
    } else{
      return "Normal";
    }

  }

  String getDescricao() {
    if (imc >= 25) {
      return "Você tem um peso acima do normal. Tente fazer exercícios.";
    } else if (imc < 18.5) {
      return "Você tem um peso abaixo do normal. Tente comer mais";
    } else {
      return "Você está em seu peso normal. Bom trabalho!";
    }
  }
}
