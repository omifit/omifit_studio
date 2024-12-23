import 'package:flutter_animate/flutter_animate.dart';
import 'package:omifit_studio/data/home/guidance/model/document/add_document_model.dart';
import 'package:omifit_studio/utils/utils.dart';
import 'package:omifit_studio/view/organization/guidance/guidance_view_model.dart';
import 'package:omifit_studio/view/organization/guidance/widget/document_dropdown.dart';

class EditDocumentDialog extends ConsumerStatefulWidget {
  final String playlistid;
  const EditDocumentDialog({
    required this.playlistid,
    super.key,
  });

  @override
  ConsumerState<EditDocumentDialog> createState() => _EditDocumentDialogState();
}

class _EditDocumentDialogState extends ConsumerState<EditDocumentDialog> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _tittleCtrl = TextEditingController();
  final TextEditingController _linkCtrl = TextEditingController();
  String selectedFileType = "Video";
  final RegExp youtubeVideoRegex = RegExp(
    r'(https?:\/\/)?(www\.)?(youtube\.com\/(?:embed\/|v\/|watch\?v=)|youtu\.be\/)([a-zA-Z0-9_-]{11})',
    caseSensitive: false,
  );

  @override
  Widget build(BuildContext context) {
    final GuidanceViewModel guidanceViewModel =
        ref.watch(guidanceViewModelProvider);
    return Scaffold(
      appBar: AppBar(
        // flexibleSpace: ClipRect(
        //   child: BackdropFilter(
        //     filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
        //     child: Container(
        //       color: Colors.transparent,
        //     ),
        //   ),
        // ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: kWhite,
          ),
          onPressed: () {
            context.pop();
          },
        ),
        title: Text(
          "Add Document",
          style: TextStyle(
            color: kWhite.withOpacity(0.9),
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      backgroundColor: darkBlack,
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: PaddedColumn(
            padding: const EdgeInsets.symmetric(horizontal: 22),
            children: [
              gapH30,
              TextFormField(
                controller: _tittleCtrl,
                cursorColor: primaryColor,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                decoration: InputDecoration(
                  hintText: 'Enter Tittle',
                  hintStyle: const TextStyle(
                    color: kGrey,
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                validator: (value) =>
                    value!.isEmpty ? 'Please enter tittle' : null,
              ),
              gapH25,
              TextFormField(
                controller: _linkCtrl,
                cursorColor: primaryColor,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.done,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                    hintText: 'Paste Document / Video URL',
                    hintStyle: const TextStyle(
                      color: kGrey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffix: DocumentDropdown(
                      onChange: (String selectedValue) {
                        selectedFileType = selectedValue;
                        setState(() {});
                      },
                      initialValue: selectedFileType,
                    )),
                validator: (value) =>
                    value!.isEmpty ? 'Please enter Document / Video URL' : null,
              ),
              gapH25,
              SizedBox(
                width: double.infinity,
                height: 50,
                child: FilledBtn(
                  isLoading: guidanceViewModel.adddocumentloading,
                  text: "Continue",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      if (youtubeVideoRegex.hasMatch(_linkCtrl.text.trim()) &&
                          selectedFileType == "Video") {
                        guidanceViewModel.addDocument(
                            AddDocumentReq(
                              title: _tittleCtrl.text.trim(),
                              file: _linkCtrl.text.trim(),
                              contentType: selectedFileType,
                              playlistId: widget.playlistid,
                            ),
                            context);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Please enter valid youtube video link",
                            ),
                          ),
                        );
                      }
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ).animate().slideY(
            begin: 0.15,
            duration: 500.ms,
            curve: Curves.easeInOut,
          ),
    );
  }
}
