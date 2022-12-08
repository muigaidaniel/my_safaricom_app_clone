import 'package:flutter/material.dart';
import 'package:safaricom_clone/ui/widgets/bottom_nav.dart';
import 'package:safaricom_clone/ui/widgets/center_home_button.dart';
import 'package:safaricom_clone/ui/widgets/first_menu_card.dart';
import 'package:safaricom_clone/ui/widgets/menu_card.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.menuItems}) : super(key: key);

  final menuItems;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var top = 0.0;
  late ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController();
    scrollController.addListener(() {
      setState(() {
        top = scrollController.offset;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SpinCircleBottomBarHolder(
      bottomNavigationBar: bottomNav(context),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomScrollView(
            controller: scrollController,
            slivers: [
              SliverAppBar(
                expandedHeight: MediaQuery.of(context).size.height * 0.15,
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.search),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications_outlined)),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.more_vert),
                  ),
                ],
                pinned: true,
                flexibleSpace: LayoutBuilder(builder: (context, constraints) {
                  top = constraints.biggest.height;
                  return FlexibleSpaceBar(
                    background: Center(
                        child: Text(
                      'Good Morning',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.02,
                        color: Colors.white,
                      ),
                    )),
                    title: Container(
                      padding: EdgeInsets.only(
                        top: MediaQuery.of(context).size.height * 0.01,
                        bottom: MediaQuery.of(context).size.height * 0.005,
                        left: MediaQuery.of(context).size.width * 0.14,
                      ),
                      child: const Text('Daniel'),
                    ),
                  );
                }),
              ),
              SliverToBoxAdapter(
                child: Container(
                  margin: const EdgeInsets.fromLTRB(10, 30, 10, 10),
                  child: Wrap(
                    children: [
                      Row(
                        children: [
                          firstMenuCard(
                            context,
                            'assets/images/first_menu_item.jpg',
                            MediaQuery.of(context).size.height * 0.2,
                          ),
                          Column(
                            children: [
                              menuCard(
                                context,
                                widget.menuItems[0].title,
                                widget.menuItems[0].icon,
                                MediaQuery.of(context).size.height * 0.095,
                              ),
                              menuCard(
                                context,
                                widget.menuItems[1].title,
                                widget.menuItems[1].icon,
                                MediaQuery.of(context).size.height * 0.095,
                              ),
                            ],
                          )
                        ],
                      ),
                      for (var i = 2; i < 10; i++)
                        menuCard(
                            context,
                            widget.menuItems[i].title,
                            widget.menuItems[i].icon,
                            MediaQuery.of(context).size.height * 0.095),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                    margin: const EdgeInsets.all(20),
                    child: const Text(
                      'My Data deals',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
              ),
              SliverToBoxAdapter(
                child: firstMenuCard(
                  context,
                  'assets/images/first_menu_item.jpg',
                  MediaQuery.of(context).size.height * 0.2,
                ),
              ),
            ],
          ),
          centerbutton(context, scrollController),
        ],
      ),
    ));
  }
}
