import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Committee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text("Organizing Secretaries",style: TextStyle(fontSize: 30),),
              ),

              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Card(
                          child: ListTile(
                            title: Text("Dr. M K Agrawal",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. Y Kumar ",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. Sanjeev Naithani",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. Bhola Jha",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. K S Bhatia",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Mr. Atul Katiyar",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Mr. Shishir Sarkar",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. R B Yadav",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. Balraj Singh",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Mr. Manoj Kumar",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Mr. S S Rawat",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Mrs. O L Devi",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 300,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Card(
                          child: ListTile(
                            title: Text("Mr. Vinay Mohan",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. Manisha Bhat",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. A R Verma",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Mr. Sandeep Kumar",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Mr. Ajay Kumar",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Mr. Sandeep Rana",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Mr. Pushkar Praveen",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Mr. S S Patel",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Mr. Neem Sagar",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Mr. Abhilekh Barthwal",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text("Mr. Rishi Raj Singh",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Mr. Rishi Raj Singh",style: TextStyle(fontSize: 16),),
                            subtitle: Text("GPBIET"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(width: 60,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Text("Advisory committee",style: TextStyle(fontSize: 30),),
              ),

              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 300,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Card(
                          child: ListTile(
                            title: Text("Dr. Bhim Singh",style: TextStyle(fontSize: 16),),
                            subtitle: Text("IIT, Delhi"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. Raj Senani",style: TextStyle(fontSize: 16),),
                            subtitle: Text("NSUT, Delhi"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. Abdul Quaiyum Ansari",style: TextStyle(fontSize: 16),),
                            subtitle: Text("JMI, Delhi"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. Yogesh Chauhan",style: TextStyle(fontSize: 16),),
                            subtitle: Text("IIT Kanpur"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. V.M Mishra",style: TextStyle(fontSize: 16),),
                            subtitle: Text("BTKIT, India"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. J.P. Keshari",style: TextStyle(fontSize: 16),),
                            subtitle: Text("DTU, India"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. R.K. Singh",style: TextStyle(fontSize: 16),),
                            subtitle: Text("B.T.K.I.T, India"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. S Jit",style: TextStyle(fontSize: 16),),
                            subtitle: Text("IIT BHU"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. Rambabu Karumudi",style: TextStyle(fontSize: 16),),
                            subtitle: Text("Alberta University"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. Rajib Jha",style: TextStyle(fontSize: 16),),
                            subtitle: Text("IIT Patna"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. Ranjeet Kumar",style: TextStyle(fontSize: 16),),
                            subtitle: Text("MITS Madanapale"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. Raghvendra Chaudhary",style: TextStyle(fontSize: 16),),
                            subtitle: Text("IIT IMS"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    width: 300,
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Card(
                          child: ListTile(
                            title: Text("Dr. Ch. V.V.S Bhaskar Reddy",style: TextStyle(fontSize: 16),),
                            subtitle: Text("AUC, Visakhapatanam"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. M. Shamim Kaiser",style: TextStyle(fontSize: 16),),
                            subtitle: Text("IIT Jahangirnagar"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. S K Padmanaban",style: TextStyle(fontSize: 16),),
                            subtitle: Text("Aalborg University"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. Pramod Kumar Tiwari",style: TextStyle(fontSize: 16),),
                            subtitle: Text("IIT Patna"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. Jawar Singh",style: TextStyle(fontSize: 16),),
                            subtitle: Text("IIT Patna"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. Ashish Kumar Singh",style: TextStyle(fontSize: 16),),
                            subtitle: Text("MNIT, Allahabad"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. Mufti Mahmud",style: TextStyle(fontSize: 16),),
                            subtitle: Text(" Nottingham Trent University"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("Dr. Rajkumar Buyya",style: TextStyle(fontSize: 16),),
                            subtitle: Text("University of Melbourne"),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("",style: TextStyle(fontSize: 16),),
                            subtitle: Text(""),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("",style: TextStyle(fontSize: 16),),
                            subtitle: Text(""),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),
                        Card(
                          child: ListTile(
                            title: Text("",style: TextStyle(fontSize: 16),),
                            subtitle: Text(""),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),Card(
                          child: ListTile(
                            title: Text("",style: TextStyle(fontSize: 16),),
                            subtitle: Text(""),
                            trailing: IconButton(icon: Icon(Icons.mail), onPressed: () {  },),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}