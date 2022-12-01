
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sa3ada/shared/get_navigate_functions.dart';
import 'package:sa3ada/translation/languages.dart';
import 'package:sa3ada/view/screen/auth/login_screen.dart';

import '../../../shared/fonts.dart';
import '../../../shared/sizes.dart';
import '../../screen/auth/register_screen.dart';


class LoginBottomNavBar extends StatelessWidget {
  const LoginBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: MySizes.verticalMargin),
      padding: EdgeInsets.symmetric(horizontal: MySizes.horizontalMargin),
      height: MySizes.verticalMargin * 2,
      width: double.infinity,
      color: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         
          Row(
            children: [
              Expanded(
                child: SizedBox(
                  height: MySizes.buttonHeight / 1.3,
                  child: ElevatedButton(
                    onPressed: () {
                      getToScreen(const LoginScreen());
                    },
                    child: Text(
                      LanguagesKeys.login_in.toString().tr,
                      style: Theme.of(context).textTheme.caption?.copyWith(
                            color: Theme.of(context).colorScheme.background,
                            fontFamily: MyFontFamily.bold,
                          ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MySizes.horizontalMargin / 2,
              ),
              Expanded(
                child: SizedBox(
                  height: MySizes.buttonHeight / 1.3,
                  child: ElevatedButton(
                    onPressed: () {
                       getToScreen(const RegisterScreen());
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).colorScheme.onError,
                    ),
                    child: Center(
                      child: Text(
                        LanguagesKeys.new_an_account.toString().tr,
                        style: Theme.of(context).textTheme.caption?.copyWith(
                              color: Theme.of(context).colorScheme.primary,
                              fontFamily: MyFontFamily.bold,
                            ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
