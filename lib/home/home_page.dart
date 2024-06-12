import 'package:firsthealth/data/data.dart';
import 'package:firsthealth/home/size_config.dart';
import 'package:firsthealth/style/style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: SizeConfig.blockSizeHorizontal * 7),
            child: const Column(
              children: [
                //Information
                UserInfo(),
                //Barre de recherche
                SearchMedical(),
                // Zone Des services
                Services(),
                // Zone Presentation
                Presentations(),
              ],
            ),
          ),
          // Zone d'information
          const Infos(),
        ],
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: const Padding(
        padding: EdgeInsets.only(bottom: 7),
        child: Text("🚨 Hello!"),
      ),
      subtitle: Text(
        "First Aid",
        style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w700,
            ),
      ),
      trailing: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(AppStyle.profile),
            fit: BoxFit.cover,
            repeat: ImageRepeat.repeat,
          ),
          borderRadius: BorderRadius.circular(18.0),
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: 15.0,
              width: 15.0,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppStyle.primarySwatch,
                  border: Border.all(
                    color: Colors.white,
                    width: 3.0,
                    style: BorderStyle.solid,
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class SearchMedical extends StatelessWidget {
  const SearchMedical({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical * 3),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Recherche Urgente..",
            fillColor: AppStyle.inputFillColor,
            filled: true,
            prefixIcon: CupertinoButton(
                onPressed: () {}, child: SvgPicture.asset(AppStyle.searchIcon)),
            suffixIcon: CupertinoButton(
                onPressed: () {},
                child: SvgPicture.asset(AppStyle.filtterIcon)),
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(18),
            )),
      ),
    );
  }
}

class Services extends StatelessWidget {
  const Services({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          "Services",
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.w700, letterSpacing: 1),
        ),
        const SizedBox(height: 12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: servicesList
              .map((e) => CupertinoButton(
                    padding: EdgeInsets.zero,
                    child: Container(
                      decoration: BoxDecoration(
                        color: e.color,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      width: SizeConfig.blockSizeHorizontal * 17,
                      height: SizeConfig.blockSizeHorizontal * 17,
                      child: Center(
                        child: SvgPicture.asset(e.image),
                      ),
                    ),
                    onPressed: () {},
                  ))
              .toList(),
        )
      ],
    );
  }
}

class Presentations extends StatelessWidget {
  const Presentations({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical * 3),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xffDCEDF9),
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: SizeConfig.blockSizeHorizontal * 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Services de\nPremier Secours",
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: 1,
                                  ),
                        ),
                        SizedBox(height: SizeConfig.blockSizeVertical * 1),
                        Text(
                          "Gestes de\nPremier Secours",
                          style:
                              Theme.of(context).textTheme.titleLarge!.copyWith(
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1,
                                    fontSize: 11,
                                    height: 1.5,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        EdgeInsets.only(top: SizeConfig.blockSizeVertical * 2),
                    child: Image.asset(AppStyle.image1),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Infos extends StatelessWidget {
  const Infos({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: SizeConfig.blockSizeHorizontal * 7,
          ),
          child: Text(
            "Numéros d'Urgence",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.w700,
                  letterSpacing: 1,
                ),
          ),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical * 2,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: infoList.map(
                (e) => CupertinoButton(
                  onPressed: () {},
                  padding: const EdgeInsets.only(right: 12),
                  child: Container(
                    height: SizeConfig.blockSizeVertical * 17,
                    width: SizeConfig.blockSizeHorizontal * 80,
                    decoration: BoxDecoration(
                      color: e.color,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(20),
                          width: 71.46,
                          height: 99.03,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(26.0),
                          ),
                          child: SvgPicture.asset(e.img),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              e.number,
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                letterSpacing: 1,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              e.title,
                              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                height: 1.8,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              e.subTitle,
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                                height: 1.8,
                                color: Colors.white60,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ).toList(),
            ),
          ),
        )
      ],
    );
  }
}
