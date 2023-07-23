library dkscontactus;

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DksContactUs extends StatelessWidget {
  final bool isCircularIcon;
  final String? website;
  final Color cardColor;
  final String? websiteText;
  final String email;
  final String? emailText;
  final String? twitterHandle;
  final String? facebookHandle;
  final String? phoneNumber;
  final String? linkedinURL;
  final String? githubUserName;
  final String? phoneNumberText;
  final String? instagram;
  final double radius;
  final double dialogRadius;
  final String? youtubeUserName;
  final Widget? image;
  final TextStyle textStyle;
  final TextStyle dialogTextStyle;
  final double? iconScale;
  final double? dialogIconScale;
  final Alignment? dialogAlignment;
  final bool? isDialogWithText;
  final double? dialogDividerHeight;
  final double? dialohDividerThickness;
  final Color? dialodDividerColor;
  final String? dialogStyle;

  const DksContactUs(
      {super.key,
        this.isCircularIcon = false,
        this.isDialogWithText = true,
        this.website,
        this.websiteText,
        required this.email,
        this.emailText,
        required this.textStyle,
        required this.dialogTextStyle,
        this.twitterHandle,
        this.facebookHandle,
        this.phoneNumber,
        this.phoneNumberText,
        this.linkedinURL,
        this.radius = 100.0,
        this.dialogRadius = 30.0,
        this.githubUserName,
        this.dialogAlignment = Alignment.center,
        this.instagram,
        this.image,
        this.iconScale = 18,
        this.dialogIconScale = 12,
        this.dialogDividerHeight = 50,
        this.dialohDividerThickness = 1,
        this.dialodDividerColor = Colors.black,
        this.youtubeUserName,
        this.dialogStyle = "style1",
        required this.cardColor});

  showAlert(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          alignment: dialogAlignment,
          elevation: 8.0,
          contentPadding: EdgeInsets.all(18.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(dialogRadius)),
          content: dialogStyle == "style1"
              ? Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () => launchUrl(Uri.parse('tel:' + phoneNumber!),
                      mode: LaunchMode.externalApplication),
                  child: Container(
                    height: radius,
                    alignment: Alignment.center,
                    child: Row(
                      children: [
                        Image.asset(
                          isCircularIcon == true
                              ? AssetImage("assets/circular/phone.png")
                              .assetName
                              : AssetImage("assets/icons/phone.png")
                              .assetName,
                          scale: dialogIconScale,
                          package: 'dkscontactus',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        isDialogWithText == false
                            ? Container()
                            : Text(
                          'Call',
                          style: dialogTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: dialodDividerColor,
                  thickness: dialohDividerThickness,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse('sms:' + phoneNumber!),
                      mode: LaunchMode.externalApplication),
                  child: Container(
                    alignment: Alignment.center,
                    height: radius,
                    child: Row(
                      children: [
                        Image.asset(
                          isCircularIcon == true
                              ? AssetImage("assets/circular/message.png")
                              .assetName
                              : AssetImage("assets/icons/message.png")
                              .assetName,
                          scale: dialogIconScale,
                          package: 'dkscontactus',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        isDialogWithText == false
                            ? Container()
                            : Text(
                          'Message',
                          style: dialogTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
                Divider(
                  color: dialodDividerColor,
                  thickness: dialohDividerThickness,
                ),
                InkWell(
                  onTap: () {
                    final url = Uri.parse(
                      'https://wa.me/' +
                          phoneNumber!.substring(
                            1,
                            phoneNumber!.length,
                          ),
                    );
                    print(url);
                    launchUrl(url, mode: LaunchMode.externalApplication);
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: radius,
                    child: Row(
                      children: [
                        Image.asset(
                          isCircularIcon == true
                              ? AssetImage("assets/circular/whatsapp.png")
                              .assetName
                              : AssetImage("assets/icons/whatsapp.png")
                              .assetName,
                          scale: dialogIconScale,
                          package: 'dkscontactus',
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        isDialogWithText == false
                            ? Container()
                            : Text(
                          'WhatsApp',
                          style: dialogTextStyle,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
              : Container(
            // width: alertDialogWidth,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: () => launchUrl(Uri.parse('tel:' + phoneNumber!),
                      mode: LaunchMode.externalApplication),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        isCircularIcon == true
                            ? AssetImage("assets/circular/phone.png")
                            .assetName
                            : AssetImage("assets/icons/phone.png")
                            .assetName,
                        scale: dialogIconScale,
                        package: 'dkscontactus',
                      ),
                      isDialogWithText == false
                          ? Container()
                          : Text(
                        'Call',
                        style: dialogTextStyle,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: dialogDividerHeight,
                  width: dialohDividerThickness,
                  color: dialodDividerColor,
                ),
                InkWell(
                  onTap: () => launchUrl(Uri.parse('sms:' + phoneNumber!),
                      mode: LaunchMode.externalApplication),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        isCircularIcon == true
                            ? AssetImage("assets/circular/message.png")
                            .assetName
                            : AssetImage("assets/icons/message.png")
                            .assetName,
                        scale: dialogIconScale,
                        package: 'dkscontactus',
                      ),
                      isDialogWithText == false
                          ? Container()
                          : Text(
                        'Message',
                        style: dialogTextStyle,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: dialogDividerHeight,
                  width: dialohDividerThickness,
                  color: dialodDividerColor,
                ),
                InkWell(
                  onTap: () {
                    final url = Uri.parse(
                      'https://wa.me/' +
                          phoneNumber!.substring(
                            1,
                            phoneNumber!.length,
                          ),
                    );
                    print(url);
                    launchUrl(url, mode: LaunchMode.externalApplication);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        isCircularIcon == true
                            ? AssetImage("assets/circular/whatsapp.png")
                            .assetName
                            : AssetImage("assets/icons/whatsapp.png")
                            .assetName,
                        scale: dialogIconScale,
                        package: 'dkscontactus',
                      ),
                      isDialogWithText == false
                          ? Container()
                          : Text(
                        'WhatsApp',
                        style: dialogTextStyle,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          // Visibility(
          //   visible: logo != null,
          //   child: CircleAvatar(
          //     radius: avatarRadius ?? radius,
          //     backgroundImage: logo,
          //   ),
          // ),
          Visibility(visible: image != null, child: image ?? SizedBox.shrink()),
          // Text(
          //   companyName,
          //   style: TextStyle(
          //     fontFamily: companyFont ?? 'Pacifico',
          //     fontSize: companyFontSize ?? 40.0,
          //     color: companyColor,
          //     fontWeight: companyFontWeight ?? FontWeight.bold,
          //   ),
          // ),
          // Visibility(
          //   visible: tagLine != null,
          //   child: Text(
          //     tagLine ?? "",
          //     style: TextStyle(
          //       fontFamily: taglineFont ?? 'Pacifico',
          //       color: taglineColor,
          //       fontSize: 20.0,
          //       letterSpacing: 2.0,
          //       fontWeight: taglineFontWeight ?? FontWeight.bold,
          //     ),
          //   ),
          // ),
          // SizedBox(
          //   height: 10.0,
          // ),
          // Divider(
          //   color: dividerColor ?? Colors.teal[200],
          //   thickness: dividerThickness ?? 4.0,
          //   indent: radius,
          //   endIndent: radius,
          // ),
          // SizedBox(
          //   height: 10.0,
          // ),
          // Website
          Visibility(
            visible: website != null,
            child: Card(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              color: cardColor,
              child: ListTile(
                leading: Image.asset(
                  isCircularIcon == true
                      ? AssetImage("assets/circular/website.png").assetName
                      : AssetImage("assets/icons/website.png").assetName,
                  scale: iconScale,
                  package: 'dkscontactus',
                ),
                title: Text(
                  websiteText ?? 'Website',
                  style: textStyle,
                ),
                onTap: () => launchUrl(Uri.parse(website!),
                    mode: LaunchMode.externalApplication),
              ),
            ),
          ),
          // Phone Number
          Visibility(
            visible: phoneNumber != null,
            child: Card(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              color: cardColor,
              child: ListTile(
                leading: Image.asset(
                  isCircularIcon == true
                      ? AssetImage("assets/circular/phone.png").assetName
                      : AssetImage("assets/icons/phone.png").assetName,
                  scale: iconScale,
                  package: 'dkscontactus',
                ),
                title: Text(
                  phoneNumberText ?? 'Phone Number',
                  style: textStyle,
                ),
                onTap: () => showAlert(context),
              ),
            ),
          ),
          // Email
          Card(
            clipBehavior: Clip.antiAlias,
            margin: EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 25.0,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius),
            ),
            color: cardColor,
            child: ListTile(
              leading: Image.asset(
                isCircularIcon == true
                    ? AssetImage("assets/circular/gmail.png").assetName
                    : AssetImage("assets/icons/gmail.png").assetName,
                scale: iconScale,
                package: 'dkscontactus',
              ),
              title: Text(
                emailText ?? 'Email ID',
                style: textStyle,
              ),
              onTap: () => launchUrl(Uri.parse('mailto:' + email),
                  mode: LaunchMode.externalApplication),
            ),
          ),
          // Twitter
          Visibility(
            visible: twitterHandle != null,
            child: Card(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              color: cardColor,
              child: ListTile(
                leading: Image.asset(
                  isCircularIcon == true
                      ? AssetImage("assets/circular/twitter.png").assetName
                      : AssetImage("assets/icons/twitter.png").assetName,
                  scale: iconScale,
                  package: 'dkscontactus',
                ),
                title: Text(
                  'Twitter',
                  style: textStyle,
                ),
                onTap: () => launchUrl(
                    Uri.parse('https://twitter.com/' + twitterHandle!),
                    mode: LaunchMode.externalApplication),
              ),
            ),
          ),
          // Facebook
          Visibility(
            visible: facebookHandle != null,
            child: Card(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              color: cardColor,
              child: ListTile(
                leading: Image.asset(
                  isCircularIcon == true
                      ? AssetImage("assets/circular/facebook.png").assetName
                      : AssetImage("assets/icons/facebook.png").assetName,
                  scale: iconScale,
                  package: 'dkscontactus',
                ),
                title: Text(
                  'Facebook',
                  style: textStyle,
                ),
                onTap: () => launchUrl(
                    Uri.parse('https://www.facebook.com/' + facebookHandle!),
                    mode: LaunchMode.externalApplication),
              ),
            ),
          ),
          //Instagram
          Visibility(
            visible: instagram != null,
            child: Card(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              color: cardColor,
              child: ListTile(
                leading: Image.asset(
                  isCircularIcon == true
                      ? AssetImage("assets/circular/instagram.png").assetName
                      : AssetImage("assets/icons/instagram.png").assetName,
                  scale: iconScale,
                  package: 'dkscontactus',
                ),
                title: Text(
                  'Instagram',
                  style: textStyle,
                ),
                onTap: () => launchUrl(
                    Uri.parse('https://instagram.com/' + instagram!),
                    mode: LaunchMode.externalApplication),
              ),
            ),
          ),
          //Github
          Visibility(
            visible: githubUserName != null,
            child: Card(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              color: cardColor,
              child: ListTile(
                leading: Image.asset(
                  isCircularIcon == true
                      ? AssetImage("assets/circular/github.png").assetName
                      : AssetImage("assets/icons/github.png").assetName,
                  scale: iconScale,
                  package: 'dkscontactus',
                ),
                title: Text(
                  'Github',
                  style: textStyle,
                ),
                onTap: () => launchUrl(
                    Uri.parse('https://github.com/' + githubUserName!),
                    mode: LaunchMode.externalApplication),
              ),
            ),
          ),
          //LinkedIn
          Visibility(
            visible: linkedinURL != null,
            child: Card(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              color: cardColor,
              child: ListTile(
                leading: Image.asset(
                  isCircularIcon == true
                      ? AssetImage("assets/circular/linkedin.png").assetName
                      : AssetImage("assets/icons/linkedin.png").assetName,
                  scale: iconScale,
                  package: 'dkscontactus',
                ),
                title: Text(
                  'Linkedin',
                  style: textStyle,
                ),
                onTap: () => launchUrl(Uri.parse(linkedinURL!),
                    mode: LaunchMode.externalApplication),
              ),
            ),
          ),
          // Youtube
          Visibility(
            visible: youtubeUserName != null,
            child: Card(
              clipBehavior: Clip.antiAlias,
              margin: EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 25.0,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius),
              ),
              color: cardColor,
              child: ListTile(
                leading: Image.asset(
                  isCircularIcon == true
                      ? AssetImage("assets/circular/youtube.png").assetName
                      : AssetImage("assets/icons/youtube.png").assetName,
                  scale: iconScale,
                  package: 'dkscontactus',
                ),
                title: Text(
                  'Youtube',
                  style: textStyle,
                ),
                onTap: () => launchUrl(
                    Uri.parse("https://www.youtube.com/$youtubeUserName"),
                    mode: LaunchMode.externalApplication),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
