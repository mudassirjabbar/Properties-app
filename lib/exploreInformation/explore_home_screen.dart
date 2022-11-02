import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:properties_app/widgets/background_image.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:properties_app/widgets/explore_widgets.dart';
import 'package:properties_app/widgets/text_fields.dart';

class ExploreHomeScreen extends StatefulWidget {
  const ExploreHomeScreen({super.key});

  @override
  State<ExploreHomeScreen> createState() => _ExploreHomeScreenState();
}

class _ExploreHomeScreenState extends State<ExploreHomeScreen> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const BackgroundPicture(),
          SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 50,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/Frame.svg',
                    width: 200,
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  const SizedBox(
                    width: 400,
                    child: Text(
                      'Where would you like to start',
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 40,
                          color: Colors.black,
                          fontWeight: FontWeight.w100),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 40),
                      height: 700,
                      width: MediaQuery.of(context).size.width * 0.8,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF3F2F2),
                        boxShadow: const [
                          BoxShadow(
                            color: Color.fromRGBO(0, 0, 0, 0.08),
                            blurRadius: 20,
                            spreadRadius: 5,
                            offset: Offset(0, 8), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TextFieldInput(
                              textEditingController: _searchController,
                              hintText: 'Search Your Location',
                              isPass: false,
                              textInputType: TextInputType.text),
                          const SizedBox(
                            height: 15,
                          ),
                          const Text(
                            'I Want To',
                            style: TextStyle(fontSize: 20),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.height * 0.5,
                            child: GridView(
                              gridDelegate:
                                  const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                childAspectRatio: 1.1,
                                crossAxisSpacing: 60,
                                mainAxisSpacing: 20,
                              ),
                              children: <Widget>[
                                SelectionBox(
                                  image:
                                      Image.asset('assets/Rectangle 162.png'),
                                  title: 'Buy',
                                ),
                                SelectionBox(
                                  image:
                                      Image.asset('assets/Rectangle 161.png'),
                                  title: 'Rent',
                                ),
                                SelectionBox(
                                  image:
                                      Image.asset('assets/Rectangle 160.png'),
                                  title: 'Look Around',
                                ),
                                SelectionBox(
                                  image:
                                      Image.asset('assets/Rectangle 163.png'),
                                  title: 'Sell',
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff00D2AA),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            width: MediaQuery.of(context).size.width * 1,
                            height: 60,
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    height: 60,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Color(0xff00D2AA),
                                          surfaceTintColor: Color(0xff00D2AA),
                                          primary: Color(0xff3C286E)),
                                      onPressed: () {},
                                      child: const Text('Home Search'),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    height: 60,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Color(0xff00D2AA),
                                        surfaceTintColor: Color(0xff00D2AA),
                                      ),
                                      onPressed: () {},
                                      child: const Text('AI Estimator'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: NavBarContainer(),
      //  SizedBox(
      //   height: 100,
      //   child: BottomNavigationBar(
      //     backgroundColor: Color(0xff00D2AA),
      //     selectedItemColor: Color(0xff00D2AA),
      //     unselectedItemColor: Color(0xffB7BCC4),
      //     iconSize: 40,
      //     items: const [
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.search),
      //         label: 'Search',
      //         backgroundColor: Color(0xffF3F2F2),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(
      //           Icons.favorite_border_sharp,
      //         ),
      //         label: 'Whilist',
      //         backgroundColor: Color(0xffF3F2F2),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.chat_outlined),
      //         label: '',
      //         backgroundColor: Color(0xffF3F2F2),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.list),
      //         label: '',
      //         backgroundColor: Color(0xffF3F2F2),
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.person_outline),
      //         label: '',
      //         backgroundColor: Color(0xffF3F2F2),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
