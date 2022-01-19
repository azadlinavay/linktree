import 'package:flutter/material.dart';
import 'package:linktree/config.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const linktree());
}

// ignore: camel_case_types
class linktree extends StatefulWidget {
  const linktree({Key? key}) : super(key: key);

  @override
  _linktreeState createState() => _linktreeState();
}

// ignore: camel_case_types
class _linktreeState extends State<linktree> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: ListView(
        children: [
          Center(
            child: Column(
              children: [
                Container(
                  decoration: const BoxDecoration(),
                  margin: const EdgeInsets.only(top: 50),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20), // Image border
                    child: SizedBox.fromSize(
                      size: const Size.fromRadius(100), // Image radius
                      child: Image.asset('images/${user.imageLink}',
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.black87),
                  width: 200,
                  height: 25,
                  child: Center(
                      child: Text(
                    user.job ?? "",
                    style: const TextStyle(color: Colors.white),
                  )),
                ),
              ],
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.all(4),
                  child: Text(
                    user.name ?? "No Name",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.circular(5)),
                  margin: const EdgeInsets.all(4),
                  child: Text(
                    user.location ?? "",
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 300,
            child: ListView.builder(
                itemCount: user.socialMedia?.length ?? 0,
                itemBuilder: (context, index) {
                  if (user.socialMedia?[index] == null) {
                    return Text("data");
                  }
          
                  SocialMedia s = user.socialMedia![index];
                  return Container(
                    margin: EdgeInsets.all(10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.black54
                      ),
                      onPressed: () async {
                        String link = s.link ?? "https://fb.com/azadlinavay";
                        await _launchInBrowser(link);
                      },
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            width: 50,
                            height: 50,
                            child: Image.asset("images/${s.imageName}"),
                            
                            ),
                          Container(
                            padding: EdgeInsets.all(15),
                            child: Text(s.name ?? ""),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0, bottom: 20),
            height: 110.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: user.contacts?.length?? 0,
              itemBuilder: (c,i){
                if (user.contacts?[i] == null) {
                    return Text("data");
                  }
                  Contacts contacts = user.contacts![i];
                return Container(
                  margin: EdgeInsets.all(5),
                  width: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(    shape: CircleBorder()
                    ,
                    primary: Colors.white

                      ),
                    onPressed: () async {

if (user.contacts?[i].name == "phone") {

  String alink = contacts.link ?? "+9947500000000";
                        await _makePhoneCall(alink);
} else {
  String alink = contacts.link ?? "https://fb.com/azadlinavay";
                        await _launchInBrowser(alink);
}

                        
                      }, child: Image.asset('images/${contacts.imageName}'),),
                );
              }),
              // This next line does the trick.
              
            
          ),
        ],
        )
      ),
    );
  }

  Future<void> _launchInBrowser(String url) async {
    if (!await launch(
      url,
      forceSafariVC: false,
      forceWebView: false,
      headers: <String, String>{'my_header_key': 'my_header_value'},
    )) {
      throw 'Could not launch $url';
    }
  }




    Future<void> _makePhoneCall(String phoneNumber) async {
    // Use `Uri` to ensure that `phoneNumber` is properly URL-encoded.
    // Just using 'tel:$phoneNumber' would create invalid URLs in some cases,
    // such as spaces in the input, which would cause `launch` to fail on some
    // platforms.
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launch(launchUri.toString());
  }
}
