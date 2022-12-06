import 'package:flutter/material.dart';


class LeaveReqDetail extends StatelessWidget {

    @override
    Widget build(BuildContext context) {
        return Scaffold(
            appBar: PreferredSize(
                preferredSize: const Size.fromHeight(150.0),
                child: Container(
                        color: Color(0xFFEAF1FB),
                        // height: 150,
                        child: Container(
                            margin: const EdgeInsets.only(top: 20),
                            child: Column(
                                    children: <Widget>[
                                        Row(
                                                children: <Widget>[
                                                    Container(
                                                        margin: const EdgeInsets.only(left: 10),
                                                        child: Icon(Icons.arrow_back, size: 25.0),
                                                    ),
                                                    Container(
                                                        margin: const EdgeInsets.only(left: 10),
                                                        child: Text("TO DO",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))
                                                    )
                                                ]
                                        ),
                                        Padding(
                                            padding: const EdgeInsets.only(left: 130),
                                            child: Row(
                                                children: <Widget>[
                                                    Container(
                                                        margin: const EdgeInsets.only(bottom: 40),
                                                        child: Icon(Icons.account_circle, size: 25.0), 
                                                    ),
                                                    Container(
                                                        margin: const EdgeInsets.only(top: 10, left:5),
                                                        child: Column(
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            // mainAxisSize: MainAxisSize:min,
                                                            children: <Widget>[
                                                                Container(
                                                                    child: Text("Maternity Leave",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                                                                ),
                                                                Container(
                                                                    margin: const EdgeInsets.only(top: 2),
                                                                    child: Text("Name  Date",style: TextStyle(fontSize: 15)),
                                                                ),
                                                                Container(
                                                                    margin: const EdgeInsets.only(top: 2),
                                                                    child: Text("Absence Duration",style: TextStyle(fontSize: 15)),
                                                                ),
                                                                Container(
                                                                    margin: const EdgeInsets.only(top: 2),
                                                                    child: Text("180 days",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))
                                                                )
                                                            ]
                                                        )
                                                    )
                                                ]
                                            )
                                        )
                                    ]
                                )
                        )
                    ),
            ),
            bottomNavigationBar: Container(
                            color: Color(0xFFEAF1FB),
                            height: 150,
                            child: Column(
                                children: <Widget>[
                                    Container(
                                        margin: const EdgeInsets.only(top: 40.0),
                                        width: 200.0,
                                        child: ElevatedButton(
                                                onPressed: () {},
                                                child: Text("Approve"),
                                                style: ButtonStyle(
                                                    backgroundColor:  MaterialStatePropertyAll<Color>(Colors.green)
                                                )
                                            ),
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(top: 20.0),
                                        width: 200.0,
                                        child: ElevatedButton(
                                                onPressed: () {},
                                                child: Text("Decline"),
                                                style: ButtonStyle(
                                                    backgroundColor:  MaterialStatePropertyAll<Color>(Colors.red)
                                                )
                                        )
                                    )
                                ]
                            )
            ),
            backgroundColor: Color(0xFFFBFBFD),
            body: ListView(
                children: <Widget>[
                    // Container(
                    //     color: Color(0xFFEAF1FB),
                    //     height: 150,
                    //     child: Container(
                    //         margin: const EdgeInsets.only(top: 20),
                    //         child: Column(
                    //                 children: <Widget>[
                    //                     Row(
                    //                             children: <Widget>[
                    //                                 Container(
                    //                                     margin: const EdgeInsets.only(left: 10),
                    //                                     child: Icon(Icons.arrow_back, size: 25.0),
                    //                                 ),
                    //                                 Container(
                    //                                     margin: const EdgeInsets.only(left: 10),
                    //                                     child: Text("TO DO",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold))
                    //                                 )
                    //                             ]
                    //                     ),
                    //                     Padding(
                    //                         padding: const EdgeInsets.symmetric(horizontal:140),
                    //                         child: Row(
                    //                             children: <Widget>[
                    //                                 Icon(Icons.account_circle, size: 25.0),
                    //                                 Container(
                    //                                     margin: const EdgeInsets.only(top: 30,left:5),
                    //                                     child: Column(
                    //                                         crossAxisAlignment: CrossAxisAlignment.start,
                    //                                         // mainAxisSize: MainAxisSize:min,
                    //                                         children: <Widget>[
                    //                                             Container(
                    //                                                 child: Text("Maternity Leave",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold)),
                    //                                             ),
                    //                                             Container(
                    //                                                 margin: const EdgeInsets.only(top: 2),
                    //                                                 child: Text("Name  Date",style: TextStyle(fontSize: 10)),
                    //                                             ),
                    //                                             Container(
                    //                                                 margin: const EdgeInsets.only(top: 2),
                    //                                                 child: Text("Absence Duration",style: TextStyle(fontSize: 10)),
                    //                                             ),
                    //                                             Container(
                    //                                                 margin: const EdgeInsets.only(top: 2),
                    //                                                 child: Text("180 days",style: TextStyle(fontSize: 10,fontWeight: FontWeight.bold))
                    //                                             )
                    //                                         ]
                    //                                     )
                    //                                 )
                    //                             ]
                    //                         )
                    //                     )
                    //                 ]
                    //             )
                    //     )
                    // ),
                    Container(
                        margin: const EdgeInsets.only(top:10.0),
                        color: Color(0xFFEAF1FB),
                        height: 250,
                        child: Container(
                            margin: const EdgeInsets.only(top: 10.0,left: 20.0),
                            child: Column(
                                // mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                    Row(
                                        children: <Widget>[
                                            Icon(Icons.info, size: 25.0),
                                            Container(
                                                margin: const EdgeInsets.only(left:10.0),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                        Text("Details"),
                                                        Text("180.0 days",style: TextStyle(fontWeight: FontWeight.bold))
                                                    ]
                                                )
                                            )
                                        ]
                                    ),
                                    SizedBox(height:12),
                                    Row(
                                        children: <Widget>[
                                            Icon(Icons.date_range, size: 25.0),
                                            Container(
                                                margin: const EdgeInsets.only(left:10.0),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                        Text("Start Date"),
                                                        Text("02 Nov 2022",style: TextStyle(fontWeight: FontWeight.bold))
                                                    ]
                                                )
                                            )
                                        ]
                                    ),
                                    SizedBox(height:12),
                                    Row(
                                        children: <Widget>[
                                            Icon(Icons.edit_calendar, size: 25.0),
                                            Container(
                                                margin: const EdgeInsets.only(left:10.0),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                        Text("End Date"),
                                                        Text("02 Nov 2022",style: TextStyle(fontWeight: FontWeight.bold))
                                                    ]
                                                )
                                            )
                                        ]
                                    ),
                                    SizedBox(height:12),
                                    Row(    
                                        children: <Widget>[
                                            Icon(Icons.priority_high, size: 25.0),
                                            Container(
                                                margin: const EdgeInsets.only(left:10.0),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                        Text("Approval Status"),
                                                        Text("Pending",style: TextStyle(fontWeight: FontWeight.bold))
                                                    ]
                                                )
                                            )
                                        ]
                                    ),
                                    SizedBox(height:12),
                                    Row(
                                        children: <Widget>[
                                            Icon(Icons.exit_to_app, size: 25.0),
                                            Container(
                                                margin: const EdgeInsets.only(left:10.0),
                                                child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: <Widget>[
                                                        Text("Leave Type"),
                                                        Text("Maternity leave",style: TextStyle(fontWeight: FontWeight.bold))
                                                    ]
                                                )
                                            )
                                        ]
                                    )
                                ]
                            )
                        )
                    ),
                    Container(
                        margin: const EdgeInsets.only(top:10.0,bottom: 10.0),
                        color: Color(0xFFEAF1FB),
                        height: 150,
                        child: Container(
                                margin: const EdgeInsets.only(top: 50.0, left: 15.0),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                        Text("Initiated by John on January 3rd 2022"),
                                        TextButton(
                                            onPressed: () {},
                                            child: Text("Show more")
                                        )
                                    ]
                                )
                            )
                    ),
                ] 
            )
        );
    }
}