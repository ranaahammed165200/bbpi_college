import 'package:bbpi_college/models/web_link.dart';
import 'package:bbpi_college/repositories/web_repo.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class WebLinkView extends StatefulWidget {
  @override
  State<WebLinkView> createState() => _WebLinkViewState();
}

class _WebLinkViewState extends State<WebLinkView> {
  final String _url = 'http://www.bbpi.gov.bd/';

  List<WebModel> webModel = [];
  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'could not launch $url';
    }
  }

  @override
  void initState() {
    super.initState();
    AppRepo.getWebLink().then((value) {
      setState(() {
        webModel.addAll(value);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WebLinkView'),
      ),
      body: ListView.builder(
        itemCount: webModel.length,
        itemBuilder: (context, index) {
          SizedBox(
            height: 10.0,
          );
          //print(webModel.length);
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
              onPressed: () {
                _launchURL('${webModel.elementAt(index).webUrl}');
              },
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('${webModel.elementAt(index).name}')),
            ),
          );
        },
      ),
    );
  }
}
