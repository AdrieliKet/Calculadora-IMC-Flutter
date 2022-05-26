import 'package:flutter/material.dart';
import 'package:flutter_application_4/constants.dart';
import 'package:flutter_application_4/widgets/bottom_button.dart';
import 'package:flutter_application_4/widgets/custom_card.dart';

class Results extends StatelessWidget {
  Results({
      required this.resultado, 
      required this.valor, 
      required this.descricao});

  String resultado, valor, descricao;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Resultados"),
      ),
      body: Column(
        children: [
              Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Text("Seu Resultado", style: TextStyle( fontWeight: FontWeight.bold, fontSize:  40),)
                ,),
              Expanded(
                child: CustomCard(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(resultado, style:  resultStyle,), 
                      Text(valor, style: valueStyle,), 
                      Text(descricao, style: descriptionStyle, textAlign: TextAlign.center,)
                    ],
                  ),
                ),
              ),
              BottomButton(
                label: "Calcular Novamente", 
                onPressed: Navigator.of(context).pop,
              )
          ],
        ),
    );
  }
}
