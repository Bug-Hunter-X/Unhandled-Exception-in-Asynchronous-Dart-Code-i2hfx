```dart
Future<void> main() async {
  try {
    await fetchData();
  } catch (e) {
    print('Caught exception in main: $e');
    // Add appropriate error handling logic here (e.g., display an error message to the user, retry the request, etc.)
  }
}

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      final name = jsonData['name'];
      print('Name: $name');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error in fetchData: $e');
    rethrow; // Re-throw the exception to be handled by main()
  }
}
```