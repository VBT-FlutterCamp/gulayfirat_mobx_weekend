import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_mobx_weekend/core/base/base_view.dart';
import 'package:flutter_mobx_weekend/feature/home/makeup_view/widgets/build_circle_progress.dart';
import '../makeup_view_model/makeup_view_model.dart';

class MakeupView extends StatelessWidget {
  const MakeupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseView<MakeupViewModel>(
        viewModel: MakeupViewModel(),
        onModelReady: (model) {
          model.init();
          model.setContext(context);
        },
        onPageBuilder: (BuildContext context, MakeupViewModel viewModel) {
          return Scaffold(
              appBar: AppBar(
                  backgroundColor: Color(0xffFBF0D7),
                  title: Text(
                    "Makeup App",
                    style: TextStyle(color: Colors.black),
                  )),
              backgroundColor: Color(0xffFBF0D7),
              body: Observer(
                builder: (_) {
                  return viewModel.isLoading
                      ? Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: GridView.builder(
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 2),
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: makeupCard(viewModel, index),
                                );
                              }),
                        )
                      : const BuildCircleProgress();
                },
              ));
        });
  }

  Card makeupCard(MakeupViewModel viewModel, int index) {
    return Card(
      elevation: 10,
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Image.network(
                    viewModel.makeupList?[index].imageLink ?? "",
                    fit: BoxFit.cover,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: InkWell(
                    child: Icon(
                      Icons.add_circle_outline_sharp,
                      color: Color(0xff6F697F),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    viewModel.makeupList?[index].name ?? "",
                    style: TextStyle(fontSize: 10),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 4),
                  child: Icon(
                    Icons.favorite_border_sharp,
                    size: 23,
                    color: Color(0xff6F697F),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
