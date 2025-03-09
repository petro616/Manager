import 'package:flutter/material.dart';

class SearchHandler {
  final TextEditingController controller = TextEditingController();
  bool isSearching = false;
  List<dynamic> allItems = [];
  List<dynamic> searchedItems = [];

  void startSearch(BuildContext context) {
    isSearching = true;
    ModalRoute.of(context)
        ?.addLocalHistoryEntry(LocalHistoryEntry(onRemove: stopSearching));
  }

  void stopSearching() {
    clearSearch();
    isSearching = false;
  }

  void clearSearch() {
    controller.clear();
    searchedItems.clear();
  }

  void searchItems(String query) {
    if (allItems.isNotEmpty) {
      searchedItems = allItems
          .where((item) =>
              item.name!.toLowerCase().startsWith(query.toLowerCase()))
          .toList();
    } else {
      searchedItems.clear();
    }
  }

  Widget searchTextFormField() {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Find Project ...",
        hintStyle:
            TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[600]),
      ),
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey[600]),
      onChanged: (projectUserSearchFor) {
        searchItems("");
      },
    );
  }

  List<Widget> appBarActions(BuildContext context) {
    if (isSearching) {
      return [
        IconButton(
            onPressed: () {
              clearSearch();
              Navigator.pop(context);
            },
            icon: Icon(Icons.clear))
      ];
    } else {
      return [
        IconButton(
            onPressed: () {
              startSearch(context);
            },
            icon: Icon(Icons.search))
      ];
    }
  }
}
