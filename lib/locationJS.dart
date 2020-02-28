@JS('navigator.geolocation')
library jslocation;

import 'package:js/js.dart';

@JS('getCurrentPosition')
external void getPosition(dynamic success);