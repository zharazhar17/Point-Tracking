// import 'package:flutter/material.dart';
// import 'package:po_project/controllers/screens/progress.dart';
// import 'package:po_project/logistics/screens/stepper_i.dart';
// import 'package:po_project/sales/widgets/next_btn.dart';
// import 'package:sizer/sizer.dart';

// import '../../sales/screens/build_product_sale_page.dart';
// import '../../mains/constants/colors.dart';

// class DetailInConfirm extends StatefulWidget {
//   final String id;
//   final String typepro;
//   // final String price;
//   final String dateTime;
//   final String contact;
//   final String phone;
//   final String delivery;

//   const DetailInConfirm(
//       {super.key,
//       required this.id,
//       required this.typepro,
//       // required this.price,
//       required this.dateTime,
//       required this.contact,
//       required this.phone,
//       required this.delivery});

//   @override
//   State<DetailInConfirm> createState() => _DetailInConfirmState();
// }

// class _DetailInConfirmState extends State<DetailInConfirm>
//     with TickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 3, vsync: this);
//     // _tabController.animateTo(2);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _buildBody,
//       bottomNavigationBar: _buildBottom,
//     );
//   }

//   get _buildBody {
//     return SafeArea(
//         child: SingleChildScrollView(
//       padding: EdgeInsets.symmetric(vertical: 1.h),
//       child: Column(
//         children: [
//           _buildAppBar(),
//           SizedBox(
//             height: 1.7.h,
//           ),
//           Container(
//             margin: EdgeInsets.symmetric(
//               horizontal: 2.7.h,
//             ),
//             child: TabBar(
//                 indicatorColor: AppColors.textColor,
//                 indicatorWeight: 2.0,
//                 indicatorSize: TabBarIndicatorSize.tab,
//                 labelColor: AppColors.textColor,
//                 labelPadding: EdgeInsets.only(bottom: 1.7.h),
//                 automaticIndicatorColorAdjustment: true,
//                 controller: _tabController,
//                 tabs: const [
//                   Text(
//                     'General',
//                     style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
//                   ),
//                   Text(
//                     'Product',
//                     style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
//                   ),
//                   Text(
//                     'Progress',
//                     style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
//                   )
//                 ]),
//           ),
//           Container(
//             width: MediaQuery.of(context).size.width,
//             height: MediaQuery.of(context).size.height,
//             padding: EdgeInsets.symmetric(horizontal: 1.7.h),
//             child: TabBarView(
//               controller: _tabController,
//               children: [
//                 _buildGeneral(),
//                 const BuildProduct(),
//                 const ProgressController(),
//               ],
//             ),
//           ),
//         ],
//       ),
//     ));
//   }

//   Widget _buildAppBar() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: [
//         Row(
//           children: [
//             IconButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 icon: const Icon(
//                   Icons.arrow_back_ios,
//                   color: AppColors.textColor,
//                 )),
//             Text(
//               widget.id,
//               style: const TextStyle(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 22,
//                   color: AppColors.textColor),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   Widget _buildGeneral() {
//     return Container(
//       margin: EdgeInsets.symmetric(horizontal: 1.h, vertical: 1.h),
//       width: MediaQuery.of(context).size.width,
//       height: double.infinity,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(15),
//           boxShadow: const [
//             BoxShadow(
//               color: Color.fromRGBO(85, 75, 186, 0.14),
//               offset: Offset(
//                 2.0,
//                 2.0,
//               ),
//               blurRadius: 5.0,
//               spreadRadius: 2.0,
//             ),
//             BoxShadow(
//               color: Colors.white,
//               offset: Offset(0.0, 0.0),
//               blurRadius: 0.0,
//               spreadRadius: 0.0,
//             ),
//           ]),
//       child: Column(
//         children: [
//           Container(
//             alignment: Alignment.centerLeft,
//             padding: EdgeInsets.only(left: 1.7.h, top: 2.7.h),
//             child: const Text(
//               'Purchase Order Detail',
//               style: TextStyle(
//                 fontWeight: FontWeight.w600,
//                 fontSize: 18,
//               ),
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//             margin: EdgeInsets.symmetric(vertical: 1.h),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   'ID',
//                   style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 14,
//                       color: Color.fromRGBO(114, 114, 114, 1)),
//                 ),
//                 Text(
//                   widget.id,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.w500,
//                     fontSize: 14,
//                     color: Color.fromRGBO(52, 52, 52, 1),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   'Status',
//                   style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 14,
//                       color: Color.fromRGBO(114, 114, 114, 1)),
//                 ),
//                 Text(
//                   widget.typepro,
//                   style: const TextStyle(
//                     fontWeight: FontWeight.w500,
//                     fontSize: 14,
//                     color: AppColors.textColor,
//                   ),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//             margin: EdgeInsets.symmetric(vertical: 1.h),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Text(
//                   'Create Date',
//                   style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 14,
//                       color: Color.fromRGBO(114, 114, 114, 1)),
//                 ),
//                 Text(
//                   widget.dateTime,
//                   style: const TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 14,
//                       color: Color.fromRGBO(114, 114, 114, 1)),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: const [
//                 Text(
//                   'Create By',
//                   style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 14,
//                       color: Color.fromRGBO(114, 114, 114, 1)),
//                 ),
//                 Text(
//                   'Staff_1',
//                   style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 14,
//                       color: Color.fromRGBO(114, 114, 114, 1)),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//             margin: EdgeInsets.symmetric(vertical: 1.h),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: const [
//                 Text(
//                   'OP Number',
//                   style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 14,
//                       color: Color.fromRGBO(114, 114, 114, 1)),
//                 ),
//                 Text(
//                   '9123455',
//                   style: TextStyle(
//                       fontWeight: FontWeight.w500,
//                       fontSize: 14,
//                       color: Color.fromRGBO(114, 114, 114, 1)),
//                 )
//               ],
//             ),
//           ),
//           Container(
//             padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//             alignment: Alignment.centerLeft,
//             child: const Text(
//               'Note',
//               style: TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontSize: 14,
//                   color: Color.fromRGBO(114, 114, 114, 1)),
//             ),
//           ),
//           Container(
//             margin: EdgeInsets.symmetric(vertical: 1.h),
//             padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//             alignment: Alignment.centerLeft,
//             child: const Text(
//               'OP Reference',
//               style: TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontSize: 14,
//                   color: Color.fromRGBO(114, 114, 114, 1)),
//             ),
//           ),
//           _buildPOReference(),
//           SizedBox(
//             height: 4.h,
//           ),
//           Container(
//             alignment: Alignment.centerLeft,
//             padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//             child: const Text(
//               'Customer',
//               style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 18,
//                   color: Color(0XFF343434)),
//             ),
//           ),
//           SizedBox(
//             height: 0.7.h,
//           ),
//           _buildCustomerName(),
//           _buildCompanyName(),
//           _buildPhoneNumber(),
//           _buildEmail(),
//           SizedBox(
//             height: 4.h,
//           ),
//           Container(
//             alignment: Alignment.centerLeft,
//             padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//             child: const Text(
//               'Deliver To',
//               style: TextStyle(
//                   fontWeight: FontWeight.w600,
//                   fontSize: 18,
//                   color: Color(0XFF343434)),
//             ),
//           ),
//           SizedBox(
//             height: 0.7.h,
//           ),
//           _buildContact(),
//           _buildDiverDate(),
//           _buildDiverType(),
//           _buildDiveBy(),
//           _buildNote(),
//           _buildLocation(),
//           _buildShowPin(),
//         ],
//       ),
//     );
//   }

//   Widget _buildPOReference() {
//     return Container(
//       margin: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//       width: double.infinity,
//       // height: 37,
//       height: 4.3.h,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(6),
//         color: const Color.fromRGBO(166, 191, 255, 1),
//       ),
//       child: const Center(
//         child: Text(
//           'View PO Reference',
//           style: TextStyle(
//               fontWeight: FontWeight.w500,
//               fontSize: 14,
//               color: Color.fromRGBO(255, 255, 255, 1)),
//         ),
//       ),
//     );
//   }

//   Widget _buildCustomerName() {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 1.h),
//       padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: const [
//           Text(
//             'Customer Name',
//             style: TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 14,
//                 color: Color.fromRGBO(114, 114, 114, 1)),
//           ),
//           Text(
//             'ABC Customer',
//             style: TextStyle(
//               fontWeight: FontWeight.w500,
//               fontSize: 14,
//               color: Color.fromRGBO(52, 52, 52, 1),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _buildCompanyName() {
//     return Container(
//       padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: const [
//           Text(
//             'Company Name',
//             style: TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 14,
//                 color: Color.fromRGBO(114, 114, 114, 1)),
//           ),
//           Text(
//             'ABC Company',
//             style: TextStyle(
//               fontWeight: FontWeight.w500,
//               fontSize: 14,
//               color: Color.fromRGBO(52, 52, 52, 1),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _buildPhoneNumber() {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 1.h),
//       padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: const [
//           Text(
//             'Phone Number',
//             style: TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 14,
//                 color: Color.fromRGBO(114, 114, 114, 1)),
//           ),
//           Text(
//             '855123456789y',
//             style: TextStyle(
//               fontWeight: FontWeight.w500,
//               fontSize: 14,
//               color: Color.fromRGBO(52, 52, 52, 1),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _buildEmail() {
//     return Container(
//       padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: const [
//           Text(
//             'Email',
//             style: TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 14,
//                 color: Color.fromRGBO(114, 114, 114, 1)),
//           ),
//           Text(
//             'example@example.example',
//             style: TextStyle(
//               fontWeight: FontWeight.w500,
//               fontSize: 14,
//               color: Color.fromRGBO(52, 52, 52, 1),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _buildContact() {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 1.h),
//       padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             margin: EdgeInsets.only(bottom: 6.h),
//             child: const Text(
//               'Contact',
//               style: TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontSize: 14,
//                   color: Color.fromRGBO(114, 114, 114, 1)),
//             ),
//           ),
//           Column(
//             children: [
//               Container(
//                 alignment: Alignment.centerRight,
//                 margin: EdgeInsets.only(left: 9.h),
//                 child: const Text(
//                   'Contact  Name',
//                   style: TextStyle(
//                     fontWeight: FontWeight.w500,
//                     fontSize: 14,
//                     color: Color.fromRGBO(52, 52, 52, 1),
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 0.3.h,
//               ),
//               Container(
//                 alignment: Alignment.centerRight,
//                 //  margin: EdgeInsets.symmetric(vertical: 1.h),
//                 margin: EdgeInsets.only(left: 10.h, top: 1.h, bottom: 1.h),
//                 child: const Text(
//                   '85512345678',
//                   style: TextStyle(
//                     fontWeight: FontWeight.w500,
//                     fontSize: 14,
//                     color: Color.fromRGBO(52, 52, 52, 1),
//                   ),
//                 ),
//               ),
//               const Text(
//                 'example@example.example',
//                 style: TextStyle(
//                   fontWeight: FontWeight.w500,
//                   fontSize: 14,
//                   color: Color.fromRGBO(52, 52, 52, 1),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }

//   Widget _buildDiverDate() {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 1.h),
//       padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: const [
//           Text(
//             'Deliver Date',
//             style: TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 14,
//                 color: Color.fromRGBO(114, 114, 114, 1)),
//           ),
//           Text(
//             '-',
//             style: TextStyle(
//               fontWeight: FontWeight.w500,
//               fontSize: 14,
//               color: Color.fromRGBO(52, 52, 52, 1),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _buildDiverType() {
//     return Container(
//       padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: const [
//           Text(
//             'Deliver Type',
//             style: TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 14,
//                 color: Color.fromRGBO(114, 114, 114, 1)),
//           ),
//           Text(
//             '-',
//             style: TextStyle(
//               fontWeight: FontWeight.w500,
//               fontSize: 14,
//               color: Color.fromRGBO(52, 52, 52, 1),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _buildDiveBy() {
//     return Container(
//       padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//       margin: EdgeInsets.symmetric(vertical: 1.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: const [
//           Text(
//             'Deliver By',
//             style: TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 14,
//                 color: Color.fromRGBO(114, 114, 114, 1)),
//           ),
//           Text(
//             '-',
//             style: TextStyle(
//               fontWeight: FontWeight.w500,
//               fontSize: 14,
//               color: Color.fromRGBO(52, 52, 52, 1),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _buildNote() {
//     return Container(
//       padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: const [
//           Text(
//             'Note',
//             style: TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 14,
//                 color: Color.fromRGBO(114, 114, 114, 1)),
//           ),
//           Text(
//             '-',
//             style: TextStyle(
//               fontWeight: FontWeight.w500,
//               fontSize: 14,
//               color: Color.fromRGBO(52, 52, 52, 1),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _buildLocation() {
//     return Container(
//       margin: EdgeInsets.symmetric(vertical: 1.h),
//       padding: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: const [
//           Text(
//             'Location',
//             style: TextStyle(
//                 fontWeight: FontWeight.w500,
//                 fontSize: 14,
//                 color: Color.fromRGBO(114, 114, 114, 1)),
//           ),
//           Text(
//             'City Center Boulevard Phnom Penh',
//             style: TextStyle(
//               fontWeight: FontWeight.w500,
//               fontSize: 14,
//               color: Color.fromRGBO(52, 52, 52, 1),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   Widget _buildShowPin() {
//     return Container(
//       margin: EdgeInsets.only(left: 1.7.h, right: 1.7.h),
//       width: double.infinity,
//       // height: 37,
//       height: 4.3.h,
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(6),
//         color: const Color.fromRGBO(89, 133, 245, 1),
//       ),
//       child: const Center(
//         child: Text(
//           'Show Pinned Location',
//           style: TextStyle(
//               fontWeight: FontWeight.w500,
//               fontSize: 14,
//               color: Color.fromRGBO(255, 255, 255, 1)),
//         ),
//       ),
//     );
//   }

//   get _buildBottom {
//     return NextButton(
//         title: 'Confirm Delivery',
//         onPress: () {
//           Navigator.push(context, MaterialPageRoute(builder: (context) {
//             return const StepI();
//           }));
//         });
//   }
// }
