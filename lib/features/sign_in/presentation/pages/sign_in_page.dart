import 'package:check_order_admin/core/data/remote/models/user/sign_in_request_model.dart';
import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:check_order_admin/core/widgets/buttons/app_button.dart';
import 'package:check_order_admin/routes/routes.dart';
import 'package:check_order_admin/services/auth_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/data/remote/models/user/user_model.dart';
import '../../../../core/widgets/text_field/app_text_field.dart';
import '../../../dialog/toast.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        _appBar,
        Expanded(
          child: SizedBox(
            width: 552,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buildEmail,
                Padding(
                  padding: const EdgeInsets.only(top: 16, bottom: 50),
                  child: _buildPassword,
                ),
                _buildSignIn,
              ],
            ),
          ),
        ),
      ],
    ));
  }

  Widget get _appBar {
    return Padding(
      padding: const EdgeInsets.only(left: 67, right: 67, top: 34),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset('assets/icons/icon_logo_label.svg'),
          Container(
            width: 153,
            height: 36,
            alignment: Alignment.center,
            decoration: ShapeDecoration(
              color: AppColors.gray10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
            ),
            child: Text(
              '체크 관리자',
              style: AppTextStyle.body14b140.copyWith(color: AppColors.gray60),
            ),
          ),
        ],
      ),
    );
  }

  Widget get _buildEmail {
    return const AppTextField(
      label: '이메일',
    );
  }

  Widget get _buildPassword {
    return const AppTextField(
      label: '비밀번호',
    );
  }

  Widget get _buildSignIn {
    return Consumer(builder: (context, ref, _) {
      return AppButton(
        label: '로그인',
        width: 448,
        onTap: () async {
          ref
              .read(authProvider.notifier)
              .signIn(
                const SignInRequestModel(email: 'email', password: 'password'),
              )
              .then((value) async {
            await Future.delayed(const Duration(milliseconds: 200));
            if (context.mounted) {
              switch (value.isAuth) {
                case true:
                  const OrderStatusManagementRoute().go(context);
                case false:
                  showMessageToast(
                      context: context,
                      message: (value as SignedOut).message ?? '');
              }
            }
          });
        },
      );
    });
  }
}
