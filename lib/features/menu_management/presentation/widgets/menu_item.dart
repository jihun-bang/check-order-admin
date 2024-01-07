import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SwitchValueModel {
  bool isExposed;
  bool isInStock;
  bool isBest;
  bool isOptionNecessary;

  SwitchValueModel({
    required this.isExposed,
    required this.isInStock,
    required this.isBest,
    required this.isOptionNecessary,
  });
}

class MenuOptionModel {
  String title;
  int price;

  MenuOptionModel(this.title, this.price);
}

var options = [
  MenuOptionModel('라면사리', 2000),
  MenuOptionModel('우동사리', 2000),
  MenuOptionModel('쫄면사리', 3000)
];

var switchValue = SwitchValueModel(
  isBest: true,
  isExposed: false,
  isInStock: true,
  isOptionNecessary: false,
);

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _imageCard(
              price: 24000, title: '이게뭐야', url: 'assets/images/img_menu.png'),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 70, vertical: 15),
              height: 280,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _categoryDropdown(
                      options: ['카테고리1', '카테고리2', '카테고리3'],
                      selectedOption: '카테고리1'),
                  _switchList(switchValue: switchValue)
                ],
              ),
            ),
          ),
          Container(
            width: 200,
            height: 280,
            padding: const EdgeInsets.only(top: 15),
            child: Column(
              children: [
                _editButtons(),
                const SizedBox(
                  height: 40,
                ),
                _optionInfo(options: options)
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _imageCard(
      {required String url, required String title, required int price}) {
    String formattedPrice = NumberFormat('#,###').format(price);

    return Container(
      width: 200,
      height: 280,
      padding: const EdgeInsets.only(top: 12, right: 12, bottom: 22, left: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            offset: Offset(0, 2),
            blurRadius: 12,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              url,
              width: 180,
              height: 180,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            children: [
              Text(
                title,
                style: AppTextStyle.body20sb136,
              ),
              Text(
                '$formattedPrice 원',
                style: AppTextStyle.body16m136,
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget _categoryDropdown(
      {required String selectedOption, required List<String> options}) {
    return Wrap(
      spacing: 30,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        Text(
          '카테고리',
          style: AppTextStyle.body20sb136.copyWith(color: AppColors.gray60),
        ),
        DropdownButtonHideUnderline(
          child: Container(
            width: 200,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                border: Border.all(width: 1, color: AppColors.gray30),
                borderRadius: BorderRadius.circular(2)),
            child: DropdownButton(
                value: selectedOption,
                items: options.map<DropdownMenuItem<String>>((option) {
                  return DropdownMenuItem(
                    value: option,
                    child: Text(option),
                  );
                }).toList(),
                onChanged: (v) {
                  print('선택 $v');
                }),
          ),
        )
      ],
    );
  }

  Widget _editButtons() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.edit_outlined,
            size: 24,
            color: AppColors.orange50,
          ),
          label: Text(
            '수정',
            style: AppTextStyle.body20sb136.copyWith(color: AppColors.orange50),
          ),
        ),
        TextButton.icon(
          onPressed: () {},
          icon: const Icon(
            Icons.delete_outline_outlined,
            size: 24,
            color: AppColors.gray60,
          ),
          label: Text(
            '삭제',
            style: AppTextStyle.body20sb136.copyWith(color: AppColors.gray60),
          ),
        )
      ],
    );
  }

  Widget _switchList({required SwitchValueModel switchValue}) {
    final switches = [
      {'label': '노출', 'value': switchValue.isExposed},
      {'label': '재고', 'value': switchValue.isInStock},
      {'label': '베스트', 'value': switchValue.isBest},
      {'label': '옵션 필수', 'value': switchValue.isOptionNecessary},
    ];

    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: switches
          .map((switchData) => Wrap(
                direction: Axis.vertical,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 20,
                children: [
                  Text(
                    switchData['label'] as String,
                    style: AppTextStyle.body20sb136
                        .copyWith(color: AppColors.gray60),
                  ),
                  Switch(
                      activeColor: Colors.white,
                      inactiveThumbColor: Colors.white,
                      activeTrackColor: AppColors.orange40,
                      inactiveTrackColor: AppColors.gray40,
                      value: switchData['value'] as bool,
                      onChanged: (value) {
                        print('$value 로 상태 변경');
                      })
                ],
              ))
          .toList(),
    );
  }

  Widget _optionInfo({required List<MenuOptionModel> options}) {
    return Wrap(
      runSpacing: 8,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            '추가 옵션',
            style: AppTextStyle.body20sb136.copyWith(color: AppColors.gray60),
          ),
        ),
        ...options.map((option) {
          String formattedPrice = NumberFormat('#,###').format(option.price);

          return Row(
            children: [
              SizedBox(
                width: 100,
                child: Text(
                  option.title,
                  style:
                      AppTextStyle.body16b136.copyWith(color: AppColors.gray80),
                ),
              ),
              Text(
                '$formattedPrice 원',
                style:
                    AppTextStyle.body16m136.copyWith(color: AppColors.gray60),
              )
            ],
          );
        }).toList(),
      ],
    );
  }
}
