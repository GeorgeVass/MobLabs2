import 'package:flutter/material.dart';

class EntryPoint extends StatefulWidget {
  @override
  _EntryPointState createState() => _EntryPointState();
}

class _EntryPointState extends State<EntryPoint> {
  List<Widget> _widgetOptions = [
    Container(
      child: ListView.builder(
        itemBuilder: (context, _) {
          return PostWidget();
        },
        itemCount: 4,
      ),
    ),
    Container(
      child: Center(
        child: Text('Notifications', style: TextStyle(color: Colors.blueGrey, fontSize: 24),),
      ),
    ),
    Container(
      child: Center(
        child: Text('Messages', style: TextStyle(color: Colors.blueGrey, fontSize: 24),),
      ),
    ),
  ];

  int currentTab = 0;

  void navFunc(int index) {
    setState(() {
      currentTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
          backgroundColor: Colors.white,
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu_rounded,
                color: Color(0xff738f9e),
              ),
              onPressed: Scaffold.of(context).openDrawer,
            ),
          ),
          title: Text(
            'Home',
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 24, color: Colors.blue),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.search,
                color: Color(0xff738f9e),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          child: SafeArea(
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  navItem(title: 'Lists', iconData: Icons.library_books_sharp),
                  navItem(title: 'Bookmarks', iconData: Icons.bookmark_border),
                  navItem(
                      title: 'Twitter Ads',
                      iconData: Icons.add_to_home_screen_sharp),
                  navItem(
                      title: 'Analytics', iconData: Icons.analytics_outlined),
                  navItem(title: 'QR-Code', iconData: Icons.qr_code_scanner),
                  navItem(
                      title: 'Setting & Privacy',
                      iconData: Icons.settings_outlined),
                ],
              ),
              color: Colors.white,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.create),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications_none),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail_outline),
              label: 'Messages',
            ),
          ],
          currentIndex: currentTab,
          onTap: navFunc,
        ),
        body: _widgetOptions[currentTab],
      ),
    );
  }

  Widget navItem({String title, IconData iconData}) {
    return Card(
      elevation: 0,
      child: Row(
        children: [
          Icon(
            iconData,
            color: Color(0xff868cd0),
            size: 45,
          ),
          Text(
            title ?? '',
            style: TextStyle(
              color: Color(0xff868cd0),
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://memepedia.ru/wp-content/uploads/2018/02/22_main.jpeg'),
              radius: 20,
            ),
            title: Text('Abdullah'),
            subtitle: Text('@abdulah22'),
            trailing: IconButton(
              icon: Icon(Icons.more_vert),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 10,
              bottom: 5,
            ),
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum a aliquam justo'),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15,
              right: 15,
              top: 10,
              bottom: 10,
            ),
            child: Image.network(
                'https://fujifilm-x.com/wp-content/uploads/2019/09/Image-1.jpg'),
          ),
          metricsSector(),
        ],
      ),
    );
  }

  Widget metricsSector() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          width: 72,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.favorite_outline),
              ),
              Text('234')
            ],
          ),
        ),
        Container(
          width: 72,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.mode_comment_outlined),
              Text('110'),
            ],
          ),
        )
      ],
    );
  }
}
