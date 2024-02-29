import 'package:flutter/material.dart';

import '../viewModel/reqres_view_model.dart';

class ReqResView extends StatefulWidget {
  const ReqResView({super.key});

  @override
  State<ReqResView> createState() => _ReqResViewState();
}

class _ReqResViewState extends ReqresViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(itemCount: resources.length ,itemBuilder: (context, index) {
        return Text(resources[index].name ?? "");
      },)  ,
    );
  }
}