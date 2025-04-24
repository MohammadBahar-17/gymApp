import 'package:flutter/material.dart';
import 'package:real_project/models/category_model.dart';
import 'package:real_project/models/muscle_model.dart';

class MuscleInfoPage extends StatelessWidget {
  final CategoryModel category;

  const MuscleInfoPage({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    final MuscleModel muscleInfo = MuscleModel.getMuscle(category.name);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 220.0,
            pinned: true,
            backgroundColor: category.boxColor,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                muscleInfo.name,
                style: TextStyle(
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    Shadow(
                      color: Colors.white.withOpacity(0.7),
                      blurRadius: 4,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Content
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Description
                  _buildSectionTitle('Description'),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        muscleInfo.description,
                        style: TextStyle(
                          fontSize: 16,
                          height: 1.5,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),

                  // Main Exercises
                  _buildSectionTitle('Main Exercises'),
                  _buildExerciseList(
                      muscleInfo.mainExercises, category.boxColor),
                  SizedBox(height: 20),

                  // Training Tips
                  _buildSectionTitle('Training Tips'),
                  _buildTipsList(muscleInfo.tips),
                  SizedBox(height: 20),

                  // For Beginners
                  _buildSectionTitle('For Beginners'),
                  _buildExerciseList(
                      muscleInfo.beginnerExercises, Colors.green.shade100),
                  SizedBox(height: 20),

                  // Advanced Exercises
                  _buildSectionTitle('Advanced Exercises'),
                  _buildExerciseList(
                      muscleInfo.advancedExercises, Colors.orange.shade100),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildExerciseList(List<String> exercises, Color color) {
    return Column(
      children: exercises
          .map((exercise) => Card(
                margin: EdgeInsets.only(bottom: 8),
                color: color.withOpacity(0.7),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                child: ListTile(
                  leading: Icon(Icons.fitness_center),
                  title: Text(
                    exercise,
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }

  Widget _buildTipsList(List<String> tips) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: tips
              .map((tip) => Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(Icons.tips_and_updates,
                            size: 20, color: Colors.amber),
                        SizedBox(width: 8),
                        Expanded(
                          child: Text(
                            tip,
                            style: TextStyle(height: 1.4),
                          ),
                        ),
                      ],
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
