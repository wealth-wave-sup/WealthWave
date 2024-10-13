import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final String userName;

  const HomeScreen(this.userName, {super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //just to check if the codes are working or not
  //the finance data map will be removed by addedData and the removeDuplicatesInPlace() will be called whenever it is necessary
  final Map<String, dynamic> financeData = {
    'Income': 5000,
    'Expenses': 2000,
    'Savings': 1500,
    'Investments': 1500,
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('userName'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: const Text('Total Income'),
                trailing: Text('\$${financeData['Income']}'),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Total Expenses'),
                trailing: Text('\$${financeData['Expenses']}'),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Total Savings'),
                trailing: Text('\$${financeData['Savings']}'),
              ),
            ),
            Card(
              child: ListTile(
                title: const Text('Total Investments'),
                trailing: Text('\$${financeData['Investments']}'),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: financeData.length,
                itemBuilder: (context, index) {
                  String key = financeData.keys.elementAt(index);
                  return Card(
                    child: ListTile(
                      title: Text(key),
                      trailing: Text('\$${financeData[key]}'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
