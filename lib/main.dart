import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterFlowTheme.initialize();

  FFAppState(); // Initialize FFAppState

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  bool displaySplashImage = true;

  @override
  void initState() {
    super.initState();

    Future.delayed(
        Duration(seconds: 1), () => setState(() => displaySplashImage = false));
  }

  void setLocale(Locale value) => setState(() => _locale = value);
  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'backtrack',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: _themeMode,
      home: displaySplashImage
          ? Container(
              color: FlutterFlowTheme.of(context).customColor1,
              child: Center(
                child: Builder(
                  builder: (context) => Image.asset(
                    'assets/images/IMG_3973_Tratado_(4).png',
                    width: 400,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            )
          : LoginWidget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'HomePage';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'HomePage': HomePageWidget(),
      'Rastrear': RastrearWidget(),
      'Clientes': ClientesWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPage);
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: GNav(
        selectedIndex: currentIndex,
        onTabChange: (i) =>
            setState(() => _currentPage = tabs.keys.toList()[i]),
        backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
        color: Color(0xFF838383),
        activeColor: FlutterFlowTheme.of(context).primaryColor,
        tabBackgroundColor: Color(0x00000000),
        tabActiveBorder: Border.all(
          color: Color(0x574B39EF),
          width: 0.9,
        ),
        tabBorderRadius: 10,
        tabMargin: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
        padding: EdgeInsetsDirectional.fromSTEB(20, 15, 10, 15),
        gap: 10,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        duration: Duration(milliseconds: 500),
        haptic: true,
        tabs: [
          GButton(
            icon: FontAwesomeIcons.home,
            text: 'Inicio',
            textStyle: GoogleFonts.getFont(
              'Poppins',
              color: FlutterFlowTheme.of(context).customColor1,
            ),
            iconSize: 20,
          ),
          GButton(
            icon: FontAwesomeIcons.mapMarkerAlt,
            text: 'Rastrear',
            textStyle: GoogleFonts.getFont(
              'Poppins',
              color: FlutterFlowTheme.of(context).customColor1,
            ),
            iconSize: 25,
          ),
          GButton(
            icon: Icons.people_alt_sharp,
            text: 'Clientes',
            textStyle: GoogleFonts.getFont(
              'Poppins',
              color: FlutterFlowTheme.of(context).customColor1,
            ),
            iconSize: 25,
          )
        ],
      ),
    );
  }
}
