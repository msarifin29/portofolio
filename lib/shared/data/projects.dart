import 'package:portofolio/models/production_model.dart';
import 'package:portofolio/models/project_model.dart';
import 'package:portofolio/shared/constant/app_string.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects {
  static List<ProjectModel> listProjects = [
    ProjectModel(
        id: "1",
        title: 'My Bioskop',
        image: AppString.myBioskop,
        url: AppString.myBioskopUrl,
        desc:
            "Menampilkan data informasi tentang movie populer yang telah disediakan oleh TMDB Movie.",
        component: [
          "MVC Architecture",
          "Dio (network library)",
          "Riverpod State Management",
          "dll"
        ],
        onTap: () async {
          final Uri url = Uri.parse(AppString.myBioskopUrl);
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
          } else {
            throw 'Could not launch $url';
          }
        }),
    ProjectModel(
        id: "2",
        title: 'Cassiere',
        image: AppString.cassiere,
        desc:
            "Membuat sistem Point Of Sale yang bisa di gunakan secara offline dan online, Menggunakan camera, dan firebase sebagai backend.",
        url: AppString.cassiereUrl,
        component: [
          "MVC Architecture",
          "Firebase Storage",
          "Firebase Firestore",
          "Google sign-in",
          "Camera",
          "Bardcode scanner",
          "dll"
        ],
        onTap: () async {
          final Uri url = Uri.parse(AppString.cassiereUrl);
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
          } else {
            throw 'Could not launch $url';
          }
        }),
    ProjectModel(
        id: "3",
        title: 'SARANG',
        image: AppString.sarang,
        desc: "Aplikasi untuk mencari jodoh",
        url: AppString.sarangUrl,
        component: [
          "Feature first Architecture",
          "Shared Preferences Local Storage",
          "Flutter Bloc State Management",
        ],
        onTap: () async {
          final Uri url = Uri.parse(AppString.sarangUrl);
          if (await canLaunchUrl(url)) {
            await launchUrl(url);
          } else {
            throw 'Could not launch $url';
          }
        }),
  ];
  static List<ProductionModel> productions = [
    ProductionModel(
      id: '1',
      title: 'Jobseeker.life',
      status: 'From scratch',
      imageUrl: AppString.imageJSLife,
      androidLink: AppString.jsLifeAndroidUrl,
      appleLink: AppString.jsLifeAppleUrl,
      desc: AppString.aboutJSLifeEN,
      tools: [
        'BLOC for State Management',
        'Dio for http client',
        'Geolocator for location',
        'google_mlkit_face_detection',
        'camera',
        'shared_preferences for local storage',
        'etc'
      ],
      onPressedApple: () async {
        final Uri url = Uri.parse(AppString.jsLifeAppleUrl);
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      onPressedAndroid: () async {
        final Uri url = Uri.parse(AppString.jsLifeAndroidUrl);
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
    ProductionModel(
      id: '2',
      title: 'Jobseeker.App',
      status: 'Contributor',
      imageUrl: AppString.imageJSApp,
      androidLink: AppString.jsAppAndroidUrl,
      appleLink: AppString.jsAppAppleUrl,
      desc: AppString.aboutJSAppEN,
      tools: [
        'BLOC for State Management',
        'Dio for http client',
        'Geolocator for location',
        'camera',
        'midtrans payment gateway',
        'web socket for chat',
        'etc'
      ],
      onPressedApple: () async {
        final Uri url = Uri.parse(AppString.jsAppAndroidUrl);
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      onPressedAndroid: () async {
        final Uri url = Uri.parse(AppString.jsAppAppleUrl);
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    ),
  ];
}
