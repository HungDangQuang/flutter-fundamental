import 'package:flutter/material.dart';
import 'search_type.dart';


class RadioExample extends StatefulWidget {

  const RadioExample({super.key});

    @override
  State<StatefulWidget> createState() {
    return _RadioExampleState();
  }
}

class _RadioExampleState extends State<RadioExample> {

  SearchType? _searchType = SearchType.anywhere;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text("Search Anywhere"),
          leading: Radio<SearchType>(
            groupValue: _searchType,
            value: SearchType.anywhere,
            onChanged: (SearchType? value) {
              setState(() {
                _searchType = value;
              });
            },
            ),
        ),
        ListTile(
          title: const Text("Search text"),
          leading: Radio<SearchType>(
            groupValue: _searchType,
            value: SearchType.text,
            onChanged: (SearchType? value) {
              setState(() {
                _searchType = value;                
              });
            },
            ),
        ),
        ListTile(
          title: const Text("Search title"),
          leading: Radio<SearchType>(
            groupValue: _searchType,
            value: SearchType.title,
            onChanged: (SearchType? value) {
              setState(() {
                _searchType = value;
              });
            },),
        )
      ],
    );
  }
}