import "package:flutter/material.dart";
import 'colors.dart';

const products = [
  {'image': 'assets/plants.jpg', 'count': '147', 'name': 'Plants'},
  {'image': 'assets/seeds.jpg', 'count': '16', 'name': 'Seeds'},
  {'image': 'assets/flowers.jpg', 'count': '68', 'name': 'Flowers'},
  {'image': 'assets/sprayers.jpg', 'count': '17', 'name': 'Sprayers'},
  {'image': 'assets/pots.jpg', 'count': '47', 'name': 'Pots'},
  {'image': 'assets/fertilizers.jpg', 'count': '9', 'name': 'Fertilizers'},
  {'image': 'assets/pots.jpg', 'count': '17', 'name': 'Pots 2'},
  {'image': 'assets/fertilizers.jpg', 'count': '39', 'name': 'Fertilizers'},
];

class BrowsePage extends StatefulWidget {
  const BrowsePage({Key key}) : super(key: key);

  @override
  _BrowsePageState createState() => _BrowsePageState();
}

class _BrowsePageState extends State<BrowsePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150),
        child: AppBar(
          flexibleSpace: Container(
            padding: EdgeInsets.only(left: 20.0, bottom: 70.0, right: 20.0),
            child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Plants",
                  style: TextStyle(
                      color: Color(0xFF323643),
                      fontSize: 26.0,
                      fontWeight: FontWeight.w700),
                )),
          ),
          bottom: PreferredSize(
            preferredSize: Size(50, 50),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10.0),
              child: TabBar(
                controller: _tabController,
                tabs: <Widget>[
                  Tab(text: "Products"),
                  Tab(text: "Shop"),
                ],
                indicatorColor: secondaryColorGreen,
                unselectedLabelStyle: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: TabBarView(
          controller: _tabController, children: [ProductTab(), ShopTab()]),
    );
  }
}

class ProductTab extends StatelessWidget {
  const ProductTab({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            child: GridView.builder(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30.0,
                    mainAxisSpacing: 15.0),
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      //  Navigator.push(context, MaterialPageRoute());
                    },
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 20,
                                offset: Offset(0, 20),
                                color: Color(0xFF9DA3B4).withOpacity(0.16))
                          ]),
                      width: 150,
                      height: 150,
                      child: Center(
                        child: Column(children: [
                          Image(
                            image: AssetImage(products[index]['image']),
                            width: 60,
                            height: 60,
                          ),
                          Text(products[index]["name"]),
                          Text("${products[index]['count']} products")
                        ]),
                      ),
                    ),
                  );
                }))
      ],
    );
  }
}

class ShopTab extends StatelessWidget {
  const ShopTab();

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
