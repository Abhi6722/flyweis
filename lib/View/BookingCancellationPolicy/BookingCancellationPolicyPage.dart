import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../Constants/Konstants.dart';
class BookingCancellationPage extends StatelessWidget {
  const BookingCancellationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: AppConstants.width,
              height: AppConstants.height * 0.25,
              color: Color(0xfff52d56),
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: AppConstants.height * 0.03,
                  ),
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: const Icon(Icons.arrow_back_ios_new,
                          color: Colors.white)),
                  Padding(
                    padding:
                    EdgeInsets.only(top: AppConstants.height * 0.03),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Booking Cancellation",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24 * AppConstants.text),
                        ), Text(
                          "Policy",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24 * AppConstants.text),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Lorem ipsum dolor sit amet. Sit quidem voluptatem et optio modi vel optio nemo eos ratione expedita. Sit odio repellat ut suscipit vero aut tempore ratione non consequatur unde sed atque quidem ex voluptas esse qui beatae unde!Et dolor eaque rem vero corporis ut atque molestias qui quam facere. Hic voluptas tempora eos nostrum sint et libero itaque qui accusantium voluptatem ex commodi illum ab suscipit velit et vitae sint. Sed consectetur quos id perferendis error qui laboriosam nesciunt id sequi quae?Sed unde harum eum velit laudantium eum voluptatibus numquam vel corrupti omnis aut quia quae non alias reprehenderit aut unde voluptas. In deserunt impedit in nostrum doloremque et quidem iure in nihil provident. Aut dignissimos laboriosam et explicabo voluptate qui reiciendis inventore At galisum enim.'),
            )

          ],
        ),
      ),
    ));
  }
}
