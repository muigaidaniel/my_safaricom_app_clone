import 'package:flutter/material.dart';

Widget centerbutton(BuildContext context, ScrollController scrollController) {
  final double defaultMargin = MediaQuery.of(context).size.height * 0.155;
  final double defaultEnd = defaultMargin / 2;

  double top = defaultMargin;

  if (scrollController.hasClients) {
    double offset = scrollController.offset;
    top -= offset;
  }

  return top > defaultEnd
      ? Positioned(
          top: top,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
              onPrimary: Colors.green,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            child: const Text('View my balances'),
          ),
        )
      : Container();
}
