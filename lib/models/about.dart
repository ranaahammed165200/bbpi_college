import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FOCAL POINT'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('1.Introduction',
                style: TextStyle(color: Colors.red, fontSize: 20.0)),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  "Brahmanbaria Polytechnic Institute is one of the most famous among all polytechnic institutes in Bangladesh. It was started in 2005 with only 48 students in the first semester of Diploma-in-Engineering of Refrigeration and Air Conditioning Technology. Since then the institute is being ever expanded by different emergent technologies. The institute is now offering courses in 4(four) technologies with the expectation of opening more Technologies for future."),
            ),
            Text('2.Location',
                style: TextStyle(color: Colors.red, fontSize: 20.0)),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Brahmanbaria Polytechnic Institute is situated in the village Islampur, 30 kilometers northern side from Brahmanbaria town. It is located to the west side adjacent to Dhaka Sylhet High way and middle point from Dhaka to Sylhet. East of it is the Village Islampur; its North side is Conquest Beverage Ltd. and South side is Kazi Shafiqul Islam University college. Different green trees have created a calm, quiet and serene environment in the institute premises.'),
            ),
            Text('3.Operation',
                style: TextStyle(color: Colors.red, fontSize: 20.0)),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Brahmanbaria Polytechnic Institute is governed by the Ministry of Education of the government of the Peoples Republic of Bangladesh acting through the Directorate of Technical Education. The service of all the employees of this institute is conducted by Directorate of Technical Education. Viz. appointment, promotion, transfer, retirement. The academic programs are run by Bangladesh Technical Education Board (BTEB), Agargoan, Sher-E-Banglanagar, Dhaka-1207. Syllabus, Academic Calendar, Examination and final certificate of the learners are offered by BTEB.'),
            ),
            Text('4.Financial Activities',
                style: TextStyle(color: Colors.red, fontSize: 20.0)),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'All kinds of finance come from the Government of The Peoples Republic of Bangladesh through Directorate of Technical Education (DTE) including salaries, pension, stipend for students, all types of bill, purchasing for machinery and tools and raw materials-needed for the institute. The institute has no scope for earning money or making profit by any means. It is totally a welfare sector from the Government.'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '5.Programs',
              style: TextStyle(color: Colors.red, fontSize: 20.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'The institute offers 4-years Diploma-in-Engineering courses in the following \n technologies:-\n1.a) Architecture and Interior Design Technology.\n2.b) Computer Technology.\n3.c) Electromedical Technology.\nd) Refrigeration & Air Conditioning Technology.\n \nThe above mentioned courses are divided into 8(Eight) semesters. Each semester is of six months duration. The result of the examination from 1st semester-3rd semester is declared from the institute and the examination papers are examined and scrutinized by teachers within the institute. Apart from these, the result of the examination of 4th semester to 7th semester is declared by BTEB and examination papers are examined and scrutinized by teachers of different institute arranged by BTEB. According to the BTEB Syllabus a student has to attach to an industry as an apprentice for training in 8th semester to have real practical knowledge prior to job.\nBBPI has been operating Diploma in engineering courses in two shifts since 2010-11 session: first shift from 8:00am to 1:15pm, while the second shift from 1:30pm to 6:45pm. The enrollment capacity for each shift is 600 students. Technology wise breakdown is as follows:-\n120.i) Architecture and Interior Design Technology\n121.ii) Computer Technology                   240,\niii) Electro medical Technology                             120, \n1.iv) Refrigeration & Air Conditioning 120,\n\nThe qualifications for admission in the first semester is secondary school certificate (SSC) or its equivalent securing at least GPA 3.5 including Mathematics with same GPA. 3.5. Both male and female candidates are eligible for admission but some seats are preserved for females, freedom fighters dependent and tribes with a certain special ration as per government’s preservation rules.\n6.staves\nThe institute has 78 staves with two classes. One is concerned with academic activities and another is administrative. Both are headed by a Principal who is in grade of 4 in accordance with GOB service rule. The Vice-Principal (a 5th grade officer) is responsible to the Principal for the academic activities. There are Chief Instructors (a 6th grade officer), Registrar, Librarian and Instructors both tech & non-tech (a 9th grade officer), Junior Instructors (a 10th grade officer) and Craft instructors & Lab assistants (13th grade) are led by the vice-principal. They are learned, well qualified and sometimes over qualified. The institute also consists of a bunch of general staves like a Head Assistant, an Accountant, a Cashier, a Caretaker, an Electrician cum Pump Operator, a Compounder, a Cash Sarker, a Book Sorter, Cleaners and Security Guards and Sweepers. All are the most important of their respective posts for the institute.\n7.Administrative & Academic Accommodation\nThe main campus including two large five storied buildings, two storied buildings is now accommodating the class rooms. Office, Library, Workshops and Laboratories.'),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text('8.Residential Accommodation',
                style: TextStyle(color: Colors.red, fontSize: 20.0)),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'It has only a one storied “Banglo” for the principal and a 4 storied building for 4th class employees.'),
            ),
          ],
        ),
      ),
    );
  }
}
