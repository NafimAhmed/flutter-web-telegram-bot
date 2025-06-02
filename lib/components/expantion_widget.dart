




import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpantionWidget extends StatelessWidget {
   ExpantionWidget({super.key, required this.child, required this.title, required this.maxWidth});

  RxBool isTileExpanded=true.obs;

  final Widget child;
  final Widget title;
  final double maxWidth;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(  // Add constraints
      constraints: BoxConstraints(
        maxWidth: maxWidth,  // Set a maximum width
        minWidth: 200,  // Set a minimum width
      ),
      child: Container(

        margin: EdgeInsets.only(top: 20),


        decoration: BoxDecoration(
          border: Border(
            top: BorderSide( // This adds the upper border
              color: Colors.blueAccent,
              width: 5,
            ),
          ),
        ),



        child: Obx(()=>ExpansionPanelList(
          // Remove all default visual indicators
          elevation: 2,
          expandIconColor: Colors.transparent,
          expandedHeaderPadding: EdgeInsets.zero,
          materialGapSize: 0,
          expansionCallback: (int index, bool isExpanded) {
            isTileExpanded.value = isExpanded;
          },
          children: [
            ExpansionPanel(
              canTapOnHeader: true,
              headerBuilder: (BuildContext context, bool isExpanded) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                  child: Row(
                    children: [
                      Expanded(child: title), // Your title widget
                      // Add your own custom icon if desired
                      Icon(
                        isExpanded ? Icons.remove : Icons.add,
                        size: 20,
                        color: Colors.black,
                      ),
                    ],
                  ),
                );
              },
              body: child,
              isExpanded: isTileExpanded.value,
            ),
          ],
        )


        //     ExpansionPanelList(
        //   elevation: 0,
        //   expandedHeaderPadding: EdgeInsets.zero,
        //   expansionCallback: (int index, bool isExpanded) {
        //
        //     isTileExpanded.value=isExpanded;
        //   },
        //   children: [
        //     ExpansionPanel(
        //
        //
        //
        //       headerBuilder: (BuildContext context, bool isExpanded) {
        //         return ListTile(
        //           title: title,
        //         );
        //       },
        //       body: child,
        //       isExpanded: isTileExpanded.value,
        //
        //
        //
        //
        //
        //
        //     ),
        //   ],
        // )



        ),
      )



      ,
    );
  }
}
