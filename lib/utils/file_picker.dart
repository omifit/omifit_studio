// ignore_for_file: avoid_dynamic_calls, use_build_context_synchronously

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:camera/camera.dart';
import 'package:colorful_circular_progress_indicator/colorful_circular_progress_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gif_view/gif_view.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:image_picker/image_picker.dart';
import 'package:omifit/utils/utils.dart';
import "package:universal_html/html.dart" as html;

//! step-1 // pick img from gallery or camera
Future<String?> openPickImageModalSheet(BuildContext context) async {
  String? imageLink;
  if (kIsWeb) {
    imageLink = await pickImageWeb(context);
  } else {
    await showModalBottomSheet(
      context: context,
      builder: (context) => DecoratedBox(
        decoration: const BoxDecoration(
          color: darkBlack,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        child: PaddedColumn(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            gapH20,
            const Text(
              "Choose From",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            gapH20,
            Container(
                height: 60,
                decoration: BoxDecoration(
                  color: lightBlack,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Align(
                  child: ListTile(
                    onTap: () async {
                      imageLink =
                          await pickImageMobile(ImageSource.camera, context);
                      context.pop();
                    },
                    tileColor: darkBlack,
                    leading: const Icon(Icons.camera_alt, size: 24),
                    title: const Text(
                      "Camera",
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                )),
            gapH20,
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: lightBlack,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Align(
                child: ListTile(
                  onTap: () async {
                    imageLink =
                        await pickImageMobile(ImageSource.gallery, context);
                    context.pop();
                  },
                  tileColor: darkBlack,
                  leading: const Icon(Icons.photo, size: 24),
                  title: const Text(
                    "Gallery",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            gapH30,
          ],
        ),
      ),
    );
  }
  return imageLink;
}

Future<String?> pickImageMobile(
  ImageSource source,
  BuildContext ctx, {
  CameraDevice preferredCameraDevice = CameraDevice.rear,
}) async {
  String? imagelink;
  final XFile? imagePickedFile = await ImagePicker().pickImage(
    source: source,
    preferredCameraDevice: preferredCameraDevice,
    imageQuality: 50,
    maxHeight: 1280,
    maxWidth: 960,
  );
  if (imagePickedFile != null) {
    await showModalBottomSheet(
      elevation: 2,
      isDismissible: false,
      context: ctx,
      barrierColor: Colors.transparent,
      builder: (context) {
        return Container(
          width: double.infinity,
          decoration: const BoxDecoration(
            color: lightBlack,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
          padding: const EdgeInsets.all(10.0),
          child: PaddedColumn(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              gapH20,
              const Text(
                "Your new profile picture",
                style: TextStyle(
                  fontSize: 16,
                  color: kWhite,
                  fontWeight: FontWeight.w600,
                ),
              ),
              gapH30,
              Stack(
                alignment: Alignment.center,
                children: [
                  GifView.asset(
                    'assets/animations/picture_upload.gif',
                    height: 260,
                    width: 260,
                    repeat: ImageRepeat.noRepeat,
                  ),
                  ClipPath(
                    clipper: const ShapeBorderClipper(shape: CircleBorder()),
                    child: Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: lightBlack,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.file(
                        File(imagePickedFile.path),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              gapH30,
              Row(
                children: [
                  Expanded(
                    child: OutlinedBtn(
                        text: "Cancel",
                        onPressed: () {
                          context.pop();
                        }),
                  ),
                  gapW20,
                  Expanded(
                    child: FilledBtn(
                        text: "Save",
                        onPressed: () async {
                          imagelink = await uploadImageMobile(
                              File(imagePickedFile.path), ctx);
                          context.pop();
                        }),
                  ),
                ],
              ),
              gapH10,
            ],
          ),
        );
      },
    );
  }
  return imagelink;
}

Future<String?> pickImageWeb(
  BuildContext context,
) async {
  final cameras = await availableCameras();
  CameraDescription? selectedCamera;
  File? file;
  String? imageUrl;
  bool? isGallary;
  //* choose camera or gallery
  await showModalBottomSheet(
    context: context,
    elevation: 4,
    barrierColor: const Color.fromARGB(87, 0, 0, 0),
    builder: (context) {
      return Container(
        decoration: const BoxDecoration(
          color: darkBlack,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
        ),
        padding: const EdgeInsets.all(10.0),
        child: PaddedColumn(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            gapH20,
            const Text(
              "Available Cameras",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
            gapH20,
            ...List.generate(
              cameras.length,
              (index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: lightBlack,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Align(
                      child: ListTile(
                        onTap: () {
                          isGallary = false;
                          selectedCamera = cameras[index];
                          context.pop();
                          return;
                        },
                        leading:
                            const Icon(CupertinoIcons.camera_fill, size: 22),
                        tileColor: darkBlack,
                        title: Text(
                          cameras[index].name,
                          style: const TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: lightBlack,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Align(
                child: ListTile(
                  onTap: () async {
                    isGallary = true;
                    context.pop();
                    return;
                  },
                  tileColor: darkBlack,
                  leading: const Icon(Icons.photo, size: 24),
                  title: const Text(
                    "Gallery",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            gapH20
          ],
        ),
      );
    },
  );
  if (isGallary != null) {
    if (isGallary!) {
      final html.InputElement input = html.InputElement()
        ..style.display = 'none'
        ..type = 'file'
        ..accept = 'image/*';
      try {
        input.click();
      } catch (e) {
        print(e);
      }
      await input.onChange.first;
      final file = input.files!.first;
      if (file.type.startsWith('image/')) {
        final reader = html.FileReader();
        reader.readAsDataUrl(file);
        await reader.onLoad.first;
        final image = reader.result! as String;
        await showModalBottomSheet(
          isDismissible: false,
          context: context,
          elevation: 4,
          barrierColor: const Color.fromARGB(87, 0, 0, 0),
          builder: (context) {
            return Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: lightBlack,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: PaddedColumn(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    gapH20,
                    const Text(
                      "Your new profile picture",
                      style: TextStyle(
                        fontSize: 16,
                        color: kWhite,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    gapH30,
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        GifView.asset(
                          'assets/animations/picture_upload.gif',
                          height: 260,
                          width: 260,
                          repeat: ImageRepeat.noRepeat,
                        ),
                        CircleAvatar(
                          radius: 103,
                          child: ClipPath(
                            clipper:
                                const ShapeBorderClipper(shape: CircleBorder()),
                            child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                color: lightBlack,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Image.memory(
                                base64Decode(image.split(',').last),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    gapH30,
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: OutlinedBtn(
                                text: "Cancel",
                                onPressed: () {
                                  context.pop();
                                  return;
                                }),
                          ),
                        ),
                        gapW20,
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: FilledBtn(
                                text: "Save",
                                onPressed: () async {
                                  imageUrl = await uploadImageGallaryWeb(
                                      image, context);
                                  context.pop();
                                  return;
                                }),
                          ),
                        ),
                      ],
                    ),
                    gapH10,
                  ],
                ),
              ),
            );
          },
        );
      }
    } else {
      final CameraController controller = CameraController(
        selectedCamera!,
        ResolutionPreset.medium,
        enableAudio: false,
      );
      await controller.initialize();
      //* take picture
      await showModalBottomSheet(
        isDismissible: false,
        context: context,
        elevation: 4,
        barrierColor: const Color.fromARGB(87, 0, 0, 0),
        builder: (context) {
          return Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: lightBlack,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              child: PaddedColumn(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  gapH20,
                  const Text(
                    "Capture your profile picture",
                    style: TextStyle(
                      fontSize: 16,
                      color: kWhite,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  gapH30,
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipPath(
                        clipper:
                            const ShapeBorderClipper(shape: CircleBorder()),
                        child: Container(
                          height: 240,
                          width: 240,
                          decoration: BoxDecoration(
                            color: lightBlack,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: CameraPreview(controller),
                        ),
                      ),
                      const Visibility(
                        visible: true,
                        child: ColorfulCircularProgressIndicator(
                          colors: [
                            primaryColor,
                            kGreen,
                            kBlue,
                            kRed,
                          ],
                          strokeWidth: 1,
                          indicatorHeight: 265,
                          indicatorWidth: 265,
                        ),
                      )
                    ],
                  ),
                  gapH30,
                  Row(
                    children: [
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: OutlinedBtn(
                              text: "Cancel",
                              onPressed: () {
                                context.pop();
                                return;
                              }),
                        ),
                      ),
                      gapW20,
                      Expanded(
                        child: SizedBox(
                          height: 50,
                          child: FilledBtn(
                              text: "Capture",
                              onPressed: () async {
                                try {
                                  final image = await controller.takePicture();
                                  file = File(image.path);
                                } catch (e) {
                                  Fluttertoast.showToast(
                                    msg: "Failed to capture image: $e",
                                  );
                                }
                                context.pop();
                                return;
                              }),
                        ),
                      ),
                    ],
                  ),
                  gapH10,
                ],
              ),
            ),
          );
        },
      );
      if (file != null) {
        //* upload image to server and get image link
        await showModalBottomSheet(
          isDismissible: false,
          context: context,
          elevation: 4,
          barrierColor: const Color.fromARGB(87, 0, 0, 0),
          builder: (context) {
            return Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: lightBlack,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: PaddedColumn(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    gapH20,
                    const Text(
                      "Your new profile picture",
                      style: TextStyle(
                        fontSize: 16,
                        color: kWhite,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    gapH10,
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        GifView.asset(
                          'assets/animations/picture_upload.gif',
                          height: 260,
                          width: 260,
                          repeat: ImageRepeat.noRepeat,
                        ),
                        CircleAvatar(
                          radius: 103,
                          backgroundColor: primaryColor,
                          child: ClipPath(
                            clipper:
                                const ShapeBorderClipper(shape: CircleBorder()),
                            child: Container(
                              height: 200,
                              width: 200,
                              decoration: BoxDecoration(
                                color: lightBlack,
                                borderRadius: BorderRadius.circular(90),
                              ),
                              child: Image.network(
                                file!.path,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    gapH36,
                    Row(
                      children: [
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: OutlinedBtn(
                                text: "Cancel",
                                onPressed: () {
                                  context.pop();
                                  return;
                                }),
                          ),
                        ),
                        gapW20,
                        Expanded(
                          child: SizedBox(
                            height: 50,
                            child: FilledBtn(
                                text: "Save",
                                onPressed: () async {
                                  imageUrl = await uploadImageCameraWeb(
                                      file!.path, context);
                                  context.pop();
                                  return;
                                }),
                          ),
                        ),
                      ],
                    ),
                    gapH10,
                  ],
                ),
              ),
            );
          },
        );
      }
      controller.dispose();
    }
  }
  return imageUrl;
}

//! step-3 // upload img to server for (mobile-Gallery, Camera)
Future<String> uploadImageMobile(File? picture, BuildContext context) async {
  BuildContext? dcontext;
  showCupertinoDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      dcontext = context;
      return SizedBox(
        width: 100,
        height: 100,
        child: CupertinoDialogAction(
          child: Container(
            height: 60,
            width: 80,
            decoration: BoxDecoration(
              color: lightBlack,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const CupertinoActivityIndicator(
              radius: 13,
            ),
          ),
        ),
      );
    },
  );
  if (picture == null) {
    return "";
  }
  final url = Uri.parse(
    "https://z2tbmjixu6.us-east-1.awsapprunner.com/v1/auth/upload",
  );

  final request = http.MultipartRequest('POST', url);
  request.files.add(
    await http.MultipartFile.fromPath(
      'image',
      picture.path,
    ),
  ); // `image` from postman parameter

  try {
    final response = await request.send();
    Navigator.pop(dcontext!);
    if (response.statusCode == 200) {
      final responseText = await response.stream.bytesToString();
      final imageUrl =
          jsonDecode(responseText)["data"]; // "data" from api response
      Fluttertoast.showToast(msg: "Image uploaded successfully");
      return imageUrl;
    } else {
      Fluttertoast.showToast(
        msg: "Failed to upload image. Status code: ${response.statusCode}",
      );
      return "";
    }
  } catch (e) {
    Navigator.pop(dcontext!);
    Fluttertoast.showToast(msg: "Error uploading image: $e");
    return "";
  }
}

//! step-4 // upload img to server for (web-Camera)
Future<String> uploadImageCameraWeb(
    String blobUrl, BuildContext context) async {
  BuildContext? dcontext;
  showCupertinoDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      dcontext = context;
      return SizedBox(
        width: 100,
        height: 100,
        child: CupertinoDialogAction(
          child: Container(
            height: 60,
            width: 80,
            decoration: BoxDecoration(
              color: lightBlack,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const CupertinoActivityIndicator(
              radius: 13,
            ),
          ),
        ),
      );
    },
  );
  try {
    final bytes = await getBytesFromBlobUrl(blobUrl);
    final multipartFile = http.MultipartFile.fromBytes(
      'image',
      bytes,
      filename: 'image.png',
      contentType: MediaType('image', 'png'),
    );
    final url = Uri.parse(
      "https://z2tbmjixu6.us-east-1.awsapprunner.com/v1/auth/upload",
    );
    final request = http.MultipartRequest('POST', url)
      ..files.add(multipartFile);
    final response = await request.send();
    Navigator.pop(dcontext!);
    if (response.statusCode == 200) {
      print('File uploaded successfully.');
      final responseText = await response.stream.bytesToString();
      final imageUrl = jsonDecode(responseText)["data"];

      return imageUrl;
    }
  } catch (e) {
    Navigator.pop(dcontext!);
    print('Error uploading file: $e');
  }

  return "";
}

// Function to convert Blob URL to bytes
Future<List<int>> getBytesFromBlobUrl(String blobUrl) async {
  // Create an HttpRequest to get the blob data
  final request = html.HttpRequest();
  request.open('GET', blobUrl, async: true);
  request.responseType = 'arraybuffer';

  final completer = Completer<List<int>>();
  request.onLoad.listen((event) {
    final buffer = request.response;
    final bytes = Uint8List.view(buffer);
    completer.complete(bytes);
  });

  request.onError.listen((event) {
    completer.completeError('Failed to load blob data');
  });

  request.send();

  return completer.future;
}

//! step-5 // upload img to server for (web-Gallery)
Future<String> uploadImageGallaryWeb(
    String blobUrl, BuildContext context) async {
  BuildContext? dcontext;
  showCupertinoDialog(
    context: context,
    barrierDismissible: true,
    builder: (BuildContext context) {
      dcontext = context;
      return SizedBox(
        width: 100,
        height: 100,
        child: CupertinoDialogAction(
          child: Container(
            height: 60,
            width: 80,
            decoration: BoxDecoration(
              color: lightBlack,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const CupertinoActivityIndicator(
              radius: 13,
            ),
          ),
        ),
      );
    },
  );
  final bytes = await getBytesFromBlobUrl(blobUrl);
  final multipartFile = http.MultipartFile.fromBytes(
    'image',
    bytes,
    filename: 'image.png',
    contentType: MediaType('image', 'png'),
  );
  final url = Uri.parse(
    "https://z2tbmjixu6.us-east-1.awsapprunner.com/v1/auth/upload",
  );
  final request = http.MultipartRequest('POST', url)..files.add(multipartFile);
  final response = await request.send();
  Navigator.pop(dcontext!);
  if (response.statusCode == 200) {
    print('File uploaded successfully.');
    final responseText = await response.stream.bytesToString();
    final imageUrl = jsonDecode(responseText)["data"];

    return imageUrl;
  } else {
    print('Failed to upload file. Status code: ${response.statusCode}');
  }
  return "";
}
