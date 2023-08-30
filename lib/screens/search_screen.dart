import 'package:flutter/material.dart';
import 'package:link_opp/constants/colors.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

TextEditingController searchQueryController = TextEditingController();

class _SearchScreenState extends State<SearchScreen> {
  final textController = TextEditingController();
  bool folded = true;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: tdBackground,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: height * 0.01,
                  horizontal: width * 0.045,
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: textController,
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          hintStyle: TextStyle(
                            color: tdActionTexts.withOpacity(0.5),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(color: tdElevatedButton),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderSide: BorderSide(color: tdActionTexts),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: height * 0.01,
                            horizontal: width * 0.05,
                          ),
                          fillColor: tdTextField,
                          filled: true,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.03,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: tdElevatedButton,
                        ),
                        borderRadius: BorderRadius.circular(15),
                        color: tdTextField,
                      ),
                      padding: EdgeInsets.all(height * 0.017),
                      child: const Icon(
                        Icons.search,
                        size: 20,
                        color: tdActionTexts,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Text(
              'Your search history will appear here',
              style: TextStyle(
                color: tdActionTexts,
                fontSize: 20,
                fontStyle: FontStyle.italic,
              ),
            )
          ],
        ),
      ),
    );
  }
}
