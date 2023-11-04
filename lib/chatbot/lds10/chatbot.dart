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
    "1 Tn lK.dgqfjka miq jkafka o@", //Kanagatuwa
    "2 wkd.;h ms<sn|j Tnf.a n,dfmdfrd;a;=j flfiao@",//Anagathaya
    "3 Tn mrdcs;fhl= fia yef`.ao@", //Parajithaya
    "4 Tn lrk jev lghq;= .ek Tng oefkkafka flfiao@",//Wadakatayuthu
    "5 Tng jroldrS ye`.Sula oefka o@",//Waradakaraya
    "6 Tn o`vqjula úÈk njla yef`.a o@",//Dandanaya
    "7 Tng Tn .ek we;s u;h@",//Obe Mathaya
    "8 Tng cSj;a úu ms<sn`oj yef`.kafka flfiao@",//SiyaDivi_nasa_Ganeema
    "9 Tn y`vkjdo@",//Farcry_3
    "10 Tnf.a fmkqu flfia o@",//Kathai_Monster
  ];

  List<List<String>> options = [
    ["uu lK.dgqfjka miq fkdfjñ'", "uu lK.dgqfjka miq fjñ'", "uu .e,ùug fkdyels lK.gqjlska yeu úgu fmf<ñ'", "uu flfiaj;a bjiSug fkdkels lK.dgqj,ska yeu úgu fmf,ñ'"],//Kanagatuwa
    ["ud yg wkd.;h ms<sn|j jeä n,dfmdfrd;a;=lv jQ .;shla ke;'", "ud yg wkd.;h ms<sn|j jeä n,dfmdfrd;a;=lv jQ .;shla we;'", "ud yg wkd.;fha i;=gq ùug lsisjla ke;s nj yef.a'", "ud yg wkd.;h b;d wÿre nj;a th lsisfia;au fydo w;g yeßug fkdyels nj;a yef.a'"], //Anagathaya
    ["uu mrð;fhla hehs fkdyef.a'", "uu idudkah wfhl=g jv mrð;fhla hehs  yef.a'", "w;S;h foi yÍ n,k l, uq¿ ðú;h mqrdu mrdð;h biau;= ù we;'", "uu mQ¾K mrð;fhl= hhs yef.a'"],//Parajithaya
    ["uu lrk lghq;= j,sk ,nk i;=g fmr mßÈu fõ'", "uu lrk lghq;= j,ska ,nk i;=g fmr mßäu fkd,efí'", "uu lrk lsisu fohlska kshu i;=gla ;j ÿrg;a fkd,efí'", "ug iEu fohlau fkdi;=gg fyda tmdùu f.k foa'"],//Wadakatayuthu
    ["uu je/oaola l<d hehs ye.Sula ug we;s fkdfõ'", "uu je/oaola l<d hehs ye.Sula ug bo ysg w;s fõ'", "iEfykak jrola l<e hehs ye.Sula ug fndfyd fõ,djg we;s fõ'", "jrola  l<d hehs lshk ye.Su ug È.gu ;sfí'"],//Waradakaraya
    ["uu ovqjula úÈk nj fkdyef.hs'", "ug ovqjula úÈug fõoehs ye.Sula we;s fõ'", "ug ovqjula ,efí hhs isf;a'", "uu ovqjula úÈñka isák nj yef.hs'"],//Dandanaya
    ["ud yg ud .eku tmd jqk iajNdjhla ke;'", "ud yg ud .eku tmd jqk iajNdjhla we;'", "u yg ud .ek ;o n, tmd jQ iajNdjhla we;'", "uu ud yg ffjr lrñ'"],//Obe Mathaya
    ["ug ishÈú kid .ekSug woyila ke;'", "ug ishÈú kid .ekSug woyila m, jqjo uu tAj l%sh;aul fkdlrñ'", "ug ishÈú kid .ekSug leu;shs'", "wjia:djla ,o fyd;a uu ishÈú kid .ksñ'"],//SiyaDivi_nasa_Ganeema
    ["uu idudkafhka w`vk m%udkh jeä ù ke;'", "uu idudkafhka w`vk m%udkh jeä ù we;'", "uu ieu úgu wvñ'", "ug wvkakg lÿ¿ tka ke;'"],//FarCry_3
    ["uf.a fmkqu fmrg jvd krl hhs fkdis;ñ'", "uf.a fmkqu is;a weo fkd.kakd nj is;ñ'", "ug uf.a fmkqfï is;a weo .kakd iq¿nj ke;s lrk iaÓr fjkialï we;s jk nj yefÕhs'", "uf.a fmkqu le; hhs uu úYajdi lrñ'"],//Kathai_Monster
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
                Text("${questions[i]} ${answers[i]}",
                  style: TextStyle(fontFamily: 'FM-Bindumathi',fontSize: 15)),

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
            'AI MeHeMa Chatbot',
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
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontFamily: 'FM-Bindumathi',
                                  fontSize: 26,
                                  fontWeight: FontWeight.bold,
                                ),
                                minFontSize: 10,
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
