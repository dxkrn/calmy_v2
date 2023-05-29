import 'package:calmy/app/data/chart_data.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class HomeController extends GetxController {
  List<ChartData> data = [
    ChartData('Parah', 1),
    ChartData('Buruk', 1),
    ChartData('Biasa', 2),
    ChartData('Baik', 2),
    ChartData('Keren', 1),
  ];

  TooltipBehavior tooltip = TooltipBehavior(enable: true);

  var currentIndex = 0.obs;
}
