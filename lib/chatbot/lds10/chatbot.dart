import 'package:flutter/material.dart';
import 'package:projectmehema/chatbot/selectBot.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ChatBot extends StatefulWidget {
  @override
  _ChatBotState createState() => _ChatBotState();
}

class _ChatBotState extends State<ChatBot> {
  int currentQuestion = 0;
  List<String> answers = List.filled(10, '');

  List<String> questions = [
    "Tn lK.dgqfjka miq jkafka o@", //Kanagatuwa
    "wkd.;h ms<sn|j Tnf.a n,dfmdfrd;a;=j flfiao@",//Anagathaya
    "Tn mrdcs;fhl= fia yef`.ao@", //Parajithaya
    "Tn lrk jev lghq;= .ek Tng oefkkafka flfiao@",//Wadakatayuthu
    "Question 5: What is your favorite song?",
    "Question 6: What is your favorite book?",
    "Question 7: What is your favorite sport?",
    "Question 8: What is your favorite game?",
    "Question 9: What is your favorite TV show?",
    "Question 10: What is your favorite hobby?",
  ];

  List<List<String>> options = [
    ["uu lK.dgqfjka miq fkdfjñ'", "uu lK.dgqfjka miq fjñ'", "uu .e,ùug fkdyels lK.gqjlska yeu úgu fmf<ñ'", "uu flfiaj;a bjiSug fkdkels lK.dgqj,ska yeu úgu fmf,ñ'"],//Kanagatuwa
    ["ud yg wkd.;h ms<sn|j jeä n,dfmdfrd;a;=lv jQ .;shla ke;'", "ud yg wkd.;h ms<sn|j jeä n,dfmdfrd;a;=lv jQ .;shla we;'", "ud yg wkd.;fha i;=gq ùug lsisjla ke;s nj yef.a'", "ud yg wkd.;h b;d wÿre nj;a th lsisfia;au fydo w;g yeßug fkdyels nj;a yef.a'"], //Anagathaya
    ["uu mrð;fhla hehs fkdyef.a'", "uu idudkah wfhl=g jv mrð;fhla hehs  yef.a'", "w;S;h foi yÍ n,k l, uq¿ ðú;h mqrdu mrdð;h biau;= ù we;'", "uu mQ¾K mrð;fhl= hhs yef.a'"],//Parajithaya
    ["uu lrk lghq;= j,sk ,nk i;=g fmr mßÈu fõ'", "uu lrk lghq;= j,ska ,nk i;=g fmr mßäu fkd,efí'", "uu lrk lsisu fohlska kshu i;=gla ;j ÿrg;a fkd,efí'", "ug iEu fohlau fkdi;=gg fyda tmdùu f.k foa'"],//Wadakatayuthu
    ["Shape of You", "Believer", "Faded", "Perfect"],
    ["Harry Potter", "Twilight", "Hunger Games", "Divergent"],
    ["Cricket", "Football", "Basketball", "Tennis"],
    ["PUBG", "Fortnite", "Free Fire", "Call of Duty"],
    ["Friends", "Game of Thrones", "Breaking Bad", "Money Heist"],
    ["Reading", "Writing", "Singing", "Dancing"],
  ];

  void nextQuestion() {
    if (currentQuestion < questions.length - 1) {
      setState(() {
        currentQuestion++;
      });
    } else {
      // Display result and end chat
      _showResultDialog();

    }
  }

  void _showResultDialog() {
    // Build and show the result dialog with user's answers
    // You can customize the dialog to display the answers as you like
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Result"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              for (var i = 0; i < questions.length; i++)
                Text("${questions[i]} ${answers[i]}"),

            ],
          ),
          actions: <Widget>[
            TextButton(
              child: Text("Close"),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SelectBot()));
              },
            ),
          ],
        );
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Align(
          alignment: AlignmentDirectional(-1.00, -1.00),
          child: Text(
            'ChatBot IDS10',
            style: TextStyle(
                  fontFamily: 'Outfit',
                  color: Colors.white,
                  fontSize: 22,
            ),
          ),
        ),
      ),     
      body: SafeArea(
        child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1.00, -1.00),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                          child: Row(
                            children: [
                              AutoSizeText(
                                questions[currentQuestion],
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  fontFamily: 'FM-Bindumathi',
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                                minFontSize: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],  
                  ),
                ],
              ),
              for (var option in options[currentQuestion])
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 50, 0, 0),
                  child: Container(
                    width: 225,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 57, 145, 218), 
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextButton( 
                      onPressed: () {
                        setState(() {
                          answers[currentQuestion] = option;
                          nextQuestion();
                        });
                      },
                      child: Text(
                        option,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'FMDerana',
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),  
          ),
        );
      }
    }
