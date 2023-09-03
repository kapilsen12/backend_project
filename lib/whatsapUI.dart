import 'package:flutter/material.dart';
final List<Users> users = [
  Users(image: ('assets/man2.png'), name: 'Rajat', subtitle: 'Send Pic', trilling: '12/05/2023'),
  Users(image: ('assets/man2.png'), name: 'Vishal', subtitle: 'Send Pic', trilling: '12/05/2023'),
  Users(image: ('assets/man2.png'), name: 'Deepesh', subtitle: 'Send Pic', trilling: '12/05/2023'),
  Users(image: ('assets/man2.png'), name: 'Gourav', subtitle: 'Send Pic', trilling: '12/05/2023'),
  Users(image: ('assets/man2.png'), name: 'Yash', subtitle: 'Send Pic', trilling: '12/05/2023'),
  Users(image: ('assets/man2.png'), name: 'Ragov', subtitle: 'Send Pic', trilling: '12/05/2023'),
  Users(image: ('assets/man2.png'), name: 'Rajat', subtitle: 'Send Pic', trilling: '12/05/2023'),

];
final List<Product> product =[
  Product(image: ('assets/man3.png'), name: 'Vishal', subtitle: 'Today,12:28PM'),
  Product(image: ('assets/man3.png'), name: 'Deepesh', subtitle: 'Today,11:28PM'),
  Product(image: ('assets/man3.png'), name: 'Ragao', subtitle: 'Today,12:28PM'),
  Product(image: ('assets/man3.png'), name: 'Yash', subtitle: 'Yesterday'),
  Product(image: ('assets/man3.png'), name: 'Rohit', subtitle: 'Today,12:28PM'),
  Product(image: ('assets/man3.png'), name: 'Virat', subtitle: 'Today,12:28PM'),
  Product(image: ('assets/man3.png'), name: 'Suresh', subtitle: 'Today,12:28PM'),
  Product(image: ('assets/man3.png'), name: 'Vishal', subtitle: 'Today,12:28PM'),

];
final List<User>user=[
  User(image: ('assets/man2.png'), name: 'yash', subtitle: 'yesterday 11.19AM', icon: Icons.call),
  User(image: ('assets/man2.png'), name: 'Vishal', subtitle: 'yesterday 11.19AM', icon: Icons.video_call),
  User(image: ('assets/man2.png'), name: 'Rohit', subtitle: 'yesterday 11.19AM', icon: Icons.video_call),
  User(image: ('assets/man2.png'), name: 'Rajat', subtitle: 'yesterday 11.19AM', icon: Icons.call),
  User(image: ('assets/man2.png'), name: 'Deepesh', subtitle: 'yesterday 11.19AM', icon: Icons.call),
  User(image: ('assets/man2.png'), name: 'Sourabh', subtitle: 'yesterday 11.19AM', icon: Icons.video_call),
  User(image: ('assets/man2.png'), name: 'yash', subtitle: 'yesterday 11.19AM', icon: Icons.call),
];


class Whatsap extends StatefulWidget {
  const Whatsap({Key? key}) : super(key: key);

  @override
  State<Whatsap> createState() => _WhatsapState();
}

class _WhatsapState extends State<Whatsap> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, child: 
    Scaffold(
      appBar: AppBar(
        title: Text('Whatsaap'),
        backgroundColor: Colors.green,
        bottom: TabBar(tabs: [
          Tab(
            child: Row(
              children: [
                Tab(icon: Icon(Icons.camera_alt_outlined),),
                Text('Chat')
              ],
            ),
          ),
          Tab(text: 'Status',),
          Tab(text: 'Calss',)
        ]
          ),
          actions: [
            Row(children: [
              Icon(Icons.camera_alt_outlined,size: 28,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
              Icon(Icons.search,size: 28,),
              Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
              Icon(Icons.dehaze_rounded,size: 28,)
            ],)
          ],
      ),
      body: TabBarView(children: [
        ListView.builder(
          itemCount: users.length,
        itemBuilder: (context,item){
            return Card(
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage(users[item].image),
                radius: 30,),
                title: Text(users[item].name,style: TextStyle(fontSize: 18,fontWeight:
                FontWeight.bold),),
                subtitle: Text(users[item].subtitle),
                trailing: Text(users[item].trilling),
              ),
            );
        }
      ),
        ListView.builder(
          itemCount: product.length,
          itemBuilder: (context,item){
            return Card(
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage(product[item].image),radius: 30,),
                title: Text(product[item].name,style: TextStyle(fontSize: 18,fontWeight:
                FontWeight.bold),),
                subtitle: Text(product[item].subtitle),
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
        title: Text(user[item].name,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
        subtitle: Text(user[item].subtitle),
        trailing: Icon(user[item].icon,color: Colors.green,size: 25,),
      ),
    );
  }
)
      ],),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),backgroundColor: Colors.green,
          onPressed: (){},
        )
    )
    );
  }
}

class Users{
  Users(
  { required this.image,
    required this.name,
    required this.subtitle,
    required this.trilling,

}
      );
  String image;
  String name;
  String subtitle;
  String trilling;
}

class Product{
  Product(
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

class User{
  User(
  {
    required this.image,
    required this.name,
    required this.subtitle,
    required this.icon,

}
      );
  String image;
  String name;
  String subtitle;
  IconData icon;
}