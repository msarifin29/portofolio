import 'package:portofolio/shared/constant/app_string.dart';
import 'package:url_launcher/url_launcher.dart';

class FunctionHelper {
  FunctionHelper._();
  static FunctionHelper init = FunctionHelper._();
  factory FunctionHelper() => init;

  urlLinkedIn() async {
    final Uri url = Uri.parse(AppString.linkedInUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  urlGithub() async {
    final Uri url = Uri.parse(AppString.githubUrl);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  urlEmail() async {
    Uri mailTo = Uri.parse('mailto:${AppString.email}?subject=&body=');
    if (await canLaunchUrl(mailTo)) {
      await launchUrl(mailTo);
    } else {
      throw 'Error occured sending an email';
    }
  }

  urlWa() async {
    Uri url = Uri.parse(AppString.urlWa);
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
