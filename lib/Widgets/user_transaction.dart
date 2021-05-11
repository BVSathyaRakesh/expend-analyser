import 'package:flutter/material.dart';

import '../Widgets/transactions_list.dart';
import '../Widgets/new_transaction.dart';
import '../Models/transaction.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransactions = [
    Transaction(
      id: 't1',
      title: 'New Shoes',
      amount: 69.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Weekly groceries',
      amount: 69.99,
      date: DateTime.now(),
    ),
  ];

  void _newTransaction(String txTitle, double txAmount) {
    final newTX = Transaction(
        id: DateTime.now().toString(),
        title: txTitle,
        amount: txAmount,
        date: DateTime.now());

    setState(() {
      _userTransactions.add(newTX);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_newTransaction),
        Transactions_List(_userTransactions),
      ],
    );
  }
}
