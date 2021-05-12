import 'package:flutter/material.dart';

<<<<<<< HEAD
class NewTransaction extends StatefulWidget {
  final Function addTransaction;

  NewTransaction(this.addTransaction);

  @override
  _NewTransactionState createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleInputController = TextEditingController();

  final amountInputController = TextEditingController();

  void submitData() {
    final enteredTitle = titleInputController.text;
    final enteredAmount = double.parse(amountInputController.text);

    if (enteredTitle.isEmpty || enteredAmount == 0) {
      return;
    }
    widget.addTransaction(enteredTitle, enteredAmount);
    Navigator.of(context).pop();
  }
=======
class NewTransaction extends StatelessWidget {
  final titleInputController = TextEditingController();
  final amountInputController = TextEditingController();

  final Function submitTransaction;

  NewTransaction(this.submitTransaction);
>>>>>>> f1570c0149ab4b9dc65678eff92059849d6b41cf

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
<<<<<<< HEAD
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
              onChanged: (_) => submitData,
            ),
            FlatButton(
              onPressed: submitData,
=======
              decoration: InputDecoration(
                labelText: 'Amount',
              ),
            ),
            FlatButton(
              onPressed: () {
                submitTransaction(titleInputController.text,
                    double.parse(amountInputController.text));
              },
>>>>>>> f1570c0149ab4b9dc65678eff92059849d6b41cf
              child: Text('Add Transaction'),
              textColor: Colors.purple,
            ),
          ],
        ),
      ),
    );
  }
}
