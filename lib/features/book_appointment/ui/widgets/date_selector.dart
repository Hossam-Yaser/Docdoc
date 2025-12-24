import 'package:doc_doc/core/theming/colors.dart';
import 'package:doc_doc/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DateSelector extends StatefulWidget {
  const DateSelector({super.key});

  @override
  State<DateSelector> createState() => _DateSelectorState();
}

class _DateSelectorState extends State<DateSelector> {
  int selectedIndex = 0; // Default to today
  late List<DateItem> dates;
  final ScrollController _scrollController = ScrollController();

  // Width of each date item including margins
  final double itemWidth = 68.0; // 60 + (4 * 2 for margins)

  @override
  void initState() {
    super.initState();
    dates = _generateDates();

    // Scroll to initial position after the widget is built
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToSelectedIndex();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToSelectedIndex() {
    if (_scrollController.hasClients) {
      // Calculate the scroll position to center the selected item
      final double screenWidth = MediaQuery.of(context).size.width;
      final double scrollOffset =
          (selectedIndex * itemWidth) - (screenWidth / 2) + (itemWidth / 2);

      _scrollController.animateTo(
        scrollOffset.clamp(0.0, _scrollController.position.maxScrollExtent),
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  List<DateItem> _generateDates() {
    final List<DateItem> dateList = [];
    final DateTime now = DateTime.now();

    // Generate next 30 days starting from today
    for (int i = 0; i < 30; i++) {
      final DateTime date = now.add(Duration(days: i));
      dateList.add(
        DateItem(
          day: _getDayName(date.weekday),
          date: date.day.toString().padLeft(2, '0'),
          fullDate: date,
        ),
      );
    }

    return dateList;
  }

  String _getDayName(int weekday) {
    switch (weekday) {
      case 1:
        return 'Mon';
      case 2:
        return 'Tue';
      case 3:
        return 'Wed';
      case 4:
        return 'Thu';
      case 5:
        return 'Fri';
      case 6:
        return 'Sat';
      case 7:
        return 'Sun';
      default:
        return '';
    }
  }

  void _previousDate() {
    if (selectedIndex > 0) {
      setState(() {
        selectedIndex--;
      });
      _scrollToSelectedIndex();
    }
  }

  void _nextDate() {
    if (selectedIndex < dates.length - 1) {
      setState(() {
        selectedIndex++;
      });
      _scrollToSelectedIndex();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Select Date', style: TextStyles.font18DarkBlueBold),
            TextButton(
              onPressed: () {
                // Open manual date picker
                _showDatePicker(context);
              },
              child: Text('Set Manual', style: TextStyles.font14BlueSemiBold),
            ),
          ],
        ),
        const SizedBox(height: 16),

        // Date Selector with arrows
        Row(
          children: [
            // Left Arrow
            IconButton(
              onPressed: selectedIndex > 0 ? _previousDate : null,
              icon: const Icon(Icons.chevron_left),
              color: Colors.black87,
              disabledColor: ColorsManager.lightGrey,
            ),

            // Date Items
            Expanded(
              child: SizedBox(
                height: 70,
                child: ListView.builder(
                  controller: _scrollController,
                  scrollDirection: Axis.horizontal,
                  itemCount: dates.length,
                  itemBuilder: (context, index) {
                    final date = dates[index];
                    final isSelected = selectedIndex == index;

                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                        _scrollToSelectedIndex();
                      },
                      child: Container(
                        width: 60,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          color: isSelected
                              ? ColorsManager.mainBlue
                              : ColorsManager.lighterGrey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              date.day,
                              style: isSelected
                                  ? TextStyles.font13whiteregular
                                  : TextStyles.font13greyregular,
                            ),
                            const SizedBox(height: 4),
                            Text(
                              date.date,
                              style: isSelected
                                  ? TextStyles.font16WhiteSemiBold
                                  : TextStyles.font16LightGreyMedium,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            // Right Arrow
            IconButton(
              onPressed: selectedIndex < dates.length - 1 ? _nextDate : null,
              icon: const Icon(Icons.chevron_right),
              color: Colors.black87,
              disabledColor: Colors.grey[300],
            ),
          ],
        ),
      ],
    );
  }

  Future<void> _showDatePicker(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: dates[selectedIndex].fullDate,
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (picked != null) {
      // Find the index of the picked date or add it if not in list
      final index = dates.indexWhere(
        (date) =>
            date.fullDate.year == picked.year &&
            date.fullDate.month == picked.month &&
            date.fullDate.day == picked.day,
      );

      if (index != -1) {
        setState(() {
          selectedIndex = index;
        });
        _scrollToSelectedIndex();
      } else {
        // Date not in current list, regenerate dates from picked date
        setState(() {
          dates = _generateDatesFrom(picked);
          selectedIndex = 0;
        });
        // Wait for the list to rebuild, then scroll
        WidgetsBinding.instance.addPostFrameCallback((_) {
          _scrollToSelectedIndex();
        });
      }
    }
  }

  List<DateItem> _generateDatesFrom(DateTime startDate) {
    final List<DateItem> dateList = [];

    for (int i = 0; i < 30; i++) {
      final DateTime date = startDate.add(Duration(days: i));
      dateList.add(
        DateItem(
          day: _getDayName(date.weekday),
          date: date.day.toString().padLeft(2, '0'),
          fullDate: date,
        ),
      );
    }

    return dateList;
  }
}

class DateItem {
  final String day;
  final String date;
  final DateTime fullDate;

  DateItem({required this.day, required this.date, required this.fullDate});
}
