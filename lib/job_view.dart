import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:kos_app/utils/constants.dart';

class JobView extends StatefulWidget {
  const JobView({super.key});

  @override
  State<JobView> createState() => _JobViewState();
}

class _JobViewState extends State<JobView> {
  bool isDark = false;
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
        appBar: AppBar(
          elevation: 5,
          shadowColor: Colors.black,
          backgroundColor: Colors.white70,
          title: const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Jobs',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
              left: MediaQuery.of(context).size.width * 0.05,
              right: MediaQuery.of(context).size.width * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SearchAnchor(builder:
                    (BuildContext context, SearchController controller) {
                  return SearchBar(
                    backgroundColor: MaterialStateProperty.all(Colors.white70),
                    controller: controller,
                    padding: const MaterialStatePropertyAll<EdgeInsets>(
                        EdgeInsets.symmetric(horizontal: 16.0)),
                    onTap: () {
                      controller.openView();
                    },
                    onChanged: (_) {
                      controller.openView();
                    },
                    leading: const Icon(
                      Icons.more_horiz_outlined,
                      color: Colors.black,
                    ),
                    trailing: <Widget>[
                      Tooltip(
                        message: 'Change brightness mode',
                        child: IconButton(
                          isSelected: isDark,
                          onPressed: () {
                            setState(() {
                              isDark = !isDark;
                            });
                          },
                          icon: const Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                      )
                    ],
                  );
                }, suggestionsBuilder:
                    (BuildContext context, SearchController controller) {
                  return List<ListTile>.generate(5, (int index) {
                    final String item = 'item $index';
                    return ListTile(
                      title: Text(item),
                      onTap: () {
                        setState(() {
                          controller.closeView(item);
                        });
                      },
                    );
                  });
                }),
                const ReusableCard(
                  jobType: 'Java Developer',
                  exp: '0-1yrs',
                  ctc: '5LPA',
                ),
                const ReusableCard(
                  jobType: 'Software Engineer',
                  exp: '3-4yrs',
                  ctc: '13LPA',
                ),
                const ReusableCard(
                  jobType: 'Full Stack Developer',
                  exp: '1-2yrs',
                  ctc: '8LPA',
                ),
                const ReusableCard(
                  jobType: 'Java Developer',
                  exp: '0-1yrs',
                  ctc: '5LPA',
                ),
                const ReusableCard(
                  jobType: 'Human Resource',
                  exp: '4-5yrs',
                  ctc: '15LPA',
                ),
                const ReusableCard(
                  jobType: 'UI/UX Designer',
                  exp: '5-7yrs',
                  ctc: '19LPA',
                ),
                const ReusableCard(
                  jobType: 'Product Manager',
                  exp: '3-4yrs',
                  ctc: '12LPA',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  final String jobType;
  final String ctc;
  final String exp;
  const ReusableCard({
    super.key,
    required this.jobType,
    required this.exp,
    required this.ctc,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        color: Colors.white70,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      jobType,
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Exp: $exp',
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'CTC:- $ctc',
                      style: const TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(buttonTheme)),
                  child: const Text(
                    'Apply Now',
                    style: TextStyle(color: Colors.black),
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
