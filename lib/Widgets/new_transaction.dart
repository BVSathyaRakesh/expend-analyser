import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleInputController = TextEditingController();
  final amountInputController = TextEditingController();

  final Function submitTransaction;

  NewTransaction(this.submitTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: titleInputController,
              decoration: InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: amountInputController,
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
            ),
            FlatButton(
              onPressed: () {
                submitTransaction(titleInputController.text,
                    double.parse(amountInputController.text));
              },
              child: Text('Add Transaction'),
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
