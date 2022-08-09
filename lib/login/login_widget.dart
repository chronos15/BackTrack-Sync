import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../main.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:local_auth/local_auth.dart';
import 'package:lottie/lottie.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget>
    with TickerProviderStateMixin {
  ApiCallResponse acessoTokken;
  bool biometria = false;
  TextEditingController emailAddressController;
  TextEditingController senhaController;
  bool senhaVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      duration: 600,
      delay: 170,
      hideBeforeAnimating: true,
      fadeIn: true,
      initialState: AnimationState(
        offset: Offset(90, 0),
        scale: 0,
        opacity: 0.06,
      ),
      finalState: AnimationState(
        offset: Offset(0, 0),
        scale: 1,
        opacity: 1,
      ),
    ),
  };

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await actions.lockOrientation();
    });

    emailAddressController = TextEditingController();
    senhaController = TextEditingController();
    senhaVisibility = false;
    startPageLoadAnimations(
      animationsMap.values
          .where((anim) => anim.trigger == AnimationTrigger.onPageLoad),
      this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Material(
          color: Colors.transparent,
          elevation: 0,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryBtnText,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/IMG_3973_Tratado_(4).png',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ).animated([animationsMap['imageOnPageLoadAnimation']]),
                    ],
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Material(
                      color: Colors.transparent,
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(0),
                          bottomRight: Radius.circular(0),
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.7,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).primaryBtnText,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                              spreadRadius: 2,
                            )
                          ],
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0),
                            bottomRight: Radius.circular(0),
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40),
                          ),
                        ),
                        child: Align(
                          alignment: AlignmentDirectional(1, 0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 20, 0, 20),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Lottie.asset(
                                      'assets/lottie_animations/92893-man-waiting-car.json',
                                      width: 200,
                                      height: 150,
                                      fit: BoxFit.scaleDown,
                                      reverse: true,
                                      animate: true,
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24, 0, 24, 24),
                                child: TextFormField(
                                  controller: emailAddressController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Endereço de email',
                                    hintText: 'Insira seu e-mail',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .backgroundComponents,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .backgroundComponents,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            24, 24, 24, 24),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                  keyboardType: TextInputType.emailAddress,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    24, 0, 24, 24),
                                child: TextFormField(
                                  controller: senhaController,
                                  obscureText: !senhaVisibility,
                                  decoration: InputDecoration(
                                    labelText: 'Senha',
                                    hintText: 'Insira sua senha',
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .backgroundComponents,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .backgroundComponents,
                                        width: 2,
                                      ),
                                      borderRadius: BorderRadius.circular(12),
                                    ),
                                    filled: true,
                                    fillColor: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            24, 24, 24, 24),
                                    suffixIcon: InkWell(
                                      onTap: () => setState(
                                        () =>
                                            senhaVisibility = !senhaVisibility,
                                      ),
                                      focusNode: FocusNode(skipTraversal: true),
                                      child: Icon(
                                        senhaVisibility
                                            ? Icons.visibility_outlined
                                            : Icons.visibility_off_outlined,
                                        color: Color(0xFF757575),
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF57636C),
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    0, 10, 25, 30),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Esqueceu sua senha?',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Poppins',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                                child: Material(
                                  color: Colors.transparent,
                                  elevation: 2,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.87,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        colors: [
                                          Color(0xFF5406B6),
                                          Color(0xFF1F55F8)
                                        ],
                                        stops: [0, 0.6],
                                        begin: AlignmentDirectional(-1, -0.34),
                                        end: AlignmentDirectional(1, 0.34),
                                      ),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                          child: FFButtonWidget(
                                            onPressed: () async {
                                              var _shouldSetState = false;
                                              acessoTokken =
                                                  await LoginCall.call(
                                                email:
                                                    emailAddressController.text,
                                                password: senhaController.text,
                                              );
                                              _shouldSetState = true;
                                              if ((acessoTokken?.statusCode ??
                                                      200) ==
                                                  200) {
                                                setState(() =>
                                                    FFAppState().acessToken =
                                                        getJsonField(
                                                      (acessoTokken?.jsonBody ??
                                                          ''),
                                                      r'''$.access_token''',
                                                    ).toString());
                                                setState(() =>
                                                    FFAppState().accessTokenJs =
                                                        getJsonField(
                                                      (acessoTokken?.jsonBody ??
                                                          ''),
                                                      r'''$.access_token''',
                                                    ));
                                                final local_auth =
                                                    LocalAuthentication();
                                                bool _isBiometricSupported =
                                                    await local_auth
                                                        .isDeviceSupported();

                                                if (_isBiometricSupported) {
                                                  biometria = await local_auth
                                                      .authenticate(
                                                          localizedReason:
                                                              'Por favor, insira sua biometria para acesso ao app.');
                                                  setState(() {});
                                                }

                                                _shouldSetState = true;
                                                if (biometria == true) {
                                                  ScaffoldMessenger.of(context)
                                                      .showSnackBar(
                                                    SnackBar(
                                                      content: Text(
                                                        'Login realizado com sucesso!',
                                                        style: TextStyle(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                        ),
                                                      ),
                                                      duration: Duration(
                                                          milliseconds: 4000),
                                                      backgroundColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBtnText,
                                                    ),
                                                  );
                                                  await Navigator
                                                      .pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          NavBarPage(
                                                              initialPage:
                                                                  'HomePage'),
                                                    ),
                                                    (r) => false,
                                                  );
                                                  if (_shouldSetState)
                                                    setState(() {});
                                                  return;
                                                } else {
                                                  if (_shouldSetState)
                                                    setState(() {});
                                                  return;
                                                }
                                              } else {
                                                ScaffoldMessenger.of(context)
                                                    .showSnackBar(
                                                  SnackBar(
                                                    content: Text(
                                                      'Acesso não autorizado. Verifique suas credenciais!',
                                                      style: TextStyle(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                      ),
                                                    ),
                                                    duration: Duration(
                                                        milliseconds: 4000),
                                                    backgroundColor:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primaryBtnText,
                                                  ),
                                                );
                                                if (_shouldSetState)
                                                  setState(() {});
                                                return;
                                              }

                                              if (_shouldSetState)
                                                setState(() {});
                                            },
                                            text: 'ENTRAR',
                                            options: FFButtonOptions(
                                              width: double.infinity,
                                              height: double.infinity,
                                              color: Colors.transparent,
                                              textStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                              borderSide: BorderSide(
                                                color: Colors.transparent,
                                              ),
                                              borderRadius:
                                                  BorderRadius.circular(8),
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
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
