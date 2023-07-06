import 'package:get/get.dart';
class MainpageController extends GetxController{
  int selectedIndex=0;
  void setSelectedIndex(int index){
    selectedIndex=index;
    update();
  }
  int getSelectedIndex(){
    return selectedIndex;
  }
   String imageDetail='';
  void setImageDetail(String image){
    imageDetail=image;
    update();
  }
  String getImageDetail(){
    return imageDetail;
  }
  double totalPrice=0;
  int qty=1;
  void SettotalPrice(String price){
    price = price.substring(1,price.length);
    totalPrice=qty*double.parse(price);
    update();
  }
  void SetQty(){
    qty++;
    update();
  }
  int currentIndex=0;
  void setCurrentIndex(int index){
    currentIndex=index;
    update();
  }
}