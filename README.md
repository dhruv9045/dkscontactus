
## DksContactUs
The most common functionality added in any commercial app is the Developer's contact details!!
So this package helps the developers to simply add their details.

## Getting started

Example: Add the module to your project pubspec.yaml:
```dart
... 
  dependencies:
  ...
    dkscontactus: ^0.0.1
...
```
And install it using flutter packages get on your project folder. After that, just import the module and use it:
```dart
import 'package:dkscontactus/dkscontactus.dart';
```

#Developers can add following details:
Company Logo
Phone Number
Website
Email ID
Twitter Handle
Instagram ID
Youtube UserName
Facebook Handler
Linkedin URL
Github UserName


Best feature is that, when the user clicks on any detail, respective app/web page will be opened.

# Customization 
Developer's you can customizedable dialog radius, dialog style, icons, fonts, text along with the custom color for divider and font weights.

Example Code for creating an entire page using following code below
```dart
DksContactUs(
          dialogTextStyle: TextStyle(color: Colors.black),
          isCircularIcon: true,
          email: 'dksdev.com@gmail.com',
          emailText: 'Send email',
          websiteText: 'Dks Dev.',
          website: 'https://www.dksdev.com',
          textStyle: TextStyle(color: Colors.white),
          cardColor: Colors.black,
        ),
```
Note: website link should be full including http/https 

#Icons
We have 2 different types of icons to show one is circular and other is square as per your design you can choose one of them
Just change the code like below to achive circular icons
```dart
isCircularIcon: true
```
 ![simple text](https://github.com/dhruv9045/dkscontactus/blob/main/screenshots/ss0.jpg)

To achive square icon, just follow below code
```dart
isCircularIcon: false
```
 ![simple text](https://github.com/dhruv9045/dkscontactus/blob/main/screenshots/ss4.jpg)

#Dialog
Now we have 2 different styles of dialog one is vertical 'style1' this one is also a default style too and other is horizontal 'style2' you just need to change 'dialogStyle' as shown below
```dart
dialogStyle: 'style1' 
```
 ![simple text](https://github.com/dhruv9045/dkscontactus/blob/main/screenshots/ss1.jpg)

Another dialog style is
```dart
dialogStyle: 'style2'
```
 ![simple text](https://github.com/dhruv9045/dkscontactus/blob/main/screenshots/ss2.jpg)

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
