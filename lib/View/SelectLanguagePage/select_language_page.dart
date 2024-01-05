import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../Constants/Konstants.dart';
import '../LoginPage/login_page.dart';
class SelectLanguagePage extends StatelessWidget {
  SelectLanguagePage({super.key});
  List<String>title =['हिन्दी','English','मराठी','ਪੰਜਾਬੀ','ಕನ್ನಡ','OTHERS'];
  List<String>subtitle =['Hindi','English','MARATHI','PUNJABI','KANNAD','OTHERS'];
  List<String>subtitle2 =['आ ','A','म','ਪੰ','ಕ','आ-A'];
  RxInt languageSelect=1.obs;
  Widget gridListViewForLocation(BuildContext context,Function gridFunction){
    return Center(
      child: GridView.count(
        childAspectRatio: 1.5,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        // crossAxisSpacing: 0,

        // Generate 100 widgets that display their index in the List.
        children: List.generate(6, (index) {
          return GestureDetector(
            onTap: (){
              languageSelect.value=index;
              gridFunction();
            },
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)
                ),
                color: Colors.white,
                surfaceTintColor: Colors.white,
                child: Padding(
                  padding:EdgeInsets.only(left: AppConstants.width*0.05,top: AppConstants.height*0.025,bottom:AppConstants.height*0.025 ),
                  child: Stack(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: AppConstants.text*14),),
                          Text(subtitle[index],style: TextStyle(color: Colors.grey,fontSize: AppConstants.text*12),),
                          SizedBox(height: AppConstants.height*0.02,),
                          Text(subtitle2[index],style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold ,fontSize: AppConstants.text*12),)
                        ],
                      ),
                      Obx(()=>languageSelect==index?Positioned(
                          left: AppConstants.width*0.28,
                          child: Icon(Icons.check_circle,color: Colors.green,size: 13,)):SizedBox())
                    ],
                  ),
                ),
              ),
            )
          );
          // style: Theme.of(context).textTheme.headlineSmall,

        }),

      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            // CustomAppBar(
            //   widthScreen: AppConstants.kwidthScreen,
            //   heightScreen: AppConstants.kheightScreen,
            //   textScaleFactor: AppConstants.ktextScaleFactor,
            // ),
            SliverToBoxAdapter(
              child: Center(
                child: Column(
                  children: [
                    Container(
                      height: AppConstants.height*0.25,
                      color: Color(0xfff52d56),
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: AppConstants.height*0.07,),
                          InkWell(
                              onTap: (){
                                Get.back();
                              },
                              child: const Icon(Icons.arrow_back_ios_new, color: Colors.white)),
                          Padding(
                            padding:  EdgeInsets.only(top:AppConstants.height*0.03),
                            child: Row(
                              children: [
                                Text("Language",style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 24*AppConstants.text),),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                      Padding(
                        padding:  EdgeInsets.only(top: AppConstants.height*0.04),
                        child: SizedBox(
                          width: AppConstants.width*0.15,
                          child: Image.asset('assets/images/selectlanguagelogo.png'),
                        ),
                      ),
                    Text('Please Select your language',style: TextStyle(fontSize: 15*AppConstants.text,fontWeight: FontWeight.bold),),
                    Text('You can change the language at any time.',style: TextStyle(fontSize: 12*AppConstants.text,),),
                    gridListViewForLocation(context, (){
                    }),


                  ],
                ),
              ),
            )
          ],
        ),
    );
  }
}
