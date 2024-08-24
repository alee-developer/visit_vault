// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../../../controllers/auth/auth_controller.dart';
//
// class RegisterScreen extends StatefulWidget {
//   @override
//   _RegisterScreenState createState() => _RegisterScreenState();
// }
//
// class _RegisterScreenState extends State<RegisterScreen> {
//   final AuthController _authController = Get.put(AuthController());
//   final TextEditingController _usernameController = TextEditingController();
//   final TextEditingController _phoneController = TextEditingController();
//   final TextEditingController _otpController = TextEditingController();
//   String? _verificationId;
//   bool _isOtpSent = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueAccent,
//       body: Obx(() {
//         return _authController.isLoading.value
//             ? Center(child: CircularProgressIndicator()) // Show loader
//             : Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Center(
//             child: SingleChildScrollView(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   AnimatedContainer(
//                     duration: Duration(milliseconds: 500),
//                     curve: Curves.easeInOut,
//                     padding: EdgeInsets.all(16.0),
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.circular(16.0),
//                       boxShadow: [
//                         BoxShadow(
//                           color: Colors.black.withOpacity(0.2),
//                           spreadRadius: 2,
//                           blurRadius: 8,
//                           offset: Offset(0, 4),
//                         ),
//                       ],
//                     ),
//                     child: Column(
//                       children: [
//                         Text(
//                           'Register',
//                           style: TextStyle(
//                             fontSize: 24,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.blueAccent,
//                           ),
//                         ),
//                         SizedBox(height: 20),
//                         if (!_isOtpSent)
//                           TextField(
//                             controller: _usernameController,
//                             decoration: InputDecoration(
//                               labelText: 'Username',
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12.0),
//                               ),
//                               prefixIcon: Icon(Icons.person),
//                             ),
//                           ),
//                         SizedBox(height: 16),
//                         TextField(
//                           controller: _phoneController,
//                           keyboardType: TextInputType.phone,
//                           decoration: InputDecoration(
//                             labelText: 'Phone Number',
//                             border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(12.0),
//                             ),
//                             prefixIcon: Icon(Icons.phone),
//                           ),
//                         ),
//                         if (_isOtpSent)
//                           SizedBox(height: 16),
//                         if (_isOtpSent)
//                           TextField(
//                             controller: _otpController,
//                             decoration: InputDecoration(
//                               labelText: 'Enter OTP',
//                               border: OutlineInputBorder(
//                                 borderRadius: BorderRadius.circular(12.0),
//                               ),
//                               prefixIcon: Icon(Icons.lock),
//                             ),
//                           ),
//                         SizedBox(height: 20),
//                         AnimatedButton(
//                           onPressed: _isOtpSent
//                               ? () {
//                             _authController.verifyOtp(
//                               _verificationId!,
//                               _otpController.text,
//                             );
//                           }
//                               : () {
//                             _authController.sendOtp(
//                               _phoneController.text,
//                                   (String verificationId) {
//                                 setState(() {
//                                   _verificationId = verificationId;
//                                   _isOtpSent = true;
//                                 });
//                               },
//                             );
//                           },
//                           child: Text(
//                             _isOtpSent ? 'Verify OTP' : 'Send OTP',
//                             style: TextStyle(color: Colors.white),
//                           ),
//                           color: Colors.blueAccent,
//                           borderRadius: BorderRadius.circular(12.0),
//                           elevation: 5.0,
//                           duration: Duration(milliseconds: 300),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         );
//       }),
//     );
//   }
// }
//
// class AnimatedButton extends StatelessWidget {
//   final VoidCallback onPressed;
//   final Widget child;
//   final Color color;
//   final BorderRadius borderRadius;
//   final double elevation;
//   final Duration duration;
//
//   const AnimatedButton({
//     required this.onPressed,
//     required this.child,
//     required this.color,
//     this.borderRadius = BorderRadius.zero,
//     this.elevation = 0.0,
//     this.duration = const Duration(milliseconds: 300),
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedContainer(
//       duration: duration,
//       curve: Curves.easeInOut,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: borderRadius,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black.withOpacity(0.2),
//             spreadRadius: 2,
//             blurRadius: elevation,
//             offset: Offset(0, 4),
//           ),
//         ],
//       ),
//       child: Material(
//         color: Colors.transparent,
//         child: InkWell(
//           borderRadius: borderRadius,
//           onTap: onPressed,
//           child: Center(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20.0),
//               child: child,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
