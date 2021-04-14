import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ContactCard extends StatelessWidget {
  String name,email,phone,url,status;
  ContactCard({this.name,this.email,this.phone,this.status,this.url});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 340.0,
        height: 120.0,
        margin: EdgeInsets.symmetric(vertical: 30.0),
        padding: EdgeInsets.only(top:15.0),
        decoration: BoxDecoration(
            color: Colors.black,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                radius: 35.0,
                backgroundImage: NetworkImage(this.url),
              ),
              title:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    this.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(CupertinoIcons.mail,color:Colors.white,size: 16.0,),
                      Text(
                        this.email,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.0,
                        ),
                      )
                    ],
                  ),
                  Row(
                      children:[
                        Icon(CupertinoIcons.phone,color:Colors.white,size: 16.0,),
                        Text(
                          this.phone,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                          ),
                        ),
                      ]
                  ),
                  Row(
                    children: [
                      Icon(CupertinoIcons.heart_solid,color:Colors.red,size: 16.0,),
                      Icon(CupertinoIcons.heart_solid,color:Colors.red,size: 16.0,),
                      Icon(CupertinoIcons.heart_solid,color:Colors.red,size: 16.0,),
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 35.0),),
                          Icon(CupertinoIcons.tags,color: Colors.white,size: 16.0,),
                          Container(
                            width: 32.0,
                            height: 30.0,
                            padding: EdgeInsets.only(left:5.0,top:5.0),
                            child:
                              Text(
                                this.status,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12.0,
                                ),
                              ),
                          ),
                        ],
                      ),
                      Container(
                        width: 50.0,
                        height:20.0,
                        margin: EdgeInsets.only(left:40.0),
                        child:
                        Icon(CupertinoIcons.delete,color: Colors.white,size: 16.0,),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        )
    );
  }
}