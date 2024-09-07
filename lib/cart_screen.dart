import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int card1Count = 1;
  int card1Prize = 51;
  int card2Count = 1;
  int card2Prize = 30;
  int card3Count = 1;
  int card3Prize = 43;
  int totalAmount = 124;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Bag'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Card(
              shadowColor: Colors.blueAccent,
              elevation: 5,
              child: Row(
                children: [
                  Image.asset(
                    'assets/t1.png',
                    scale: 12,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Pullover',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      const Row(
                        children: [
                          Text.rich(TextSpan(
                              text: 'Color: ',
                              style: TextStyle(color: Colors.grey),
                              children: [
                                TextSpan(
                                  text: 'Black',
                                  style: TextStyle(color: Colors.black),
                                )
                              ])),
                          SizedBox(
                            width: 15,
                          ),
                          Text.rich(TextSpan(
                              text: 'Size: ',
                              style: TextStyle(color: Colors.grey),
                              children: [
                                TextSpan(
                                  text: 'L',
                                  style: TextStyle(color: Colors.black),
                                )
                              ])),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (card1Count > 1) {
                                card1Count -= 1;
                                card1Prize = card1Count * 51;
                                totalAmount =
                                    card1Prize + card2Prize + card3Prize;
                              }
                              setState(() {});
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 1),
                              minimumSize: const Size(10, 10),
                              maximumSize: const Size(100, 100),
                            ),
                            child: const Icon(
                              Icons.remove,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(card1Count.toString()),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 1),
                              minimumSize: const Size(10, 10),
                              maximumSize: const Size(100, 100),
                            ),
                            onPressed: () {
                              card1Count += 1;
                              card1Prize = card1Count * 51;
                              totalAmount =
                                  card1Prize + card2Prize + card3Prize;
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.add,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      const Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      Text(
                        '$card1Prize\$',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              shadowColor: Colors.blueAccent,
              elevation: 5,
              child: Row(
                children: [
                  Image.asset(
                    'assets/t2.png',
                    scale: 6,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'T-Shirt',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      const Row(
                        children: [
                          Text.rich(TextSpan(
                              text: 'Color: ',
                              style: TextStyle(color: Colors.grey),
                              children: [
                                TextSpan(
                                  text: 'Grey',
                                  style: TextStyle(color: Colors.black),
                                )
                              ])),
                          SizedBox(
                            width: 15,
                          ),
                          Text.rich(TextSpan(
                              text: 'Size: ',
                              style: TextStyle(color: Colors.grey),
                              children: [
                                TextSpan(
                                  text: 'M',
                                  style: TextStyle(color: Colors.black),
                                )
                              ])),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (card2Count > 1) {
                                card2Count -= 1;
                                card2Prize = card2Count * 30;
                                totalAmount =
                                    card1Prize + card2Prize + card3Prize;
                              }
                              setState(() {});
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 1),
                              minimumSize: const Size(10, 10),
                              maximumSize: const Size(100, 100),
                            ),
                            child: const Icon(
                              Icons.remove,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(card2Count.toString()),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 1),
                              minimumSize: const Size(10, 10),
                              maximumSize: const Size(100, 100),
                            ),
                            onPressed: () {
                              card2Count += 1;
                              card2Prize = card2Count * 30;
                              totalAmount =
                                  card1Prize + card2Prize + card3Prize;
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.add,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      const Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      Text(
                        '$card2Prize\$',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              shadowColor: Colors.blueAccent,
              elevation: 5,
              child: Row(
                children: [
                  Image.asset(
                    'assets/t3.png',
                    scale: 6,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Sport Dress',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      ),
                      const Row(
                        children: [
                          Text.rich(TextSpan(
                              text: 'Color: ',
                              style: TextStyle(color: Colors.grey),
                              children: [
                                TextSpan(
                                  text: 'Black',
                                  style: TextStyle(color: Colors.black),
                                )
                              ])),
                          SizedBox(
                            width: 15,
                          ),
                          Text.rich(TextSpan(
                              text: 'Size: ',
                              style: TextStyle(color: Colors.grey),
                              children: [
                                TextSpan(
                                  text: 'XL',
                                  style: TextStyle(color: Colors.black),
                                )
                              ])),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (card3Count > 1) {
                                card3Count -= 1;
                                card3Prize = card3Count * 43;
                                totalAmount =
                                    card1Prize + card2Prize + card3Prize;
                              }
                              setState(() {});
                            },
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 1),
                              minimumSize: const Size(10, 10),
                              maximumSize: const Size(100, 100),
                            ),
                            child: const Icon(
                              Icons.remove,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Card(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text(card3Count.toString()),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 5,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 1),
                              minimumSize: const Size(10, 10),
                              maximumSize: const Size(100, 100),
                            ),
                            onPressed: () {
                              card3Count += 1;
                              card3Prize = card3Count * 43;
                              totalAmount =
                                  card1Prize + card2Prize + card3Prize;
                              setState(() {});
                            },
                            child: const Icon(
                              Icons.add,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    children: [
                      const Icon(
                        Icons.more_vert,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                      Text(
                        '$card3Prize\$',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
            const Spacer(),
            Row(
              children: [
                const Text(
                  'Total Amount: ',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20,
                  ),
                ),
                const Spacer(),
                Text(
                  '$totalAmount\$',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    backgroundColor: Colors.green,
                    content: Text(
                      'Congratulations! Your order is complete! Please Pay $totalAmount\$.',
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                );
              },
              child: const Text(
                'Checkout',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
