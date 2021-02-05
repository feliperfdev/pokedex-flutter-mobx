import 'package:mobx/mobx.dart';
import 'package:url_launcher/url_launcher.dart';
part 'info_controller.g.dart';

class InfoController = _InfoControllerBase with _$InfoController;

abstract class _InfoControllerBase with Store {
  Future<void> launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: false,
        forceSafariVC: false,
        headers: {'header_key': 'header_value'},
      );
    } else {
      throw 'Error launch $url';
    }
  }
}
