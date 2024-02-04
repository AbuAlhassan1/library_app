// import 'package:flutter/material.dart';
// import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

// class LocationPicker extends StatelessWidget {
//   LocationPicker({super.key});

//   final MapController  controller = MapController(initPosition: GeoPoint(latitude: 33.312805, longitude: 44.361488));

//   @override
//   Widget build(BuildContext context) {
//     return OSMFlutter( 
//       controller: controller,
//       osmOption: OSMOption(
//         userTrackingOption: const UserTrackingOption(
//         enableTracking: true,
//         unFollowUser: false,
//       ),
//       zoomOption: const ZoomOption(
//         initZoom: 8,
//         minZoomLevel: 3,
//         maxZoomLevel: 19,
//         stepZoom: 1.0,
//       ),
//       userLocationMarker: UserLocationMaker(
//         personMarker: const MarkerIcon(
//           icon: Icon(
//             Icons.location_history_rounded,
//             color: Colors.red,
//             size: 48,
//           ),
//         ),
//           directionArrowMarker: const MarkerIcon(
//             icon: Icon(
//               Icons.double_arrow,
//               size: 48,
//             ),
//           ),
//         ),
//         roadConfiguration: const RoadOption(
//           roadColor: Colors.yellowAccent,
//         ),
//         markerOption: MarkerOption(
//           defaultMarker: const MarkerIcon(
//             icon: Icon(
//               Icons.person_pin_circle,
//               color: Colors.blue,
//               size: 56,
//             ),
//           )
//         ),
//       )
//     );
//     // return FlutterMap(
//     //   mapController: controller,
//     //   options: MapOptions(
//     //     center: LatLng(33.312805, 44.361488),
//     //     zoom: 13,
//     //     maxZoom: 18,
//     //     minZoom: 10,
//     //   ),
//     //   children: [
//     //     TileLayer(urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png'),
//     //     PolylineLayer(
//     //       polylines: [
//     //         Polyline(
//     //           points: [],
//     //           color: Colors.blue.withOpacity(0.6),
//     //           strokeWidth: 15.w
//     //         )
//     //       ],
//     //     ),
//     //     MarkerLayer(
//     //       markers: [
//     //         Marker(
//     //           width: 300.0.w,
//     //           height: 240.0.w,
//     //           rotate: true,
//     //           point: LatLng(0, 0),
//     //           builder: (ctx) => const Icon(TablerIcons.map_pin)
//     //         )
//     //       ]
//     //     )
//     //   ],
//     // );
//   }
// }