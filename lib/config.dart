import 'package:flutter/cupertino.dart';

class User {
  String? bio;
  String? name;
  String? imageLink;
  String? location;
  String? job;
  List<SocialMedia>? socialMedia;
  List<Contacts>? contacts;





User({
  this.job,
  this.name,
  this.imageLink,
  this.location,
  this.bio,
  this.socialMedia,
  this.contacts,

});


}

class SocialMedia {
  String? name;
  String? link;
  String? imageName;

  SocialMedia({
    this.name,
    this.link,
    this.imageName,
  });

}

class Contacts {
  String? name;
  String? link;
  String? imageName;





Contacts({
  this.name,
  this.link,
  this.imageName,
});

}



User user = User(
  job: "Devleoper",
  name: "Azad Linavay",
  bio: 'Ez Azad Linavay me',
  imageLink: "azad.jpg",
  location: "Iraq - Duhok",
  socialMedia: [
    SocialMedia(name: "LinkedIn", link: "https://www.linkedin.com", imageName: "linkedin.png"),
    SocialMedia(name: "GitHub", link: "https://github.com/", imageName: "github.png"),
    SocialMedia(name: "StackOverFlow", link: "https://stackoverflow.com/", imageName: "stack.png"),
    SocialMedia(name: "Facebook", link: "https://www.facebook.com", imageName: "facebook.png"),
    SocialMedia(name: "Instagram", link: "https://www.instagram.com", imageName: "instagram.png"),
    SocialMedia(name: "Youtube", link: "https://www.youtube.com", imageName: "youtube.png"),
    SocialMedia(name: "Snapchat", link: "https://www.snapchat.com", imageName: "snapchat.png"),
  ],
  contacts: [
    Contacts(name: "WhatsApp", link: "https://wa.me/+9647507601194", imageName: "whatsapp.png"),
    Contacts(name: "Viber", link: "viber://contact?number=+9647507601194", imageName: "viber.png"),
    Contacts(name: "phone", link: "+9647507601194", imageName: "phone.png"),
  ]
);

