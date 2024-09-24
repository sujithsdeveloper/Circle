import 'package:circle_social_media/controller/bottomNavigationController.dart';
import 'package:circle_social_media/utils/build_datas.dart';
import 'package:circle_social_media/widgets/textfeild.dart';
import 'package:crystal_navigation_bar/crystal_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});
  @override
  Widget build(BuildContext context) {
    int _currentIndex =
        context.watch<Bottomnavigationcontroller>().currentIndex;
    final Color currentThemeColor =
        Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black;

    // final Color bottomNavigationBarColor =
    //     Theme.of(context).brightness == Brightness.dark
    //         ? Colors.white
    //         : Colors.black;
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CrystalNavigationBar(
        currentIndex: _currentIndex,
        items: [
          CrystalNavigationBarItem(
            icon: Icons.home,
            selectedColor: currentThemeColor,
            unselectedColor: currentThemeColor.withOpacity(0.3),
          ),
          CrystalNavigationBarItem(
            icon: Icons.explore,
            selectedColor: currentThemeColor,
            unselectedColor: currentThemeColor.withOpacity(0.3),
          ),
          CrystalNavigationBarItem(
            icon: Icons.person,
            selectedColor: currentThemeColor,
            unselectedColor: currentThemeColor.withOpacity(0.3),
          ),
        ],
        onTap: (index) {
          context.read<Bottomnavigationcontroller>().onTap(index);
        },
      ),
      appBar: homeAppbar(currentThemeColor),
      body: screensList[_currentIndex],
    );
  }

  AppBar homeAppbar(Color currentThemeColor) {
    return AppBar(
      scrolledUnderElevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.grid_view_rounded,
          color: currentThemeColor,
        ),
      ),
      actions: [
        Stack(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: currentThemeColor,
              ),
            ),
            const Positioned(
              right: 8,
              top: 8,
              child: CircleAvatar(
                radius: 8,
                backgroundColor: Colors.red,
                child: Text(
                  '2',
                  style: TextStyle(color: Colors.white, fontSize: 9),
                ),
              ),
            ),
          ],
        ),
      ],
      centerTitle: true,
      title: Text(
        'Circle',
        style: TextStyle(
          fontSize: 30.0,
          fontWeight: FontWeight.bold,
          color: currentThemeColor,
          fontFamily: 'Gfont',
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(height: 9),
          const TextfeildWidget(
              iconColor: Colors.black,
              label: 'Search',
              labelIcon: Icon(Icons.search)),
          const SizedBox(height: 20),
          Expanded(
            child: ListView.separated(
              itemBuilder: (context, index) => Stack(
                children: [
                  Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            'https://images.pexels.com/photos/5477855/pexels-photo-5477855.jpeg?auto=compress&cs=tinysrgb&w=600'),
                      ),
                    ),
                  ),
                  const ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: NetworkImage(
                          'https://images.pexels.com/photos/4586688/pexels-photo-4586688.jpeg?auto=compress&cs=tinysrgb&w=600'),
                    ),
                    title: Text(
                      'Anna',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      '@anna_mary',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 9),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Circle Name',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 25),
                          ),
                          SizedBox(
                            width: 300,
                            child: Text(
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              lorum,
                              style: const TextStyle(color: Colors.white),
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.favorite_border,
                                    color: Colors.white,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.comment_bank_outlined,
                                    color: Colors.white,
                                  )),
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(
                                    Icons.send,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      right: 0,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          )))
                ],
              ),
              separatorBuilder: (context, index) => const SizedBox(
                height: 20,
              ),
              itemCount: 8,
            ),
          ),
        ],
      ),
    );
  }
}
