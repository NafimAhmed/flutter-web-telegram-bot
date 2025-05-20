


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:untitled/components/expantion_widget.dart';
import 'package:untitled/controller.dart';



class Home extends StatelessWidget {
  HomeController controller=Get.put(HomeController());






  @override
  Widget build(BuildContext context) {

    controller.transectionData();
    controller.transectionSummeryData();
    controller.issueData();






    return Scaffold(

      appBar: AppBar(title: Text("Transection Detail"),),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(width: 1,color: Colors.grey)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(()=>Text('total Diposit: ${controller.summeryModel.value.results?.totalTransactions}')),
                      Obx(()=>Text('Exchange Rate: ${controller.summeryModel.value.results?.exchangeRate}')),
                      Obx(()=>Text('Rate: ${controller.summeryModel.value.results?.rate}')),
                      Obx(()=>Text('Not issued: ${controller.summeryModel.value.results?.notIssuedMoney} || ${(controller.summeryModel.value.results?.notIssuedCrypto)?.toStringAsFixed(2)} USDT')),
                      Obx(()=>Text('total Issued: ${controller.summeryModel.value.results?.totalIssuedMoney} || ${(controller.summeryModel.value.results?.totalIssuedUsdt)?.toStringAsFixed(2)} USDT')),
                    ],
                  ),
                ),





                ExpantionWidget(title: Text('Respondent Total Category'),
                maxWidth: Get.width/2,
                child: Column(
                  children: [


                    Text("No Data is available")

                  ],
                ),)





              ],
            ),


            SizedBox(height: 20,),


            Obx(()=>Text('Deposit (${controller.transectionModel.value.count} Transections)')),
            // Obx(()=>Text('result count (${controller.transectionModel.value.results?.length} Transections)')),

            SizedBox(height: 10,),


            Container(
              width: Get.width/1.5,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1,color: Colors.grey)
              ),
              child: Obx(()=>controller.transectionModel.value.results!=null?
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [

                    Text('Time'),
                    Container(
                      padding: EdgeInsets.only(left: 100),
                        child: Text('Amount')),
                    Text('Reply'),
                    Text('Operator'),


                  ],),


                  ListView.builder(
                    shrinkWrap: true,
                      itemCount: controller.transectionModel.value.results?.length,
                      itemBuilder: (context,index){

                        double rat=controller.transectionModel.value.results?[index].rate??0;

                        double amout=controller.transectionModel.value.results?[index].amount??0;

                    return Container(
                        decoration: BoxDecoration(

                          border: Border(
                            top: BorderSide(
                              color: Colors.black,
                              width: 1.0,
                              style: BorderStyle.solid, // Can be .solid, .dashed, etc.
                            ),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              DateFormat('yyyy-MM-dd HH:mm:ss').format(
                                DateTime.parse("${controller.issueModel.value.timestamp}"),
                              ),
                            ),
                            Text('${controller.transectionModel.value.results?[index].amount}/${controller.transectionModel.value.results?[index].rate} = ${(amout/rat).toStringAsFixed(2)}'),
                            Text('          '),
                            Text('Nafim Ahmed'),
                          ],
                        )

                    );

                  }),
                ],
              )
                  :Text('No data'),),
            ),


            SizedBox(height: 20,),


            Text('Issue(Pen)'),

            SizedBox(height: 10,),


            Container(

              width: Get.width/1.5,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(width: 1,color: Colors.grey)
              ),

              child: Column(
                children: [


                  Obx(()=>controller.issueModel.value.results!=null?
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text('Time'),
                          Container(
                            padding: EdgeInsets.only(left: 80),
                              child: Text('Amount')),
                          Text('Reply'),
                          Text('Operator'),


                        ],),
                      ListView.builder(
                          shrinkWrap: true,
                          itemCount: controller.issueModel.value.results?.length,
                          itemBuilder: (context,index){

                            double rat=controller.issueModel.value.results?[index].rate??0;

                            double amout=controller.issueModel.value.results?[index].amount??0;


                            return Container(
                                decoration: BoxDecoration(

                                  border: Border(
                                    top: BorderSide(
                                      color: Colors.black,
                                      width: 1.0,
                                      style: BorderStyle.solid, // Can be .solid, .dashed, etc.
                                    ),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      DateFormat('yyyy-MM-dd HH:mm:ss').format(
                                        DateTime.parse("${controller.issueModel.value.timestamp}"),
                                      ),
                                    ),
                                    Text('${(amout/rat).toStringAsFixed(2)}'),
                                    Text('          '),
                                    Text('Nafim Ahmed'),
                                  ],
                                )

                            );

                          }),
                    ],
                  )
                      :Text('No data'),),
                ],
              ),
            ),











            // O
            //
            //
            // for(int i=0;i<controller.transectionModel.value.results!.length;i++)
            //   Text('data')





            // Obx(()=>ListView.builder(
            //
            //     shrinkWrap: true,
            //     itemCount: controller.transectionModel.value.results?.length,
            //
            //     itemBuilder: (context,index){
            //
            //
            //       return Text('data');
            //
            //
            //     }))


            Row(children: [


              ExpantionWidget(title: Text('Deposit Respondent Classification'),
                maxWidth: Get.width/2.2,
                child: Column(
                  children: [


                    Text("No Data is available")

                  ],
                ),),


              ExpantionWidget(title: Text('Deposit operator classification'),
                maxWidth: Get.width/2.2,
                child: Column(
                  children: [


                    Text("No Data is available")

                  ],
                ),)



            ],),



            Row(children: [


              ExpantionWidget(title: Text('Deposit exchange rate classification'),
                maxWidth: Get.width/2.2,
                child: Column(
                  children: [


                    Text("No Data is available")

                  ],
                ),),


              ExpantionWidget(title: Text('Category of people who send replies'),
                maxWidth: Get.width/2.2,
                child: Column(
                  children: [


                    Text("No Data is available")

                  ],
                ),)



            ],)






          ],
        ),
      ),
    );
  }
}
