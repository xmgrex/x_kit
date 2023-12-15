part of widgets;

class UnfocusOnTap extends SingleChildStatelessWidget {
  const UnfocusOnTap({
    super.key,
    required Widget super.child,
  });

  @override
  Widget buildWithChild(BuildContext context, Widget? child) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusScope.of(context).unfocus(),
      child: child,
    );
  }
}