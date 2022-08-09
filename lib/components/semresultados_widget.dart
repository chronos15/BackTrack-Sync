import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class SemresultadosWidget extends StatefulWidget {
  const SemresultadosWidget({Key key}) : super(key: key);

  @override
  _SemresultadosWidgetState createState() => _SemresultadosWidgetState();
}

class _SemresultadosWidgetState extends State<SemresultadosWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBtnText,
          borderRadius: BorderRadius.circular(0),
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 8),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
                      child: Icon(
                        Icons.restore_page,
                        color: Color(0xFF57636C),
                        size: 32,
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Sem resultados...',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF57636C),
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        await actions.restartApp();
                      },
                      text: 'Reiniciar',
                      options: FFButtonOptions(
                        width: 140,
                        height: 40,
                        color: FlutterFlowTheme.of(context).customColor3,
                        textStyle: FlutterFlowTheme.of(context)
                            .subtitle2
                            .override(
                              fontFamily: 'Lexend Deca',
                              color: FlutterFlowTheme.of(context).customColor5,
                              fontSize: 16,
                              fontWeight: FontWeight.normal,
                            ),
                        elevation: 0,
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
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
    );
  }
}
