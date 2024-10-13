class AddedData {
  String? food;

  final List<Map<String, dynamic>> addedData = [
    {"Income": "0"},
    {"Savings": "0"},
    {"Total Investment": "0"},
    {"Total Expenses": "0"}
  ];

  List<Map<String, dynamic>> expenses = [{}];
}

// this code will remove the repeating keys while adding the vlaues  to the list of maps

List<Map<String, dynamic>> removeDuplicatesInPlace(
    List<Map<String, dynamic>> list) {
  final keysSeen = <String, int>{}; // list To track seen keys and their indices

  int i = 0;
  while (i < list.length) {
    final key = list[i]['key'];
    final value = list[i]['value'];

    if (keysSeen.containsKey(key)) {
      // Add value to the existing key's value
      final existingIndex = keysSeen[key];
      list[existingIndex!]['value'] += value;
      list.removeAt(i);
    } else {
      keysSeen[key] = i;
      i++;
    }
  }
  return list;
}
