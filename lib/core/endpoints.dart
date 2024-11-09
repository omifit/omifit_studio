// Auth
const sendotpurl = "/common/send-otp";
const verifyurl = "/common/verify-otp";
const loginurl = "/auth/users/verify-otp-and-login";
const registerurl = "/auth/users/verify-otp-and-register";
const userDetailsurl = "/private/users/details";
const userDetailsUpdateurl = "/private/users";
const deletefilefromstorage = "/common/file-delete";

// Organization
const createorgurl = "/private/organization/create";
const selectorgurl = "/private/organization/select";
const orglistbyuserurl = "/private/organization";

// member
String usersearchurl(String number) => "/private/users/searc/:$number";
const creatememberurl = "/private/member";
const memberlisturl = "/private/member/filter";
String memberdetailsurl(String uid) => "/private/member/$uid";
const editmemberurl = "/private/member";
String deletememberurl(String uid) => "/private/member/$uid";

// plan
const createplanurl = "/private/plans/create";
const planlisturl = "/private/plans/filter";
String plandetailsurl(String pid) => "/private/plans/$pid";
String deleteplanurl(String pid) => "/private/plans/$pid";
String editplanurl(String pid) => "/private/plans/$pid";

// guidance
const createplaylisturl = "/private/guidance/create-playlist";
const getplaylisturl = "/private/guidance/get-all-playlist";
String editplaylisturl = "/private/guidance/update-playlist";
String deleteplaylisturl(String playlistid) =>
    "/private/guidance/delete-playlist/$playlistid";
String getplaylistdetailsurl(String playlistid) =>
    "/private/guidance/get-documents-by-playlist/$playlistid";
const addDocumenturl = "/private/guidance/add-document";
String editDocumenturl = "/private/guidance/edit-document";
String removeDocumenturl(String docid) =>
    "/private/guidance/remove-document-by-id/$docid";
