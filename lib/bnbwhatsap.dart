import 'package:backend_project/Class/23June/bnb_controller.dart';
import 'package:backend_project/whatsapUI.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
final List<Users>users =[
  Users(image: 'assets/man2.png', name: 'Rajat', subtitle: 'send pic', triling: '12:04:2023'),
  Users(image: 'assets/man2.png', name: 'vishal', subtitle: 'send pic', triling: '12:04:2023'),
  Users(image: 'assets/man2.png', name: 'Virat', subtitle: 'send pic', triling: '12:04:2023'),
  Users(image: 'assets/man2.png', name: 'Rohit', subtitle: 'send pic', triling: '12:04:2023'),
  Users(image: 'assets/man2.png', name: 'Deepesh', subtitle: 'send pic', triling: '12:04:2023'),
  Users(image: 'assets/man2.png', name: 'Yash', subtitle: 'send pic', triling: '12:04:2023'),
  Users(image: 'assets/man2.png', name: 'Rajat', subtitle: 'send pic', triling: '12:04:2023'),
];
final List<User> user=[
  User(image: 'assets/man2.png', name: 'Vishal', subtitle: 'Today 12:25PM'),
  User(image: 'assets/man2.png', name: 'Vishal', subtitle: 'Today 12:25PM'),
  User(image: 'assets/man2.png', name: 'Vishal', subtitle: 'Today 12:25PM'),
  User(image: 'assets/man2.png', name: 'Vishal', subtitle: 'Today 12:25PM'),
  User(image: 'assets/man2.png', name: 'Vishal', subtitle: 'Today 12:25PM'),
  User(image: 'assets/man2.png', name: 'Vishal', subtitle: 'Today 12:25PM'),
  User(image: 'assets/man2.png', name: 'Vishal', subtitle: 'Today 12:25PM'),
];
final List<Product> product =[
  Product(image: 'assets/man2.png', name: 'Rohit', subtitle: 'June 23,11:19 AM', icon:Icons.call ),
  Product(image: 'assets/man2.png', name: 'Deepesh', subtitle: 'June 23,11:19 AM', icon:Icons.video_call ),
  Product(image: 'assets/man2.png', name: 'Virat', subtitle: 'June 23,11:19 AM', icon:Icons.call ),
  Product(image: 'assets/man2.png', name: 'Raina', subtitle: 'June 23,11:19 AM', icon:Icons.video_call ),
  Product(image: 'assets/man2.png', name: 'Vishal', subtitle: 'June 23,11:19 AM', icon:Icons.video_call ),
  Product(image: 'assets/man2.png', name: 'Sourabh', subtitle: 'June 23,11:19 AM', icon:Icons.call ),
  Product(image: 'assets/man2.png', name: 'Rohit', subtitle: 'June 23,11:19 AM', icon:Icons.call ),

];

class whatsap1 extends StatefulWidget {
  const whatsap1({Key? key}) : super(key: key);

  @override
  State<whatsap1> createState() => _whatsap1State();
}

class _whatsap1State extends State<whatsap1> {
  final bnbCont = Get.put(BNBController());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: Scaffold(
      appBar: AppBar(
        title: const Text('WhatsAap'),backgroundColor: Colors.green,
        bottom: TabBar(
          onTap: (int index){
            bnbCont.changIndex(index);
          },
          tabs: [
          Tab(child: Row(
            children: const [
              Tab(icon: Icon(Icons.account_circle)),
              Text('Chat'),
            ],
          ),
          ),
          const Tab(text: 'Status'),
          const Tab(text: 'Class',),
        ],),
        actions: [
          Row(
            children: const [
            Icon(Icons.camera_alt_outlined,size: 28,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
            Icon(Icons.saved_search,size: 28,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
           Icon(Icons.dehaze_rounded,size: 28,)
          ],)
        ],
      ),
      body:Obx(() =>  IndexedStack(
        index: bnbCont.index.value,
        children: [

              ListView.builder(
                  itemCount: users.length,
                  itemBuilder: (context,item){
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(backgroundImage: AssetImage(users[item].image),radius: 30,),
                        title: Text(users[item].name,style: const TextStyle(fontSize: 20,fontWeight:
                        FontWeight.bold),),
                        subtitle: Text(users[item].subtitle,style: const TextStyle(fontSize: 16),),
                        trailing: Text(users[item].triling,style: const TextStyle(fontSize: 16),),

                      ),
                    );
                  }
              ),



    ListView.builder(
        itemCount: user.length,
        itemBuilder: (context,item){
          return Card(
            child: ListTile(
              leading: CircleAvatar(backgroundImage: AssetImage(user[item].image),radius: 30,),
              title: Text(user[item].name,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              subtitle: Text(user[item].subtitle,style: const TextStyle(fontSize: 16),),

            ),
          );
        }
    ),




           ListView.builder(
               itemCount: product.length,
               itemBuilder: (context,item){
                 return Card(child:
                 ListTile(
                   leading: CircleAvatar(backgroundImage: AssetImage(product[item].image),radius: 30,),
                   title: Text(product[item].name,style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
                   ),
                   subtitle: Text(product[item].subtitle,style: const TextStyle(fontSize: 16),),
                   trailing: Icon(product[item].icon,color: Colors.green,size: 28,),

                 )
                 );
               }
           )




        ],
          ),

    ),




floatingActionButton: FloatingActionButton(
  child: const Icon(Icons.message),backgroundColor: Colors.green,
  onPressed: (){},
),

    )
    );
  }
}

class Users{
  Users(
  {
    required this.image,
    required this.name,
    required this.subtitle,
    required this.triling

}
      );
  String image;
  String name;
  String subtitle;
  String triling;
}

class User{
  User(
  {
    required this.image,
    required this.name,
    required this.subtitle,
}
      );
  String image;
  String name;
  String subtitle;
}

class Product{
  Product({
    required this.image,
    required this.name,
    required this.subtitle,
    required this.icon,
});
  String image;
  String name;
  String subtitle;
  IconData icon;
}