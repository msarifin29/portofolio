import 'package:portofolio/models/project_model.dart';
import 'package:portofolio/shared/constant/app_string.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects {
  static List<ProjectModel> listProjects = [
    ProjectModel(
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
  ];
}
