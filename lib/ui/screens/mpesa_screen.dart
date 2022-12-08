import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:safaricom_clone/ui/widgets/bottom_nav.dart';
import 'package:safaricom_clone/ui/widgets/custom_button.dart';
import 'package:safaricom_clone/ui/widgets/mpesa_screen_card.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

class MpesaScreen extends StatelessWidget {
  const MpesaScreen({Key? key, required this.menuItems}) : super(key: key);
  final menuItems;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('M-PESA'), centerTitle: true, actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search),
        ),
        IconButton(
            onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.more_vert),
        ),
      ]),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: SpinCircleBottomBarHolder(
            bottomNavigationBar: bottomNav(context),
            child: Wrap(
              children: [
                customButton(
                  context,
                  0,
                  MediaQuery.of(context).size.height * 0.06,
                  Text(
                    'Show Balance',
                    style: TextStyle(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                    ),
                  ),
                ),
                for (var i = 0; i < 9; i++)
                  mpesaScreenCard(
                      context,
                      menuItems[i].title,
                      menuItems[i].icon,
                      MediaQuery.of(context).size.height * 0.12),
                customButton(
                  context,
                  0,
                  MediaQuery.of(context).size.height * 0.05,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset('assets/images/money.svg',
                          color: const Color.fromARGB(255, 141, 15, 6),
                          height: MediaQuery.of(context).size.height * 0.03),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'M-PESA STATEMENT',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.05,
                ),
                customButton(
                  context,
                  1,
                  MediaQuery.of(context).size.height * 0.05,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.qr_code_2,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'SCAN QR',
                        style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
      ),
    );
  }
}
