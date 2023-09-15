import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:workouttraker/utility/chartfunction.dart';

class Chart extends StatefulWidget {
  final bool checkboxStatus;
  final DateTime currentDate;

  const Chart({
    super.key,
    required this.checkboxStatus,
    required this.currentDate,
  });

  @override
  State<StatefulWidget> createState() => ChartState();
}

class ChartState extends State<Chart> {
  int touchedIndex = 0;
  String _selectedValue = 'Day';
  int daytotal = getDayTasksCount(); // Initial dropdown value
  int dayCompleted = getDayTasksCountCpt();
  int weektotal = getWeekTasksCountwk();
  int weekcompleted = getWeekTasksCountCheckeds();
  int monthtotal = getMonthTasksCount();
  int monthcompleted = getMonthTasksCountmonth();

  int daydiffrence = getDayTasksCount() - getDayTasksCountCpt();
  int weekdiffrence = getWeekTasksCountwk() - getWeekTasksCountCheckeds();
  int monthdiffrence = getMonthTasksCount() - getMonthTasksCountmonth();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(225, 27, 57, 61),
        title: const Center(child: Text('chart')),
      ),
      body: Card(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: AspectRatio(
          aspectRatio: 1.1,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Visibility(
                    visible: _selectedValue == 'Day'
                        ? daytotal != 0
                        : _selectedValue == 'Week'
                            ? weektotal != 0
                            : _selectedValue == 'Month'
                                ? monthtotal != 0
                                : false,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const Icon(Icons.list_alt_outlined,
                                  size: 25,
                                  color: Color.fromARGB(225, 27, 57, 61)),
                              Text(
                                  'Totaltask ${_selectedValue == 'Day' ? daytotal : _selectedValue == 'Week' ? weektotal : _selectedValue == 'Month' ? monthtotal : 0}'),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.task_alt_outlined,
                                  color: Colors.green),
                              Text(
                                  'Completed ${_selectedValue == 'Day' ? dayCompleted : _selectedValue == 'Week' ? weekcompleted : _selectedValue == 'Month' ? monthcompleted : 0}'),
                            ],
                          ),
                          Row(
                            children: [
                              const Icon(Icons.clear_outlined,
                                  color: Colors.red),
                              Text(
                                  'Incompleted ${_selectedValue == 'Day' ? daydiffrence : _selectedValue == 'Week' ? weekdiffrence : _selectedValue == 'Month' ? monthdiffrence : 0}'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  DropdownButton<String>(
                    elevation: 10,
                    underline: Container(
                      height: 2,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                    dropdownColor: const Color.fromARGB(255, 255, 255, 255),
                    focusColor: const Color.fromARGB(255, 255, 255, 255),
                    alignment: Alignment.bottomCenter,
                    padding: const EdgeInsetsDirectional.all(3),
                    icon: const Icon(Icons.arrow_drop_down,
                        color: Color.fromARGB(225, 27, 57, 61)),
                    borderRadius: BorderRadius.circular(15),
                    value: _selectedValue,
                    style: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255)),
                    items: <String>['Day', 'Week', 'Month']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: const TextStyle(
                              fontSize: 15,
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: AutofillHints.username),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        setState(() {
                          _selectedValue = newValue;
                        });
                      }
                    },
                  ),
                ],
              ),
              AspectRatio(
                aspectRatio: 1.3,
                child: PieChart(
                  PieChartData(
                    pieTouchData: PieTouchData(
                      touchCallback: (FlTouchEvent event, pieTouchResponse) {
                        setState(() {
                          if (!event.isInterestedForInteractions ||
                              pieTouchResponse == null ||
                              pieTouchResponse.touchedSection == null) {
                            touchedIndex = -1;
                            return;
                          }
                          touchedIndex = pieTouchResponse
                              .touchedSection!.touchedSectionIndex;
                        });
                      },
                    ),
                    borderData: FlBorderData(
                      show: false,
                    ),
                    sectionsSpace: 0,
                    centerSpaceRadius: 0,
                    sections: showingSections(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<PieChartSectionData> showingSections() {
    int daytotal = getDayTasksCount(); // Initial dropdown value
    int dayCompleted = getDayTasksCountCpt();
    int weektotal = getWeekTasksCountwk();
    int weekcompleted = getWeekTasksCountCheckeds();
    int monthtotal = getMonthTasksCount();
    int monthcompleted = getMonthTasksCountmonth();

    // print(allweek);
    switch (_selectedValue) {
      case 'Day':
        // Calculate completed and total tasks for the day
        int completedTasks = dayCompleted; // Example: replace with actual data
        int totalTasks = daytotal; // Example: replace with actual data
        double completedPercentage = (completedTasks / totalTasks) * 100;
        double remainingPercentage = 100 - completedPercentage;

        return generateChartData(completedPercentage, remainingPercentage);
      case 'Week':
        // Calculate completed and total tasks for the week
        int completedTasks = weekcompleted; // Example: replace with actual data
        int totalTasks = weektotal; // Example: replace with actual data
        double completedPercentage = (completedTasks / totalTasks) * 100;
        double remainingPercentage = 100 - completedPercentage;

        return generateChartData(completedPercentage, remainingPercentage);
      case 'Month':
        // Calculate completed and total tasks for the month
        int completedTasks =
            monthcompleted; // Example: replace with actual data
        int totalTasks = monthtotal; // Example: replace with actual data
        double completedPercentage = (completedTasks / totalTasks) * 100;
        double remainingPercentage = 100 - completedPercentage;

        return generateChartData(completedPercentage, remainingPercentage);
      default:
        throw Exception('Invalid selected value');
    }
  }

  List<PieChartSectionData> generateChartData(double value1, double value2) {
    final List<Color> colors = [Colors.green[900]!, Colors.red[400]!];
    final List<double> values = [value1, value2];

    // Handle division by zero
    if (values
        .any((value) => value.isNaN || value.isInfinite || value.isNegative)) {
      return [
        PieChartSectionData(
          color: Colors.grey,
          value: 100.0, // Display a grey section to indicate an issue with data
          title: 'NO TASKS',

          radius: 100.0,
          titleStyle: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Color(0xffffffff),
            shadows: [Shadow(color: Colors.black, blurRadius: 2)],
          ),
          titlePositionPercentageOffset: 0.0,
        ),
      ];
    }

    return List.generate(2, (i) {
      final isTouched = i == touchedIndex;
      final fontSize = isTouched ? 20.0 : 16.0;
      final radius = isTouched ? 110.0 : 100.0;

      const shadows = [Shadow(color: Colors.black, blurRadius: 2)];

      return PieChartSectionData(
        color: colors[i],
        value: values[i],
        title:
            'Task ${values[i].toStringAsFixed(1)}%', // Limit to one decimal place
        radius: radius,
        titleStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: FontWeight.bold,
          color: const Color(0xffffffff),
          shadows: shadows,
        ),
      );
    });
  }
}
