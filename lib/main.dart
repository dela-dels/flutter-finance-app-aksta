import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.white,
              backwardsCompatibility: false,
              foregroundColor: Colors.black)),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  // @override
  // _MyHomePageState createState() => _MyHomePageState();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('My Wallet'),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Icon(
                      Icons.qr_code,
                      color: Color(0xffDD1155),
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1607746882042-944635dfe10e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2670&q=80'),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: Center(
              child: Text('Balance',
                  style: TextStyle(
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.w600,
                      color: Colors.grey)),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
            child: Center(
              child: Text('¢ 22,180.89',
                  style: TextStyle(
                      fontFamily: 'Work Sans',
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Add',
                      style: TextStyle(
                          fontFamily: 'Work Sans',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        fixedSize: Size(150, 40),
                        primary: Color(0xffDD1155),
                        onPrimary: Colors.white),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Withdraw',
                      style: TextStyle(
                          fontFamily: 'Work Sans',
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        fixedSize: Size(150, 40),
                        primary: Color(0xffDD1155),
                        onPrimary: Colors.white),
                  )
                ],
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
            child: Divider(
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: ListView(
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(vertical: 8),
              children: [
                ListTile(
                  title: Text(
                    'Bank Accounts',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Work Sans',
                        fontSize: 12),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/checking2.png'),
                  ),
                  title: Text('Checking',
                      style: TextStyle(fontFamily: 'Work Sans', fontSize: 14)),
                  subtitle: Text('••00123',
                      style: TextStyle(
                          fontFamily: 'Work Sans',
                          fontSize: 10,
                          color: Colors.grey)),
                  trailing: Text(
                    '¢ 3,500',
                    style: TextStyle(
                        color: Color(0xffDD1155),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Work Sans',
                        fontSize: 14),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/citi.jpg'),
                  ),
                  title: Text('Savings',
                      style: TextStyle(fontFamily: 'Work Sans', fontSize: 14)),
                  subtitle: Text('••4409',
                      style: TextStyle(
                          fontFamily: 'Work Sans',
                          fontSize: 10,
                          color: Colors.grey)),
                  trailing: Text(
                    'Manual',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Work Sans',
                        fontSize: 14),
                  ),
                ),
                Divider(),
                ListTile(
                  title: Text(
                    'Cards',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Work Sans',
                        fontSize: 12),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/mastercard.png'),
                  ),
                  title: Text('MasterCard',
                      style: TextStyle(fontFamily: 'Work Sans', fontSize: 14)),
                  subtitle: Text('••5326',
                      style: TextStyle(
                          fontFamily: 'Work Sans',
                          fontSize: 10,
                          color: Colors.grey)),
                  trailing: Text(
                    '¢ 20,220',
                    style: TextStyle(
                        color: Color(0xffDD1155),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Work Sans',
                        fontSize: 14),
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/visa.jpeg'),
                  ),
                  title: Text('VISA Premium',
                      style: TextStyle(fontFamily: 'Work Sans', fontSize: 14)),
                  subtitle: Text('••4441',
                      style: TextStyle(
                          fontFamily: 'Work Sans',
                          fontSize: 10,
                          color: Colors.grey)),
                  trailing: Text(
                    '¢ 10,645.03',
                    style: TextStyle(
                        color: Color(0xffDD1155),
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Work Sans',
                        fontSize: 14),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    )));
  }
}
