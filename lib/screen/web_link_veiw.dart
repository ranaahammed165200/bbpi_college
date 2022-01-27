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
  void _launchURL() async {
    if (await canLaunch(_url)) {
      await launch(_url);
    } else {
      throw 'could not launch $_url';
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
          print(webModel.length);
          return ElevatedButton(
              onPressed: () {
                _launchURL();
              },
              child: Text('${webModel.elementAt(index).name}'));
               
        },
      ),
    );
  }
}
