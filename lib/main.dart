import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color selection = Colors.grey[900]!;
    final Color selection2 = Colors.indigo[800]!;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[Colors.blue.shade800, selection],
            ),
          ),
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              Container(
                child: const Icon(
                  Icons.chevron_left,
                  color: Colors.white,
                  size: 32,
                ),
                margin: EdgeInsets.only(top: 50),
                alignment: Alignment.centerLeft,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: TextButton.icon(
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(Size(400, 36)),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.black12),
                            //!!sdgjdsg
                            alignment: Alignment.centerLeft),
                        onPressed: () => null,
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                        ),
                        label: const Text(
                          'Find in liked songs ',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      margin: const EdgeInsets.only(top: 25),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      margin: const EdgeInsets.only(top: 25),
                      child: ElevatedButton(
                        style:
                            ElevatedButton.styleFrom(primary: Colors.black12),
                        onPressed: () => null,
                        child: const Text('Sort'),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.topLeft,
                        //! asdafarhadfhadfh
                        height: 100,
                        child: Column(
                          children: [
                            Container(
                              child: const Text(
                                'Liked Song',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 24),
                              ),
                              alignment: Alignment.centerLeft,
                            ),
                            Container(
                                alignment: Alignment.centerLeft,
                                margin: const EdgeInsets.only(top: 20),
                                child: const Text(
                                  '22 songs',
                                  style: TextStyle(color: Colors.white),
                                ))
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(bottom: 20),
                        //!!
                        height: 100,
                        alignment: Alignment.bottomRight,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: Colors.green,
                          ),
                          child: const Icon(
                            Icons.play_arrow_rounded,
                            size: 50,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //!!
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      spotiAlbum2(),
                      spotiAlbum(),
                      spotiAlbum(),
                      spotiAlbum(),
                      spotiAlbum(),
                      spotiAlbum(),
                      spotiAlbum(),
                      spotiAlbum(),
                      spotiAlbum(),
                      spotiAlbum(),
                      spotiAlbum(),
                      spotiAlbum(),
                      spotiAlbum(),
                      spotiAlbum(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.black12,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.library_add_check),
              label: 'Your Library',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.room_rounded),
              label: 'Premium',
            ),
          ],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
        ),
      ),
    );
  }

  Card spotiAlbum() {
    return Card(
      color: Colors.black26,
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        textColor: Colors.white,
        leading: Image.asset('assets/images/stoney.jpg'),
        title: const Text(
          'Can not Talk',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: const Text('Daby'),
        trailing: const Icon(
          Icons.more_horiz,
          color: Colors.white,
        ),
      ),
    );
  }
}

Card spotiAlbum2() {
  return Card(
    color: Colors.black26,
    elevation: 2,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: ListTile(
      textColor: Colors.white,
      //!! BAK BURAYA
      leading: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.grey,
              width: 56.5,
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      title: const Text(
        'Add Song',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
    ),
  );
}
