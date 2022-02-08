import 'package:budgen/app/home/home_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class HomePage extends StatelessWidget {
  const HomePage() : super();

  @override
  Widget build(BuildContext context) {
    HomeStore store = HomeStore();
    store.onInit();

    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Observer(builder: (_) {
            if (store.isLoading) {
              return CircularProgressIndicator();
            }
            return SizedBox(
              width: 0,
              height: 0,
            );
          }),
          Observer(builder: (_) {
            if (store.currentProject == null)
              return Center(
                child: Text("vazio"),
              );

            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Text(store.currentProject.name),
                  Text(store.currentProject?.workers?.length.toString()),
                  Text(store.currentProject?.items?.length.toString()),
                ],
              ),
            );
          })
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
