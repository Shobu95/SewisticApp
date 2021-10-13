import 'package:flutter/material.dart';

class FadeInFromBottom extends StatefulWidget {
  @override
  _FadeInFromBottomState createState() => _FadeInFromBottomState();
  final Key key;
  final Duration animationDuration;
  final Duration offsetDuration;
  final AssetImage child;
  final int index;
  FadeInFromBottom({
    @required this.key,
    @required this.child,
    @required this.index,
    this.animationDuration = const Duration(milliseconds: 400),
    this.offsetDuration = const Duration(milliseconds: 800),
  }) : super(key: key); // this line is important
}

// How to add AutomaticKeepAliveClientMixin? Follow steps 1, 2 and 3:

// 1. add AutomaticKeepAliveClientMixin to FadeInFromBottom widget State
class _FadeInFromBottomState extends State<FadeInFromBottom>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  bool get wantKeepAlive => true; // 2. add this line
  double progress = 0.0;

  Animation<double> animation;
  AnimationController controller;

  @override
  void initState() {
    super.initState();
    final Duration offsetDuration =
        widget.offsetDuration == null ? 0.0 : widget.offsetDuration;
    final int index = widget.index == null ? 0 : widget.index;

    // we await the future to create the animation delay
    Future.delayed(offsetDuration * index).then(
      (_) {
        controller = AnimationController(
            duration: widget.animationDuration, vsync: this);
        animation = Tween<double>(begin: 0.0, end: 1.0).animate(
          CurvedAnimation(
            parent: controller,
            curve: Curves.linear,
          ),
        )..addListener(() {
            setState(() => progress = animation.value);
          });

        controller.forward();
      },
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context); // 3. add this line
    return Opacity(
      opacity: progress,
      child: Transform.translate(
        offset: Offset(
          0.0,
          (1.0 - progress) * 15,
        ),
        child: Image(
          image: widget.child,
          color: Colors.white,),
      ),
    );
  }
}
