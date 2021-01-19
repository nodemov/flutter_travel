import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
                  IconButton(icon: Icon(Icons.extension), onPressed: () {}),
                ],
              ),
              SizedBox(height: 37),
              Text.rich(
                TextSpan(
                    text: 'Welcome,',
                    style: TextStyle(fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text: ' Canary Dev',
                        style: TextStyle(fontWeight: FontWeight.normal),
                      ),
                    ]),
                style: TextStyle(fontSize: 50),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search, size: 18),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  hintText: 'Search',
                ),
              ),
              SizedBox(height: 80),
              Text(
                'Save Places',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              SizedBox(height: 10.0),
              SizedBox(
                height: 300.0,
                child: GridView.count(
                  padding: EdgeInsets.zero,
                  crossAxisCount: 2,
                  childAspectRatio: 1.491,
                  children: [
                    for (var country in countries)
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.asset(
                            'assets/images/$country.jpg',
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    // Image.asset('assets/images/$country.jpg'),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

final countries = ['thailand', 'japan', 'rome', 'france'];
