import 'package:check_order_admin/core/theme/colors.dart';
import 'package:check_order_admin/core/theme/text_style.dart';
import 'package:check_order_admin/core/utils/extension.dart';
import 'package:check_order_admin/core/widgets/buttons/app_button.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_model.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class OrderItem extends StatelessWidget {
  final OrderModel order;

  const OrderItem({
    super.key,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Row(
        children: [
          Expanded(flex: 1, child: _buildLeft),
          Expanded(flex: 2, child: _buildCenter),
          _buildRight
        ],
      ),
    );
  }

  Widget get _buildLeft {
    final updateDate = switch (order.status) {
      OrderStatus.wait => order.orderedAt,
      OrderStatus.declined => order.declinedAt,
      OrderStatus.accepted => order.acceptedAt,
      OrderStatus.completed => order.completedAt,
    };
    final diffDate = DateTime.now().difference(updateDate ?? order.orderedAt);
    final String date = '${diffDate.inMinutes}분 전';

    return Column(
      children: [
        Text(
          date,
          style: AppTextStyle.title18b136.copyWith(color: AppColors.gray60),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text(
            '${order.tableName} 테이블',
            textAlign: TextAlign.center,
            style: AppTextStyle.head36b128,
          ),
        ),
        Text(
          DateFormat('H:m').format(order.orderedAt),
          style: AppTextStyle.title22b136,
        ),
      ],
    );
  }

  Widget get _buildCenter {
    return Column(
      children: [
        Text(
          '주문 번호 #${order.id}',
          style: AppTextStyle.title18b136.copyWith(color: AppColors.gray60),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: order.items
                .map((e) => Text(
                      '${e.item.name} ${e.count}개',
                      textAlign: TextAlign.center,
                      style: AppTextStyle.head28b136,
                    ))
                .toList(),
          ),
        ),
        Text(
          '[${order.orderType} ${order.items.length}개] ${order.totalAmount.toCommaString('원')}',
          style: AppTextStyle.title22b136.copyWith(color: AppColors.gray80),
        ),
      ],
    );
  }

  Widget get _buildRight {
    final isAccepted = order.status == OrderStatus.accepted;
    return Column(
      children: [
        AppButton(
          label: isAccepted ? '주문 완료' : '주문 수락',
          onTap: () {
            if (isAccepted) {
              ordersRef.doc(order.id).update(
                  status: OrderStatus.completed, completedAt: DateTime.now());
            } else {
              ordersRef.doc(order.id).update(
                  status: OrderStatus.accepted, acceptedAt: DateTime.now());
            }
          },
        ),
        if (order.status != OrderStatus.declined)
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: AppButton(
              buttonColor: Colors.grey,
              label: '주문 거절',
              onTap: () {
                ordersRef.doc(order.id).update(
                    status: OrderStatus.declined, declinedAt: DateTime.now());
              },
            ),
          ),
      ],
    );
  }
}
