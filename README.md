# Project: qr_ar

A flutter project that scan a qr code and show a 3D model in Augmented Reality.

## Packages used
- qr_bar_code_scanner_dialog: ^0.0.5 => used to scan the qr code, and i make some changes on it i will mention it below.
- fluttertoast: ^8.2.4 => used to create a toast to view tha scanned qr code.
- model_viewer_plus: ^1.7.0 => used to show the 3D model and view it in AR mode, also it take photos and videos during viewing.

## Project Flow
1- at the home page will show to buttons, the first one to open the qr code scanner, and the sconed to open the 3D model viewer. 
2- when the qr code scanner open it show a dialog with the camera to scan the cose and it can closed from the close button or tap on the home screen.
3- tha scanner work automaticly and aftar scan the qr code it return it to use it outside tha function, and camera puased on the scen until tap on it to scan another code and it can be edit to make it directly navigate to other page.
4- the scanned code will appear in floating toast for one second and disappear again.
5- when the ar viewer button pressed it will open another page that containe the 3D model to view it and it has a button to show it in ar mode.
6- the user can take photos or videos to the scen of the ar model and it automaticly saved in gallery.

## Changes on Qr code scanner package
- the changes to create a custom module to satisfy the needs of the user.
- file name and path: Flutter Plugins\qr_bar_code_scanner_dialog-0.0.5\lib\qr_bar_code_scanner_dialog_method_channel.dart
- at line **45** i commented the Navigator pop to stop the exit after scan the qr code.
- from line **92** to **115** i added a container to create a close button instead of the one that created by the author. this button closed the dialog by Navigator pop.
- from line **119** to **126** i changed the function of the package to make a return to scan another code if you want.
- from line **128** to **133** i commented the old button.
- at line **171** I add a call of reassemble function to make the camera pause instead of stop.
- at line **174** I changed the value of isScanned to false to create the scan again feature.

that was all i had, i wish i make the needs that you wants :)