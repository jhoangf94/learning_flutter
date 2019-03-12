import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'main.dart';

class MyContainer2 extends StatefulWidget {
  String title;
  Color color;
  int id;
  bool animate;

  MyContainer2({this.title, this.color, this.id, this.animate = false});

  _MyContainer2State createState() => _MyContainer2State();
}

class _MyContainer2State extends State<MyContainer2> with SingleTickerProviderStateMixin {

  AnimationController controller;
  Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation = Tween<double>(begin: 20, end: 100).animate(controller);

    animation.addStatusListener((status){
      print(status == AnimationStatus.completed);
    });
    
    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _animatedContainer();
  }

  Widget _animatedContainer() {
    
    if (widget.animate) {
      setState(() {
        controller.forward();
      });
    }
    return  _bluidWidgetWithOutAnimaion();
  }

  Widget _bluidWidgetWithOutAnimaion() {
    return GestureDetector(
      child: Container(
        child: Center(
          child: Text(widget.title,
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w100)),
        ),
        color: widget.color,
        width: animation.value,
        height: animation.value,
        margin: EdgeInsets.all(5.0),
      ),
      onTap: () => _onTap(),
    );
  }

  Widget _bluidWidgetWithAnimation() {
    return GestureDetector(
      child: AnimatedOpacity(
        duration: Duration(seconds: 1),
        opacity: widget.animate ? 0 : 1,
        child: Container(
          child: Center(
            child: Text(widget.title,
                style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w100)),
          ),
          color: widget.color,
          width: 100.0,
          height: 100.0,
          margin: EdgeInsets.all(5.0),
        ),
      ),
      onTap: () => _onTap(),
    );
  }

  void _onTap() {
    // MyGame.game.addItemToSequenceUser(widget.id);
    // if (!MyGame.game.isValidItemTap()) {
    //   showDialog(
    //       context: context,
    //       child: Dialog(
    //         child: Text("Perdiste!!"),
    //       ));
    // }
  }
}
