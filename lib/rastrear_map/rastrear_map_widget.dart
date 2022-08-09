import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_google_map.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/lat_lng.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class RastrearMapWidget extends StatefulWidget {
  const RastrearMapWidget({
    Key key,
    this.localizacao,
    this.recebeJson,
  }) : super(key: key);

  final LatLng localizacao;
  final dynamic recebeJson;

  @override
  _RastrearMapWidgetState createState() => _RastrearMapWidgetState();
}

class _RastrearMapWidgetState extends State<RastrearMapWidget> {
  Completer<ApiCallResponse> _apiRequestCompleter;
  final scaffoldKey = GlobalKey<ScaffoldState>();
  LatLng googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() => _apiRequestCompleter = null);
      await waitForApiRequestCompleter(minWait: 1, maxWait: 2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ApiCallResponse>(
      future: (_apiRequestCompleter ??= Completer<ApiCallResponse>()
            ..complete(ProductsCall.call(
              accessToken: FFAppState().acessToken,
            )))
          .future,
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 40,
              height: 40,
              child: SpinKitCubeGrid(
                color: FlutterFlowTheme.of(context).primaryColor,
                size: 40,
              ),
            ),
          );
        }
        final rastrearMapProductsResponse = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          resizeToAvoidBottomInset: false,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100),
            child: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryColor,
              automaticallyImplyLeading: false,
              flexibleSpace: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 14),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                            child: FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 30,
                              borderWidth: 1,
                              buttonSize: 40,
                              icon: Icon(
                                Icons.chevron_left_rounded,
                                color: Colors.white,
                                size: 25,
                              ),
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                            child: Text(
                              getJsonField(
                                widget.recebeJson,
                                r'''$..id''',
                              ).toString(),
                              style: GoogleFonts.getFont(
                                'Poppins',
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ),
                          if (FFAppState().favoritos.contains(
                                  rastrearMapProductsResponse.jsonBody) !=
                              rastrearMapProductsResponse.jsonBody)
                            Expanded(
                              child: Align(
                                alignment: AlignmentDirectional(1, 0),
                                child: ToggleIcon(
                                  onPressed: () async {
                                    setState(
                                      () => FFAppState()
                                              .favoritos
                                              .contains(getJsonField(
                                                widget.recebeJson,
                                                r'''$''',
                                              ))
                                          ? FFAppState()
                                              .favoritos
                                              .remove(getJsonField(
                                                widget.recebeJson,
                                                r'''$''',
                                              ))
                                          : FFAppState()
                                              .favoritos
                                              .add(getJsonField(
                                                widget.recebeJson,
                                                r'''$''',
                                              )),
                                    );
                                  },
                                  value: FFAppState()
                                      .favoritos
                                      .contains(getJsonField(
                                        widget.recebeJson,
                                        r'''$''',
                                      )),
                                  onIcon: Icon(
                                    Icons.favorite_rounded,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                  offIcon: Icon(
                                    Icons.favorite_border_rounded,
                                    color: Colors.white,
                                    size: 25,
                                  ),
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                      child: Text(
                        'Rastreio',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              actions: [],
              elevation: 0,
            ),
          ),
          backgroundColor: FlutterFlowTheme.of(context).primaryBtnText,
          body: GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: FlutterFlowGoogleMap(
                    controller: googleMapsController,
                    onCameraIdle: (latLng) =>
                        setState(() => googleMapsCenter = latLng),
                    initialLocation: googleMapsCenter ??= widget.localizacao,
                    markerColor: GoogleMarkerColor.blue,
                    mapType: MapType.normal,
                    style: GoogleMapStyle.silver,
                    initialZoom: 14,
                    allowInteraction: true,
                    allowZoom: true,
                    showZoomControls: true,
                    showLocation: true,
                    showCompass: false,
                    showMapToolbar: true,
                    showTraffic: false,
                    centerMapOnMarkerTap: true,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Future waitForApiRequestCompleter({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = _apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
