// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';
import 'dart:io';

import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
import 'package:omifit/core/constants.dart';
import 'package:omifit/core/endpoints.dart';
import 'package:omifit/utils/utils.dart';

//! step-1 // pick img from gallery or camera
Future<File?> openPickImageModalSheet(BuildContext context) async {
  File? file;

  await showModalBottomSheet(
    context: context,
    builder: (context) => Container(
      decoration: const BoxDecoration(color: Colors.white),
      height: 238,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16, top: 16),
            child: Text(
              "Choose From",
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          MaterialButton(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onPressed: () async {
              file = await pickImage(ImageSource.camera);
              if (file == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: kGreen,
                    content: Text(
                      "Failed to capture image from camera",
                      style: TextStyle(color: kWhite),
                    ),
                  ),
                );
              }
              Navigator.pop(context);
            },
            child: Row(
              children: [
                const Icon(Icons.camera_alt, size: 24),
                const SizedBox(width: 16),
                Text(
                  "Camera",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 16),
                ),
              ],
            ),
          ),
          MaterialButton(
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            onPressed: () async {
              file = await pickImage(ImageSource.gallery);
              if (file == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    backgroundColor: kGreen,
                    content: Text(
                      "Failed to pick image from gallery",
                      style: TextStyle(color: kWhite),
                    ),
                  ),
                );
              }
              Navigator.pop(context);
            },
            child: Row(
              children: [
                const Icon(Icons.image, size: 24),
                const SizedBox(width: 16),
                Text(
                  "Gallery",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(fontSize: 16),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
        ],
      ),
    ),
  );

  return file;
}

Future<File?> openPickVideoModalSheet(BuildContext context) async {
  File? file;
  await showModalBottomSheet(
    context: context,
    builder: (context) => Container(
      height: 200.0,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: <Widget>[
          const Text(
            "Pick a Video",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: primaryColor,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          MaterialButton(
            child: const Text(
              "Use camera",
            ),
            onPressed: () async {
              await pickVideo(ImageSource.camera).then((video) {
                if (video == null) {
                  // _snackbarService.showSnackbar(
                  //     message: "Image capture failed");
                } else {
                  file = video;
                }
              });
              Navigator.pop(context);
            },
          ),
          MaterialButton(
            child: const Text(
              "Use Gallery",
            ),
            onPressed: () async {
              await pickVideo(ImageSource.gallery).then((video) {
                if (video == null) {
                  // _snackbarService.showSnackbar(
                  //     message: "Image capture failed");
                } else {
                  file = video;
                }
              });
              Navigator.pop(context);
            },
          ),
        ],
      ),
    ),
  );
  return file;
}

Future<File?> pickImage(
  ImageSource source, {
  CameraDevice preferredCameraDevice = CameraDevice.rear,
}) async {
  final XFile? imagePickedFile = await ImagePicker().pickImage(
    source: source,
    preferredCameraDevice: preferredCameraDevice,
    imageQuality: 50,
    maxHeight: 1280,
    maxWidth: 960,
  );
  if (imagePickedFile != null) {
    return File(imagePickedFile.path);
  } else {
    return null;
  }
}

Future<File?> pickVideo(ImageSource source) async {
  // ignore: prefer_final_locals
  XFile? imagePickedFile = await ImagePicker()
      .pickVideo(source: source, maxDuration: const Duration(seconds: 30));
  if (imagePickedFile != null) {
    return File(imagePickedFile.path);
  } else {
    return null;
  }
}

//! step-2 // upload img to server
Future<String> uploadImage(File? picture) async {
  if (picture == null) {
    return "";
  }
  final url = Uri.parse(
    "${AppConstants.baseUrl}$uplodePicEndpoint",
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
    Fluttertoast.showToast(msg: "Error uploading image: $e");
    return "";
  }
}
