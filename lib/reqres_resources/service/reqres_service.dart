import 'package:dio/dio.dart';
import 'package:pratice_vb/reqres_resources/model/resource_model.dart';

abstract class IReqresService{
  IReqresService({required this.dio});
  final Dio dio;


Future<ResourceModel?> fetchResourceItem();
  
}

//enum _ReqResPath {resource}


class ReqresService extends IReqresService{
  ReqresService({required super.dio});

  @override
  Future<ResourceModel?> fetchResourceItem() async {
    final response = await Dio().get("/unknown");
    if(response.statusCode==200){
      final jsonBody = response.data;
      if(jsonBody is Map<String,dynamic>) {
        return ResourceModel.fromJson(jsonBody);
      }
    }
    return null;
   
  }
  
}