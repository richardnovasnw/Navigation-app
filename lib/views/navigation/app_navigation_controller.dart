import 'package:flutter/material.dart';
import 'package:navigation_app/core/navigation/navigation.dart';
import 'package:navigation_app/ui.dart';
import 'package:navigation_app/views/home_page.dart';
import 'package:navigation_app/views/navigation/app_navigation_state.dart';
import 'package:navigation_app/views/use_case_1/screen_a.dart';
import 'package:navigation_app/views/use_case_1/screen_b.dart';
import 'package:navigation_app/views/use_case_1/screen_c.dart';
import 'package:navigation_app/views/use_case_1/screen_d.dart';
import 'package:navigation_app/views/use_case_1/screen_m.dart';
import 'package:navigation_app/views/use_case_1/screen_n.dart';
import 'package:navigation_app/views/use_case_2/second_a.dart';
import 'package:navigation_app/views/use_case_2/second_b.dart';
import 'package:navigation_app/views/use_case_2/use_case_2.dart';
import 'package:navigation_app/views/use_case_3.dart/lock.dart';
import 'package:navigation_app/views/use_case_3.dart/screen1.dart';
import 'package:navigation_app/views/use_case_4.dart/use_case4.dart';
import 'package:navigation_app/views/use_case_5.dart/next.dart';
import 'package:navigation_app/views/use_case_5.dart/use_case5.dart';
import 'package:navigation_app/views/use_case_6/use_case6.dart';
import 'package:navigation_app/views/use_case_6/use_case6_b.dart';

class AppNavigationController extends AppFlowController<AppNavigationState> {
  AppNavigationController() : super(AppNavigationState());

  // ignore: unused_element
  void _setState(AppNavigationState state) => this.state = state;

  void init() {
    print('initializing...');
    state = state.rebuild(
        (AppNavigationStateBuilder b) => b.homeRoute = HomeRoute.homePage);
    state = state.rebuild((AppNavigationStateBuilder b) => b.index = 0);
    state =
        state.rebuild((AppNavigationStateBuilder b) => b.usecase3 = Case3.home);
  }

  void useCase1() {
    state =
        state.rebuild((AppNavigationStateBuilder b) => b.cases = Case.useCase1);
  }

  void useCase2() {
    state =
        state.rebuild((AppNavigationStateBuilder b) => b.cases = Case.useCase2);
  }

  void screenA() {
    state = state
        .rebuild((AppNavigationStateBuilder b) => b.useCase1 = Case1.screenA);
  }

  void screenB() {
    state = state
        .rebuild((AppNavigationStateBuilder b) => b.useCase1 = Case1.screenB);
  }

  void screenC() {
    state = state
        .rebuild((AppNavigationStateBuilder b) => b.useCase1 = Case1.screenC);
  }

  void screenD() {
    state = state
        .rebuild((AppNavigationStateBuilder b) => b.useCase1 = Case1.screenD);
  }

  void screenN() {
    state = state
        .rebuild((AppNavigationStateBuilder b) => b.useCase1 = Case1.screenN);
  }

  void screenM() {
    state = state
        .rebuild((AppNavigationStateBuilder b) => b.useCase1 = Case1.screenM);
  }

  void index(int i) {
    state = state.rebuild((AppNavigationStateBuilder b) => b.index = i);
  }

  void index0() {
    state = state.rebuild((AppNavigationStateBuilder b) => b.index = 0);
  }

  void index1() {
    state = state.rebuild((AppNavigationStateBuilder b) => b.index = 1);
  }

  void index2() {
    state = state.rebuild((AppNavigationStateBuilder b) => b.index = 2);
  }

  void newa() {
    state =
        state.rebuild((AppNavigationStateBuilder b) => b.usecase2 = Case2.a);
  }

  void newb() {
    state =
        state.rebuild((AppNavigationStateBuilder b) => b.usecase2 = Case2.b);
  }

  void nul() {
    state = state.rebuild((AppNavigationStateBuilder b) => b.usecase2 = null);
  }

  void useCase3() {
    state =
        state.rebuild((AppNavigationStateBuilder b) => b.cases = Case.useCase3);
  }

  void home() {
    state =
        state.rebuild((AppNavigationStateBuilder b) => b.usecase3 = Case3.home);
  }

  void lock() {
    state =
        state.rebuild((AppNavigationStateBuilder b) => b.usecase3 = Case3.lock);
  }

  void useCase4() {
    state =
        state.rebuild((AppNavigationStateBuilder b) => b.cases = Case.useCase4);
  }

  void useCase5() {
    state =
        state.rebuild((AppNavigationStateBuilder b) => b.cases = Case.useCase5);
  }

  void next() {
    state =
        state.rebuild((AppNavigationStateBuilder b) => b.usecas5 = Case5.next);
  }

  void useCase6() {
    state =
        state.rebuild((AppNavigationStateBuilder b) => b.cases = Case.useCase6);
  }

  void useCase6B() {
    state =
        state.rebuild((AppNavigationStateBuilder b) => b.usecase6 = Case6.b);
  }

  @override
  List<Page<Object>> onGeneratePages(
    AppNavigationState state,
    List<Page<Object>> currentPages,
  ) {
    return <Page<Object>>[
      const MaterialPage<Object>(child: HomePage()),

      //Use Case 1

      if (state.cases == Case.useCase1)
        if ({
          Case1.screenA,
          Case1.screenB,
          Case1.screenC,
          Case1.screenD,
          Case1.screenM,
          Case1.screenN
        }.contains(state.useCase1)) ...[
          const MaterialPage<Object>(child: ScreenA()),
          if ({
            Case1.screenB,
            Case1.screenC,
            Case1.screenM,
            Case1.screenN,
          }.contains(state.useCase1))
            const MaterialPage<Object>(child: ScreenB()),
          if ({Case1.screenC, Case1.screenM, Case1.screenN}
              .contains(state.useCase1))
            const MaterialPage<Object>(child: ScreenC()),
          if ({Case1.screenM, Case1.screenN}.contains(state.useCase1))
            const MaterialPage<Object>(child: ScreenM()),
          if ({Case1.screenN}.contains(state.useCase1))
            const MaterialPage<Object>(child: ScreenN()),
          if ({Case1.screenD}.contains(state.useCase1))
            const MaterialPage<Object>(child: ScreenD()),
        ] else
          const MaterialPage<Object>(child: ScreenA()),

      //Use Case 2

      if (state.cases == Case.useCase2) ...[
        if (state.index == 2)
          MaterialPage<Object>(child: UseCase2(2))
        else if (state.index == 1) ...[
          MaterialPage<Object>(child: UseCase2(1)),
          if (state.usecase2 == Case2.a)
            const MaterialPage<Object>(child: SecondA()),
        ] else if (state.index == 0) ...[
          MaterialPage<Object>(child: UseCase2(0)),
          if (state.usecase2 == Case2.b)
            const MaterialPage<Object>(child: SecondB()),
        ]
      ],
      if (state.cases == Case.useCase3) ...[
        if (state.usecase3 == Case3.home)
          const MaterialPage<Object>(child: ScreenAC3())
        else if (state.usecase3 == Case3.lock)
          const MaterialPage<Object>(child: Lock()),
      ],

      if (state.cases == Case.useCase4) ...[
        const MaterialPage<Object>(child: UseCase4()),
      ],

      if (state.cases == Case.useCase5) ...[
        const MaterialPage<Object>(child: UseCase5()),
        if (state.usecas5 == Case5.next)
          const MaterialPage<Object>(child: Next()),
      ],

      if (state.cases == Case.useCase6) ...[
        const MaterialPage<Object>(child: UseCase6()),
        if (state.usecase6 == Case6.b)
          const MaterialPage<Object>(child: UseCase6B()),
      ]
    ];
  }
}

//||

enum Case { useCase1, useCase2, useCase3, useCase4, useCase5, useCase6, lock }

enum Case1 { screenA, screenB, screenC, screenD, screenM, screenN }
enum Case2 { a, b }
enum Case3 {
  home,
  lock,
}

enum Case5 {
  next,
}
enum Case6 {
  b,
}
enum HomeRoute { homePage }
