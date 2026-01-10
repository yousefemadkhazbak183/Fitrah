import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  final String userName;
  final double percentage;

  const HomeHeader({
    super.key,
    required this.userName,
    required this.percentage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "السلام عليكم، $userName",
                // style: Theme.of(context).textTheme.headlineMedium,
              ),
              const Text("يومك مليء بالبركة إن شاء الله"),
            ],
          ),
          _buildProgressRing(context),
        ],
      ),
    );
  }

  Widget _buildProgressRing(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Theme.of(context).primaryColor, width: 4),
      ),
      child: Center(child: Text("${(percentage * 100).toInt()}%")),
    );
  }
}
