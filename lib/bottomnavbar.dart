import 'package:flutter/material.dart';
import 'package:flutter_tut1/accountpage.dart';
import 'package:flutter_tut1/counterpage.dart';
import 'package:flutter_tut1/homepage.dart';

class BottomNavBar extends StatefulWidget {
  final String email;
  const BottomNavBar({
    Key key,
    this.email,
  }) : super(key: key);
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with TickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 56,
        decoration: BoxDecoration(color: Colors.deepPurpleAccent),
        width: double.infinity,
        child: TabBar(
          indicatorColor: Colors.transparent,
          indicator: BoxDecoration(
              color: Colors.white30, borderRadius: BorderRadius.circular(12)),
          controller: _tabController,
          tabs: [Icon(Icons.home), Icon(Icons.add), Icon(Icons.person)],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          HomePage(),
          CounterPage(),
          AccountPage(
            email: widget.email,
          )
        ],
      ),
    );
  }
}
