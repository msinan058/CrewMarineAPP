// ignore_for_file: file_names

import 'package:get/get.dart';

class LanguageTokens extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'firstName': 'First Name',
          'lastName': 'Last Name',
          'title': 'Title',
          'nationality': 'Nationality',
          'certificates ': 'Certificates',
          'changeLanguage': 'Change Language',
          'vessel': 'Vessel',
          'crew': 'Crew',
          'marine': 'Marine',
        },
        'tr': {
          'firstName': 'İsim',
          'lastName': 'Soyad',
          'title': 'Ünvan',
          'nationality': 'Milliyet',
          'certificates ': 'Sertifika',
          'changeLanguage': 'Dil Değiştir',
          'Contracts': 'Sözleşmeler',
          'vessel': 'Gemi',
          'crew': 'Mürettebat',
          'marine': 'Deniz',
        },
      };
}
