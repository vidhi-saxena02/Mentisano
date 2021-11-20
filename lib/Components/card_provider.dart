import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';



enum CardStatus {relax,calm,heal,breathe,restart}
int count=1;

class CardProvider extends ChangeNotifier{
  List<String> _urlImages = [];
  bool _isDragging = false;
  double _angle =0;
  Offset _position = Offset.zero;
  Offset get position => _position;
  Size _screensize = Size.zero;
  List<String> get urlImages => _urlImages;
  bool get isDragging => _isDragging;

  void setScreenSize(Size screensize) => _screensize = screensize;

  double get angle => _angle;

  CardProvider(){
    resetUsers();
  }
  void startposition(DragStartDetails details){
    _isDragging = true;

    notifyListeners();
  }

  void updateposition(DragUpdateDetails details){
    _position += details.delta;

    final x = _position.dx;
    _angle= 45 * x/_screensize.width;
    notifyListeners();
  }
  void endposition() {
    _isDragging = false;
    notifyListeners();
    CardStatus status = getStatus();

    if(status != null){
      you();
      Fluttertoast.cancel();
      Fluttertoast.showToast(msg: status.toString().split('.').last.toUpperCase(),fontSize: 36);
    }

    // switch (status){
    //   case CardStatus.relax:
    //     you();
    //     break;
    //   case CardStatus.heal:
    //     you();
    //     break;
    //   case CardStatus.calm:
    //     you();
    //     break;
    //   case CardStatus.breathe:
    //     you();
    //     break;
    //   default:
    //     resetposition();
    // }


  }
  void you(){
    _angle = 20;
    _position += Offset(2 * _screensize.width,0);
    _nextCard();


    notifyListeners();
  }

  Future  _nextCard() async{
    if(_urlImages.isEmpty)return;

    await Future.delayed(Duration(milliseconds: 200));
    _urlImages.removeLast();
    count++;
    print(count);
    resetposition();
  }

  void resetposition(){
    _isDragging = false;
    _position = Offset.zero;
    _angle=0;

    notifyListeners();
  }

  CardStatus getStatus(){
    final x = _position.dx;

    final delta =100;
    if(x>=delta && count==1){
      return CardStatus.relax;
    }
    else if(x>=100 && count==2){
      return CardStatus.calm;
    }
    else if(x>=100 && count==3) {
      return CardStatus.breathe;
    }
    else if(x>=100 && count==4) {
      return CardStatus.heal;
    }
    else{
      return CardStatus.restart;
    }
  }

  void resetUsers(){
    _urlImages = <String>[
      'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/0a2ba2111109037.5ffc84dc1d61d.gif',
      'https://i.redd.it/r5yn7duo1z461.gif',
      'https://mir-s3-cdn-cf.behance.net/project_modules/disp/9c0734100731535.5f0f2ac318fee.gif',
      'https://cdn.doyou.com/articles/7b-1575919919782.gif=w1080',
      'https://media0.giphy.com/media/l0HlBO95YqWlKaDRu/giphy.gif?cid=790b76118edb870333696c8d9e88a397303350a25c1f0c40&rid=giphy.gif&ct=g',
    ].reversed.toList();

    notifyListeners();
  }
}
