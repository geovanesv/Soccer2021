import 'splash_screen.dart';
import 'Jogos_online.dart';
import 'package:flutter/material.dart';
import 'noticias.dart';
import 'placar.dart';
import 'sobre.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Futebol ao vivo',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Colors.black,
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  String title = 'Tudo sobre Futebol';

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: TabBarView(
        children: <Widget>[
          Noticias(),
          Jogos(),
          Placar(),
          Sobre(),
        ],
        // If you want to disable swiping in tab the use below code
        physics: NeverScrollableScrollPhysics(),
        controller: _tabController,
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(50.0),
          ),
          child: Container(
            color: Colors.black26,
            child: TabBar(
              labelColor: Colors.deepPurple[700],
              unselectedLabelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 10.0),
              indicator: UnderlineTabIndicator(
                borderSide: BorderSide(color: Colors.black54, width: 0.0),
                insets: EdgeInsets.fromLTRB(50.0, 0.0, 50.0, 40.0),
              ),
              //For Indicator Show and Customization
              indicatorColor: Colors.black54,
              tabs: <Widget>[
                Tab(
                  icon: Icon(
                    Icons.add_comment_outlined,
                    size: 24.0,
                  ),
                  text: 'Notícias',
                ),
                Tab(
                  icon: Icon(
                    Icons.add_to_queue,
                    size: 24.0,
                  ),
                  text: 'Ao vivo',
                ),
                Tab(
                  icon: Icon(
                    Icons.add_chart,
                    size: 24.0,
                  ),
                  text: 'Placar',
                ),
                Tab(
                  icon: Icon(
                    Icons.account_circle,
                    size: 24.0,
                  ),
                  text: 'Sobre',
                ),
              ],
              controller: _tabController,
            ),
          ),
        ),
      ),
    );
  }
}
