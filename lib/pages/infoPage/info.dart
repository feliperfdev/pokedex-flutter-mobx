import 'package:flutter/material.dart';
import 'package:pokedex_flutter_mobx/pages/infoPage/info_controller.dart';
import 'package:pokedex_flutter_mobx/styles/textStyles.dart';

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'App desenvolvido por:',
                style: infoTitle,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 50),
              GetLinkGit(
                title: '> Felipe Ribeiro',
                url: 'https://github.com/feliper2002',
              ),
              SizedBox(height: 10),
              GetLinkGit(
                title: '> Repositório',
                url: 'https://github.com/feliper2002/pokedex-flutter-mobx',
              ),
              SizedBox(height: 48),
              Text(
                  'Informações sobre as APIs utilizadas se encontram no repositório do projeto no Github.',
                  style: infoGit),
              Image.asset(
                'assets/images/pikachu.png',
                height: (size.height / 3),
                width: (size.width / 1.3),
              ),
              Spacer(),
              Text('Dex - Felipe Ribeiro. 2021.', style: infoCredit),
            ],
          ),
        ),
      ),
    );
  }
}

class GetLinkGit extends StatelessWidget {
  final String title;
  final String url;
  final _controller = InfoController();

  GetLinkGit({Key key, this.title, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: infoGit),
        SizedBox(width: 10),
        GestureDetector(
          onTap: () {
            _controller.launchURL(url);
          },
          child: Container(
              height: 40,
              width: 40,
              child: Image.asset(
                'assets/images/git.png',
                fit: BoxFit.cover,
              )),
        ),
      ],
    );
  }
}
