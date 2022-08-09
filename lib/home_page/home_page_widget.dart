import '../components/semresultados_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../login/login_widget.dart';
import '../main.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  PageController pageViewController1;
  PageController pageViewController2;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 50,
          icon: FaIcon(
            FontAwesomeIcons.stream,
            color: FlutterFlowTheme.of(context).primaryColor,
            size: 20,
          ),
          onPressed: () async {
            scaffoldKey.currentState.openDrawer();
          },
        ),
        title: Text(
          'Inicio',
          style: GoogleFonts.getFont(
            'Poppins',
            color: Color(0xFF848484),
            fontSize: 14,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
            child: Badge(
              badgeContent: Text(
                '1',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      color: Colors.white,
                    ),
              ),
              showBadge: true,
              shape: BadgeShape.circle,
              badgeColor: Color(0xFFFF0507),
              elevation: 2,
              padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
              position: BadgePosition.topEnd(),
              animationType: BadgeAnimationType.scale,
              toAnimate: true,
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 25,
                borderWidth: 1,
                buttonSize: 50,
                icon: Icon(
                  Icons.notifications_rounded,
                  color: FlutterFlowTheme.of(context).customColor3,
                  size: 25,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
              ),
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      drawer: Container(
        width: MediaQuery.of(context).size.width,
        child: Drawer(
          elevation: 16,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF005BFF), Color(0xFF3000A0)],
                stops: [0, 1],
                begin: AlignmentDirectional(0, -1),
                end: AlignmentDirectional(0, 1),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 60,
                        icon: Icon(
                          Icons.close_rounded,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () async {
                          if (scaffoldKey.currentState.isDrawerOpen ||
                              scaffoldKey.currentState.isEndDrawerOpen) {
                            Navigator.pop(context);
                          }
                        },
                      ),
                    ],
                  ),
                ),
                InkWell(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            NavBarPage(initialPage: 'Rastrear'),
                      ),
                    );
                  },
                  child: ListTile(
                    leading: FaIcon(
                      FontAwesomeIcons.mapMarked,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Rastrear',
                      style: FlutterFlowTheme.of(context).title3.override(
                            fontFamily: 'Poppins',
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                    tileColor: Color(0xFFF5F5F5),
                    dense: false,
                    contentPadding:
                        EdgeInsetsDirectional.fromSTEB(20, 5, 20, 5),
                  ),
                ),
                Divider(
                  height: 2,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                  color: Color(0x574B39EF),
                ),
                Expanded(
                  child: Align(
                    alignment: AlignmentDirectional(0, 1),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 80),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: ListTile(
                                leading: Icon(
                                  Icons.notifications_none_rounded,
                                  color: Colors.white,
                                ),
                                title: Text(
                                  'Notificações',
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                                tileColor: Color(0xFFF5F5F5),
                                dense: false,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    20, 5, 20, 5),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: ListTile(
                                leading: Icon(
                                  Icons.person_outline_rounded,
                                  color: Colors.white,
                                ),
                                title: Text(
                                  'Meu perfil',
                                  style: FlutterFlowTheme.of(context)
                                      .title3
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                      ),
                                ),
                                tileColor: Color(0xFFF5F5F5),
                                dense: false,
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    20, 5, 20, 5),
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                              child: InkWell(
                                onTap: () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginWidget(),
                                    ),
                                  );
                                },
                                child: ListTile(
                                  leading: Icon(
                                    Icons.logout,
                                    color: Colors.white,
                                  ),
                                  title: Text(
                                    'Sair',
                                    style: FlutterFlowTheme.of(context)
                                        .title3
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Colors.white,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w300,
                                        ),
                                  ),
                                  tileColor: Color(0xFFF5F5F5),
                                  dense: false,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20, 5, 20, 5),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                        child: Text(
                          'Olá, seu token de acesso:',
                          style: FlutterFlowTheme.of(context)
                              .subtitle1
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ),
                      AutoSizeText(
                        FFAppState().acessToken.maybeHandleOverflow(
                              maxChars: 30,
                              replacement: '…',
                            ),
                        style: FlutterFlowTheme.of(context).subtitle1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context).customColor3,
                              fontSize: 12,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 0, 5, 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Container(
                        width: double.infinity,
                        height: 120,
                        child: Stack(
                          children: [
                            PageView(
                              controller: pageViewController1 ??=
                                  PageController(initialPage: 0),
                              scrollDirection: Axis.horizontal,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/cover-photo%2Cbackground%2C-technology-design-template-bc18536076e97b440357165f6579fa78_screen.jpg?ts=1593444669',
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 1),
                              child: Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                                child: SmoothPageIndicator(
                                  controller: pageViewController1 ??=
                                      PageController(initialPage: 0),
                                  count: 1,
                                  axisDirection: Axis.horizontal,
                                  onDotClicked: (i) {
                                    pageViewController1.animateToPage(
                                      i,
                                      duration: Duration(milliseconds: 500),
                                      curve: Curves.ease,
                                    );
                                  },
                                  effect: ExpandingDotsEffect(
                                    expansionFactor: 5,
                                    spacing: 8,
                                    radius: 16,
                                    dotWidth: 8,
                                    dotHeight: 7,
                                    dotColor: Color(0xFF989898),
                                    activeDotColor: FlutterFlowTheme.of(context)
                                        .customColor3,
                                    paintStyle: PaintingStyle.fill,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 2,
              thickness: 2,
              indent: 20,
              endIndent: 20,
              color: Color(0x5C95A1AC),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(20, 20, 20, 20),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 5),
                        child: Text(
                          'Favoritos',
                          style: FlutterFlowTheme.of(context)
                              .subtitle1
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: Builder(
                builder: (context) {
                  final favoritos = FFAppState()
                      .favoritos
                      .map((e) => getJsonField(
                            e,
                            r'''$''',
                          ))
                      .toList();
                  if (favoritos.isEmpty) {
                    return Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 200,
                        child: SemresultadosWidget(),
                      ),
                    );
                  }
                  return Container(
                    width: double.infinity,
                    child: Stack(
                      children: [
                        PageView.builder(
                          controller: pageViewController2 ??= PageController(
                              initialPage: min(0, favoritos.length - 1)),
                          scrollDirection: Axis.horizontal,
                          itemCount: favoritos.length,
                          itemBuilder: (context, favoritosIndex) {
                            final favoritosItem = favoritos[favoritosIndex];
                            return Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(15, 15, 15, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Card(
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    elevation: 2,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.23,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                FlutterFlowTheme.of(context)
                                                    .customColor4,
                                                Color(0xFF121212)
                                              ],
                                              stops: [0, 1],
                                              begin:
                                                  AlignmentDirectional(0, -1),
                                              end: AlignmentDirectional(0, 1),
                                            ),
                                            borderRadius: BorderRadius.only(
                                              bottomLeft: Radius.circular(0),
                                              bottomRight: Radius.circular(0),
                                              topLeft: Radius.circular(10),
                                              topRight: Radius.circular(10),
                                            ),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 20, 0, 0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    AutoSizeText(
                                                      getJsonField(
                                                        favoritosItem,
                                                        r'''$..id''',
                                                      ).toString(),
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyText1
                                                          .override(
                                                            fontFamily:
                                                                'Poppins',
                                                            color: Colors.white,
                                                            fontSize: 12,
                                                            fontWeight:
                                                                FontWeight
                                                                    .normal,
                                                          ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  AutoSizeText(
                                                    getJsonField(
                                                      favoritosItem,
                                                      r'''$..descricao''',
                                                    ).toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          color: Colors.white,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(20, 0, 20, 10),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Hero(
                                                      tag: 'imgexpanddetalhes',
                                                      transitionOnUserGestures:
                                                          true,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        child: Image.asset(
                                                          'assets/images/istockphoto-1154721667-170667a.jpg',
                                                          width: 70,
                                                          height: 70,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          1, 1),
                                                  child: Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      Container(
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            0.9,
                                                        height: 50,
                                                        decoration:
                                                            BoxDecoration(
                                                          color:
                                                              Color(0x0FEEEEEE),
                                                        ),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: [
                                                            Text(
                                                              'Expandir',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: Color(
                                                                        0xC4FFFFFF),
                                                                    fontSize:
                                                                        12,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Card(
                                              clipBehavior:
                                                  Clip.antiAliasWithSaveLayer,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBtnText,
                                              elevation: 0,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  InkWell(
                                                    onTap: () async {
                                                      await actions
                                                          .restartApp();
                                                    },
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                      elevation: 0,
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 0,
                                                        child: Container(
                                                          width: 90,
                                                          height: 90,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              FaIcon(
                                                                FontAwesomeIcons
                                                                    .ellipsisH,
                                                                color: Color(
                                                                    0xFF848484),
                                                                size: 20,
                                                              ),
                                                              Text(
                                                                'Detalhes',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Color(
                                                                          0xFF848484),
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () async {
                                                      setState(() => FFAppState()
                                                          .removeFromFavoritos(
                                                              favoritosItem));
                                                    },
                                                    child: Card(
                                                      clipBehavior: Clip
                                                          .antiAliasWithSaveLayer,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                      elevation: 0,
                                                      child: Material(
                                                        color:
                                                            Colors.transparent,
                                                        elevation: 0,
                                                        child: Container(
                                                          width: 90,
                                                          height: 90,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryBtnText,
                                                          ),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            children: [
                                                              Icon(
                                                                Icons
                                                                    .cancel_rounded,
                                                                color: Color(
                                                                    0xFF848484),
                                                                size: 25,
                                                              ),
                                                              Text(
                                                                'Remover',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyText1
                                                                    .override(
                                                                      fontFamily:
                                                                          'Poppins',
                                                                      color: Color(
                                                                          0xFF848484),
                                                                      fontSize:
                                                                          12,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Card(
                                                    clipBehavior: Clip
                                                        .antiAliasWithSaveLayer,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryBtnText,
                                                    elevation: 0,
                                                    child: Container(
                                                      width: 90,
                                                      height: 90,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryBtnText,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          Icon(
                                                            Icons
                                                                .local_car_wash_rounded,
                                                            color: Color(
                                                                0xFF848484),
                                                            size: 25,
                                                          ),
                                                          Text(
                                                            'Localizar',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyText1
                                                                .override(
                                                                  fontFamily:
                                                                      'Poppins',
                                                                  color: Color(
                                                                      0xFF848484),
                                                                  fontSize: 12,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .normal,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        Align(
                          alignment: AlignmentDirectional(0, 0.9),
                          child: SmoothPageIndicator(
                            controller: pageViewController2 ??= PageController(
                                initialPage: min(0, favoritos.length - 1)),
                            count: favoritos.length,
                            axisDirection: Axis.horizontal,
                            onDotClicked: (i) {
                              pageViewController2.animateToPage(
                                i,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease,
                              );
                            },
                            effect: ExpandingDotsEffect(
                              expansionFactor: 1.5,
                              spacing: 4,
                              radius: 10,
                              dotWidth: 25,
                              dotHeight: 5,
                              dotColor: Color(0xFF9E9E9E),
                              activeDotColor:
                                  FlutterFlowTheme.of(context).customColor3,
                              paintStyle: PaintingStyle.fill,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
