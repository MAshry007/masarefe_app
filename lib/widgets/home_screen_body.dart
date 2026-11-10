import 'package:flutter/material.dart';
import 'package:masarefe_app/screens/login_screen.dart';
import 'package:masarefe_app/widgets/custom_balance_container.dart';
import 'package:masarefe_app/widgets/custom_info_container.dart';
import 'package:masarefe_app/widgets/custom_list_tile.dart';
import 'package:masarefe_app/widgets/custom_picture_container.dart';
import 'package:masarefe_app/widgets/custom_text.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 70),
        Align(
          alignment: AlignmentGeometry.centerLeft,
          child: IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                LoginScreen.id,
                (route) => false,
              );
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 28,
            ),
          ),
        ),

        CustomBalanceContainer(),
        SizedBox(height: 100),
        Row(
          children: [
            CustomText(
              text: 'RECENT EXPENSES',
              size: 24,
              family: 'InterBold',
            ),
            Spacer(),
            Container(
              padding: const EdgeInsets.only(bottom: 0),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
              ),
              child: Transform.translate(
                offset: Offset(0, 2),
                child: CustomText(
                  text: 'SEE ALL',
                  color: Colors.black,
                  size: 12,
                  weight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Transform.translate(
          offset: Offset(-15, 0),
          child: CustomListTile(
            title: 'GROCERIES',
            subTitle: 'OCT 24 • MARKET SQUARE',
            price: '-\$50.00',
            icon: Center(
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        Transform.translate(
          offset: Offset(-15, 0),
          child: CustomListTile(
            title: 'COFFEE',
            subTitle: 'OCT 23 • BREW BAR',
            price: '-\$5.50',
            icon: Center(
              child: Icon(
                Icons.coffee,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(height: 15),
        Transform.translate(
          offset: Offset(-15, 0),
          child: CustomListTile(
            title: 'FUEL',
            subTitle: 'OCT 22 • SHELL STATION',
            price: '-\$42.00',
            icon: Center(
              child: Icon(
                Icons.directions_car,
                color: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(height: 50),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomInfoContainer(
              height: 100,
              width: 170,
              color: Colors.black,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  offset: Offset(5, 5),
                ),
              ],
              info: 'SAVINGS',
              infoColor: Colors.white,
              infoPrice: '\$2,100',
              infoPriceColor: Colors.white,
              icon: Icons.account_balance_wallet_outlined,
              iconColor: Colors.white,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                CustomInfoContainer(
                  height: 100,
                  width: 170,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(5, 5),
                    ),
                  ],
                  info: 'DEBT',
                  infoPrice: '\$450',
                  infoPriceColor: Color(0xffb71c1c),
                  icon: Icons.credit_card,
                ),
                Positioned(
                  top: 75,
                  left: 120,
                  child: CustomPictureContainer(
                    height: 50,
                    width: 50,
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: Offset(7, 7),
                      ),
                    ],
                    icon: Icon(
                      Icons.add,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
