import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:gov_1/screen/provider/provider.dart';
import 'package:provider/provider.dart';

String searchedText = "";

class SearchEngin extends StatefulWidget {
  const SearchEngin({super.key});

  @override
  State<SearchEngin> createState() => _SearchEnginState();
}

late InAppWebViewController _searchViewController;

class _SearchEnginState extends State<SearchEngin> {
  String selectedSearchEngine = 'google';
  @override
  Widget build(BuildContext context) {
    Provider.of<ServiceData>(context, listen: false)
        .search(searchedText, selectedSearchEngine);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Search'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: Provider.of<ServiceData>(context, listen: false)
                    .searchController,
                onChanged: (val) {
                  Provider.of<ServiceData>(context, listen: false)
                      .searchController
                      .text = val;
                  searchedText = val;
                },
                decoration: InputDecoration(
                  labelText: 'Search on Google',
                  suffixIcon: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [

                      IconButton(
                        icon: const Icon(Icons.search),
                        onPressed: () async {
                          Provider.of<ServiceData>(context, listen: false)
                              .search(searchedText, selectedSearchEngine);
                          await _searchViewController.loadUrl(
                            urlRequest: URLRequest(
                              url: WebUri.uri(
                                Uri.parse(
                                  Provider.of<ServiceData>(context,
                                      listen: false)
                                      .searchUrl,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10.0),
            Expanded(
              child: InAppWebView(
                initialUrlRequest: URLRequest(
                  url: WebUri.uri(
                    Uri.parse(
                        Provider.of<ServiceData>(context, listen: false)
                            .searchUrl
                      // "https://www.google.com"
                    ),
                  ),
                ),
                onWebViewCreated: (InAppWebViewController controller) {
                  _searchViewController = controller;
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
