import 'package:flutter/material.dart';
import 'package:nobetci_eczane/get_data.dart';
import 'package:nobetci_eczane/nobetci_eczane_model.dart';

class Sehirler {
  final String name;
  final int id;

  Sehirler({this.name, this.id});
}

List<Sehirler> sehirler() {
  var sehirler = <Sehirler>[
    Sehirler(name: "Adana", id: 1),
    Sehirler(name: "Adıyaman", id: 2),
    Sehirler(name: "Afyonkarahisar", id: 3),
    Sehirler(name: "Ağrı", id: 4),
    Sehirler(name: "Amasya", id: 5),
    Sehirler(name: "Ankara", id: 6),
    Sehirler(name: "Antalya", id: 7),
    Sehirler(name: "Artvin", id: 8),
    Sehirler(name: "Aydın", id: 9),
    Sehirler(name: "Balıkesir", id: 10),
    Sehirler(name: "Bilecik", id: 11),
    Sehirler(name: "Bingöl", id: 12),
    Sehirler(name: "Bitlis", id: 13),
    Sehirler(name: "Bolu", id: 14),
    Sehirler(name: "Burdur", id: 15),
    Sehirler(name: "Bursa", id: 16),
    Sehirler(name: "Çanakkale", id: 17),
    Sehirler(name: "Çankırı", id: 18),
    Sehirler(name: "Çorum", id: 19),
    Sehirler(name: "Denizli", id: 20),
    Sehirler(name: "Diyarbakır", id: 21),
    Sehirler(name: "Edirne", id: 22),
    Sehirler(name: "Elazığ", id: 23),
    Sehirler(name: "Erzincan", id: 24),
    Sehirler(name: "Erzurum", id: 25),
    Sehirler(name: "Eskişehir", id: 26),
    Sehirler(name: "Gaziantep", id: 27),
    Sehirler(name: "Giresun", id: 28),
    Sehirler(name: "Gümüşhane", id: 29),
    Sehirler(name: "Hakkari", id: 30),
    Sehirler(name: "Hatay", id: 31),
    Sehirler(name: "Isparta", id: 32),
    Sehirler(name: "Mersin", id: 33),
    Sehirler(name: "İstanbul", id: 34),
    Sehirler(name: "İzmir", id: 35),
    Sehirler(name: "Kars", id: 36),
    Sehirler(name: "Kastamonu", id: 37),
    Sehirler(name: "Kayseri", id: 38),
    Sehirler(name: "Kırklareli", id: 39),
    Sehirler(name: "Kırşehir", id: 40),
    Sehirler(name: "Kocaeli", id: 41),
    Sehirler(name: "Konya", id: 42),
    Sehirler(name: "Kütahya", id: 43),
    Sehirler(name: "Malatya", id: 44),
    Sehirler(name: "Manisa", id: 45),
    Sehirler(name: "Kahramanmaraş", id: 46),
    Sehirler(name: "Mardin", id: 47),
    Sehirler(name: "Muğla", id: 48),
    Sehirler(name: "Muş", id: 49),
    Sehirler(name: "Nevşehir", id: 50),
    Sehirler(name: "Niğde", id: 51),
    Sehirler(name: "Ordu", id: 52),
    Sehirler(name: "Rize", id: 53),
    Sehirler(name: "Sakarya", id: 54),
    Sehirler(name: "Samsun", id: 55),
    Sehirler(name: "Siirt", id: 56),
    Sehirler(name: "Sinop", id: 57),
    Sehirler(name: "Sivas", id: 58),
    Sehirler(name: "Tekirdağ", id: 59),
    Sehirler(name: "Tokat", id: 60),
    Sehirler(name: "Trabzon", id: 61),
    Sehirler(name: "Tunceli", id: 62),
    Sehirler(name: "Şanlıurfa", id: 63),
    Sehirler(name: "Uşak", id: 64),
    Sehirler(name: "Van", id: 65),
    Sehirler(name: "Yozgat", id: 66),
    Sehirler(name: "Zonguldak", id: 67),
    Sehirler(name: "Aksaray", id: 68),
    Sehirler(name: "Bayburt", id: 69),
    Sehirler(name: "Karaman", id: 70),
    Sehirler(name: "Kırıkkale", id: 71),
    Sehirler(name: "Batman", id: 72),
    Sehirler(name: "Şırnak", id: 73),
    Sehirler(name: "Bartın", id: 74),
    Sehirler(name: "Ardahan", id: 75),
    Sehirler(name: "Iğdır", id: 76),
    Sehirler(name: "Yalova", id: 77),
    Sehirler(name: "Karabük", id: 78),
    Sehirler(name: "Kilis", id: 79),
    Sehirler(name: "Osmaniye", id: 80),
    Sehirler(name: "Düzce", id: 81),
  ];
  return sehirler;
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical: size.height * 0.06, horizontal: size.width * 0.04),
              child: GestureDetector(
                onTap: () {
                  showSearch(context: context, delegate: DataSearch());
                },
                child: Container(
                  height: size.height * 0.06,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Color(0xff4AB9AA),
                      borderRadius: BorderRadius.circular(7)),
                  child: Text(
                    "Buradan Şehir Seçiniz",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 21,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                  top: size.height * 0.08, bottom: size.height * 0.1),
              child: Text(
                "Bulunduğunuz İli Seçerek\nNöbetçi Eczaneyi Bulabilirsiniz",
                style: TextStyle(
                  color: Color(0xff4AB9AA),
                  fontSize: 17,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            Image.asset(
              "assets/photo2.png",
              width: size.width,
              fit: BoxFit.contain,
            ),
          ],
        ),
      ),
    );
  }
}

class DataSearch extends SearchDelegate {
  @override
  String get searchFieldLabel => 'Şehir Yazınız';

  /*
  @override
  InputDecorationTheme get searchFieldDecorationTheme => InputDecorationTheme(
      hintStyle: TextStyle(fontWeight: FontWeight.bold),
      border: InputBorder.none);
   */

  GetData _getData = GetData();
  int sayi;

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
          icon: Icon(Icons.clear),
          onPressed: () {
            query = "";
          })
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
        icon: AnimatedIcon(
          icon: AnimatedIcons.menu_arrow,
          progress: transitionAnimation,
        ),
        onPressed: () {
          close(context, null);
        });
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<NobetciEczaneModel>(
        future: _getData.eczaneleriGetir(sayi),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              color: Colors.grey.shade200,
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: snapshot.data.data.length,
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.only(top: 20, right: 20, left: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(width: 0.3),
                      borderRadius: BorderRadius.circular(4)),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 17),
                          child: Text(
                            snapshot.data.data[index].eczaneAdi,
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 17),
                          child: Text(
                            snapshot.data.data[index].eczaneAdres,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 15),
                              child: Row(
                                children: [
                                  Image.asset(
                                    "assets/konum.png",
                                    width: 13,
                                    fit: BoxFit.contain,
                                  ),
                                  Container(
                                      margin: EdgeInsets.only(left: 6),
                                      child: Text(snapshot
                                          .data.data[index].eczaneIlce)),
                                ],
                              ),
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/phone.png",
                                  width: 17,
                                  fit: BoxFit.contain,
                                ),
                                Container(
                                    margin: EdgeInsets.only(left: 6),
                                    child: Text(snapshot
                                            .data.data[index].eczaneTelefon
                                            .substring(0, 4) +
                                        " " +
                                        snapshot.data.data[index].eczaneTelefon
                                            .substring(4, 7) +
                                        " " +
                                        snapshot.data.data[index].eczaneTelefon
                                            .substring(7, 9) +
                                        " " +
                                        snapshot.data.data[index].eczaneTelefon
                                            .substring(9, 11))),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          } else
            return Center(child: CircularProgressIndicator());
        });
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    var capitalizedValue;
    if (query.length != 0) {
      capitalizedValue =
          query.substring(0, 1).toUpperCase() + query.substring(1);
    }
    final myList = query.isEmpty
        ? sehirler()
        : sehirler()
            .where((element) => element.name.startsWith(capitalizedValue))
            .toList();
    return ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context, index) {
          return Container(
            color: Colors.white,
            child: ListTile(
              onTap: () {
                sayi = myList[index].id;
                showResults(context);
              },
              title: Container(
                  margin: EdgeInsets.only(left: 20),
                  child: Text(
                    myList[index].name,
                    style: TextStyle(fontSize: 20),
                  )),
            ),
          );
        });
  }
}
