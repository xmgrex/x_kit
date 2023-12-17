part of widgets;

///
/// 404 page
///
class NotFoundPage extends StatelessWidget {
  const NotFoundPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: XText.headline('404 Page not found :(').black,
      ),
    );
  }
}
