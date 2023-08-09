import 'package:figam_project1/Model/Collectiom_model.dart';
import 'package:get/get.dart';

class ManCollectionWatch_Controller extends GetxController{
  // ignore: non_constant_identifier_names
  RxList ManWatchCollection_List = [].obs;
// ignore: non_constant_identifier_names
  get TotalItem => ManWatchCollection_List.length;

  void addManWatch({required ManCollection_Model manCollection}){
    ManWatchCollection_List.add(manCollection);
  }


  void removeManWatch({required ManCollection_Model manCollection}){
    ManWatchCollection_List.remove(manCollection);
  }
}


class WomanCollectionWatch_Controller extends GetxController{
  // ignore: non_constant_identifier_names
  RxList WomanWatchCollection_List = [].obs;
// ignore: non_constant_identifier_names
  get TotalItem => WomanWatchCollection_List.length;

  void addManWatch({required ManCollection_Model manCollection}){
    WomanWatchCollection_List.add(manCollection);
  }


  void removeManWatch({required ManCollection_Model manCollection}){
    WomanWatchCollection_List.remove(manCollection);
  }
}




class CoupleCollectionWatch_Controller extends GetxController{
  // ignore: non_constant_identifier_names
  RxList CoupleWatchCollection_List = [].obs;
// ignore: non_constant_identifier_names
  get TotalItem => CoupleWatchCollection_List.length;

  void addManWatch({required ManCollection_Model manCollection}){
    CoupleWatchCollection_List.add(manCollection);
  }


  void removeManWatch({required ManCollection_Model manCollection}){
    CoupleWatchCollection_List.remove(manCollection);
  }
}