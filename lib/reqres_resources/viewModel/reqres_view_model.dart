import 'package:flutter/material.dart';
import 'package:pratice_vb/reqres_resources/model/resource_model.dart';
import 'package:pratice_vb/reqres_resources/service/reqres_service.dart';
import 'package:pratice_vb/reqres_resources/view/reqre_view.dart';

import '../../serviceGeneral/project_dio.dart';

abstract class ReqresViewModel extends State<ReqResView>  with ProjectDioMixin {

  late final IReqresService reqresService;
  List <Data> resources = [];
  
  @override
  void initState() {
   super.initState();
   reqresService = ReqresService(dio: service);
   fetch();
    
  }

  Future <void> fetch() async{
    resources = (await reqresService.fetchResourceItem())?.data ?? [] ;  
  }

  
}