import '../models/departmentsscreen_item_model.dart';
import 'package:flutter/material.dart';
import 'package:pmis/core/app_export.dart';

// ignore: must_be_immutable
class DepartmentsscreenItemWidget extends StatelessWidget {
  DepartmentsscreenItemWidget(
    this.departmentsscreenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DepartmentsscreenItemModel departmentsscreenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 2.v,
      width: 18.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          CustomImageView(
            imagePath: departmentsscreenItemModelObj?.image,
            height: 1.v,
            width: 18.h,
            alignment: Alignment.bottomCenter,
          ),
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              height: 1.v,
              width: 17.h,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: departmentsscreenItemModelObj?.path,
                    height: 1.v,
                    width: 17.h,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      height: 1.v,
                      width: 17.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: departmentsscreenItemModelObj?.path1,
                            height: 1.v,
                            width: 17.h,
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              height: 1.v,
                              width: 17.h,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath:
                                        departmentsscreenItemModelObj?.path2,
                                    height: 1.v,
                                    width: 17.h,
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.center,
                                    child: SizedBox(
                                      height: 1.v,
                                      width: 17.h,
                                      child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          CustomImageView(
                                            imagePath:
                                                departmentsscreenItemModelObj
                                                    ?.path3,
                                            height: 1.v,
                                            width: 17.h,
                                            alignment: Alignment.center,
                                          ),
                                          Align(
                                            alignment: Alignment.center,
                                            child: SizedBox(
                                              height: 1.v,
                                              width: 17.h,
                                              child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  CustomImageView(
                                                    imagePath:
                                                        departmentsscreenItemModelObj
                                                            ?.path4,
                                                    height: 1.v,
                                                    width: 17.h,
                                                    alignment: Alignment.center,
                                                  ),
                                                  Align(
                                                    alignment: Alignment.center,
                                                    child: SizedBox(
                                                      height: 1.v,
                                                      width: 17.h,
                                                      child: Stack(
                                                        alignment:
                                                            Alignment.center,
                                                        children: [
                                                          CustomImageView(
                                                            imagePath:
                                                                departmentsscreenItemModelObj
                                                                    ?.path5,
                                                            height: 1.v,
                                                            width: 17.h,
                                                            alignment: Alignment
                                                                .center,
                                                          ),
                                                          Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: SizedBox(
                                                              height: 1.v,
                                                              width: 17.h,
                                                              child: Stack(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                children: [
                                                                  CustomImageView(
                                                                    imagePath:
                                                                        departmentsscreenItemModelObj
                                                                            ?.path6,
                                                                    height: 1.v,
                                                                    width: 17.h,
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child:
                                                                        SizedBox(
                                                                      height:
                                                                          1.v,
                                                                      width:
                                                                          17.h,
                                                                      child:
                                                                          Stack(
                                                                        alignment:
                                                                            Alignment.center,
                                                                        children: [
                                                                          CustomImageView(
                                                                            imagePath:
                                                                                departmentsscreenItemModelObj?.path7,
                                                                            height:
                                                                                1.v,
                                                                            width:
                                                                                17.h,
                                                                            alignment:
                                                                                Alignment.center,
                                                                          ),
                                                                          Align(
                                                                            alignment:
                                                                                Alignment.center,
                                                                            child:
                                                                                SizedBox(
                                                                              height: 1.v,
                                                                              width: 17.h,
                                                                              child: Stack(
                                                                                alignment: Alignment.center,
                                                                                children: [
                                                                                  CustomImageView(
                                                                                    imagePath: departmentsscreenItemModelObj?.path8,
                                                                                    height: 1.v,
                                                                                    width: 17.h,
                                                                                    alignment: Alignment.center,
                                                                                  ),
                                                                                  Align(
                                                                                    alignment: Alignment.center,
                                                                                    child: SizedBox(
                                                                                      height: 1.v,
                                                                                      width: 17.h,
                                                                                      child: Stack(
                                                                                        alignment: Alignment.center,
                                                                                        children: [
                                                                                          CustomImageView(
                                                                                            imagePath: departmentsscreenItemModelObj?.path9,
                                                                                            height: 1.v,
                                                                                            width: 17.h,
                                                                                            alignment: Alignment.center,
                                                                                          ),
                                                                                          Align(
                                                                                            alignment: Alignment.center,
                                                                                            child: SizedBox(
                                                                                              height: 1.v,
                                                                                              width: 17.h,
                                                                                              child: Stack(
                                                                                                alignment: Alignment.center,
                                                                                                children: [
                                                                                                  CustomImageView(
                                                                                                    imagePath: departmentsscreenItemModelObj?.path10,
                                                                                                    height: 1.v,
                                                                                                    width: 17.h,
                                                                                                    alignment: Alignment.center,
                                                                                                  ),
                                                                                                  Align(
                                                                                                    alignment: Alignment.center,
                                                                                                    child: SizedBox(
                                                                                                      height: 1.v,
                                                                                                      width: 17.h,
                                                                                                      child: Stack(
                                                                                                        alignment: Alignment.center,
                                                                                                        children: [
                                                                                                          CustomImageView(
                                                                                                            imagePath: departmentsscreenItemModelObj?.path11,
                                                                                                            height: 1.v,
                                                                                                            width: 17.h,
                                                                                                            alignment: Alignment.center,
                                                                                                          ),
                                                                                                          Align(
                                                                                                            alignment: Alignment.center,
                                                                                                            child: SizedBox(
                                                                                                              height: 1.v,
                                                                                                              width: 17.h,
                                                                                                              child: Stack(
                                                                                                                alignment: Alignment.center,
                                                                                                                children: [
                                                                                                                  CustomImageView(
                                                                                                                    imagePath: departmentsscreenItemModelObj?.path12,
                                                                                                                    height: 1.v,
                                                                                                                    width: 17.h,
                                                                                                                    alignment: Alignment.center,
                                                                                                                  ),
                                                                                                                  Align(
                                                                                                                    alignment: Alignment.center,
                                                                                                                    child: SizedBox(
                                                                                                                      height: 1.v,
                                                                                                                      width: 17.h,
                                                                                                                      child: Stack(
                                                                                                                        alignment: Alignment.center,
                                                                                                                        children: [
                                                                                                                          CustomImageView(
                                                                                                                            imagePath: departmentsscreenItemModelObj?.path13,
                                                                                                                            height: 1.v,
                                                                                                                            width: 17.h,
                                                                                                                            alignment: Alignment.center,
                                                                                                                          ),
                                                                                                                          Align(
                                                                                                                            alignment: Alignment.center,
                                                                                                                            child: SizedBox(
                                                                                                                              height: 1.v,
                                                                                                                              width: 17.h,
                                                                                                                              child: Stack(
                                                                                                                                alignment: Alignment.center,
                                                                                                                                children: [
                                                                                                                                  CustomImageView(
                                                                                                                                    imagePath: departmentsscreenItemModelObj?.path14,
                                                                                                                                    height: 1.v,
                                                                                                                                    width: 17.h,
                                                                                                                                    alignment: Alignment.center,
                                                                                                                                  ),
                                                                                                                                  Align(
                                                                                                                                    alignment: Alignment.center,
                                                                                                                                    child: SizedBox(
                                                                                                                                      height: 1.v,
                                                                                                                                      width: 17.h,
                                                                                                                                      child: Stack(
                                                                                                                                        alignment: Alignment.center,
                                                                                                                                        children: [
                                                                                                                                          CustomImageView(
                                                                                                                                            imagePath: departmentsscreenItemModelObj?.path15,
                                                                                                                                            height: 1.v,
                                                                                                                                            width: 17.h,
                                                                                                                                            alignment: Alignment.center,
                                                                                                                                          ),
                                                                                                                                          Align(
                                                                                                                                            alignment: Alignment.center,
                                                                                                                                            child: SizedBox(
                                                                                                                                              height: 1.v,
                                                                                                                                              width: 17.h,
                                                                                                                                              child: Stack(
                                                                                                                                                alignment: Alignment.center,
                                                                                                                                                children: [
                                                                                                                                                  CustomImageView(
                                                                                                                                                    imagePath: departmentsscreenItemModelObj?.path16,
                                                                                                                                                    height: 1.v,
                                                                                                                                                    width: 17.h,
                                                                                                                                                    alignment: Alignment.center,
                                                                                                                                                  ),
                                                                                                                                                  Align(
                                                                                                                                                    alignment: Alignment.center,
                                                                                                                                                    child: SizedBox(
                                                                                                                                                      height: 1.v,
                                                                                                                                                      width: 17.h,
                                                                                                                                                      child: Stack(
                                                                                                                                                        alignment: Alignment.center,
                                                                                                                                                        children: [
                                                                                                                                                          CustomImageView(
                                                                                                                                                            imagePath: departmentsscreenItemModelObj?.path17,
                                                                                                                                                            height: 1.v,
                                                                                                                                                            width: 17.h,
                                                                                                                                                            alignment: Alignment.center,
                                                                                                                                                          ),
                                                                                                                                                          Align(
                                                                                                                                                            alignment: Alignment.center,
                                                                                                                                                            child: SizedBox(
                                                                                                                                                              height: 1.v,
                                                                                                                                                              width: 17.h,
                                                                                                                                                              child: Stack(
                                                                                                                                                                alignment: Alignment.center,
                                                                                                                                                                children: [
                                                                                                                                                                  CustomImageView(
                                                                                                                                                                    imagePath: departmentsscreenItemModelObj?.path18,
                                                                                                                                                                    height: 1.v,
                                                                                                                                                                    width: 17.h,
                                                                                                                                                                    alignment: Alignment.center,
                                                                                                                                                                  ),
                                                                                                                                                                  Align(
                                                                                                                                                                    alignment: Alignment.center,
                                                                                                                                                                    child: SizedBox(
                                                                                                                                                                      height: 1.v,
                                                                                                                                                                      width: 17.h,
                                                                                                                                                                      child: Stack(
                                                                                                                                                                        alignment: Alignment.center,
                                                                                                                                                                        children: [
                                                                                                                                                                          CustomImageView(
                                                                                                                                                                            imagePath: departmentsscreenItemModelObj?.path19,
                                                                                                                                                                            height: 1.v,
                                                                                                                                                                            width: 17.h,
                                                                                                                                                                            alignment: Alignment.center,
                                                                                                                                                                          ),
                                                                                                                                                                          Align(
                                                                                                                                                                            alignment: Alignment.center,
                                                                                                                                                                            child: SizedBox(
                                                                                                                                                                              height: 1.v,
                                                                                                                                                                              width: 17.h,
                                                                                                                                                                              child: Stack(
                                                                                                                                                                                alignment: Alignment.center,
                                                                                                                                                                                children: [
                                                                                                                                                                                  CustomImageView(
                                                                                                                                                                                    imagePath: departmentsscreenItemModelObj?.path20,
                                                                                                                                                                                    height: 1.v,
                                                                                                                                                                                    width: 17.h,
                                                                                                                                                                                    alignment: Alignment.center,
                                                                                                                                                                                  ),
                                                                                                                                                                                  Align(
                                                                                                                                                                                    alignment: Alignment.center,
                                                                                                                                                                                    child: SizedBox(
                                                                                                                                                                                      height: 1.v,
                                                                                                                                                                                      width: 17.h,
                                                                                                                                                                                      child: Stack(
                                                                                                                                                                                        alignment: Alignment.center,
                                                                                                                                                                                        children: [
                                                                                                                                                                                          CustomImageView(
                                                                                                                                                                                            imagePath: departmentsscreenItemModelObj?.path21,
                                                                                                                                                                                            height: 1.v,
                                                                                                                                                                                            width: 17.h,
                                                                                                                                                                                            alignment: Alignment.center,
                                                                                                                                                                                          ),
                                                                                                                                                                                          Align(
                                                                                                                                                                                            alignment: Alignment.center,
                                                                                                                                                                                            child: SizedBox(
                                                                                                                                                                                              height: 1.v,
                                                                                                                                                                                              width: 17.h,
                                                                                                                                                                                              child: Stack(
                                                                                                                                                                                                alignment: Alignment.center,
                                                                                                                                                                                                children: [
                                                                                                                                                                                                  CustomImageView(
                                                                                                                                                                                                    imagePath: departmentsscreenItemModelObj?.path22,
                                                                                                                                                                                                    height: 1.v,
                                                                                                                                                                                                    width: 17.h,
                                                                                                                                                                                                    alignment: Alignment.center,
                                                                                                                                                                                                  ),
                                                                                                                                                                                                  Align(
                                                                                                                                                                                                    alignment: Alignment.center,
                                                                                                                                                                                                    child: SizedBox(
                                                                                                                                                                                                      height: 1.v,
                                                                                                                                                                                                      width: 17.h,
                                                                                                                                                                                                      child: Stack(
                                                                                                                                                                                                        alignment: Alignment.center,
                                                                                                                                                                                                        children: [
                                                                                                                                                                                                          CustomImageView(
                                                                                                                                                                                                            imagePath: departmentsscreenItemModelObj?.path23,
                                                                                                                                                                                                            height: 1.v,
                                                                                                                                                                                                            width: 17.h,
                                                                                                                                                                                                            alignment: Alignment.center,
                                                                                                                                                                                                          ),
                                                                                                                                                                                                          Align(
                                                                                                                                                                                                            alignment: Alignment.center,
                                                                                                                                                                                                            child: SizedBox(
                                                                                                                                                                                                              height: 1.v,
                                                                                                                                                                                                              width: 16.h,
                                                                                                                                                                                                              child: Stack(
                                                                                                                                                                                                                alignment: Alignment.center,
                                                                                                                                                                                                                children: [
                                                                                                                                                                                                                  CustomImageView(
                                                                                                                                                                                                                    imagePath: departmentsscreenItemModelObj?.path24,
                                                                                                                                                                                                                    height: 1.v,
                                                                                                                                                                                                                    width: 16.h,
                                                                                                                                                                                                                    alignment: Alignment.center,
                                                                                                                                                                                                                  ),
                                                                                                                                                                                                                  Align(
                                                                                                                                                                                                                    alignment: Alignment.center,
                                                                                                                                                                                                                    child: SizedBox(
                                                                                                                                                                                                                      height: 1.v,
                                                                                                                                                                                                                      width: 16.h,
                                                                                                                                                                                                                      child: Stack(
                                                                                                                                                                                                                        alignment: Alignment.center,
                                                                                                                                                                                                                        children: [
                                                                                                                                                                                                                          Align(
                                                                                                                                                                                                                            alignment: Alignment.center,
                                                                                                                                                                                                                            child: SizedBox(
                                                                                                                                                                                                                              height: 1.v,
                                                                                                                                                                                                                              width: 16.h,
                                                                                                                                                                                                                              child: Stack(
                                                                                                                                                                                                                                alignment: Alignment.center,
                                                                                                                                                                                                                                children: [
                                                                                                                                                                                                                                  CustomImageView(
                                                                                                                                                                                                                                    imagePath: departmentsscreenItemModelObj?.path25,
                                                                                                                                                                                                                                    height: 1.v,
                                                                                                                                                                                                                                    width: 16.h,
                                                                                                                                                                                                                                    alignment: Alignment.center,
                                                                                                                                                                                                                                  ),
                                                                                                                                                                                                                                  Align(
                                                                                                                                                                                                                                    alignment: Alignment.center,
                                                                                                                                                                                                                                    child: SizedBox(
                                                                                                                                                                                                                                      height: 1.v,
                                                                                                                                                                                                                                      width: 16.h,
                                                                                                                                                                                                                                      child: Stack(
                                                                                                                                                                                                                                        alignment: Alignment.center,
                                                                                                                                                                                                                                        children: [
                                                                                                                                                                                                                                          CustomImageView(
                                                                                                                                                                                                                                            imagePath: departmentsscreenItemModelObj?.path26,
                                                                                                                                                                                                                                            height: 1.v,
                                                                                                                                                                                                                                            width: 16.h,
                                                                                                                                                                                                                                            alignment: Alignment.center,
                                                                                                                                                                                                                                          ),
                                                                                                                                                                                                                                          CustomImageView(
                                                                                                                                                                                                                                            imagePath: departmentsscreenItemModelObj?.path27,
                                                                                                                                                                                                                                            height: 1.v,
                                                                                                                                                                                                                                            width: 16.h,
                                                                                                                                                                                                                                            alignment: Alignment.center,
                                                                                                                                                                                                                                          ),
                                                                                                                                                                                                                                        ],
                                                                                                                                                                                                                                      ),
                                                                                                                                                                                                                                    ),
                                                                                                                                                                                                                                  ),
                                                                                                                                                                                                                                ],
                                                                                                                                                                                                                              ),
                                                                                                                                                                                                                            ),
                                                                                                                                                                                                                          ),
                                                                                                                                                                                                                          CustomImageView(
                                                                                                                                                                                                                            imagePath: departmentsscreenItemModelObj?.path28,
                                                                                                                                                                                                                            height: 1.v,
                                                                                                                                                                                                                            width: 16.h,
                                                                                                                                                                                                                            alignment: Alignment.center,
                                                                                                                                                                                                                          ),
                                                                                                                                                                                                                          CustomImageView(
                                                                                                                                                                                                                            imagePath: departmentsscreenItemModelObj?.path29,
                                                                                                                                                                                                                            height: 1.v,
                                                                                                                                                                                                                            width: 16.h,
                                                                                                                                                                                                                            alignment: Alignment.center,
                                                                                                                                                                                                                          ),
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
                                                                                                                                                                                                    ),
                                                                                                                                                                                                  ),
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
                                                                                                                                                                            ),
                                                                                                                                                                          ),
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
                                                                                                                                                    ),
                                                                                                                                                  ),
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
                                                                                                                            ),
                                                                                                                          ),
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
                                                                                                    ),
                                                                                                  ),
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
                                                                            ),
                                                                          ),
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
                                                    ),
                                                  ),
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
                            ),
                          ),
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
    );
  }
}
