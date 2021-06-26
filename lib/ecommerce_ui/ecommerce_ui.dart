import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_project/ecommerce_ui/components/categories_widget.dart';
import 'package:flutter_project/ecommerce_ui/components/reuseable_card.dart';
class EcommereceUi extends StatefulWidget {

  @override
  _EcommereceUiState createState() => _EcommereceUiState();
}

class _EcommereceUiState extends State<EcommereceUi> {
  final List<String> imageList =[
    "http://cdn.mos.cms.futurecdn.net/6t8Zh249QiFmVnkQdCCtHK.jpg",
    "https://images.unsplash.com/photo-1593642702821-c8da6771f0c6?ixid=MnwxMjA3fDF8MHxzZWFyY2h8Mjd8fGxhcHRvcHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80",
    "https://cdn.techjuice.pk/wp-content/uploads/2017/03/windows-10-laptop.jpg",
    "https://www.xda-developers.com/files/2021/05/macbook-pro-16-inch-concept-1024x586.jpg",
    "https://www.theapplepost.com/wp-content/uploads/2019/02/MacBook-Pro-concept-white-1024x640.jpg",
    "https://photos5.appleinsider.com/gallery/31376-60118-Mac-Pro-l.jpg",
    "https://www.hp.com/wcsstore/hpusstore/Treatment/mdps/spectre_x360_q4fy19/spectre_x360_q4fy19_addon_ksp2.jpg",
    "https://www.techadvisor.com/cmsdata/features/3805403/windows-11-release-date-price-features_thumb800.jpg",
    "https://www.senheng.com.my/media/catalog/product/i/p/iphone_12_purple-new_family_photo.jpg",
    "https://dynaimage.cdn.cnn.com/cnn/c_fill,g_auto,w_1200,h_675,ar_16:9/https%3A%2F%2Fcdn.cnn.com%2Fcnnnext%2Fdam%2Fassets%2F201110133912-10-apple-event-1110-screenshot.jpg"

  ];

  //   void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  // int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
      child: ListView(
    padding: EdgeInsets.zero,
    children: <Widget>[
      DrawerHeader(
        decoration: BoxDecoration(
          color: Colors.blue,
        ),
        child: Text('Drawer Header'),
      ),
      ListTile(
        title: Text('Item 1'),
        onTap: () {
        },
      ),
      ListTile(
        title: Text('Item 2'),
        onTap: () {
          // Update the state of the app.
          // ...
        },
      ),
    ],
  ),
  
  ),
      appBar: AppBar(
        title: Text(
          "Ecom App UI",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        elevation: 1,
        actions: [
          Padding(padding: EdgeInsets.only(right: 15),
          child: Icon(Icons.notifications,color: Colors.black,))
        ],
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    autoPlay: true,
                  ),
                  items: imageList.map((e) => Container(
                    margin: EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8)),
                    child:Card(
                      elevation: 1,
                      child: Image.network(e,height: 200,width: 1000,fit: BoxFit.cover,)),
                      
                    )).toList(),
                  
                ),
              ],
            ),
            Text("More Categories",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Container(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
              CategoriesWidget(catName: "Accessories", itemcount: 6, icons: (Icons.electrical_services_rounded)),
              CategoriesWidget(catName: "Laptops", itemcount: 25, icons: (Icons.laptop)),
              CategoriesWidget(catName: "Mobile", itemcount: 20, icons: (Icons.phone_android)),
              CategoriesWidget(catName: "Raw Material", itemcount: 6, icons: (Icons.table_rows_sharp)),
              ],),
            ),

            
            GridView.count(crossAxisCount: 2,
            shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
            crossAxisSpacing: 2,
            mainAxisSpacing: 2,
            children: [
              ReuseableCardWidget(imageList: imageList,index: 0,name: "Laptop",),
              ReuseableCardWidget(imageList: imageList, index: 1,name: "Laptop"),
              ReuseableCardWidget(imageList: imageList,index: 2,name: "Laptop"),
              ReuseableCardWidget(imageList: imageList, index: 3,name: "Laptop"),
              ReuseableCardWidget(imageList: imageList,index: 4,name: "Laptop"),
              ReuseableCardWidget(imageList: imageList, index: 5,name: "Laptop"),
              ReuseableCardWidget(imageList: imageList, index: 6,name: "Laptop"),
              ReuseableCardWidget(imageList: imageList, index: 7,name: "Laptop"),
              ReuseableCardWidget(imageList: imageList, index: 8,name: "Laptop"),
              ReuseableCardWidget(imageList: imageList, index: 9,name: "Laptop")
            ],
            ),
            
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(onPressed: (){},
                minWidth: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home, color: Colors.purple,),
                    Text("Home"),
                  ],
                ),
                ),
                  MaterialButton(onPressed: (){},
                minWidth: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite, color: Colors.grey,),
                    Text("Favorite"),
                  ],
                ),
                )
              ],
              ),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MaterialButton(onPressed: (){},
                minWidth: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.add_shopping_cart, color: Colors.grey,),
                    Text("Cart"),
                  ],
                ),
                ),
                  MaterialButton(onPressed: (){},
                minWidth: 40,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person, color: Colors.grey,),
                    Text("Profile"),
                  ],
                ),
                )
              ],
              )
            ],),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.search,size: 35,),backgroundColor: Colors.purple,),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
    );
  }
}
