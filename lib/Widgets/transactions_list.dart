import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:money_analyser/Models/transaction.dart';

class Transactions_List extends StatelessWidget {
  List<Transaction> _userTransactions = [];
  Transactions_List(this._userTransactions);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          children: _userTransactions.map((tx) {
            return Card(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 15,
                    ),
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.purple,
                        width: 2,
                      ),
                    ),
                    child: Text(
                      '\$${tx.amount}',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tx.title,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        DateFormat.yMMMd().format(tx.date),
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }).toList(),
        )
      ],
    );
  }
}
