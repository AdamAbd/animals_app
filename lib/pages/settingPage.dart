import 'package:flutter/material.dart';

import 'package:dynamic_theme/dynamic_theme.dart';

class SettingPage extends StatefulWidget {
  @override
  _SettingPageState createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 5.0,
                  bottom: 14.0,
                  left: 14.0,
                ),
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      padding: const EdgeInsets.only(right: 30.0),
                      /// Digunakan untuk menghapus page paling atas dan kembali ke page dibawahnya
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    const Text(
                      "Setting",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text(
                    "Dark Mode",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  trailing: const Text(
                    "ON",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                  /// Saat ditekan Func [changeBrightness] akan berjalan
                  onTap: changeBrightness,
                ),
              ),
              Card(
                /// Tile yg bisa meluas
                child: ExpansionTile(
                  leading: Icon(Icons.group),
                  title: const Text("About Me"),
                  /// Biasa digunakan untuk ListTile
                  children: [
                    const Text(
                      "Indonesia, Sumatra, Padang Indonesia, Sumatra, Padang Indonesia, Sumatra, Padang Indonesia, Sumatra, PadangIndonesia, Sumatra, PadangIndonesia, Sumatra, Padang Indonesia, Sumatra, Padang ",
                    ),
                  ],
                  childrenPadding: EdgeInsets.all(14.0),
                ),
              ),
              Card(
                child: ExpansionTile(
                  leading: Icon(Icons.copyright),
                  title: const Text("Hak Cipta"),
                  children: [
                    /// Digunakan menampilakan text yang beragam dalam satu kolom widget
                    RichText(
                      text: TextSpan(
                        text: "LOGO\n\n",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                        children: [
                          TextSpan(
                            text:
                                "https://www.lpzoo.org/animal/default-parent-template/logo_ssp/\n\n",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18.0,
                            ),
                          ),
                          TextSpan(
                            text: "GAMBAR\n\n",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          TextSpan(
                            text:
                                "Gajah = https://www.wwf.id/spesies/gajah & https://www.kabarkota.com/wwf-indonesia-38-gajah-sumatera-mati-dalam-dua-tahun/\n\nHarimau = https://www.wwf.id/spesies/harimau-sumatera & https://mediaindonesia.com/nusantara/324133/seekor-harimau-sumatera-ditemukan-mati-di-aceh & https://www.netralnews.com/news/nasional/read/91224/harimau-sumatera-kian-punah-wwf-terkendala--kantung--\n\nOrangutan = https://www.wwf.id/spesies/orangutan & https://www.frontier-enterprise.com/wwf-indonesia-saves-orangutans-with-aws/ & https://www.infobintaro.com/wwf-indonesia-percayakan-aws-sebagai-penyedia-cloud-untuk-mengakselerasi-program-penyelamatan-orangutan-dari-kepunahan/ & https://suar.grid.id/read/201704763/video-memilukan-seekor-orangutan-melawan-buldoser-untuk-pertahankan-habitatnya-masyarakat-harapkan-solusi?page=all\n\nPenyu = https://www.wwf.id/spesies/penyu & http://www.kabarindo.com/post/ayo-jadi-turtle-warrior-ajakan-wwf-indonesia/773 & https://www.tribunnews.com/travel/2018/06/14/hampir-punah-ternyata-ini-misteri-penyu-bagi-kehidupan & https://twitter.com/wwf_id/status/984008163396497408\n\n",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18.0,
                            ),
                          ),
                          TextSpan(
                            text: "DESKRIPSI & LINK DONASI\n\n",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                          TextSpan(
                            text:
                                "Gajah = https://supporterwwf.org/donation/7/sahabat-satwa/sahabat-gajah.html\n\nHarimau = https://supporterwwf.org/donation/5/sahabat-satwa/sahabat-harimau.html\n\nOrangutan = https://supporterwwf.org/donation/6/sahabat-satwa/sahabat-orangutan.html\n\nPenyu = https://supporterwwf.org/donation/8/sahabat-satwa/sahabat-penyu.html",
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 18.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                  childrenPadding: EdgeInsets.all(14.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Func [changeBrightness] merubah tema brightness awal
  void changeBrightness() {
    DynamicTheme.of(context).setBrightness(
        Theme.of(context).brightness == Brightness.dark
            ? Brightness.light
            : Brightness.dark);
  }
}
