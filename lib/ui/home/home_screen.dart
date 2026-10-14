import 'package:evently/utils/app_assets.dart';
import 'package:evently/utils/app_colors.dart';
import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var localization = AppLocalizations.of(context)!;

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //todo: navigate to create event screen
        },
        child: Icon(Icons.add, color: AppColor.whiteColor, size: 35),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Theme.of(context).primaryColor,
        notchMargin: 8,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          currentIndex: selectedIndex,
          items: [
            builtBottomNavigationBarItem(
              unSelectedIconName: AppAssets.homeIcon,
              selectedIconName: AppAssets.fillHomeIcon,
              label: localization.home,
              index: 0,
            ),
            builtBottomNavigationBarItem(
              unSelectedIconName: AppAssets.mapIcon,
              selectedIconName: AppAssets.fillMapIcon,
              label: localization.map,
              index: 1,
            ),
            builtBottomNavigationBarItem(
              unSelectedIconName: AppAssets.favouriteIcon,
              selectedIconName: AppAssets.fillFavouriteIcon,
              label: localization.love,
              index: 2,
            ),
            builtBottomNavigationBarItem(
              unSelectedIconName: AppAssets.profileIcon,
              selectedIconName: AppAssets.fillProfileIcon,
              label: localization.profile,
              index: 3,
            ),
          ],
        ),
      ),
    );
  }

  BottomNavigationBarItem builtBottomNavigationBarItem({
    required String selectedIconName,
    required String unSelectedIconName,
    required String label,
    required int index,
  }) {
    return BottomNavigationBarItem(
      icon: ImageIcon(
        AssetImage(
          selectedIndex == index ? selectedIconName : unSelectedIconName,
        ),
      ),
      label: label,
    );
  }
}
