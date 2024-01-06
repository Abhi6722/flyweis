import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/notification_controller.dart';

class NotificationPage extends StatelessWidget {

  final NotificationController notificationController = Get.find();

  NotificationPage({Key? key}) : super(key: key) {
    notificationController.fetchNotifications();
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Obx(
              () => notificationController.notificationList.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  color: const Color(0xfff52d56),
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.04,
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.03),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "Notifications",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                              ),
                            ),
                            Card(
                              color: const Color(0xffe92b52),
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                                child: Icon(Icons.delete, color: Colors.white),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: notificationController.notificationList.length,
                  itemBuilder: (context, index) {
                    final notification = notificationController.notificationList[index];
                    return ListTile(
                      leading: Card(
                        color: const Color(0xffebebeb),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                          child: SizedBox(
                            width: 15,
                            height: 15,
                            child: notification['image'] != null
                                ? Image.network(notification['image'])
                                : const SizedBox(), // Use placeholder image if no image available
                          ),
                        ),
                      ),
                      title: Text(
                        notification['message'] ?? 'No Message',
                        style: const TextStyle(fontSize: 15),
                      ),
                      subtitle: Text(
                        notification['desc'] ?? 'No Description',
                        style: const TextStyle(fontSize: 13),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}