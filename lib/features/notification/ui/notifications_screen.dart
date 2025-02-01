import 'package:flutter/material.dart';

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: const Text('Notification', style: TextStyle(color: Colors.black)),
          centerTitle: true,
          elevation: 0,
       
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 16, top: 12),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Text('2 NEW', style: TextStyle(color: Colors.white)),
            )
          ],
        ),
        body:  NotificationList(),
     
    );
  }
}

class NotificationList extends StatelessWidget {
  final List<Map<String, String>> notifications = [
    {'title': 'Order Shipped', 'time': '1h', 'icon': '🚚'},
    {'title': 'Flash Sale Alert', 'time': '1h', 'icon': '⚡'},
    {'title': 'Product Review Request', 'time': '1h', 'icon': '⭐'},
    {'title': 'Order Shipped', 'time': '1d', 'icon': '🚚'},
    {'title': 'New Paypal Added', 'time': '1d', 'icon': '💳'},
    {'title': 'Flash Sale Alert', 'time': '1d', 'icon': '⚡'},
  ];

   NotificationList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          const SectionHeader(title: 'TODAY'),
          ...notifications.take(3).map((notification) => NotificationItem(notification: notification)).toList(),
          const SectionHeader(title: 'YESTERDAY'),
          ...notifications.skip(3).map((notification) => NotificationItem(notification: notification)).toList(),
        ],
      ),
    );
  }
}

class SectionHeader extends StatelessWidget {
  final String title;

  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const Text('Mark all as read', style: TextStyle(color: Colors.brown)),
        ],
      ),
    );
  }
}

class NotificationItem extends StatelessWidget {
  final Map<String, String> notification;

  const NotificationItem({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 1,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        tileColor: Colors.white,
        leading: CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: Text(notification['icon']!, style: const TextStyle(fontSize: 20)),
        ),
        title: Text(notification['title']!, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.'),
        trailing: Text(notification['time']!, style: const TextStyle(color: Colors.grey)),
      ),
    );
  
  }
}