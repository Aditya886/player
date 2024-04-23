import 'package:flutter/material.dart';

class menu extends StatefulWidget {
  @override
  _PopupTextExampleState createState() => _PopupTextExampleState();
}

class _PopupTextExampleState extends State<menu> {
  late TextEditingController _controller;
  bool _showTextField = false;
  IconData _icon = Icons.add;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Popup Text Example'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(_icon),
            onPressed: () {
              setState(() {
                // Toggle the visibility of the TextField
                _showTextField = !_showTextField;
                // Change the icon
                _icon = _showTextField ? Icons.remove : Icons.add;
              });
            },
          ),
          if (_showTextField)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Enter your text...',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.check),
                    onPressed: () {
                      // Process the entered text
                      print('Entered text: ${_controller.text}');
                      // Clear the text field
                      _controller.clear();
                      // Hide the text field
                      setState(() {
                        _showTextField = false;
                        _icon = Icons.add; // Reset the icon
                      });
                    },
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
