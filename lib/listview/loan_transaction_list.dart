import 'package:flutter/material.dart';

class LoanTransactionList extends StatelessWidget {
  const LoanTransactionList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: 2,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: (1),
      ),
      itemBuilder: (
        context,
        index,
      ) {
        return GestureDetector(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: index % 2 == 0
                  ? const Color(0xFFFFAA07).withOpacity(0.1)
                  : const Color(0xFF478ae2).withOpacity(0.1),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Amount",
                  style: TextStyle(
                      fontFamily: 'Nunito', fontSize: 10, color: Colors.grey),
                ),
                Text(
                  index == 0 ? "₹10,00,000" : "₹15,000",
                  style: const TextStyle(
                      fontFamily: 'Nunito',
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Transaction ID",
                  style: TextStyle(
                      fontFamily: 'Nunito', color: Colors.grey, fontSize: 10),
                ),
                const Text("FEDR12392874194",
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w700)),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Mode",
                  style: TextStyle(
                      fontFamily: 'Nunito', color: Colors.grey, fontSize: 10),
                ),
                const Text("IMPS",
                    style: TextStyle(
                        fontFamily: 'Nunito',
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.w700))
              ],
            ),
          ),
        );
      },
    );
  }
}
