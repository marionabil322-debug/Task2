import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 380,
                decoration: const BoxDecoration(
                  color: Color(0xffffb8c6),
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                ),
                child: Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/photo_5861993720792681266_x.jpg',
                        height: 150,
                      ),
                    ),
                    Positioned(
                      top: 20,
                      right: 20,
                      child: Icon(Icons.favorite, color: Colors.white),
                    ),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: Icon(Icons.arrow_back, color: Colors.white),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 36),

              Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'C2 Analog Clock',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Spacer(),
                      Text(
                        r'$542',
                        style: TextStyle(
                          fontSize: 24,
                          color: const Color.fromARGB(255, 165, 141, 55),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Row(
                    children: const [
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      Icon(Icons.star, color: Colors.amber, size: 20),
                      Icon(Icons.star_border, color: Colors.amber, size: 20),
                      SizedBox(width: 6),
                      Text("4/5 (12)", style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    "A classically designed analog clock that would add "
                    "to the decor of your house. Analog clock has hour, "
                    "minutes and seconds hands.",
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.4,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 24),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Type',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          const SizedBox(height: 4),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFF163A3),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Text(
                              'Analog',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(width: 24),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Material',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          const SizedBox(height: 4),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 12,
                              vertical: 6,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFFF163A3),
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: const Text(
                              'Plastic',
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  SizedBox(
                    height: 64,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Add to card',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
