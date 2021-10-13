import 'package:flutter/material.dart';
import 'package:rect_getter/rect_getter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fab overlay transition',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Duration animationDuration = Duration(milliseconds: 300);
  final Duration delay = Duration(milliseconds: 300);
  GlobalKey rectGetterKey = RectGetter.createGlobalKey();
  Rect rect;

  void _onTap() async {
    setState(() => rect = RectGetter.getRectFromKey(rectGetterKey));
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() =>
          rect = rect.inflate(1.3 * MediaQuery.of(context).size.longestSide));
      Future.delayed(animationDuration + delay, _goToNextPage);
    });
  }

  void _goToNextPage() {
    Navigator.of(context)
        .push(FadeRouteBuilder(page: NewPage()))
        .then((_) => setState(() => rect = null));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(title: Text('Fab overlay transition')),
          body: Center(child: Text('This is first page')),
          floatingActionButton: RectGetter(
            key: rectGetterKey,
            child: FloatingActionButton(
              onPressed: _onTap,
              child: Icon(Icons.mail_outline),
            ),
          ),
        ),
        _ripple(),
      ],
    );
  }

  Widget _ripple() {
    if (rect == null) {
      return Container();
    }
    return AnimatedPositioned(
      duration: animationDuration,
      left: rect.left,
      right: MediaQuery.of(context).size.width - rect.right,
      top: rect.top,
      bottom: MediaQuery.of(context).size.height - rect.bottom,
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
      ),
    );
  }
}

class FadeRouteBuilder<T> extends PageRouteBuilder<T> {
  final Widget page;

  FadeRouteBuilder({@required this.page})
      : super(
          pageBuilder: (context, animation1, animation2) => page,
          transitionsBuilder: (context, animation1, animation2, child) {
            return FadeTransition(opacity: animation1, child: child);
          },
        );
}

class NewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NewPage'),
      ),
    );
  }
}