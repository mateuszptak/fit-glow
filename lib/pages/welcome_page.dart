import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/pages/main_page.dart';
import 'package:flutter_application_2/pages/login_page.dart';
import 'package:flutter_application_2/widgets/custom_background_image.dart';
import 'package:flutter_application_2/widgets/my_custom_button.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          final user = snapshot.data;

          if (user == null) {
            return Scaffold(
              body: CustomBackgroundImage(
                backgroundImageUrl:
                    'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/971468c2-be6f-4cc7-b5a0-e6640ab9ddcb/dhgjs4k-b74af6e8-be3a-4f1d-be60-a49195c7a4cf.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzk3MTQ2OGMyLWJlNmYtNGNjNy1iNWEwLWU2NjQwYWI5ZGRjYlwvZGhnanM0ay1iNzRhZjZlOC1iZTNhLTRmMWQtYmU2MC1hNDkxOTVjN2E0Y2YuanBnIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.b9y8Wz-q1Vb5uzuq96SAAWNUjN2nBe_7tcTbuPzqeqA',
                child: SafeArea(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.6,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: Text(
                          '''
  Exercise regularly 
  and be physically 
  active''',
                          style: GoogleFonts.cabin(
                            fontStyle: FontStyle.italic,
                            color: const Color.fromARGB(255, 206, 203, 203),
                            fontWeight: FontWeight.w900,
                            letterSpacing: 1.6,
                            fontSize: 30,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      MyCustomButton(
                        myText: 'Get Started',
                        myFunction: () => Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => LoginPage(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return const MainPage();
          }
        });
  }
}
