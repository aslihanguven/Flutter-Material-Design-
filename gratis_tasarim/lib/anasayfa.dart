import 'package:flutter/material.dart';
import 'package:gratis_tasarim/colors.dart';
import 'package:gratis_tasarim/gratis_tasarim_icons.dart';
import 'urunler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa>  {

  int _selectedIndex = 1;

  Future<List<Urunler>> urunleriGoster() async{

    var urunListesi = <Urunler>[];

    var u1 = Urunler(id: 1, ad: "Pastel Day Long Lipcolor Kissproof Ruj No:20", resimAdi:"pastel_lipcolor.png" , fiyat: 129.00, ozel_fiyat: 77.5 );
    var u2 = Urunler(id: 2, ad: "Maybelline New York Lash Sensational Maskara", resimAdi: "lash_maskara.png", fiyat: 320.0,ozel_fiyat: 189.0 );
    var u3 = Urunler(id: 3, ad: "LYKD Fondöten                            126 Vanilla", resimAdi: "lykd.png", fiyat: 89.0,ozel_fiyat: 49.0 );
    var u4 = Urunler(id: 4, ad: "Beaulis Diamond Glossy Dudak Parlatıcısı " , resimAdi: "beaulis_glossy.png", fiyat: 65.0,ozel_fiyat: 48.0 );
    var u5 = Urunler(id: 5, ad: "Maybelline New York Lash Sensational  Siyah Maskara", resimAdi: "ny_maskara.png", fiyat: 250.0,ozel_fiyat: 149.0 );
    var u6 = Urunler(id: 6, ad: "Maybelline New York Super Stay Likit Mat Ruj ", resimAdi: "ny_superstay.png", fiyat: 280.0,ozel_fiyat: 195.0 );

    urunListesi.add(u1);
    urunListesi.add(u2);
    urunListesi.add(u3);
    urunListesi.add(u4);
    urunListesi.add(u5);
    urunListesi.add(u6);

    return urunListesi;
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(120.0),
            child: AppBar(
              backgroundColor: Colors.white,
            title: Text("Tüm Makyaj Ürünleri", style: TextStyle(color: renkIki, fontSize: 18, fontFamily: "Kanit",fontWeight: FontWeight.bold),) ,
            leading: Icon(Icons.keyboard_arrow_left, size:50 ,color: renkBir),
            actions: <Widget>[
             Padding(
               padding: const EdgeInsets.only(right: 0, ),
               child: IconButton(onPressed: () {},
                   icon: Icon(GratisTasarim.search, color: renkIki, size: 17,),),
             ),
             Padding(
               padding: const EdgeInsets.only(right: 0,),
               child: IconButton(onPressed: () {},
                   icon: Icon(GratisTasarim.store, color: renkIki, size: 21,)),
             ),
             Padding(
               padding: const EdgeInsets.only(right: 0),
               child: IconButton(onPressed: (){},
                   icon: Icon(GratisTasarim.shopping_basket, color: renkIki,size: 17,)),
             ),
            ],
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Container(
                          height: 15,
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 8.0,left: 10.0,),
                                child: Icon(GratisTasarim.shipping_fast, size: 15, color: renkBir,),
                              ),
                              Text("       ÜCRETSİZ Mağazadan Teslimat Fırsatı    ", style: TextStyle( fontSize: 16,backgroundColor: Colors.yellow,  color: renkBir,fontWeight: FontWeight.bold),),
                            ],
                          ),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0),
                          child: Container(
                            height: 30,
                            width: MediaQuery.of(context).size.height,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(0),
                            ),
                            child: Column(
                              children:  [
                                Padding(
                                  padding: EdgeInsets.all(0),
                                  child: Container(
                                    height: 30,
                                    child: TabBar(
                                      physics: NeverScrollableScrollPhysics(),
                                      unselectedLabelColor: renkDort,
                                      indicatorColor: Colors.transparent,
                                      indicator: BoxDecoration(
                                        border: Border(
                                          right: BorderSide(
                                            color: renkIki,
                                            width: 3,
                                          ),
                                        ),
                                        color: Colors.white,
                                      ),
                                      tabs:<Widget> [
                                        Tab(icon: Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 32.0),
                                              child: Icon(Icons.filter_alt_outlined, size: 24,color: renkIki,),
                                            ),
                                            Text("Filtrele(1)", style: TextStyle(color: renkIki, fontSize: 15),),
                                          ],
                                        ),),
                                        Tab(icon:Row(
                                          children: [
                                            Padding(
                                              padding: const EdgeInsets.only(left: 50.0),
                                              child: Icon(Icons.list, size: 24,color: renkIki,),
                                            ),
                                            Text("Sırala", style: TextStyle(color: renkIki, fontSize: 17,),),
                                          ],
                                        ) ,),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
         floatingActionButton: FloatingActionButton(onPressed: (){},
           backgroundColor: renkBir,
           child: Icon(Icons.arrow_upward_sharp, color: Colors.white,),),
         bottomNavigationBar: Theme(
         data: Theme.of(context).copyWith(canvasColor: renkBir),
         child: BottomNavigationBar(
           backgroundColor: Colors.white,
           type: BottomNavigationBarType.fixed,
           fixedColor: Colors.pink,
           items:  <BottomNavigationBarItem>[
             BottomNavigationBarItem(icon: Icon(GratisTasarim.home_outline,size: 20,), label: "Anasayfa", backgroundColor: renkDort, ),
             BottomNavigationBarItem(icon: Icon(GratisTasarim.th_large,size: 28,),label: "Kategoriler",backgroundColor: renkDort, ),
             BottomNavigationBarItem(icon: Icon(GratisTasarim.percent,size: 20,),label: "Kampanyalar",backgroundColor: renkDort, ),
             BottomNavigationBarItem(icon: Icon(GratisTasarim.tag,size: 20,),label: "Markalar",backgroundColor: renkDort, ),
             BottomNavigationBarItem(icon: Icon(GratisTasarim.cog_alt,size: 20,),label: "Diğer", backgroundColor: renkDort,),
           ],
           currentIndex: _selectedIndex,
           selectedLabelStyle:  TextStyle(color: renkBir, fontSize: 10 ),
           unselectedLabelStyle: TextStyle(color: renkDort, fontSize: 10),
         ),
       ),
        body:
              FutureBuilder<List<Urunler>>(
                  future: urunleriGoster(),
                  builder: (context,snapshot){
                    if(snapshot.hasData){
                      var urunListesi = snapshot.data;
                      return GridView.builder(
                        itemCount: urunListesi!.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 2 / 3.5,
                        ),
                        itemBuilder: (context,indeks){
                          var urun = urunListesi[indeks];
                          return Card(
                            child: Column(mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 115,top: 5),
                                  child: IconButton(onPressed: (){},
                                      icon:Icon(Icons.favorite_outline, size: 28, color: renkDort,), ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 50, left: 50, bottom:0,top: 0 ),
                                  child:
                                  Image.asset("resimler/${urun.resimAdi}"),
                                ),
                                Text("Gratis'e Özel", style: TextStyle(color: renkBir, fontWeight: FontWeight.bold),),
                                Text(urun.ad,style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold ),textAlign: TextAlign.center,),
                                Padding(
                                  padding: const EdgeInsets.only(left: 60, top: 5 ),
                                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                                    children:  [
                                      Icon(Icons.star_outlined, size: 17,color: renkBes,),
                                      Icon(Icons.star_outlined,size: 17,color: renkBes,),
                                      Icon(Icons.star_outlined, size: 17,color: renkBes,),
                                      Icon(Icons.star_outlined, size: 17,color: renkBes,),
                                      Icon(Icons.star_outline, size: 17,color: renkDort,),
                                    ],
                                  ),
                                ),

                                Text("${urun.fiyat} TL",style: const TextStyle(color: Colors.black,fontSize:18, fontWeight: FontWeight.bold , fontFamily: "Playfair",),),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 15,top: 5 ),
                                      child: Text("Gratis Kart ile ${urun.ozel_fiyat} TL" , style: TextStyle(fontSize: 16,backgroundColor: renkUc,fontWeight: FontWeight.bold),textAlign: TextAlign.center, )
                                ),
                                SizedBox(
                                  height: 42,
                                  width: 170,
                                child:
                                  ElevatedButton(onPressed: (){}, child: const Text("SEPETE EKLE"),
                                    style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
                                    backgroundColor: renkIki),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    }else{
                      return const Center();
                    }
                  },
         ),
      ),
    );
  }
}
