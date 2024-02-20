import 'package:check_order_admin/features/order_history/presentation/widgets/date_range_search_input.dart';
import 'package:check_order_admin/features/order_history/presentation/widgets/order_history_table.dart';
import 'package:check_order_admin/features/order_status_management/data/models/order_model.dart';
import 'package:check_order_admin/services/auth_provider.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrderHistoryPage extends ConsumerStatefulWidget {
  const OrderHistoryPage({super.key});

  @override
  _OrderStatusPageState createState() => _OrderStatusPageState();
}

class _OrderStatusPageState extends ConsumerState<OrderHistoryPage> {
  DateTime startDate = DateTime.now();
  DateTime endDate = DateTime.now();
  String tableName = '';

  DateTime _removeTime(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }

  List<OrderModel> _filterOrders({
    required List<OrderModel> orders,
    required DateTime startDate,
    required DateTime endDate,
    String tableName = '',
  }) {
    List<OrderModel> filteredOrders = orders.where((order) {
      final modifiedSettlementAtDate = _removeTime(order.orderedAt);
      final modifiedStartDate = _removeTime(startDate);
      final modifiedEndDate = _removeTime(endDate);
      final containsTableName = order.tableName.contains(tableName);
      final isDateInRange = (modifiedSettlementAtDate
                  .isAfter(modifiedStartDate) ||
              modifiedSettlementAtDate.isAtSameMomentAs(modifiedStartDate)) &&
          (modifiedSettlementAtDate.isBefore(modifiedEndDate) ||
              modifiedSettlementAtDate.isAtSameMomentAs(modifiedEndDate));
      return containsTableName && isDateInRange;
    }).toList();

    return filteredOrders;
  }

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
    final storeId = ref.read(authProvider.notifier).currentUser?.email;
    return FirestoreBuilder(
      ref: ordersRef.whereStoreId(isEqualTo: storeId),
      builder: (_, AsyncSnapshot<OrderModelQuerySnapshot> snapshot, __) {
        final orders = snapshot.data?.docs.map((e) => e.data).toList() ?? [];
        final filteredOrders = _filterOrders(
                orders: orders,
                startDate: startDate,
                endDate: endDate,
                tableName: tableName)
            .reversed
            .toList();
        return OrderHistoryTable(orders: filteredOrders);
      },
    );
  }
}
