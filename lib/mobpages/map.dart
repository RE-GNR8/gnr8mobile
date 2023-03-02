/* import 'dart:convert';

import 'dart:typed_data';
import 'package:firebase_database/firebase_database.dart'; */

import 'package:flutter/services.dart';
//import 'package:flutter_geofire/flutter_geofire.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:custom_info_window/custom_info_window.dart';

import 'package:location/location.dart';
import 'package:flutter/material.dart';

//import '../services/services.dart';
import '../utils/utils.dart';

//const double zoom = 20.5;
const double zoom = 13.5;
const double tilt = 50;
const double bearing = 30;
const LatLng sourceLoc = LatLng(20.914157, -100.743801);

class MapPage extends StatefulWidget {
  const MapPage({Key? key}) : super(key: key);

  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  ///
  /// Variables and Services
  ///
  //final DBService _db = DBService();
  String pathToReference = "smaVerse";
  String pathToStorage = "smaClaims";
  bool _claimsLoaded = false;
  Location location = Location();
  late BitmapDescriptor claimMarker;
  late GoogleMapController mapController;
  final CustomInfoWindowController _customInfoWindowController =
      CustomInfoWindowController();
  Map<MarkerId, Marker> markers = <MarkerId, Marker>{};
  List<String> keysRetrieved = [];

  ///
  /// Code that runs once
  ///

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      bool isIOS = Theme.of(context).platform == TargetPlatform.iOS;
      if (isIOS) {
        BitmapDescriptor.fromAssetImage(
                const ImageConfiguration(size: Size(40, 40)),
                'assets/images/marker.png')
            .then((onValue) {
          claimMarker = onValue;
        });
      } else {
        BitmapDescriptor.fromAssetImage(
                const ImageConfiguration(size: Size(40, 40)),
                'assets/images/claims.png')
            .then((onValue) {
          claimMarker = onValue;
        });
      }
      bool serviceEnabled;
      PermissionStatus permissionGranted;
      //LocationData _locationData;

      serviceEnabled = await location.serviceEnabled();
      if (!serviceEnabled) {
        serviceEnabled = await location.requestService();
        if (!serviceEnabled) {
          return;
        }
      }

      permissionGranted = await location.hasPermission();
      if (permissionGranted == PermissionStatus.denied) {
        permissionGranted = await location.requestPermission();
        if (permissionGranted != PermissionStatus.granted) {
          return;
        }
      }

      //_locationData = await location.getLocation();
    });
    super.initState();
    initPlatformState();
  }

  ///
  /// Clean Up
  ///
  /*  @override
  void dispose() {
    Geofire.stopListener();
    super.dispose();
  } */

  ///
  /// Methods and Functions
  ///

  /* void _getClaim(String key, double lat, double lng) async {
    var result = await _db.getClaimColl(key);
    var data = result.snapshot.value;
    String name = data["name"];
    CollClaim claim = CollClaim(
        name: name,
        logo: data["logo"],
        slug: data["slug"],
        lat: lat,
        lng: lng,
        year: data["year"] ?? "",
        category: data["category"] ?? "");
    markers[MarkerId(key)] = _buildMarker(claim, key);
  } */

  void _onMapCreated(GoogleMapController controller, BuildContext context) {
    mapController = controller;
    mapController.setMapStyle(Styles.mapStyle);
  }

  /* Marker _buildMarker(CollClaim claim, String key) {
    LatLng latlng = LatLng(claim.lat, claim.lng);
    return Marker(
        markerId: MarkerId(
          key,
        ),
        position: latlng,
        icon: claimMarker,
        onTap: () {
          _customInfoWindowController.addInfoWindow!(
              Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 3),
                        color: Colors.green[900],
                        borderRadius: BorderRadius.circular(4),
                      ),
                      width: double.infinity,
                      height: double.infinity,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: () {
                            /* Utils.gotoPage(
                                CollectionInfoPage(
                                  slug: _claim.slug,
                                ),
                                context); */
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CircleAvatar(
                                radius: 20,
                                backgroundImage: NetworkImage(claim.logo),
                              ),
                              const Spacer(),
                              Text(
                                claim.name,
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const Spacer(),
                              Column(
                                children: [
                                  Text(
                                    claim.category,
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Text(
                                    claim.year,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  /*  Triangle.isosceles(
                    edge: Edge.BOTTOM,
                    child: Container(
                      color: Colors.white,
                      width: 20.0,
                      height: 10.0,
                    ),
                  ), */
                ],
              ),
              latlng);
        });
  } */

  Future<void> initPlatformState() async {
    try {
      LocationData loc = await location.getLocation();
    } on PlatformException {
//      response = 'Failed to get platform version.';
    }
    if (!mounted) return;
  }

  ///
  ///
  /// Root Widget
  ///
  ///

  @override
  Widget build(BuildContext context) {
    CameraPosition cameraPosition = const CameraPosition(
      bearing: bearing,
      tilt: tilt,
      target: sourceLoc,
      zoom: zoom,
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text("Dragon's Guild Lair"),
      ),
      body: StreamBuilder<LocationData>(
        stream: location.onLocationChanged,
        builder: (context, snapshot) {
          if (snapshot.hasData && _claimsLoaded) {
            LocationData loc = snapshot.data!;
            mapController.animateCamera(
              CameraUpdate.newCameraPosition(
                CameraPosition(
                  target: LatLng(
                    loc.latitude!,
                    loc.longitude!,
                  ),
                  zoom: 19,
                  bearing: loc.heading!,
                  tilt: tilt,
                ),
              ),
            );
          }
          return Stack(
            children: [
              GoogleMap(
                mapType: MapType.normal,
                compassEnabled: false,
                mapToolbarEnabled: false,
                buildingsEnabled: false,
                myLocationEnabled: true,
                scrollGesturesEnabled: false,
                zoomGesturesEnabled: false,
                zoomControlsEnabled: false,
                myLocationButtonEnabled: false,
                initialCameraPosition: cameraPosition,
                onMapCreated: (GoogleMapController controller) {
                  _customInfoWindowController.googleMapController = controller;
                  _onMapCreated(controller, context);
                },
                onTap: (p) {
                  _customInfoWindowController.hideInfoWindow!();
                  //_handleTap(p);
                },
                onCameraMove: (position) {
                  _customInfoWindowController.onCameraMove!();
                },
                markers: Set<Marker>.of(markers.values),
              ),
              CustomInfoWindow(
                controller: _customInfoWindowController,
                height: 75,
                width: 350,
                offset: 50,
              ),
            ],
          );
        },
      ),
    );
  }
}
