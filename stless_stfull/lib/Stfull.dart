import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Este widget é a raiz do seu aplicativo.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // Este é o tema do seu aplicativo.
        //
        // Tente executar seu aplicativo com "flutter run". Você verá o
        // o aplicativo tem uma barra de ferramentas azul. Em seguida, sem sair do aplicativo, tente
        // alterando o primarySwatch abaixo para Colors.green e então invoca
        // "hot reload" (pressione "r" no console onde executou "flutter run",
        // ou simplesmente salve suas alterações para "hot reload" em um Flutter IDE).
        // Observe que o contador não voltou a zero; a aplicação
        // não é reiniciado.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Este widget é a página inicial do seu aplicativo. É stateful, ou seja,
  // que possui um objeto State (definido abaixo) que contém campos que afetam
  // como fica.

  // Esta classe é a configuração do estado. Ele contém os valores (neste
  // caso o título) fornecido pelo pai (neste caso, o widget App) e
  // usado pelo método build do State. Os campos em uma subclasse Widget são
  // sempre marcado como "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // Esta chamada para setState informa ao framework Flutter que algo foi
      // alterado neste State, o que faz com que ele execute novamente o método build abaixo
      // para que a exibição possa refletir os valores atualizados. se nós mudássemos
      // _counter sem chamar setState(), então o método build não seria
      // chamado novamente, e então nada parece acontecer.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Este método é executado novamente toda vez que setState é chamado, por exemplo, como feito
    // pelo método _incrementCounter acima.
    //
    // A estrutura do Flutter foi otimizada para tornar os métodos de compilação reexecutáveis
    // rápido, para que você possa reconstruir qualquer coisa que precise ser atualizada
    // do que ter que alterar individualmente as instâncias dos widgets.
    return Scaffold(
      appBar: AppBar(
        // Aqui pegamos o valor do objeto MyHomePage que foi criado por
        // o método App.build e use-o para definir o título da nossa appbar.
        title: Text(widget.title),
      ),
      body: Center(
        // Center é um widget de layout. Leva uma única criança e a posiciona
        // no meio do pai.
        child: Column(
          // A coluna também é um widget de layout. Leva uma lista de crianças e
          // organiza-os verticalmente. Por padrão, ele se dimensiona para caber em seu
          // filhos horizontalmente e tenta ser tão alto quanto seu pai.
          //
          // Invoque "debug painting" (pressione "p" no console, escolha o
          // Ação "Toggle Debug Paint" do Flutter Inspector no Android
          // Studio, ou o comando "Toggle Debug Paint" no Visual Studio Code)
          // para ver o wireframe de cada widget.
          //
          // A coluna tem várias propriedades para controlar como ela se dimensiona e
          // como ele posiciona seus filhos. Aqui usamos mainAxisAlignment para
          // centraliza os filhos verticalmente; o eixo principal aqui é o vertical
          // eixo porque as colunas são verticais (o eixo cruzado seria
          // horizontais).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      /* Esta vírgula à direita torna a formatação automática mais agradável para métodos de construção.*/
    );
  }
}
