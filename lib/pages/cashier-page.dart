// Import the necessary packages and define cardBackgroundColor.

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:seblak_mandji/main.dart';
import 'package:seblak_mandji/pages/cashier/order-page.dart';

import 'cashier/sub-menu-cashier.dart';

class CashierPage extends StatelessWidget {
  const CashierPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(color: cardBackgroundColor),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                          color: cardBackgroundColor,
                          borderRadius: BorderRadius.circular(25),
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                        ),
                        child: TabBar(
                          indicator: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          labelColor: cardBackgroundColor,
                          unselectedLabelColor: Colors.white,
                          tabs: [
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 32, right: 32),
                                child: Tab(text: 'Pesanan'),
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(left: 32, right: 32),
                                child: Tab(text: 'Pengeluaran'),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SubMenuCashier(
                                text: "Menu",
                                icon: Icons.menu,
                              ),
                              SizedBox(width: 10),
                              SubMenuCashier(
                                text: "Manual",
                                icon: Icons.calculate,
                              ),
                              SizedBox(width: 10),
                              SubMenuCashier(
                                text: "Cari",
                                icon: Icons.search_rounded,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: TabBarView(
                    children: [
                      // Content for the 'Pendapatan' tab
                      Center(
                        child: OrderPage(),
                      ),
                      // Content for the 'Pengeluaran' tab
                      Center(
                        child: Text('Pengeluaran Content'),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
