// ignore_for_file: file_names

import 'package:get/get.dart';

class LanguageTokens extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en': {
          'firstName': 'FirstName',
          'lastName': 'LastName',
          'title': 'Title',
          'nationality': 'Nationality',
          'certificates': 'Certificates',
          'changeLanguage': 'Change Language',
          'vessel': 'Vessel',
          'crew': 'Crew',
          'marine': 'Marine',
          'detail': 'Detail',
          'crewdetailPage': 'Crew Detail Page',
          'certificatename': 'Certificates Name',
          'certificatedate': 'Certificates Date',
        },
        'tr': {
          'firstName': 'İsim',
          'lastName': 'Soyad',
          'title': 'Ünvan',
          'nationality': 'Milliyet',
          'certificates': 'Sertifikalar',
          'changeLanguage': 'Dil Değiştir',
          'Contracts': 'Sözleşmeler',
          'vessel': 'Gemi',
          'crew': 'Mürettebat',
          'crewdetailPage': 'Mürettebat Detay Sayfası',
          'marine': 'Deniz',
          'detail': 'Detay',
          'certificatename': 'Sertifika İsmi',
          'certificatedate': 'Sertifika Tarihi',
        },
      };
}
