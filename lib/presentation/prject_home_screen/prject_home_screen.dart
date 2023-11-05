import '../prject_home_screen/widgets/clienttestimonials_item_widget.dart';
import '../prject_home_screen/widgets/recentorders_item_widget.dart';
import '../prject_home_screen/widgets/reviews_item_widget.dart';
import 'bloc/prject_home_bloc.dart';
import 'models/clienttestimonials_item_model.dart';
import 'models/prject_home_model.dart';
import 'models/recentorders_item_model.dart';
import 'models/reviews_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:pmis/core/app_export.dart';
import 'package:pmis/widgets/custom_bottom_bar.dart';
import 'package:pmis/widgets/custom_icon_button.dart';
import 'package:pmis/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class PrjectHomeScreen extends StatelessWidget {
  PrjectHomeScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<PrjectHomeBloc>(
        create: (context) => PrjectHomeBloc(
            PrjectHomeState(prjectHomeModelObj: PrjectHomeModel()))
          ..add(PrjectHomeInitialEvent()),
        child: PrjectHomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildPlaylist(context),
                  SizedBox(
                      width: double.maxFinite,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                                height: 622.v,
                                width: double.maxFinite,
                                child: Stack(
                                    alignment: Alignment.topRight,
                                    children: [
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 29.v),
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: AssetImage(
                                                          ImageConstant
                                                              .imgRectangle139),
                                                      fit: BoxFit.cover)),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 52.h,
                                                                right: 49.h),
                                                        child: Row(
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              CustomIconButton(
                                                                  height: 40.v,
                                                                  width: 41.h,
                                                                  padding:
                                                                      EdgeInsets
                                                                          .all(13
                                                                              .h),
                                                                  onTap: () {
                                                                    onTapBtnArrowLeft(
                                                                        context);
                                                                  },
                                                                  child: CustomImageView(
                                                                      imagePath:
                                                                          ImageConstant
                                                                              .imgArrowLeft)),
                                                              Expanded(
                                                                  child: Padding(
                                                                      padding: EdgeInsets.only(left: 18.h),
                                                                      child: BlocSelector<PrjectHomeBloc, PrjectHomeState, TextEditingController?>(
                                                                          selector: (state) => state.searchController,
                                                                          builder: (context, searchController) {
                                                                            return CustomSearchView(
                                                                                controller: searchController,
                                                                                hintText: "lbl_search_here".tr);
                                                                          })))
                                                            ])),
                                                    SizedBox(height: 24.v),
                                                    _buildClientTestimonials(
                                                        context),
                                                    SizedBox(height: 35.v),
                                                    _buildReviews(context),
                                                    SizedBox(height: 35.v)
                                                  ]))),
                                      _buildDoctorReviews(context)
                                    ])),
                            _buildRecentOrders(context)
                          ]))
                ])),
            bottomNavigationBar: Padding(
                padding: EdgeInsets.only(left: 34.h, right: 30.h),
                child: _buildUserProfile(context))));
  }

  /// Section Widget
  Widget _buildPlaylist(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 13.v),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: fs.Svg(ImageConstant.imgGroup800), fit: BoxFit.cover)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomImageView(
              imagePath: ImageConstant.imgMaskGroup2,
              height: 50.v,
              width: 430.h),
          SizedBox(height: 33.v),
          Padding(
              padding: EdgeInsets.only(left: 40.h),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgEllipse25,
                    height: 70.adaptSize,
                    width: 70.adaptSize),
                Padding(
                    padding:
                        EdgeInsets.only(left: 11.h, top: 20.v, bottom: 17.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("lbl_hi_majed_sami".tr,
                              style: CustomTextStyles.titleMedium16),
                          SizedBox(height: 3.v),
                          Text("lbl_vel_consequat".tr,
                              style: CustomTextStyles
                                  .helveticaNeueBluegray200Regular)
                        ]))
              ])),
          SizedBox(height: 39.v),
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(left: 54.h, right: 33.h),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    GestureDetector(
                        onTap: () {
                          onTapTxtAgencies(context);
                        },
                        child: Padding(
                            padding: EdgeInsets.only(top: 7.v, bottom: 6.v),
                            child: Text("lbl_agencies".tr.toUpperCase(),
                                style: theme.textTheme.labelLarge))),
                    Container(
                        height: 29.v,
                        width: 127.h,
                        margin: EdgeInsets.only(left: 21.h),
                        child: Stack(alignment: Alignment.center, children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgRectangle623,
                              height: 29.v,
                              width: 127.h,
                              radius: BorderRadius.circular(14.h),
                              alignment: Alignment.center),
                          Align(
                              alignment: Alignment.center,
                              child: Text(
                                  "lbl_administrations".tr.toUpperCase(),
                                  style: CustomTextStyles.labelLargeOnError))
                        ])),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 23.h, top: 7.v, bottom: 6.v),
                        child: Text("lbl_projects".tr.toUpperCase(),
                            style: theme.textTheme.labelLarge)),
                    Padding(
                        padding:
                            EdgeInsets.only(left: 29.h, top: 7.v, bottom: 6.v),
                        child: Text("lbl_project_details".tr.toUpperCase(),
                            style: theme.textTheme.labelLarge))
                  ]))),
          SizedBox(height: 11.v)
        ]));
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 138.v,
            child:
                BlocSelector<PrjectHomeBloc, PrjectHomeState, PrjectHomeModel?>(
                    selector: (state) => state.prjectHomeModelObj,
                    builder: (context, prjectHomeModelObj) {
                      return ListView.separated(
                          padding: EdgeInsets.only(left: 31.h),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 16.h);
                          },
                          itemCount: prjectHomeModelObj
                                  ?.clienttestimonialsItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            ClienttestimonialsItemModel model =
                                prjectHomeModelObj
                                        ?.clienttestimonialsItemList[index] ??
                                    ClienttestimonialsItemModel();
                            return ClienttestimonialsItemWidget(model);
                          });
                    })));
  }

  /// Section Widget
  Widget _buildReviews(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 58.h),
        child: BlocSelector<PrjectHomeBloc, PrjectHomeState, PrjectHomeModel?>(
            selector: (state) => state.prjectHomeModelObj,
            builder: (context, prjectHomeModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.5.v),
                        child: SizedBox(
                            width: 313.h,
                            child: Divider(
                                height: 1.v,
                                thickness: 1.v,
                                color: appTheme.blueGray10006)));
                  },
                  itemCount: prjectHomeModelObj?.reviewsItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    ReviewsItemModel model =
                        prjectHomeModelObj?.reviewsItemList[index] ??
                            ReviewsItemModel();
                    return ReviewsItemWidget(model);
                  });
            }));
  }

  /// Section Widget
  Widget _buildDoctorReviews(BuildContext context) {
    return Align(
        alignment: Alignment.topRight,
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.only(left: 341.h, top: 95.v, bottom: 391.v),
            child: IntrinsicWidth(
                child: SizedBox(
                    height: 136.adaptSize,
                    width: 136.adaptSize,
                    child: Stack(alignment: Alignment.center, children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 136.adaptSize,
                              width: 136.adaptSize,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 53.h, vertical: 7.v),
                              decoration: AppDecoration.outlineBluegray200
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder26),
                              child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgRectangle1425119x1,
                                  height: 119.v,
                                  width: 1.h,
                                  alignment: Alignment.centerRight))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: EdgeInsets.only(left: 39.h, right: 35.h),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgSettings,
                                        height: 60.adaptSize,
                                        width: 60.adaptSize),
                                    SizedBox(height: 9.v),
                                    Text("lbl_5m".tr,
                                        style: theme.textTheme.titleMedium),
                                    SizedBox(height: 5.v),
                                    Text("lbl_vel_consequat".tr,
                                        style: CustomTextStyles
                                            .helveticaNeueBluegray200Regular)
                                  ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Expanded(
        child: SizedBox(
            height: 622.v,
            child: BlocSelector<PrjectHomeBloc, PrjectHomeState,
                    PrjectHomeModel?>(
                selector: (state) => state.prjectHomeModelObj,
                builder: (context, prjectHomeModelObj) {
                  return ListView.separated(
                      padding:
                          EdgeInsets.only(left: 65.h, top: 95.v, bottom: 391.v),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return SizedBox(width: 18.h);
                      },
                      itemCount:
                          prjectHomeModelObj?.recentordersItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        RecentordersItemModel model =
                            prjectHomeModelObj?.recentordersItemList[index] ??
                                RecentordersItemModel();
                        return RecentordersItemWidget(model);
                      });
                })));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapTxtAgencies(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the departmentHomeScreen when the action is triggered.
  onTapBtnArrowLeft(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.departmentHomeScreen,
    );
  }
}
