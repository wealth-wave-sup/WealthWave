import 'package:flutter/material.dart';
import '/component/text_field_widget.dart';
import '/constants_used/colors_used.dart';
import '/responsive_builder.dart';
import '/data_stored/added_data.dart';

class AddDataScreen extends StatefulWidget {
  const AddDataScreen({super.key});

  @override
  State<AddDataScreen> createState() => _AddDataScreenState();
}

class _AddDataScreenState extends State<AddDataScreen> {
  final TextEditingController userNamedTypeController = TextEditingController();
  final TextEditingController valueController = TextEditingController();
  AddedData addData = AddedData();

  @override
  void dispose() {
    userNamedTypeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: mainBgColor,
        appBar: AppBar(
          backgroundColor: mainBgColor,
        ),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text('Add Daily Expenses'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    if (ResponsiveBuilder.isWeb(context))
                      const Expanded(child: SizedBox()),
                    Expanded(
                        child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          //create textfield to take type name and value and add it to expenses list
                          TextFieldWidget(
                            title: "Type Name",
                            controller: userNamedTypeController,
                          ),
                          TextFieldWidget(
                            title: "Value",
                            controller: valueController,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  //add the data to expenses list
                                  addData.expenses.add({
                                    userNamedTypeController.text:
                                        double.parse(valueController.text)
                                  });
                                });
                              },
                              child: const Text('Submit'))
                        ],
                      ),
                    )),
                    if (ResponsiveBuilder.isWeb(context))
                      const Expanded(child: SizedBox()),
                  ],
                ),
              ],
            ),
          ),
        )));
  }
}

// dont use and delete these codes or any code commented
//these codes will be used after the entire process of backend  and frontend is done


// body: Padding(
//   padding: const EdgeInsets.all(16.0),
//   child: Form(
//     key: _formKey,
//     child: Row(
//       children: <Widget>[
//         if (ResponsiveBuilder.isWeb(context))
//           const Expanded(child: SizedBox()),
//         Expanded(
//           child: ListView(
//             children: <Widget>[
//               const SizedBox(height: 20),
//               TextFormField(
//                 decoration: const InputDecoration(labelText: 'Income'),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your income';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _income = value!;
//                 },
//               ),
//               const SizedBox(height: 20),
//               TextFormField(
//                 decoration: const InputDecoration(labelText: 'Expenses'),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your expenses';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _expenses = value!;
//                 },
//               ),
//               const SizedBox(height: 20),
//               TextFormField(
//                 decoration: const InputDecoration(labelText: 'Savings'),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your savings';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _savings = value!;
//                 },
//               ),
//               const SizedBox(height: 20),
//               TextFormField(
//                 decoration:
//                     const InputDecoration(labelText: 'Investments'),
//                 validator: (value) {
//                   if (value!.isEmpty) {
//                     return 'Please enter your investments';
//                   }
//                   return null;
//                 },
//                 onSaved: (value) {
//                   _investments = value!;
//                 },
//               ),
//               const SizedBox(height: 20),
//             ],
//           ),
//         ),
//         SizedBox(
//           width: double.infinity,
//           child: ElevatedButton(
//             onPressed: () {
//               if (_formKey.currentState!.validate()) {
//                 _formKey.currentState?.save();
//                 ScaffoldMessenger.of(context).showSnackBar(
//                   SnackBar(
//                       content: Text(
//                           'Data Saved: Income: $_income, Expenses: $_expenses, Savings: $_savings, Investments: $_investments')),
//                 );
//               }
//             },
//             child: const Text('Save Data'),
//           ),
//         ),
//         if (ResponsiveBuilder.isWeb(context))
//           const Expanded(child: SizedBox()),
//       ],
//     ),
//   ),
// ),
