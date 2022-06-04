import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:voiceassist/Screens/DrawerScreens/actsData.dart';
class ActsPage extends StatelessWidget {
  const ActsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color(0xFF09009B),
        title: Text("Acts"),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      body: ListView(
        
        children: [
          ProtectData(heading: "1.NIRBHAYA ACT,2013", mat:"", click: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ActsData(
              cont: "Nirbhaya Act, also known as the Criminal Law (Amendment) Act 2013, is an Indian Legislation passed by Lok Sabha on 19th of March 2013 and Rajya Sabha on 21st of March 2013. And, got married assent from the then President of India on 23rd March 2013. The Nirbhaya act came into force on the 3rd of February 2013.The primary reason behind the act’ was the incident on the 16th of December 2013 in New Delhi; the incident indicated the need for immediate reform in rape laws.The act was passed to bring amendments on laws related to sexual offences in the Indian Penal Code, Indian Evidence Act and Code of Criminal Procedure. The act recognises acts as Acid attacks, Sexual harassment, Voyeurism, stalking as an offence.\n\n\nKEY POINTS OF THE NIRBHAYA ACT\n\n•	The law goes for life imprisonment for rape as the maximum sentence. Still, it provides the death penalty for repeat offenders and cases where the victim is left in a ‘vegetative state’\n\n•	It also lengthens the meaning of rape to include penetration of the mouth, anus, urethra or vagina with the penis or any other object without consent.\n\n•	It also defines new terms such as stalking and voyeurism as crimes with punishment up to seven years.\n\n•	It recognises gang rape as an offence and redefined sexual harassment.\n\n•	The law punishes police and hospital authorities with imprisonment of up to two years in case of failure in registering complaints.\n\n\nOFFENCES UNDER CRIMINAL LAW (AMENDMENT) ACT- NIRBHAYA ACT\n\nSection 326 A: That recognises acid attack as an offence and provides punishment for the same. The sentence provided is imprisonment that is not less than ten years and may extend to life imprisonment, with a fine that should be reasonable to meet the victim’s medical expenses.\n\n•	Section 326B: The section recognises an attempt to acid attack as an offence and provides punishment not less than five years, which may extend seven years and also liable for a fine.\n\n•	Section 354A: This section defines and provides punishment for sexual harassment as rigorous imprisonment of three years, a fine, or both.\n\n•	Section 354B: This section defines assault intending to disrobe a woman and provide punishment as imprisonment, which should not be less than three years and may extend to seven years with a fine.\n\n•	Section 354C: This Section defines voyeurism and punishment as in case of first conviction imprisonment should not be less than one year that may extend to three years with fine. Or in case of second or subsequent conviction, imprisonment could be of any nature for three years, which can get extended to seven years.\n\n•	Section 354D: This section defines stalking and provides punishment as imprisonment of not less than one year and may extend to three years and is also liable to fine.",
               tit: 'NIRBHAYA ACT,2013',)));
          },),
          SizedBox(height: 15,),
          ProtectData(heading: "2.Child Marriage Act,2006", mat: "", click:(){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ActsData(cont: "According to the International Research Centre for Women, almost 47 percent of girls are married before the age of 18. Currently, India ranks 13 in the world when it comes to child marriages. Since child marriage has been steeped into the Indian culture and tradition since centuries, it has been tough eliminating it.The Prohibition of Child Marriage Act was made effective in 2007. This act defines child marriage as a marriage where the groom or the bride are underage, that is, the bride is under 18 years of age or the boy is younger than 21 years.Parents trying to marry underage girls are subject to action under this law. Since the law makes these marriages illegal, it acts as a major deterrent.", tit: "Child Marriage Act,2006")));
          },),
          SizedBox(height: 15,),
          ProtectData(heading: "3.Special Marriage Act,1954", mat: "", click: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ActsData(
              cont: "The objectives of this act is to provide – a special form of marriage in certain cases, provide for registration of certain marriages and, to provide for divorce. In a country like India and with the diverse religions and cast, when people from different faiths and caste chose to get married they do it under the Special Marriage Act.It is not applicable to the state of Jammu and Kashmir and also extends to intending spouses who are Indian nationals and living abroad.", 
              tit: "Special Marriage Act,1954")));
          },),
          SizedBox(height: 15,),
          ProtectData(heading: "4.Dowry Prohibition Act, 1961", mat: "", click:(){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ActsData(
                   cont: "According to this act, taking or giving of dowry at the time of the marriage to the bride or the bridegroom and their family is to be penalised. Dowry system, giving and taking of dowry, is a norm in India. Dowry is often asked of the bride and her family by the groom and his family. The system has taken strong roots because women after marriage move in with their spouse and in-laws. Also, over the centuries, the lack for economic independence of women and the taboo towards divorce has resulted in bride burning. When demands for dowry even after marriage are not met by the girl’s families, many women are tortured, beaten and even burnt",
                    tit: "Dowry Prohibition Act, 1961")));
          }),
          SizedBox(height: 15,),
          ProtectData(heading: "5.Indian Divorce Act, 1969", mat: "", click: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ActsData(
                   cont: "The Indian Divorce Act allows the dissolution of marriage, mutual consent, nullity of marriage, judicial separation and restitution of conjugal rights.Family Courts are established to file, hear, and dispose of such cases.",
                    tit: "Indian Divorce Act, 1969")));
          }),
          SizedBox(height: 15,),
          ProtectData(heading: "6.Maternity Benefit Act,1861", mat: "", click: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ActsData(
                   cont: "This act regulates the employment of women and maternity benefits mandated by law. It states that a woman employee who has worked in an organisation for a period of at least 80 days during the 12 months preceding the date of her expected delivery is entitled to receive maternity benefits, which includes maternity leave, nursing breaks, medical allowance, etc.",
                    tit: "Maternity Benefit Act,1861")));
          }),
          SizedBox(height: 15,),
          ProtectData(heading: "7.Medical Termination of Pregnancy Act,1971", mat: "", click: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ActsData(cont: "The Act came into effect into 1972, was amended in 1975 and 2002. The aim of the Act is to reduce the occurrence of illegal abortion and consequent maternal mortality and morbidity.It clearly states the conditions under which a pregnancy can be ended or aborted and specifies the persons qualified to conduct the same.", tit: "Medical Termination of Pregnancy Act,1971")));
          }),
          ProtectData(heading: "8.Sexual Harassment of Women at Workplace (Prevention, Prohibition and Redressal) Act, 2013", mat: "", click: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ActsData(cont: "To ensure women’s safety at workplace, this Act seeks to protect them from sexual harassment at their place of work. Thirty-six percent of Indian companies and 25 percent among MNC’s are not complaint with the Sexual Harassment Act according to a FICCI-EY November 2015 report.Sexual harassment at workplace also includes – the use of language with sexual overtones, invasion of private space with a male colleague hovering too close for comfort, subtle touches and innuendoes.", tit: "Sexual Harassment of Women at Workplace (Prevention, Prohibition and Redressal) Act, 2013")));
          }),
          ProtectData(heading: "9.Indecent Representation of Women(Prevention) Act,1986", mat: "", click: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ActsData(cont: "This Act prohibits indecent representation of women through advertisement or in publications, writings, paintings, figures or in any other manner.", tit: "Indecent Representation of Women(Prevention) Act,1986")));
          }),
          ProtectData(heading: "10.National Commission for Women Act, 1990", mat: "", click: (){
                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ActsData(cont: "The National Commission for Women (NCW) is a statutory body of the Government of India, established in January 1992. Lalitha Kumaramangalam was appointed its Chairperson in 2014.The NCW represents the rights of women in India and provides a voice for their issues and concerns. The National Commission for Women Act aims to improve the status of women and worked for their economic empowerment.", tit: "National Commission for Women Act, 1990")));
          })

        ],
      ),
    );
  }
}

class ProtectData extends StatelessWidget {
  final String heading;
  final String mat;
  final VoidCallback click;
  const ProtectData({
    Key? key, required this.heading, required this.mat, required this.click,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal:10,vertical: 5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      elevation: 5,
   
      
      child: Container(
        margin:EdgeInsets.symmetric(vertical: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(child: Container(
              margin: EdgeInsets.only(left: 10),
              child: Text(heading,style: TextStyle(fontSize: 26)))),
            GestureDetector(
              onTap: click,
              child: Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(Icons.arrow_forward_ios)),
            )
          ],
        ),
      ),
    );
  }
}