import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: const BoxDecoration(
              color: Color.fromARGB(255, 118, 212, 233),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
        child: TextField(
          controller: _searchController,
          decoration: const InputDecoration(
            labelText: 'Buscar',
            hintText: 'Escribe el nombre de la tarea',
            prefixIcon: Icon(Icons.search),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
          ),
          onChanged: (value) {
            print('Search term: $value');
          },
        ),
      ),
    );
  }
}
