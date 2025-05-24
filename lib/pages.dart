import 'package:flutter/material.dart';

class Pages extends StatelessWidget {
  const Pages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.arrow_back_ios),
              Row(
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none)),
                  CircleAvatar(radius: 18),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          // Brand Name
          Center(
            child: Text(
              "Netflix",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, letterSpacing: 1.2),
            ),
          ),
          SizedBox(height: 24),
          // Coupon Card
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color(0xFF2563FF),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        "50% OFF",
                        style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Icon(Icons.bookmark_border, color: Colors.white),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  "Get 50% off your next two months of Netflix subscription and more.",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("Details", style: TextStyle(color: Colors.white)),
                    ),
                    SizedBox(width: 12),
                    ElevatedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.copy, size: 18, color: Color(0xFF2563FF)),
                      label: Text("Save"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFFFFE082),
                        foregroundColor: Color(0xFF2563FF),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        textStyle: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 32),
          // Available Stores
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Available Stores",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          SizedBox(height: 16),
          // Store Cards
          Column(
            children: [
              StoreCard(
                icon: Icons.sports_esports,
                title: "Electronic Arts",
                subtitle: "Electronic sports",
                selected: true,
              ),
              SizedBox(height: 12),
              StoreCard(
                icon: Icons.account_balance_wallet,
                title: "Paypal",
                subtitle: "Money management",
                selected: false,
              ),
            ],
          ),
        ],),
      )
    );
  }
}

// StoreCard widget for Available Stores
class StoreCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool selected;

  const StoreCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.selected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 18),
      decoration: BoxDecoration(
        color: selected ? Colors.white : Colors.grey[100],
        borderRadius: BorderRadius.circular(18),
        boxShadow: selected
            ? [BoxShadow(color: Colors.blue.withOpacity(0.08), blurRadius: 8, offset: Offset(0, 2))]
            : [],
        border: selected ? Border.all(color: Color(0xFF2563FF), width: 1.5) : null,
      ),
      child: Row(
        children: [
          Icon(icon, size: 32, color: selected ? Color(0xFF2563FF) : Colors.black54),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              SizedBox(height: 4),
              Text(subtitle, style: TextStyle(color: Colors.grey[600], fontSize: 13)),
            ],
          ),
          Spacer(),
          if (selected)
            Icon(Icons.circle, size: 12, color: Color(0xFF2563FF)),
        ],
      ),
    );
  }
}