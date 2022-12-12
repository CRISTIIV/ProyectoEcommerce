import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/amenitity_indicator_widget.dart';
import '../edit_property3/edit_property3_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProperty2Widget extends StatefulWidget {
  const EditProperty2Widget({
    Key? key,
    this.productRef,
    this.productAmenities,
  }) : super(key: key);

  final DocumentReference? productRef;
  final DocumentReference? productAmenities;

  @override
  _EditProperty2WidgetState createState() => _EditProperty2WidgetState();
}

class _EditProperty2WidgetState extends State<EditProperty2Widget> {
  bool? amenityACValue;
  bool? amenityEVChargingValue;
  bool? amenityPoolValue1;
  bool? amenityExtraOutletsValue;
  bool? amenityHeatingValue;
  bool? amenityWasherValue;
  bool? amenityDryerValue;
  bool? amenityPetsValue;
  bool? amenityWorkoutValue;
  bool? amenityPoolValue2;
  bool? amenityPoolValue3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          buttonSize: 46,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFF95A1AC),
            size: 24,
          ),
          onPressed: () async {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'Editar producto',
          style: FlutterFlowTheme.of(context).title3,
        ),
        actions: [],
        centerTitle: false,
        elevation: 0,
      ),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/Fondo_MAX.png',
              ).image,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(16, 0, 16, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'CAMBIA LA(S) CATEGORIA(S)',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Urbanist',
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                children: [
                                  if (!amenityPoolValue1!)
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: AmenitityIndicatorWidget(
                                        icon: Icon(
                                          Icons.pool_rounded,
                                          color: FlutterFlowTheme.of(context)
                                              .gray600,
                                        ),
                                        background: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .lineGray,
                                      ),
                                    ),
                                ],
                              ),
                              Expanded(
                                child: SwitchListTile.adaptive(
                                  value: amenityPoolValue1 ??= false,
                                  onChanged: (newValue) async {
                                    setState(
                                        () => amenityPoolValue1 = newValue!);
                                  },
                                  title: Text(
                                    'Piscina',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  activeTrackColor: Color(0xFF392BBA),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 8, 0, 8),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.ev_station_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: SwitchListTile.adaptive(
                                  value: amenityEVChargingValue ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        amenityEVChargingValue = newValue!);
                                  },
                                  title: Text(
                                    'Accesorios vehículo',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  activeTrackColor: Color(0xFF392BBA),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 8, 0, 8),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.power_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: SwitchListTile.adaptive(
                                  value: amenityExtraOutletsValue ??= false,
                                  onChanged: (newValue) async {
                                    setState(() =>
                                        amenityExtraOutletsValue = newValue!);
                                  },
                                  title: Text(
                                    'Electronica',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  activeTrackColor: Color(0xFF392BBA),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 8, 0, 8),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.ac_unit_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: SwitchListTile.adaptive(
                                  value: amenityACValue ??= false,
                                  onChanged: (newValue) async {
                                    setState(() => amenityACValue = newValue!);
                                  },
                                  title: Text(
                                    'Aire acondicionado',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  activeTrackColor: Color(0xFF392BBA),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 8, 0, 8),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.wb_sunny_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: SwitchListTile.adaptive(
                                  value: amenityHeatingValue ??= false,
                                  onChanged: (newValue) async {
                                    setState(
                                        () => amenityHeatingValue = newValue!);
                                  },
                                  title: Text(
                                    'Calentamiento',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  activeTrackColor: Color(0xFF392BBA),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 8, 0, 8),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.local_laundry_service_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: SwitchListTile.adaptive(
                                  value: amenityWasherValue ??= false,
                                  onChanged: (newValue) async {
                                    setState(
                                        () => amenityWasherValue = newValue!);
                                  },
                                  title: Text(
                                    'Accesorios de lavado',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  activeTrackColor: Color(0xFF392BBA),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 8, 0, 8),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.local_laundry_service_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: SwitchListTile.adaptive(
                                  value: amenityDryerValue ??= false,
                                  onChanged: (newValue) async {
                                    setState(
                                        () => amenityDryerValue = newValue!);
                                  },
                                  title: Text(
                                    'Accesorios de limpieza',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  activeTrackColor: Color(0xFF392BBA),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 8, 0, 8),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.pets_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: SwitchListTile.adaptive(
                                  value: amenityPetsValue ??= false,
                                  onChanged: (newValue) async {
                                    setState(
                                        () => amenityPetsValue = newValue!);
                                  },
                                  title: Text(
                                    'Comida de mascotas',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  activeTrackColor: Color(0xFF392BBA),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 8, 0, 8),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.fitness_center_rounded,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: SwitchListTile.adaptive(
                                  value: amenityWorkoutValue ??= false,
                                  onChanged: (newValue) async {
                                    setState(
                                        () => amenityWorkoutValue = newValue!);
                                  },
                                  title: Text(
                                    'Equipamiento de entrenamiento',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  activeTrackColor: Color(0xFF392BBA),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 8, 0, 8),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Stack(
                                children: [
                                  Align(
                                    alignment: AlignmentDirectional(0, 0),
                                    child: AmenitityIndicatorWidget(
                                      icon: Icon(
                                        Icons.theater_comedy,
                                        color: FlutterFlowTheme.of(context)
                                            .gray600,
                                      ),
                                      background: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      borderColor:
                                          FlutterFlowTheme.of(context).lineGray,
                                    ),
                                  ),
                                ],
                              ),
                              Expanded(
                                child: SwitchListTile.adaptive(
                                  value: amenityPoolValue2 ??= false,
                                  onChanged: (newValue) async {
                                    setState(
                                        () => amenityPoolValue2 = newValue!);
                                  },
                                  title: Text(
                                    'Entretenimiento',
                                    style:
                                        FlutterFlowTheme.of(context).subtitle1,
                                  ),
                                  tileColor: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  activeColor:
                                      FlutterFlowTheme.of(context).primaryColor,
                                  activeTrackColor: Color(0xFF392BBA),
                                  dense: false,
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          16, 8, 0, 8),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Stack(
                                  children: [
                                    Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: AmenitityIndicatorWidget(
                                        icon: Icon(
                                          Icons.nightlife,
                                          color: FlutterFlowTheme.of(context)
                                              .gray600,
                                        ),
                                        background: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderColor:
                                            FlutterFlowTheme.of(context)
                                                .lineGray,
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: SwitchListTile.adaptive(
                                    value: amenityPoolValue3 ??= false,
                                    onChanged: (newValue) async {
                                      setState(
                                          () => amenityPoolValue3 = newValue!);
                                    },
                                    title: Text(
                                      'Bebestibles & Tragos',
                                      style: FlutterFlowTheme.of(context)
                                          .subtitle1,
                                    ),
                                    tileColor: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    activeColor: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    activeTrackColor: Color(0xFF392BBA),
                                    dense: false,
                                    controlAffinity:
                                        ListTileControlAffinity.trailing,
                                    contentPadding:
                                        EdgeInsetsDirectional.fromSTEB(
                                            16, 8, 0, 8),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24, 12, 24, 12),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'PASO',
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                          Text(
                            '2/3',
                            style: FlutterFlowTheme.of(context).title2,
                          ),
                        ],
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          final amenititiesUpdateData =
                              createAmenititiesRecordData(
                            ac: amenityACValue,
                            heater: amenityHeatingValue,
                            pool: amenityPoolValue1,
                            dogFriendly: amenityPetsValue,
                            washer: amenityWasherValue,
                            dryer: amenityDryerValue,
                            workout: amenityWorkoutValue,
                            hip: amenityPoolValue2,
                            nightLife: amenityPoolValue3,
                            extraOutlets: amenityExtraOutletsValue,
                            evCharger: amenityEVChargingValue,
                          );
                          await widget.productAmenities!
                              .update(amenititiesUpdateData);
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => EditProperty3Widget(
                                productRef: widget.productRef,
                              ),
                            ),
                          );
                        },
                        text: 'SIGUIENTE',
                        options: FFButtonOptions(
                          width: 120,
                          height: 50,
                          color: FlutterFlowTheme.of(context).primaryColor,
                          textStyle:
                              FlutterFlowTheme.of(context).subtitle2.override(
                                    fontFamily: 'Urbanist',
                                    color: Colors.white,
                                  ),
                          elevation: 2,
                          borderSide: BorderSide(
                            color: Colors.transparent,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(60),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
