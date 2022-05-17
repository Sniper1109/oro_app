import 'package:flutter/material.dart';

class LoanStepHeader extends StatelessWidget {
  final String icon;
  final int currentStep;
  final String title;
  final String desc;
  final bool completed;
  final bool isPending;
  final bool showStatus;
  final bool showProgress;

  const LoanStepHeader(
      {Key? key,
      required this.icon,
      required this.currentStep,
      required this.title,
      required this.desc,
      required this.completed,
      required this.isPending,
      required this.showStatus,
      required this.showProgress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment:
          showStatus ? CrossAxisAlignment.start : CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5),
              width: 35,
              height: 35,
              decoration: isPending
                  ? BoxDecoration(
                      color: Colors.grey.withOpacity(0.2), // border color
                      shape: BoxShape.circle,
                    )
                  : BoxDecoration(
                      gradient: LinearGradient(
                          colors: completed
                              ? [
                                  const Color(0xFFD4e7ff),
                                  const Color(0xFF478ae2),
                                ]
                              : [
                                  const Color(0xFFffe79b),
                                  const Color(0xFFffb81e),
                                ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          tileMode: TileMode.clamp), // border color
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: completed
                              ? const Color(0xFF478ae2)
                              : const Color(0xFFffaa07),
                          width: 1),
                    ),
              child: Align(
                alignment: Alignment.center,
                child: Image.asset(
                  icon,
                  height: 16,
                  width: 16,
                  color: isPending ? Colors.grey : Colors.white,
                ),
              ),
            ),
            Visibility(
              visible: showProgress,
              child: const SizedBox(
                height: 8,
              ),
            ),
            Visibility(
              visible: showProgress,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      width: 3,
                      height: 60,
                      decoration: BoxDecoration(
                        color: completed
                            ? const Color(0xFF478ae2)
                            : Colors.grey.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    child: Container(
                      width: 3,
                      height: 30,
                      decoration: BoxDecoration(
                        color: isPending
                            ? Colors.grey.withOpacity(0.0)
                            : completed
                                ? const Color(0xFF478ae2)
                                : Colors.yellow,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Expanded(
          flex: showStatus ? 0 : 1,
          child: Container(
            padding: const EdgeInsets.only(left: 16),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                    fontFamily: 'Nunito'
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    desc,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.visible,
                    style: const TextStyle(fontFamily: 'Nunito',
                        fontSize: 14, fontWeight: FontWeight.w700),
                  ),
                ),
                Visibility(
                  visible: showStatus,
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    decoration: BoxDecoration(
                      color: isPending
                          ? Colors.grey.withOpacity(0.2)
                          : completed
                              ? const Color(0xFF478ae2).withOpacity(0.2)
                              : Colors.yellow.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Image.asset(
                          completed
                              ? "assets/images/pending.png"
                              : "assets/images/loading.png",
                          color: isPending
                              ? Colors.grey
                              : completed
                                  ? const Color(0xFF478ae2)
                                  : Colors.orange,
                          width: 12,
                          height: 12,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          isPending
                              ? "Pending"
                              : completed
                                  ? "Completed"
                                  : "In Progress",
                          style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 12,
                              color: isPending
                                  ? Colors.grey
                                  : completed
                                      ? const Color(0xFF478ae2)
                                      : Colors.orange),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Visibility(
          visible: !showStatus,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.close,
              size: 24,
              color: Colors.black,
            ),
          ),
        )
      ],
    );
  }
}
