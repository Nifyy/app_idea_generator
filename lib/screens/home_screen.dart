import 'package:flutter/material.dart';
import '../widgets/top_section.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentIdea = '';

  final List<String> ideas = [
    'A fitness app that gamifies workouts',
    'A recipe app for college students on a budget',
    'A meditation app with nature sounds',
    'A language learning app using AR',
    'A carpooling app for pet owners',
    'A plant care reminder app with AI',
    'A book club matching app',
    'A habit tracker that plants virtual trees',
    'A local event discovery app',
    'A meal prep planner with grocery lists',
  ];

  void generateIdea() {
    setState(() {
      currentIdea = ideas[Random().nextInt(ideas.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5B6B5E),
      body: SafeArea(
        child: Center(
          child: Container(
            width: 360,
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const TopSection(),
                
                const SizedBox(height: 30),
                
                const Text(
                  'Generate Idea',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                  ),
                ),
                
                const SizedBox(height: 20),
                
                Container(
                  height: 120,
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F5),
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: const Color(0xFFE0E0E0),
                      width: 2,
                    ),
                  ),
                  child: Center(
                    child: Text(
                      currentIdea.isEmpty
                          ? 'Press the button below\nto generate an app idea!'
                          : currentIdea,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: currentIdea.isEmpty
                            ? Colors.grey[600]
                            : const Color(0xFF333333),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                
                const SizedBox(height: 25),
                
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: TextButton(
                    onPressed: generateIdea,
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF2D3A31),
                      minimumSize: const Size(double.infinity, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Generate Idea',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }
}