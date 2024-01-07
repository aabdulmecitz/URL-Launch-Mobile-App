import 'package:url_launcher/url_launcher.dart';

class repo{

  Future<void> launchThisUrl({required Uri url}) async {
    _launchUrl(url: url);
  }

  Future<void> _launchUrl({required Uri url}) async {
    !await launchUrl(url);
  }

}