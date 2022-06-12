import 'package:budgen/app/onboarding/onboarding_store.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage();

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final store = OnboardingStore();
  final colorPalette = ColorPalette();

  @override
  Widget build(BuildContext context) {
    store.pageContext = context;

    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.zero,
    );

    final pages = [
      PageViewModel(
        title: "Bem-vindo ao Budgen",
        body:
            "Criar uma orçamento não precisa ser uma tarefa difícil, a gente mostra como é rapido com o Budgen",
        image: Image.asset("assets/icon.png", height: 250.0),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Importar Itens/Serviços",
        body:
            "Importar planilha com items/serviços é simples no Budgen. Basta baixar a planilha template, adicionar os items/serviços e depois importa-la para o app",
        image: Image.asset("assets/onboarding/onboarding1.png", height: 250.0),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Adicão de Produtos",
        body:
            "Precisa adicionar um produto de forma rápida? Basta clicar no botão destacado para adiciona-lo",
        image: Image.asset("assets/onboarding/onboarding2.png", height: 250.0),
        decoration: pageDecoration,
      ),
      PageViewModel(
          title: "Iniciar Projeto",
          body:
              "Basta clicar no botão “INICIAR PROJETO” e escolher o nome desejado para começar a criar o orçamento",
          image:
              Image.asset("assets/onboarding/onboarding3.png", height: 250.0),
          decoration: pageDecoration),
      PageViewModel(
        title: "Adicionar Items/Serviços no Orcamento",
        body:
            "Para adicionar um item/serviço no orçamento atual, basta clicar no botão “+” destacado na imagem acima",
        image: Image.asset("assets/onboarding/onboarding4.png", height: 250.0),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Revisar Items/Serviços",
        body:
            "Apos adicionar todos os items/serviços, clique no botão com o símbolo de carrinho para revisar o orçamento criado",
        image: Image.asset("assets/onboarding/onboarding5.png", height: 250.0),
        decoration: pageDecoration,
      ),
      PageViewModel(
        title: "Finalizar Projeto",
        body:
            "Após checar os itens e serviços adicionados, bem como, aplicar descontos, clique no botão “FINALIZAR” e envie o orçamento para seu cliente",
        image: Image.asset("assets/onboarding/onboarding6.png", height: 250.0),
        decoration: pageDecoration,
      ),
    ];

    final introKey = GlobalKey<IntroductionScreenState>();

    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages: pages,
      onSkip: store.navigateToImportSpreadsheetPage,
      onDone: store.navigateToImportSpreadsheetPage,
      showSkipButton: true,
      skipOrBackFlex: 0,
      nextFlex: 0,
      back: const Icon(Icons.arrow_back),
      skip: const Text('PULAR',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.grey)),
      next: const Text('PROXIMO',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
      done: const Text('FINALIZAR',
          style: TextStyle(fontWeight: FontWeight.w600, color: Colors.black)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeColor: Colors.black,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),
    );
  }
}
