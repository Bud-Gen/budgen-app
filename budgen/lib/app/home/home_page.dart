import 'package:budgen/app/home/home_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatelessWidget {
  const HomePage() : super();

  @override
  Widget build(BuildContext context) {
    HomeStore store = HomeStore();

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Observer(builder: (_) {
            if (store.isLoading) {
              return CircularProgressIndicator();
            } else {
              return Center(
                child: Text("Carregado"),
              );
            }
          }),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async => store.addMock(),
        label: Text(
          "add mock",
        ),
      ),
    );
  }
}
