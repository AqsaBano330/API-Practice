import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedapipractice/Home/home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ViewModelBuilder.reactive(viewModelBuilder: () => HomeViewModel(),
     builder: (context , viewModel, child){
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                viewModel.get();
              }, child: Text("get")),

              ElevatedButton(onPressed: (){
                viewModel.post();
              }, child: Text("post")),

              ElevatedButton(onPressed: (){
                viewModel.delete();
              }, child: Text("delete")),


              ElevatedButton(onPressed: (){
                viewModel.put();
              }, child: Text("put")),


              
            ],
          ),
        )
      );
     });
  }
}