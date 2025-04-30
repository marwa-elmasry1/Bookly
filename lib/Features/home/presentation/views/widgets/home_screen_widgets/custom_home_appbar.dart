import 'package:bookly/Core/constants.dart';
import 'package:flutter/material.dart';

class CustomHomeAppbar extends StatefulWidget {
  const CustomHomeAppbar({super.key});

  @override
  State<CustomHomeAppbar> createState() => _CustomHomeAppbarState();
}

class _CustomHomeAppbarState extends State<CustomHomeAppbar> {
  bool isSearching = false;
  final TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return isSearching
        ? Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: SizedBox(
                width: 150,
                height: 20,
                child: TextField(
                  controller: searchController,
                  cursorColor: kOrangeColor,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    hintStyle: TextStyle(color: kGrayColor, fontSize: 16),
                    border: InputBorder.none,
                  ),
                  style: TextStyle(color: kGrayColor, fontSize: 16),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.close, color: kGrayColor),
              onPressed: () {
                setState(() {
                  isSearching = false;
                  searchController.clear();
                });
              },
            ),
          ],
        )
        : Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(logoPath, width: 50, height: 50),

              IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  setState(() {
                    isSearching = true;
                  });
                },
              ),
            ],
          ),
        );
  }
}

/**
   *    addToSearchResults(String searchedCharacter) {
    searchResults = widget.allCharacters.where(
      (character) => character.name!.toLowerCase().startsWith(searchedCharacter)).toList();
      setState(() {
        isSearching = false;
        isSearchingIcon = Icon(Icons.search);
      });
   }
}
   */
