import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SchemesView extends StatelessWidget {
  const SchemesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white70,
            items: const [
              BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.bell,
                    color: Colors.black,
                    size: 30,
                  ),
                  label: ''
              ),
              BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.message,
                    color: Colors.black,
                    size: 30,
                  ),
                  label: ''
              ),
              BottomNavigationBarItem(
                  icon: FaIcon(
                    FontAwesomeIcons.user,
                    color: Colors.black,
                    size: 30,
                  ),
                  label: ''
              ),

            ]),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.05,
                right: MediaQuery.of(context).size.width * 0.05),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  child: const Column(
                    children: [
                      Card(
                        elevation: 10,
                        color: Colors.white70,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('HDFC Credit Guarantee Scheme for Startups (CGSS)',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Card(
                        elevation: 5,
                        color: Colors.white70,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('1. What is CGSS?\nCGSS provides credit guarantees to DPIIT-registered startups against loans from Member Institutions (MIs).',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        color: Colors.white70,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('2. How are guarantees provided under CGSS?\nNCGTC provides guarantee cover to MIs extending loans to startups, offering collateral-free debt funding of up to ₹10 crore.',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        color: Colors.white70,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3. What are the benefits of CGSS for startups?\n • No collateral requirement: CGSS offers a collateral-free guarantee, easing finance challenges for startups.\n • Nominal guarantee fee: An annual fee of 2% (1.5% for certain startups) is charged on disbursed amounts.\n • Flexible credit facilities: Startups can access various loan types, including venture debt, working capital, etc.\n • MI support: MIs handle eligibility and project feasibility, streamlining the loan approval process.',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        color: Colors.white70,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('4. What types of loans are covered under CGSS?\nCGSS covers a range of loans, including venture debt, term loan, working capital, etc.',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.grey,
                  indent: 20,
                  endIndent: 20,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width:double.infinity,
                        child: const Card(
                          elevation: 10,
                          color: Colors.white70,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('SBI Startup India Scheme',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Card(
                        elevation: 5,
                        color: Colors.white70,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('1. What is the SBI Startup India Scheme?\nThe SBI Startup India Scheme aims to support the establishment of new enterprises in manufacturing, trading, or services sectors, including allied activities, specifically targeting SC/ST/Women entrepreneurs.',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                      ),
                      const Card(
                        elevation: 5,
                        color: Colors.white70,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('2. What is the loan quantum provided under the scheme?\nThe scheme offers a composite loan, which includes both term loan and working capital, ranging from above 10 lakh to 100 lakh.',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                      ),
                      const Card(
                        elevation: 5,
                        color: Colors.white70,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3. What are the key features of the SBI Startup India Scheme?\n • Targeted Support: Specifically designed to empower SC/ST/Women entrepreneurs.\n • Composite Loan: Provides a comprehensive funding solution, combining term loan and working capital.\n • Loan Range: Offers financial assistance ranging from above 10 lakh to 100 lakh.\n • Sector Inclusivity: Encourages entrepreneurship across manufacturing, trading, services sectors, and allied activities.',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Divider(
                  color: Colors.grey,
                  indent: 20,
                  endIndent: 20,
                  thickness: 2,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        width:double.infinity,
                        child: const Card(
                          elevation: 10,
                          color: Colors.white70,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('PNB Mahila Udyam Nidhi Scheme',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Card(
                        elevation: 5,
                        color: Colors.white70,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('1. What is the PNB Mahila Udyam Nidhi Scheme?\nThe PNB Mahila Udyam Nidhi Scheme is a funding initiative by PNB specifically designed to support Micro, Small, and Medium Enterprises (MSMEs), with a focus on women entrepreneurs.',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                      ),
                      const Card(
                        elevation: 5,
                        color: Colors.white70,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('2. Who is eligible to apply for the PNB Mahila Udyam Nidhi Scheme?\nWomen entrepreneurs operating or planning to establish Micro, Small, and Medium Enterprises (MSMEs) can apply for funding under this scheme.',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                      ),
                      const Card(
                        elevation: 5,
                        color: Colors.white70,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('3. What are the key features of the PNB Mahila Udyam Nidhi Scheme?\n • Targeted Support: Specifically tailored to assist women entrepreneurs in the MSME sector.\n • Versatile Funding: Enables enterprises to engage in a spectrum of activities, including service provision, manufacturing, and production-related endeavors.\n • Financial Assistance: Provides funding support to facilitate business establishment, expansion, and enhancement of production capabilities.',style: TextStyle(fontSize: 20,color: Colors.black),),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
