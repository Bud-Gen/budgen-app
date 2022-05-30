import 'package:budgen/app/product/add_product/add_product_store.dart';
import 'package:budgen/app/product/add_product/widgets/add_product_alert.dart';
import 'package:budgen/app/product/add_product/widgets/add_product_text.dart';
import 'package:budgen/app/product/add_product/widgets/add_product_textfield.dart';
import 'package:budgen/app/product/add_product/widgets/add_product_title.dart';
import 'package:budgen/app/product/add_product/widgets/description_textfield.dart';
import 'package:budgen/app/product/add_product/widgets/empty_product_alert.dart';
import 'package:budgen/app/product/add_product/widgets/price_textfield.dart';
import 'package:budgen/app/product/add_product/widgets/set_product_radio_list.dart';
import 'package:budgen/utils/style/color_pallete.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class AddProductPage extends StatefulWidget {
  const AddProductPage({Key? key}) : super(key: key);

  @override
  State<AddProductPage> createState() => _AddProductPageState();
}

class _AddProductPageState extends State<AddProductPage> {
  final AddProductStore store = AddProductStore();

  @override
  void initState() {
    store.onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final ColorPalette colorPalette = ColorPalette();

    return Scaffold(
      backgroundColor: colorPalette.background,
      appBar: AppBar(
        backgroundColor: colorPalette.primaryCollor,
        elevation: 0,
        title: Text('ADICIONAR PRODUTO'),
      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: colorPalette.primaryCollor,
        label: Row(
          children: [Icon(Icons.add), Text('ADICIONAR')],
        ),
        onPressed: () async {
          if (store.isItem)
            print('ITEM');
          else
            print('SERVIÇO');
          print('nome: ');
          print(store.name);
          print('codigo de registro: ');
          print(store.code);
          print('preço: ');
          print(store.price);
          print('tipo: ');
          print(store.type);
          print('descrição: ');
          print(store.description);
          print('url de produto: ');
          print(store.url);

          if (!store.isValid()) {
            EmptyProductAlert();
          } else {
            final bool result = await store.addProduct();
            if (result) {
              showCupertinoDialog(
                context: (context),
                builder: (_) {
                  return AddProductAlert();
                },
              );

              store.clear();
            }
          }
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Observer(
            builder: (BuildContext context) {
              if (store.isLoading)
                return Center(
                  child: CircularProgressIndicator(
                    color: colorPalette.primaryCollor,
                  ),
                );
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AddProductTitle(),
                  SizedBox(height: 25),
                  AddProductText('Tipo de produto:'),
                  SetProductRadioList(
                    groupValue: store.isItem,
                    setItem: store.setItem,
                    setWorker: store.setWorker,
                  ),
                  AddProductText('Nome:'),
                  SizedBox(height: 15),
                  AddProductTextfield(
                    hintText: 'insira o nome',
                    initialValue: store.name,
                    onChanged: (String value) => store.changeName(value),
                  ),
                  SizedBox(height: 15),
                  AddProductText('Código de registro:'),
                  SizedBox(height: 15),
                  AddProductTextfield(
                    initialValue: store.code,
                    hintText: 'insira o código de registro',
                    onChanged: (String value) => store.changeCode(value),
                  ),
                  SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AddProductText('Preço:'),
                          SizedBox(height: 15),
                          PriceTextfield(
                            onChanged: (String value) {
                              store.changePrice(value);
                            },
                            initialValue: store.price,
                            hintText: "R\$",
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AddProductText('Tipo:'),
                          SizedBox(height: 15),
                          PriceTextfield(
                            initialValue: store.type,
                            onChanged: (String value) {
                              store.changeType(value);
                            },
                            hintText: "",
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  AddProductText('Descrição:'),
                  SizedBox(height: 15),
                  DescriptionTextfield(
                    onChanged: (String value) {
                      store.changeDescription(value);
                    },
                  ),
                  SizedBox(height: 15),
                  AddProductText('Url da imagem do produto:'),
                  SizedBox(height: 15),
                  AddProductTextfield(
                    initialValue: store.url,
                    onChanged: (String value) {
                      store.changeUrl(value);
                    },
                    hintText: 'url da imagem',
                  ),
                  SizedBox(height: 45),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
