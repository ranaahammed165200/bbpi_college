
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About US'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Text('1.Introduction',
                  style: TextStyle(color: Colors.red, fontSize: 30.0)),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    "Brahmanbaria Polytechnic Institute is one of the most famous among all polytechnic institutes in Bangladesh. It was started in 2005 with only 48 students in the first semester of Diploma-in-Engineering of Refrigeration and Air Conditioning Technology. Since then the institute is being ever expanded by different emergent technologies. The institute is now offering courses in 4(four) technologies with the expectation of opening more Technologies for future.",style:TextStyle(fontSize:20.0),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Text('2.Location',
                  style: TextStyle(color: Colors.red, fontSize: 30.0)),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Brahmanbaria Polytechnic Institute is situated in the village Islampur, 30 kilometers northern side from Brahmanbaria town. It is located to the west side adjacent to Dhaka Sylhet High way and middle point from Dhaka to Sylhet. East of it is the Village Islampur; its North side is Conquest Beverage Ltd. and South side is Kazi Shafiqul Islam University college. Different green trees have created a calm, quiet and serene environment in the institute premises.',style:TextStyle(fontSize:20.0),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Text('3.Operation',
                  style: TextStyle(color: Colors.red, fontSize: 30.0)),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Brahmanbaria Polytechnic Institute is governed by the Ministry of Education of the government of the Peoples Republic of Bangladesh acting through the Directorate of Technical Education. The service of all the employees of this institute is conducted by Directorate of Technical Education. Viz. appointment, promotion, transfer, retirement. The academic programs are run by Bangladesh Technical Education Board (BTEB), Agargoan, Sher-E-Banglanagar, Dhaka-1207. Syllabus, Academic Calendar, Examination and final certificate of the learners are offered by BTEB.',style:TextStyle(fontSize:20.0),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Text('4.Financial Activities',
                  style: TextStyle(color: Colors.red, fontSize: 30.0)),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'All kinds of finance come from the Government of The Peoples Republic of Bangladesh through Directorate of Technical Education (DTE) including salaries, pension, stipend for students, all types of bill, purchasing for machinery and tools and raw materials-needed for the institute. The institute has no scope for earning money or making profit by any means. It is totally a welfare sector from the Government.',style:TextStyle(fontSize:20.0),),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Text(
                '5.Programs',
                style: TextStyle(color: Colors.red, fontSize: 30.0),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'The institute offers 4-years Diploma-in-Engineering courses in the following \n technologies:-\n1.a) Architecture and Interior Design Technology.\n2.b) Computer Technology.\n3.c) Electromedical Technology.\nd) Refrigeration & Air Conditioning Technology.\n \nThe above mentioned courses are divided into 8(Eight) semesters. Each semester is of six months duration. The result of the examination from 1st semester-3rd semester is declared from the institute and the examination papers are examined and scrutinized by teachers within the institute. Apart from these, the result of the examination of 4th semester to 7th semester is declared by BTEB and examination papers are examined and scrutinized by teachers of different institute arranged by BTEB. According to the BTEB Syllabus a student has to attach to an industry as an apprentice for training in 8th semester to have real practical knowledge prior to job.\nBBPI has been operating Diploma in engineering courses in two shifts since 2010-11 session: first shift from 8:00am to 1:15pm, while the second shift from 1:30pm to 6:45pm. The enrollment capacity for each shift is 600 students. Technology wise breakdown is as follows:-\n120.i) Architecture and Interior Design Technology\n121.ii) Computer Technology                   240,\niii) Electro medical Technology                             120, \n1.iv) Refrigeration & Air Conditioning 120,\n\nThe qualifications for admission in the first semester is secondary school certificate (SSC) or its equivalent securing at least GPA 3.5 including Mathematics with same GPA. 3.5. Both male and female candidates are eligible for admission but some seats are preserved for females, freedom fighters dependent and tribes with a certain special ration as per government’s preservation rules.\n6.staves\nThe institute has 78 staves with two classes. One is concerned with academic activities and another is administrative. Both are headed by a Principal who is in grade of 4 in accordance with GOB service rule. The Vice-Principal (a 5th grade officer) is responsible to the Principal for the academic activities. There are Chief Instructors (a 6th grade officer), Registrar, Librarian and Instructors both tech & non-tech (a 9th grade officer), Junior Instructors (a 10th grade officer) and Craft instructors & Lab assistants (13th grade) are led by the vice-principal. They are learned, well qualified and sometimes over qualified. The institute also consists of a bunch of general staves like a Head Assistant, an Accountant, a Cashier, a Caretaker, an Electrician cum Pump Operator, a Compounder, a Cash Sarker, a Book Sorter, Cleaners and Security Guards and Sweepers. All are the most important of their respective posts for the institute.\n7.Administrative & Academic Accommodation\nThe main campus including two large five storied buildings, two storied buildings is now accommodating the class rooms. Office, Library, Workshops and Laboratories.',style:TextStyle(fontSize:20.0),),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Text("6.Staves",style: TextStyle(color: Colors.red,fontSize: 30.0),),
              
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("The institute has 78 staves with two classes. One is concerned with academic activities and another is administrative. Both are headed by a Principal who is in grade of 4 in accordance with GOB service rule. The Vice-Principal (a 5th grade officer) is responsible to the Principal for the academic activities. There are Chief Instructors (a 6th grade officer), Registrar, Librarian and Instructors both tech & non-tech (a 9th grade officer), Junior Instructors (a 10th grade officer) and Craft instructors & Lab assistants (13th grade) are led by the vice-principal. They are learned, well qualified and sometimes over qualified. The institute also consists of a bunch of general staves like a Head Assistant, an Accountant, a Cashier, a Caretaker, an Electrician cum Pump Operator, a Compounder, a Cash Sarker, a Book Sorter, Cleaners and Security Guards and Sweepers. All are the most important of their respective posts for the institute.,",style:TextStyle(fontSize:20.0),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Text("7.Academic Accommodation",style: TextStyle(color: Colors.red,fontSize: 30.0) ,),
              
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("The main campus including two large five storied buildings, two storied buildings is now accommodating the class rooms. Office, Library, Workshops and Laboratories.",style:TextStyle(fontSize:20.0),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Text('8.Accommodation',
                  style: TextStyle(color: Colors.red, fontSize: 30.0)),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'It has only a one storied “Banglo” for the principal and a 4 storied building for 4th class employees.',style:TextStyle(fontSize:20.0),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Text('9.Governing Authority', style: TextStyle(color: Colors.red, fontSize: 30.0)),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('The institute has an administrative and academic committee both of it headed by the principal. These committees help the principal to initiate any administrative or financial decision or regulation through meetings. All Chief Instructors/Heads of the Department are the member of the committees and Head Assistant & Registrar are the member secretary of these committees respectively.',style:TextStyle(fontSize:20.0),),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Text("10.Play Ground",style: TextStyle(color: Colors.red, fontSize: 30.0)),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("The institute has a little playground of half an acre land having facility only for mini Football or Hockey or Cricket or Volleyball or Badminton and other outdoor games & Athletic.",style:TextStyle(fontSize:20.0),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text("11.Workshop and Laboratory",style: TextStyle(color: Colors.red, fontSize: 30.0)),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("The Workshops and Laboratories are rich and well equipped with modern machines and instruments that grasp excellent opportunity for the training of the learners with practices to make fit for the industries. Requisite amount of money is provided by the government every year to keep the workshops with industrial development of the day.",style:TextStyle(fontSize:20.0),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:20.0),
              child: Text("12.Library",style: TextStyle(color: Colors.red, fontSize: 30.0)),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("A library consists of well selected up-to-date texts and reference books preserved in it institute. Current trade, industrial and educational journals are also available for the use of the students, staves and teachers. The Library is kept open after institute hours to enable the students to study according to their conveniences.",style:TextStyle(fontSize:20.0),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text('13.Study Tour',style: TextStyle(color: Colors.red, fontSize: 30.0)),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Study tours are arranged by the different technologies for their students in every year in the institute to have recreation and practical experiences.",style:TextStyle(fontSize:20.0),),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text('14.Stipends',style: TextStyle(color: Colors.red, fontSize: 30.0)),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("In order to inspire the learners to Technical Education the Government offers stipends to 65% of the enrolled students of the institute @ TK=250 per month per student with a lump grand of TK=3000 per annum. The stipends for the student other than 1st semester are awarded on the basis of their results in the final examination of the preceding semester, merits, good conduct, Satisfactory progress and regular attendance in the corresponding semester are considered as criteria for the enlistment for awarding stipend. 10% of the total number of stipends is reserved for female students. In case of eligible female students are not being found, the stipends are awarded to eligible male students. Students failing in any subjects in their final examination of the preceding semester are not entitled to stipends for the semester. First year first semester students are awarded stipends on the basis the result of their S.S.C or equivalent examination",style:TextStyle(fontSize:20.0),),
              ),
            ),
            
             Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text('15.Scout',style: TextStyle(color: Colors.red, fontSize: 30.0)),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("This institute rears a rover unit. This is one of the best units of Brahmanbaria District. Rover members of our unit took part in rover moot-2009 which was held at Bahadurpur, Gazipur. Besides this, our rover members are used to participate in observing the different national day’s programs and other social development works like distribution of worm’s clothes among the poor, to render the flood affected people etc. There is Unit-2 of Rover Scout comprising with 32 Scouts. There is another group named “Youth Red Crescent Unit”………………….",style:TextStyle(fontSize:20.0),),
              ),
            ),
             Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text('16.Medical Centre',style: TextStyle(color: Colors.red, fontSize: 30.0)),
            ),
            SizedBox(height: 5.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("The institute has a medical centre having a post of a medical officer and a compounder to ensure the health of the learners. It has now a compounder but no medical officer in service having a prospect to have one for near future.",style:TextStyle(fontSize:20.0),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
