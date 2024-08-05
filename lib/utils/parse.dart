import 'package:intl/intl.dart';
import 'package:omifit/core/constants.dart';

String phoneviewParse(String? phone) {
  if (phone == null) {
    return '';
  } else {
    return phone.substring(3); // remove "+91"
  }
}

String phonesendParse(String? phone) {
  if (phone == null) {
    return '';
  } else {
    return '+91$phone'; // add "+91"
  }
}

String dobviewParse(String? dob) {
  if (dob == null) {
    return '';
  } else {
    return DateFormat('MM/dd/yyyy')
        .format(DateTime.parse(dob)); // convert "2021-09-01" to "09/01/2021"
  }
}

String dobsendParse(DateTime? dob) {
  if (dob == null) {
    return '';
  } else {
    return DateFormat('MM/dd/yyyy')
        .format(dob); // convert "2021-09-01" to "09/01/2021
  }
}

String professionviewParse(String? profession) {
  if (profession == null) {
    return 'Student';
  } else {
    return profession[0].toUpperCase() +
        profession.substring(1); // convert "student" to "Student"
  }
}

String professionSendParse(String? profession) {
  if (profession == null) {
    return 'student';
  } else {
    return profession.toLowerCase(); // convert "Student" to "student
  }
}

Gender genderViewParse(String? gender) {
  if (gender == null) {
    return Gender.male;
  } else {
    return gender == "male"
        ? Gender.male
        : gender == "female"
            ? Gender.female
            : Gender.others;
  }
}

String genderSendParse(Gender? gender) {
  if (gender == null) {
    return 'male';
  } else {
    return gender.name;
  }
}

String damiProfile(Gender gender, String dob) {
  if (gender.name == Gender.male.name) {
    if (age(dob) < 20) {
      return "https://i.imgur.com/iSnjIge.png";
    } else if (age(dob) < 25) {
      return "https://i.imgur.com/AarcbYO.png";
    } else if (age(dob) < 30) {
      return "https://i.imgur.com/NFYvOXx.png";
    } else if (age(dob) < 40) {
      return "https://i.imgur.com/ne4t3dv.png";
    } else {
      return "https://i.imgur.com/NxFuoGu.png";
    }
  } else if (gender.name == Gender.female.name) {
    if (age(dob) < 20) {
      return "https://i.imgur.com/oNif0wb.png";
    } else if (age(dob) < 30) {
      return "https://i.imgur.com/YLrP2SI.png";
    } else {
      return "https://i.imgur.com/shw983R.png";
    }
  } else {
    return "https://i.imgur.com/XbSaZk8.png";
  }
}

int age(String dob) {
  DateTime birthDate;
  try {
    birthDate = DateFormat('yyyy-MM-dd').parse(dob);
  } catch (e) {
    return 0;
  }
  final DateTime currentDate = DateTime.now();
  int age = currentDate.year - birthDate.year;
  if (currentDate.month < birthDate.month ||
      (currentDate.month == birthDate.month &&
          currentDate.day < birthDate.day)) {
    age--;
  }
  return age;
}
