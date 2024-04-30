import 'package:firebase_auth/firebase_auth.dart';

class FireBaseFunctions
{
  final FirebaseAuth auth = FirebaseAuth.instance;
  Future<String?> registerUser({required String email, required String pwd}) 
  async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email,
      password: pwd,
    );
    return null;
  } on FirebaseAuthException catch (e) {
  return e.message;
} catch (e) {

  print(e);
  
}
  }
//user login
  Future<String?> loginUser({required String emaill, required String pwd}) 
  async{
    try {
    await auth.signInWithEmailAndPassword(
    email: emaill,
    password: pwd,
  );
  return null;
} on FirebaseAuthException catch (e) {
  print(e.message);
  return e.message;
  
}
  }
  //signout
  Future<void> logoutUser() async
  {
     await FirebaseAuth.instance.signOut();
    
  }
 
}

