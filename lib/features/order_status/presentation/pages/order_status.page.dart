import 'package:check_order_admin/features/order_status/presentation/widgets/date_range_search_input.dart';
import 'package:check_order_admin/features/order_status/presentation/widgets/order_status_table.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_model.dart';
import 'package:check_order_admin/services/auth_provider.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

DateTime removeTime(DateTime date) {
  return DateTime(date.year, date.month, date.day);
}

List<OrderModel> filterOrders({
  required List<OrderModel> orders,
  required DateTime startDate,
  required DateTime endDate,
  String tableName = '',
}) {
  List<OrderModel> filteredOrders = orders.where((order) {
    final modifiedOrderedAtDate = removeTime(order.orderedAt);
    final modifiedStartDate = removeTime(startDate);
    final modifiedEndDate = removeTime(endDate);
    final containsTableName = order.tableName.contains(tableName);

    final isDateInRange = (modifiedOrderedAtDate.isAfter(modifiedStartDate) ||
            modifiedOrderedAtDate.isAtSameMomentAs(modifiedStartDate)) &&
        (modifiedOrderedAtDate.isBefore(modifiedEndDate) ||
            modifiedOrderedAtDate.isAtSameMomentAs(modifiedEndDate));

    return isDateInRange && containsTableName;
  }).toList();

  return filteredOrders;
}

class OrderStatusPage extends ConsumerStatefulWidget {
  const OrderStatusPage({super.key});

  @override
  _OrderStatusPageState createState() => _OrderStatusPageState();
}

class _OrderStatusPageState extends ConsumerState<OrderStatusPage> {
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  String tableName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          DateRangeSearchInput(
            initialStartDate: startDate,
            initialEndDate: endDate,
            initialTableName: tableName,
            onConfirm: (v) {
              setState(() {
                startDate = v.startDate;
                endDate = v.endDate;
                tableName = v.tableName ?? '';
              });
            },
            onReset: () {
              setState(() {
                startDate = DateTime.now();
                endDate = DateTime.now();
                tableName = '';
              });
            },
          ),
          Expanded(child: _buildOrderStatusTable(ref)),
        ],
      ),
    );
  }

  Widget _buildOrderStatusTable(WidgetRef ref) {
    return FirestoreBuilder(
      ref: ordersRef,
      builder: (_, AsyncSnapshot<OrderModelQuerySnapshot> snapshot, __) {
        final orders = (snapshot.data?.docs.map((e) => e.data).where((data) =>
                    data.storeId ==
                    ref.read(authProvider.notifier).currentUser?.email) ??
                [])
            .toList();

        final filteredOrders = filterOrders(
            orders: orders,
            startDate: startDate,
            endDate: endDate,
            tableName: tableName);

        return OrderStatusTable(orders: filteredOrders);
      },
    );
  }
}
