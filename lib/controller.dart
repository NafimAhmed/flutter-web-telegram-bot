


import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/models/OperatorSummery.dart';
import 'package:untitled/models/issue_model.dart';
import 'package:untitled/models/summery_model.dart';

import 'models/tramsection_model.dart';

class HomeController extends GetxController{


  Rx<TransectionModel> transectionModel=TransectionModel().obs;
  Rx<IssueModel> issueModel=IssueModel().obs;
  Rx<SummeryModel> summeryModel=SummeryModel().obs;
  Rx<OperatorSummery> operatorSummery=OperatorSummery().obs;
  RxBool respondentTotalCategoryIsExpanded=false.obs;
  RxDouble conversion=0.00.obs;








  Future<void> transectionData() async {

    const apiUrl = 'http://156.245.198.71:8080/api/transactions';
    final uri = Uri.parse(apiUrl);



      debugPrint('[fetchTransactions] Calling API: $apiUrl');
      final response = await http.get(
        uri,
        headers: {
          'Content-Type': 'application/json',
          // Add other headers if your API requires them
        },
      );


    debugPrint('+++++++++++++++++++++ Status: ${response.statusCode}++++++++++++++++++++++++++');
    debugPrint('+++++++++++++++++++++++++++ Response: ${response.body}++++++++++++++++++++++++');

      if(response.statusCode==200||response.statusCode==201){


        transectionModel.value=transectionModelFromJson(response.body);

        debugPrint('+++++++++++++++++++++ Status2: ${response.statusCode}++++++++++++++++++++++++++');
        debugPrint('+++++++++++++++++++++++++++ Response2: ${response.body}++++++++++++++++++++++++');



      }




  }


  Future<void> transectionSummeryData() async {

    const apiUrl = 'http://156.245.198.71:8080/api/summary';
    final uri = Uri.parse(apiUrl);



    debugPrint('[fetchTransactions] Calling API: $apiUrl');
    final response = await http.get(
      uri,
      headers: {
        'Content-Type': 'application/json',
        // Add other headers if your API requires them
      },
    );

    debugPrint('+++++++++++++++++++++Summery Status: ${response.statusCode}++++++++++++++++++++++++++');
    debugPrint('+++++++++++++++++++++++++++Summery Response: ${response.body}++++++++++++++++++++++++');

    if(response.statusCode==200||response.statusCode==200){

      summeryModel.value=summeryModelFromJson(response.body);


      // if(summeryModel.value.results?.exchangeRate!=null){

          // double conversionRate=summeryModel.value.results?.exchangeRate??1;
          //
          // conversion.value=summeryModel.value.results?.totalTransactions??0/conversionRate;

        // }


    }


  }



  Future<void> issueData() async {

    const apiUrl = 'http://156.245.198.71:8080/api/issued';
    final uri = Uri.parse(apiUrl);



    debugPrint('[fetchTransactions] Calling API: $apiUrl');
    final response = await http.get(
      uri,
      headers: {
        'Content-Type': 'application/json',
        // Add other headers if your API requires them
      },
    );




    debugPrint('+++++++++++++++++++++Issue Status: ${response.statusCode}++++++++++++++++++++++++++');
    debugPrint('+++++++++++++++++++++++++++Issue Response: ${response.body}++++++++++++++++++++++++');

    if(response.statusCode==200||response.statusCode==200){

      issueModel.value=issueModelFromJson(response.body);

    }






  }





  Future<void> depositOperatorClassification() async {

    const apiUrl = 'http://156.245.198.71:8080/api/operator_summary';
    final uri = Uri.parse(apiUrl);



    debugPrint('[fetchTransactions] Calling API: $apiUrl');
    final response = await http.get(
      uri,
      headers: {
        'Content-Type': 'application/json',
        // Add other headers if your API requires them
      },
    );




    debugPrint('+++++++++++++++++++++depositOperatorClassification Status: ${response.statusCode}++++++++++++++++++++++++++');
    debugPrint('+++++++++++++++++++++++++++depositOperatorClassification Response: ${response.body}++++++++++++++++++++++++');

    if(response.statusCode==200||response.statusCode==200){

      operatorSummery.value=operatorSummeryFromJson(response.body);

    }






  }





}