import 'package:flutter/material.dart';
import 'package:oro/listeners/item_click_listener.dart';

class ActionButton extends StatelessWidget {
  final String title;
  final RowItemClickListener? onPress;

  const ActionButton({Key? key, required this.title, this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPress?.call();
      },
      child: Container(
        height: 40,
        margin: const EdgeInsets.only(top: 16),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
              colors: [
                Color(0xFFf9ca36),
                Color(0xFFf8b830),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              tileMode: TileMode.clamp),
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            title,
            style: const TextStyle(fontFamily:'Nunito', fontWeight: FontWeight.w700),
          ),
        ),
      ),
    );
  }
}
