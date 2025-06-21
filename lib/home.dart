

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:untitled/components/expantion_widget.dart';
import 'package:untitled/controller.dart';

class Home extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());





  String formatDateTime(String isoDateTime) {
    DateTime dateTime = DateTime.parse(isoDateTime);
    String formatted = "${dateTime.year.toString().padLeft(4, '0')}-"
        "${dateTime.month.toString().padLeft(2, '0')}-"
        "${dateTime.day.toString().padLeft(2, '0')}-"
        "${dateTime.hour.toString().padLeft(2, '0')}:"
        "${dateTime.minute.toString().padLeft(2, '0')}";
    return formatted;
  }










  @override
  Widget build(BuildContext context) {
    // ✅ Get the chatId from URL query parameter like ?chatId=12345
    final String? chatId = Uri.base.queryParameters['chatId'];
    print('Chat ID from URL: $chatId');

    // If needed, you can store this in the controller or use it elsewhere.
    controller.transectionData(chatId??'');
    controller.transectionSummeryData(chatId??'');
    controller.issueData(chatId??'');
    controller.depositOperatorClassification(chatId??'');
    controller.depositExchangeRateClassification(chatId??'');

    return Scaffold(
      appBar: AppBar(
          title: Obx(()=>Text('${formatDateTime('${controller.transectionModel.value.results?.first.time}')}  ----  ${formatDateTime('${controller.transectionModel.value.results?.last.time}')}',style: GoogleFonts.poppins(
            fontSize: 16,
            color: Colors.grey
          ),),)


          //Text("横断面细节(Transection Detail)"),

      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),

        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [


              Row(
                 crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    elevation: 2,
                    child: Container(
                      width: Get.width/2.2,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(15),
                        border: Border(
                          top: BorderSide( // This adds the upper border
                            color: Colors.blueAccent,
                            width: 5,
                          ),),





                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Obx(
                            () {

                              return Text(
                                '总入款金额(Total deposit amount): ${(controller.summeryModel.value.results?.statistics?.totalDepositAmount)??0-(controller.summeryModel.value.results?.removed?.deposits?.cny??0)}',
                              );
                    }



                                ,
                          ),
                          Obx(
                            () => Text(
                              '汇率(Exchange Rate): ${controller.summeryModel.value.results?.exchangeRate}',
                            ),
                          ),
                          Obx(
                            () => Text(
                              '费率(Rate): ${controller.summeryModel.value.results?.feePercentage}',
                            ),
                          ),


                          Obx(
                            () {


                              // double ntissudamt= controller.summeryModel.value.results?.notIssuedMoney??0;
                              // double issudamt= controller.summeryModel.value.results?.totalIssuedMoney??0;
                              // double ntissudUSDT= controller.summeryModel.value.results?.notIssuedCrypto??0;
                              // double issudamtUSDT= controller.summeryModel.value.results?.totalIssuedUsdt??0;
                              // double fee= controller.summeryModel.value.results?.rate??0;
                              // double exchangerate= controller.summeryModel.value.results?.exchangeRate??1;
                              // double totalShouldBeIssuedAmount= (ntissudamt+issudamt)*(1-fee/100);

                              // double ntissudamt= controller.summeryModel.value.results?.netNotIssuedMoney??0;
                              // double issudamt= controller.summeryModel.value.results?.totalIssuedMoney??0;
                              // double ntissudUSDT= controller.summeryModel.value.results?.netNotIssuedCrypto??0;
                              // double issudamtUSDT= controller.summeryModel.value.results?.totalIssuedUsdt??0;
                              // double fee= controller.summeryModel.value.results?.rate??0;
                              // double exchangerate= controller.summeryModel.value.results?.exchangeRate??1;
                              // double totalShouldBeIssuedAmount= controller.summeryModel.value.results?.totalTransactionsAfterFee??0;//(ntissudamt+issudamt)*(1-fee/100);
                              // double totalShouldBeIssuedCrypto= controller.summeryModel.value.results?.totalTransactionsCrypto??0;//(ntissudamt+issudamt)*(1-fee/100);
                              //
                              // double totalRemoveIssueAmount= controller.summeryModel.value.results?.removedIssueMoney??0;//(ntissudamt+issudamt)*(1-fee/100);
                              // double totalRemoveeIssuedCrypto= controller.summeryModel.value.results?.removedIssueUsdt??0;//(ntissudamt+issudamt)*(1-fee/100);
                              //



                              // return   Text(
                              //   '应下发(Should be issued): ${totalShouldBeIssuedAmount+totalRemoveIssueAmount} || ${((totalShouldBeIssuedAmount/exchangerate)+totalRemoveeIssuedCrypto).toStringAsFixed(2)} USDT',
                              // );



                              return   Text(
                                '应下发(Should be issued): ${(controller.summeryModel.value.results?.shouldIssue?.cny)?.toStringAsFixed(2)} || ${(controller.summeryModel.value.results?.shouldIssue?.usdt)?.toStringAsFixed(2)} USDT',
                              );
                            }









                          ),



                          Obx(
                            () {

                              // double ntissudamt= controller.summeryModel.value.results?.notIssuedMoney??0;
                              // double issudamt= controller.summeryModel.value.results?.totalIssuedMoney??0;
                              // double ntissudUSDT= controller.summeryModel.value.results?.notIssuedCrypto??0;
                              // double issudamtUSDT= controller.summeryModel.value.results?.totalIssuedUsdt??0;
                              // double fee= controller.summeryModel.value.results?.rate??0;
                              // double exchangerate= controller.summeryModel.value.results?.exchangeRate??1;
                              // double totalIssuedAmount= (issudamt)*(1-fee/100);

                              // double ntissudamt= controller.summeryModel.value.results?.netNotIssuedMoney??0;
                              // double issudamt= controller.summeryModel.value.results?.totalIssuedMoney??0;
                              // double ntissudUSDT= controller.summeryModel.value.results?.netNotIssuedCrypto??0;
                              // double issudamtUSDT= controller.summeryModel.value.results?.totalIssuedUsdt??0;
                              // double fee= controller.summeryModel.value.results?.rate??0;
                              // double exchangerate= controller.summeryModel.value.results?.exchangeRate??1;
                              // double totalIssuedAmount= (issudamt)*(1-fee/100);
                              // double totalRemoveIssueAmount= controller.summeryModel.value.results?.removedIssueMoney??0;//(ntissudamt+issudamt)*(1-fee/100);
                              // double totalRemoveeIssuedCrypto= controller.summeryModel.value.results?.removedIssueUsdt??0;//(ntissudamt+issudamt)*(1-fee/100);


                              return   Text(
                                '已下发(total Issued): ${(controller.summeryModel.value.results?.issued?.cny)??0} || ${(controller.summeryModel.value.results?.issued?.usdt)?.toStringAsFixed(2)} USDT',
                              );
                            }






                          ),


                          Obx(
                                () {


                                  // double ntissudamt= controller.summeryModel.value.results?.notIssuedMoney??0;
                                  // double issudamt= controller.summeryModel.value.results?.totalIssuedMoney??0;
                                  // double ntissudUSDT= controller.summeryModel.value.results?.notIssuedCrypto??0;
                                  // double issudamtUSDT= controller.summeryModel.value.results?.totalIssuedUsdt??0;
                                  //
                                  // double ntissudamt= controller.summeryModel.value.results?.netNotIssuedMoney??0;
                                  // double issudamt= controller.summeryModel.value.results?.totalIssuedMoney??0;
                                  // double ntissudUSDT= controller.summeryModel.value.results?.netNotIssuedCrypto??0;
                                  // double issudamtUSDT= controller.summeryModel.value.results?.totalIssuedUsdt??0;
                                  //
                                  //
                                  //
                                  //
                                  // // double ntissudamt= controller.summeryModel.value.results?.notIssuedMoney??0;
                                  // // double issudamt= controller.summeryModel.value.results?.totalIssuedMoney??0;
                                  // // double ntissudUSDT= controller.summeryModel.value.results?.notIssuedCrypto??0;
                                  // // double issudamtUSDT= controller.summeryModel.value.results?.totalIssuedUsdt??0;
                                  // double fee= controller.summeryModel.value.results?.rate??0;
                                  // double exchangerate= controller.summeryModel.value.results?.exchangeRate??1;
                                  // double totalShouldBeIssuedAmount= controller.summeryModel.value.results?.totalTransactionsAfterFee??0;//(ntissudamt+issudamt)*(1-fee/100);
                                  // double totalDepositCripto= controller.summeryModel.value.results?.totalTransactionsCrypto??0;//(ntissudamt+issudamt)*(1-fee/100);
                                  // double totalIssiedCripto= controller.summeryModel.value.results?.totalIssuedUsdt??0;//(ntissudamt+issudamt)*(1-fee/100);
                                  // double totalRemoveIssueAmount= controller.summeryModel.value.results?.removedIssueMoney??0;//(ntissudamt+issudamt)*(1-fee/100);
                                  // double totalRemoveeIssuedCrypto= controller.summeryModel.value.results?.removedIssueUsdt??0;//(ntissudamt+issudamt)*(1-fee/100);
                                  //


                                  // return Text(
                                  //   '未下发(Not issued): ${(totalShouldBeIssuedAmount-issudamt+totalRemoveIssueAmount).toStringAsFixed(2)} || ${((totalShouldBeIssuedAmount-issudamt+totalRemoveIssueAmount)/exchangerate)?.toStringAsFixed(2)} USDT',
                                  // );



                                  return Text(
                                    '未下发(Not issued): ${(controller.summeryModel.value.results?.unissued?.cny)?.toStringAsFixed(2)} || ${((controller.summeryModel.value.results?.unissued?.usdt))?.toStringAsFixed(2)} USDT',
                                  );
                                }
                          ),

                        ],
                      ),
                    ),
                  ),





                  ExpantionWidget(
                    topmargin: 0,
                    title: Text('回复人总分类(Respondent Category)',style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    ),),
                    maxWidth: Get.width / 2.1,
                    child: Column(
                      children: [

                        Obx(()=> controller.transectionModel.value.results != null?
                        Table(
                          border: TableBorder.all(),
                          columnWidths: const {
                            0: FlexColumnWidth(),
                            1: FlexColumnWidth(),
                            2: FlexColumnWidth(),
                          },
                          children: [
                            TableRow(
                              decoration: BoxDecoration(color: Colors.grey[200]),
                              children: [
                                TableCell(
                                  child: Text(
                                    '回复人(Reply)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '入款(Deposit)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '已下发(Issued)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '未下发(Not issued)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),





                            for (
                            int index = 0;
                            index <
                                controller
                                    .transectionModel
                                    .value
                                    .results!
                                    .length;
                            index++
                            )
                              if (controller.transectionModel.value.results![index].chatId!.contains(chatId ?? '')&&controller.transectionModel.value.results![index].repliedBy!='')


                                TableRow(
                                  children: [
                                    TableCell(child: Text('${controller.transectionModel.value.results?[index].repliedBy}')),



                                    TableCell(child:  Obx(
                                          () {

                                            double replyamount= double.parse('${controller.transectionModel.value.results?[index].amount}');
                                            double replyRate= double.parse('${controller.transectionModel.value.results?[index].rate}');
                                            double replyfee= double.parse('${controller.summeryModel.value.results?.feePercentage}');
                                            double replyDeductedAmount=replyamount*(1-replyfee/100) ;
                                            double replyUSDT=replyDeductedAmount/replyRate ;

                                          return Text(
                                            '${replyDeductedAmount.toStringAsFixed(2)}|${replyUSDT.toStringAsFixed(2)}',
                                            textAlign: TextAlign.center,
                                          );
                                          }



                                              ,
                                    ),),
                                    TableCell(child: Obx(
                                          () {

                                            String repliedIssuedAmount='';

                                            for (
                                            int i = 0; i < controller.issueModel.value.results!.length; i++
                                            )
                                             {
                                               if(controller.issueModel.value.results![i].reply!.contains('${controller.transectionModel.value.results?[index].repliedBy}')){
                                                 repliedIssuedAmount='${(controller.issueModel.value.results![i].amount)?.toStringAsFixed(2)}';
                                               }


                                             }





                                            return Text(
                                              '${repliedIssuedAmount}',
                                              textAlign: TextAlign.center,
                                            );
                                          }



                                              ,
                                    ),),
                                    TableCell(child:   Text('')
                                    // Obx(
                                    //         () {
                                    //
                                    //       // double ntissudUSDT= controller.summeryModel.value.results?.notIssuedCrypto??0;
                                    //       // double issudamtUSDT= controller.summeryModel.value.results?.totalIssuedUsdt??0;
                                    //
                                    //           // double ntissudUSDT= controller.summeryModel.value.results?.netNotIssuedCrypto??0;
                                    //           // double issudamtUSDT= controller.summeryModel.value.results?.totalIssuedUsdt??0;
                                    //
                                    //       return Text('0',
                                    //         textAlign: TextAlign.center,
                                    //         //'${(ntissudUSDT).toStringAsFixed(2)}',
                                    //
                                    //       );
                                    //     }
                                    // ),

                                    ),


                                  ],
                                ),




                          ],
                        ):Text('No data available'))



                        ,
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20),


              Material(
                elevation: 2,
                child: Container(
                  padding: EdgeInsets.only(left: 8,bottom: 8,right: 8),

                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide( // This adds the upper border
                        color: Colors.blueAccent,
                        width: 5,
                      ),
                    ),
                  ),


                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: 10),


                      Obx(
                            () => Text(
                          '入款(Deposit) (${controller.transectionModel.value.count} 笔(Transections))',
                          style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w400
                          ),
                        ),
                      ),
                      SizedBox(height: 10),

                      Obx(
                            () =>
                        controller.transectionModel.value.results != null
                            ? Table(
                          border: TableBorder.all(),
                          columnWidths: const {
                            0: FlexColumnWidth(),
                            1: FlexColumnWidth(),
                            2: FlexColumnWidth(),
                          },
                          children: [
                            controller.transectionModel.value.results!.isNotEmpty
                                ? TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                              ),
                              children: [
                                TableCell(
                                  child: Text(
                                    '时间(time)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '金额(Amount)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '回复人(Reply)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '操作人(Operator)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            )
                                : TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                              ),
                              children: [
                                TableCell(
                                  child: Text(
                                    'No data',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                            for (
                            int index = 0;
                            index <
                                controller
                                    .transectionModel
                                    .value
                                    .results!
                                    .length;
                            index++
                            )
                              if (controller.transectionModel.value.results![index].chatId!.contains(chatId ?? ''))
                                TableRow(
                                  children: [
                                    TableCell(
                                      child: Obx(
                                            () => Text(
                                          '${DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.parse("${controller.transectionModel.value.results?[index].time}"))}',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: Obx(() {
                                        double rat =
                                            controller.transectionModel.value.results?[index].rate ?? 0;
                                        double amout = controller.transectionModel.value.results?[index].amount ?? 1;
                                        return Text(
                                          '${controller.transectionModel.value.results?[index].amount}/${controller.transectionModel.value.results?[index].rate} = ${(amout / rat).toStringAsFixed(2)}',
                                          textAlign: TextAlign.center,
                                        );
                                      }),
                                    ),
                                    TableCell(
                                      child: Obx(
                                            () => Text(
                                          '${controller.transectionModel.value.results?[index].repliedBy}',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: Obx(
                                            () => Text(
                                          '${controller.transectionModel.value.results?[index].operatorName}',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                          ],
                        )
                            : Text('No data found'),
                      ),



                    ],
                  ),
                ),
              ),








              SizedBox(height: 20),





              Material(
                elevation: 2,
                child: Container(
                padding: EdgeInsets.only(bottom: 8,left: 8,right: 8),

                  decoration: BoxDecoration(
                    border: Border(
                      top: BorderSide( // This adds the upper border
                        color: Colors.blueAccent,
                        width: 5,
                      ),
                    ),
                  ),


                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(height: 10),

                      Text('下发(Issue)(笔(Pen))', style: GoogleFonts.poppins(
                          fontSize: 20,
                          fontWeight: FontWeight.w400
                      ),),
                      SizedBox(height: 10),

                      Obx(
                            () =>
                        controller.issueModel.value.results != null
                            ? Table(
                          border: TableBorder.all(),
                          columnWidths: const {
                            0: FlexColumnWidth(),
                            1: FlexColumnWidth(),
                            2: FlexColumnWidth(),
                          },
                          children: [
                            controller.issueModel.value.results!.isNotEmpty
                                ? TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                              ),
                              children: [
                                TableCell(
                                  child: Text(
                                    '时间(time)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '金额(Amount)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '回复人(Reply)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '操作人(Operator)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            )
                                : TableRow(
                              decoration: BoxDecoration(
                                color: Colors.grey[200],
                              ),
                              children: [
                                TableCell(
                                  child: Text(
                                    'No data',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),
                            for (
                            int index = 0;
                            index < controller.issueModel.value.results!.length;
                            index++
                            )
                              if (controller
                                  .issueModel
                                  .value
                                  .results![index]
                                  .chatId!
                                  .contains(chatId ?? ''))
                                TableRow(
                                  children: [
                                    TableCell(
                                      child: Obx(
                                            () => Text(
                                          '${DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.parse("${controller.issueModel.value.results?[index].time}"))}',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: Obx(() {
                                        double amount =
                                            controller.issueModel.value.results?[index].amount ?? 0;
                                        return Text(
                                          '$amount',
                                          textAlign: TextAlign.center,
                                        );
                                      }),
                                    ),
                                    TableCell(
                                      child: Obx(
                                            () => Text(
                                          '${controller.issueModel.value.results?[index].reply}',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: Obx(
                                            () => Text(
                                          '${controller.issueModel.value.results?[index].operatorName}',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                          ],
                        )
                            : Text('No data found'),
                      ),


                    ],
                  ),
                ),
              ),










              Obx(()=>controller.issueModel.value.results != null?


                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  ExpantionWidget(
                    title: Text('入款回复人分类(Deposit Respondent Classification)',style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    ),),
                    maxWidth: Get.width / 2.1,
                    child: Column(children: [



                      Table(
                        border: TableBorder.all(),
                        columnWidths:  {
                          0: FlexColumnWidth(),
                          1: FlexColumnWidth(),
                          2: FlexColumnWidth(),
                        },
                        children: [
                          TableRow(
                            decoration: BoxDecoration(color: Colors.grey[200]),
                            children: [
                              TableCell(
                                child: Text(
                                  '回复人(Reply)',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              TableCell(
                                child: Text(
                                  '金额(Amount)',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              TableCell(
                                child: Text(
                                  '减费率(Reduced rates)',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              TableCell(
                                child: Text(
                                  '换算(Conversion)',
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),


                          for (
                          int index = 0;
                          index < controller.transectionModel.value.results!.length;
                          index++
                          )
                            if (controller.transectionModel.value.results![index].chatId!.contains(chatId ?? '')&&controller.transectionModel.value.results?[index].repliedBy!='')



                              TableRow(
                                children: [
                                  TableCell(child: Obx(
                                        () => Text(
                                      '${controller.transectionModel.value.results![index].repliedBy}',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),),
                                  TableCell(
                                    child: Obx(
                                          () => Text(
                                        '${controller.transectionModel.value.results![index].amount}',
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Obx(
                                          () {

                                        double rplyTraAmount=double.parse('${controller.transectionModel.value.results![index].amount}');
                                        double replyfee= double.parse('${controller.summeryModel.value.results?.feePercentage}');
                                        double replyDeductedAmount=rplyTraAmount*(1-replyfee/100) ;



                                        return   Text(
                                          '${(replyDeductedAmount)?.toStringAsFixed(2)}',
                                          textAlign: TextAlign.center,
                                        );


                                      }


                                      ,




                                    ),
                                  ),
                                  TableCell(
                                    child: Obx(
                                          () {

                                        double replyamount= double.parse('${controller.transectionModel.value.results?[index].amount}');
                                        double replyRate= double.parse('${controller.transectionModel.value.results?[index].rate}');
                                        double replyfee= double.parse('${controller.summeryModel.value.results?.feePercentage}');
                                        double replyDeductedAmount=replyamount*(1-replyfee/100) ;
                                        double replyUSDT=replyDeductedAmount/replyRate ;

                                        return Text(
                                          '${(replyUSDT)?.toStringAsFixed(2)}',
                                          textAlign: TextAlign.center,
                                        );

                                      }



                                      ,




                                    ),
                                  ),
                                ],
                              ),
                        ],
                      ),



                    ],


                    ),
                  ),


                  ExpantionWidget(
                    title: Text('入款操作人分类(Deposit operator classification)', style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    ),),
                    maxWidth: Get.width / 2.1,
                    child: Column(
                      children: [




                        Obx(()=>controller.operatorSummery.value.results!=null?Table(
                          border: TableBorder.all(),
                          columnWidths: const {
                            0: FlexColumnWidth(),
                            1: FlexColumnWidth(),
                            2: FlexColumnWidth(),
                          },
                          children: [
                            TableRow(
                              decoration: BoxDecoration(color: Colors.grey[200]),
                              children: [
                                TableCell(
                                  child: Text(
                                    '操作人(Operator)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '金额(Amount)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '换算(Conversion)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),



                            for (
                            int index = 0;
                            index < controller.operatorSummery.value.results!.length;
                            index++
                            )
                              TableRow(
                                children: [
                                  TableCell(child: Text('${controller.operatorSummery.value.results?[index].operatorName}')),
                                  TableCell(
                                    child: Obx(
                                          () => Text(
                                        '${controller.operatorSummery.value.results?[index].summary?.totalDeposits}',
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Obx(
                                          () {

                                            double totalDiposit=controller.operatorSummery.value.results?[index].summary?.totalDeposits??0;
                                            double fee= controller.summeryModel.value.results?.feePercentage??0;
                                            double exchangerate= controller.summeryModel.value.results?.exchangeRate??1;
                                            double convertedUSDT=(totalDiposit*(1-fee/100))/exchangerate;




                                            return Text(
                                              '${(convertedUSDT)?.toStringAsFixed(2)}',
                                              textAlign: TextAlign.center,
                                            );

                                          }


                                              ,




                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ):Text('No data'))


                        ,
                      ],
                    ),
                  ),




                ],
              ): Text('No data found'),



              )

              ,











              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ExpantionWidget(
                    title: Text('入款汇率分类 (Deposit exchange rate classification)', style: GoogleFonts.poppins(
                        fontSize: 20,
                        fontWeight: FontWeight.w400
                    ),),
                    maxWidth: Get.width / 2.1,
                    child: Column(
                      children: [



                        Obx(()=>controller.exchangeRateSummery.value.results!=null?Table(
                          border: TableBorder.all(),
                          columnWidths: const {
                            0: FlexColumnWidth(),
                            1: FlexColumnWidth(),
                            2: FlexColumnWidth(),
                          },
                          children: [





                            TableRow(
                              decoration: BoxDecoration(color: Colors.grey[200]),
                              children: [
                                TableCell(
                                  child: Text(
                                    '汇率(exchange rate)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '金额(Amount)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '换算(Conversion)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ],
                            ),



                            for (
                            int index = 0;
                            index < controller.exchangeRateSummery.value.results!.length;
                            index++
                            )





                              TableRow(
                                children: [
                                  TableCell(
                                    child: Obx(
                                          () => Text(
                                        '${controller.exchangeRateSummery.value.results?[index].exchangeRate}',
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Obx(
                                          () => Text(
                                        // '${controller.exchangeRateSummery.value.results?[index].summary?.totalDeposits}',
                                        '${controller.exchangeRateSummery.value.results?[index].summary?['total_deposits_before_fee']}',
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  TableCell(
                                    child: Obx(
                                          () => Text(
                                        '${(controller.exchangeRateSummery.value.results?[index].summary?['total_deposits_usdt'])?.toStringAsFixed(2)}',
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ):Text('No data'))
                        ,
                      ],
                    ),
                  ),



                  Obx(()=>controller.issueModel.value.results != null

                  // ||controller.issueModel.value.results!.length>0


                      ?


                  ExpantionWidget(
                    title: Text('下发回复人分类(Category of people who send replies)', style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                    ),),
                    maxWidth: Get.width / 2.1,
                    child: Column(
                      children: [
                        Table(
                          border: TableBorder.all(),
                          columnWidths: const {
                            0: FlexColumnWidth(),
                            1: FlexColumnWidth(),

                          },
                          children: [
                            TableRow(
                              decoration: BoxDecoration(color: Colors.grey[200]),
                              children: [
                                TableCell(
                                  child: Text(
                                    '回复人(Replies)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                TableCell(
                                  child: Text(
                                    '金额(Amount)',
                                    textAlign: TextAlign.center,
                                  ),
                                ),


                                // TableCell(
                                //   child: Text(
                                //     'Conversion',
                                //     textAlign: TextAlign.center,
                                //   ),
                                // ),
                              ],
                            ),

                            for (
                            int index = 0;
                            index < controller.issueModel.value.results!.length;
                            index++
                            )
                              if (controller
                                  .issueModel
                                  .value
                                  .results![index]
                                  .chatId!
                                  .contains(chatId ?? '')
                                  &&controller
                                      .issueModel
                                      .value
                                      .results![index].reply!='')



                                TableRow(
                                  children: [
                                    TableCell(
                                      child: Obx(
                                            () => Text(
                                          '${controller
                                              .issueModel
                                              .value
                                              .results?[index].reply}',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                    TableCell(
                                      child: Obx(
                                            () => Text(
                                          '${controller
                                              .issueModel
                                              .value
                                              .results![index].amount}',
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),

                                  ],
                                ),






                          ],
                        ),
                      ],
                    ),
                  ):


                  ExpantionWidget(
                    title: Text('Category of people who send replies'),
                    maxWidth: Get.width / 2.2,
                    child: Column(children: [Text("No Data is available")]),
                  ),


                  )






                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
