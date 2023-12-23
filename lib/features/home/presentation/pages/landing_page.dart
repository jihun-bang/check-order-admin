import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/widgets/buttons/app_button.dart';
import 'package:check_order_admin/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 100, top: 226),
            margin: const EdgeInsets.only(right: 24),
            width: 620,
            color: const Color(0xFFF1F1F1),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child:
                          SvgPicture.asset('assets/icons/icon_logo_label.svg'),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 4),
                      child: Text(
                        '매장 관리자',
                        style: TextStyle(
                          color: Color(0xFF5F5F5F),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 31, bottom: 88),
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '체크\n',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: '테이블 오더',
                          style: TextStyle(
                            color: AppColors.orange50,
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                AppButton(
                  label: '시작하기',
                  width: 433,
                  onTap: () {
                    SignInRoute().go(context);
                  },
                )
              ],
            ),
          ),
          Image.asset('assets/images/img_landing.png', width: 558, height: 319)
        ],
      ),
    );
  }
}
