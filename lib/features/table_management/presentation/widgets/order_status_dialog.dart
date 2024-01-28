import 'dart:math';

import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:check_order_admin/core/widgets/buttons/app_button.dart';
import 'package:check_order_admin/core/widgets/dialog/app_dialog.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_item.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

typedef IntCallback = void Function(int);

class OrderStatusDialog extends StatefulWidget {
  final List<OrderItemModel> initialOrderedMenuList;
  final IntCallback onConfirm;

  const OrderStatusDialog({
    super.key,
    required this.initialOrderedMenuList,
    required this.onConfirm,
  });

  @override
  State<OrderStatusDialog> createState() => _OrderStatusDialogState();
}

class _OrderStatusDialogState extends State<OrderStatusDialog> {
  late List<OrderItemModel> orderedMenuList;

  @override
  void initState() {
    super.initState();
    orderedMenuList = widget.initialOrderedMenuList;
  }

  void _handleRemove(String id) {
    setState(() {
      orderedMenuList.removeWhere((menu) => menu.id == id);
    });
  }

  void _handleIncCount(String id) {
    setState(() {
      orderedMenuList = orderedMenuList
          .map((menu) => menu.id == id
              ? OrderItemModel(
                  id: menu.id,
                  item: menu.item,
                  count: menu.count + 1,
                  totalAmount: menu.totalAmount,
                  updatedAt: DateTime.now(),
                )
              : menu)
          .toList();
    });
  }

  void _handleDecCount(String id) {
    setState(() {
      orderedMenuList = orderedMenuList
          .map((menu) => menu.id == id
              ? OrderItemModel(
                  id: menu.id,
                  item: menu.item,
                  totalAmount: menu.totalAmount,
                  updatedAt: DateTime.now(),
                  count: max(menu.count - 1, 1),
                )
              : menu)
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    int totalPrice = orderedMenuList.fold(
        0, (sum, menu) => sum + menu.totalAmount * menu.count);

    void showSettlementDialog() {
      showDialog(
        context: context,
        builder: (_) {
          return Dialog(
            child: AppDialog(
              label: '정산을 완료하고 테이블을 정리하겠습니까?',
              confirmLabel: '정산하기',
              onConfirm: () {
                widget.onConfirm(totalPrice);
              },
            ),
          );
        },
      );
    }

    return Expanded(
      child: Container(
        width: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(children: [
          _title,
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: _menuList(menuList: orderedMenuList),
            ),
          ),
          _settleBtn(totalPrice: totalPrice, onTap: showSettlementDialog)
        ]),
      ),
    );
  }

  Widget get _title {
    return Container(
      width: 380,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.gray10,
            width: 4,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Text(
          '주문 현황',
          textAlign: TextAlign.center,
          style: AppTextStyle.body16b136.copyWith(
            color: AppColors.orange50,
          ),
        ),
      ),
    );
  }

  Widget _menuList({required List<OrderItemModel> menuList}) {
    return Wrap(
      children: menuList
          .map((menu) => _menuItem(
                id: menu.id,
                name: menu.item.name,
                price: menu.totalAmount,
                count: menu.count,
              ))
          .toList(),
    );
  }

  Widget _menuItem(
      {required String id,
      required String name,
      required int price,
      required int count}) {
    String formattedPrice = NumberFormat('#,###').format(price);
    String formattedTotalPrice = NumberFormat('#,###').format(price * count);

    return Container(
      height: 134,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 24,
      ),
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: AppColors.gray10,
            width: 4,
          ),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(name, style: AppTextStyle.head28b136),
              IconButton(
                onPressed: () {
                  _handleRemove(id);
                },
                icon: const Icon(
                  Icons.close,
                  size: 24,
                  color: AppColors.gray30,
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('가격: $formattedPrice원', style: AppTextStyle.body16m136),
                  Text('$formattedTotalPrice원',
                      style: AppTextStyle.body20sb136),
                ],
              ),
              Wrap(
                direction: Axis.horizontal,
                crossAxisAlignment: WrapCrossAlignment.center,
                spacing: 28,
                children: [
                  IconButton(
                      onPressed: () {
                        _handleDecCount(id);
                      },
                      icon: const Icon(Icons.remove)),
                  Text('$count개', style: AppTextStyle.body20sb136),
                  IconButton(
                      onPressed: () {
                        _handleIncCount(id);
                      },
                      icon: const Icon(Icons.add)),
                ],
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _settleBtn({required int totalPrice, required VoidCallback onTap}) {
    String formattedPrice = NumberFormat('#,###').format(totalPrice);

    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 24,
      ),
      decoration: const BoxDecoration(
          color: AppColors.gray80,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(12),
            bottomRight: Radius.circular(12),
          )),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '합계',
              style: AppTextStyle.body20sb136.copyWith(color: Colors.white),
            ),
            Text(
              '$formattedPrice원',
              style: AppTextStyle.head32b128.copyWith(color: Colors.white),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        AppButton(
          label: '정산하기',
          width: 332,
          buttonColor: AppColors.orange50,
          onTap: onTap,
        )
      ]),
    );
  }
}
