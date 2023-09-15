import 'package:flutter/material.dart';

class TermsAndCondtion extends StatelessWidget {
  const TermsAndCondtion({super.key});

  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
      appBar: AppBar(
      backgroundColor: const Color.fromARGB(225, 27, 57, 61),
      title: const Text('Terms And Condition'),
      centerTitle: true,
      
     ),
        body: SafeArea(
        
        
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              
                // height: 20,
                
           
             Container(

              color: Colors.black,
              padding: const EdgeInsets.all(10),
               child: const Text('''These Terms and Conditions ("Terms") govern your use of the Fitfolio fitness companion mobile application ("App") and the services provided by FitEase ("we," "our," or "us"). By downloading, installing, accessing, or using the FitFolio App, you agree to comply with and be bound by these Terms. If you do not agree with these Terms, please do not use the App.

1.Acceptance of Terms

By using the Fitfolio App, you acknowledge that you have read, understood, and agree to abide by these Terms and our Privacy Policy. These Terms constitute a binding legal agreement between you and FitEase.

2.Prohibited Use

You agree not to use the Fitfolio App for any unlawful, unauthorized, or prohibited purpose. Prohibited uses include, but are not limited to, the following:

a. Use by minors under the age of 18 without parental consent.
b. Any activity that violates applicable local, state, national, or international laws and regulations.
c. Unauthorized access to or use of the App's data, systems, or networks.
d. Unauthorized attempts to probe, scan, or test the vulnerability of the App's security or breach any security measures.
e. Any attempt to decipher, decompile, reverse engineer, or disassemble the App or its underlying technology.
f. Transmitting any viruses, worms, or other malicious code.
g. Impersonating any person or entity, or falsely stating or otherwise misrepresenting your affiliation with any person or entity.

3.Copyright Policy

All content and materials provided within the FitFolio App, including but not limited to text, images, graphics, logos, and software, are protected by copyright and other intellectual property rights. You may not copy, reproduce, distribute, or create derivative works from any of the content without prior written permission from FitEase.

3.Acknowledgment

By using the Fitfolio App, you acknowledge and agree to the following:

a. You are solely responsible for your use of the App and any consequences arising from it.
b. FitEase makes no warranties or guarantees regarding the accuracy, completeness, or fitness for a particular purpose of the information provided through the App.
c. You should consult with a healthcare professional before beginning any exercise or fitness program, and Fitfolio is not a substitute for professional medical advice or diagnosis.
d. FitEase shall not be liable for any direct, indirect, incidental, special, or consequential damages resulting from your use of the App.

4.Termination

We reserve the right to terminate or suspend your access to the App at our sole discretion, without notice or liability, for any reason, including if you violate these Terms.

5.Changes to Terms and App

We may update these Terms from time to time. We will notify you of any changes by posting the new Terms on the App. You are advised to review these Terms periodically for any changes.

By using the Fitfolio App, you agree to these Terms and acknowledge that you have read and understood our Privacy Policy. Your use of the App is also subject to compliance with applicable laws and regulations. Thank you for choosing Fitfolio, and we wish you success in your fitness journey!


6.Contact Information

If you have any questions or concerns about these Terms or the Fitfolio App, please contact us at [mh3824555@email.com].                       
             
             
                       ''',style: TextStyle(color: Colors.white,fontStyle: FontStyle.italic),),
             ),
               
            ],
          ),
        ),
      ),
    );
  }
}