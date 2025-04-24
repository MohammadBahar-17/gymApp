class MuscleModel {
  final String name;
  final String description;
  final List<String> mainExercises;
  final List<String> tips;
  final List<String> beginnerExercises;
  final List<String> advancedExercises;

  MuscleModel({
    required this.name,
    required this.description,
    required this.mainExercises,
    required this.tips,
    required this.beginnerExercises,
    required this.advancedExercises,
  });

  static MuscleModel getMuscle(String muscleName) {
    switch (muscleName) {
      case 'Chest':
        return MuscleModel(
          name: 'Chest ',
          description:
              'The chest muscles, primarily the pectoralis major and minor, are responsible for movement of the shoulder joint. The pectoralis major is a thick, fan-shaped muscle that makes up the bulk of the chest muscles. Its involved in movements like pushing and bringing your arms together.',
          mainExercises: [
            'Bench Press',
            'Push-ups',
            'Chest Dips',
            'Chest Fly',
            'Cable Crossover'
          ],
          tips: [
            'Focus on squeezing your chest at the top of each movement',
            'Maintain proper form to prevent shoulder injuries',
            'Vary your grip width to target different parts of the chest',
            'Control the eccentric (lowering) phase of the movement',
            'Include both pressing and fly movements in your routine'
          ],
          beginnerExercises: [
            'Incline Push-ups',
            'Machine Chest Press',
            'Dumbbell Floor Press'
          ],
          advancedExercises: [
            'Weighted Dips',
            'Decline Bench Press',
            'Single-arm Cable Crossover'
          ],
        );

      case 'Back':
        return MuscleModel(
          name: 'Back ',
          description:
              'The back muscles include several groups, with the latissimus dorsi (lats) being the largest. Other important back muscles include the trapezius, rhomboids, and erector spinae. These muscles help with pulling movements and maintaining posture.',
          mainExercises: [
            'Pull-ups',
            'Bent-over Rows',
            'Deadlifts',
            'Lat Pulldowns',
            'T-bar Rows'
          ],
          tips: [
            'Focus on pulling with your back, not your arms',
            'Initiate movements by retracting your shoulder blades',
            'Maintain a neutral spine during rowing exercises',
            'Use a full range of motion to fully stretch and contract the muscles',
            'Include both vertical and horizontal pulling movements'
          ],
          beginnerExercises: [
            'Assisted Pull-ups',
            'Seated Cable Rows',
            'Reverse Fly'
          ],
          advancedExercises: [
            'Weighted Pull-ups',
            'One-arm Dumbbell Rows',
            'Meadows Rows'
          ],
        );

      case 'Biceps':
        return MuscleModel(
          name: 'Biceps ',
          description:
              'The biceps brachii is a two-headed muscle located on the front of the upper arm. Its responsible for flexing the elbow and supinating the forearm. While not the largest muscle, its one of the most visible and commonly trained.',
          mainExercises: [
            'Barbell Curls',
            'Dumbbell Curls',
            'Hammer Curls',
            'Preacher Curls',
            'Concentration Curls'
          ],
          tips: [
            'Avoid swinging or using momentum to lift the weight',
            'Keep your elbows close to your body during curls',
            'Focus on a full range of motion',
            'Vary your grip (supinated, neutral, pronated) to target different parts',
            'Control the eccentric (lowering) phase of the movement'
          ],
          beginnerExercises: ['Cable Curls', 'Machine Curls', 'Band Curls'],
          advancedExercises: [
            'Weighted Chin-ups',
            '21s (7-7-7 partial reps)',
            'Zottman Curls'
          ],
        );

      case 'Triceps':
        return MuscleModel(
          name: 'Triceps ',
          description:
              'The triceps brachii is a three-headed muscle located on the back of the upper arm. Its responsible for extending the elbow joint. The triceps actually make up about two-thirds of your upper arm mass, making them crucial for arm size and strength.',
          mainExercises: [
            'Close-grip Bench Press',
            'Triceps Dips',
            'Skull Crushers',
            'Triceps Pushdowns',
            'Overhead Triceps Extension'
          ],
          tips: [
            'Keep your elbows tucked during pressing movements',
            'Focus on the contraction at the end of each rep',
            'Work all three heads (long, lateral, medial) with different exercises',
            'Avoid locking your elbows at the top of extensions',
            'Include both compound and isolation movements'
          ],
          beginnerExercises: [
            'Bench Dips',
            'Cable Pushdowns',
            'Diamond Push-ups'
          ],
          advancedExercises: [
            'Weighted Parallel Bar Dips',
            'JM Press',
            'Single-arm Overhead Extensions'
          ],
        );

      case 'ABS':
        return MuscleModel(
          name: 'Abdominals ',
          description:
              'The abdominal muscles include the rectus abdominis (the "six-pack"), the transverse abdominis (deep core), and the internal and external obliques (sides). These muscles stabilize the spine, transfer power between upper and lower body, and flex the torso.',
          mainExercises: [
            'Crunches',
            'Leg Raises',
            'Planks',
            'Russian Twists',
            'Hanging Knee Raises'
          ],
          tips: [
            'Focus on controlled movements rather than high reps',
            'Engage your core throughout the entire exercise',
            'Include exercises for all abdominal regions',
            'Remember that abs are made in the kitchen (nutrition is key)',
            'Work your abs 2-3 times per week with rest days in between'
          ],
          beginnerExercises: ['Dead Bug', 'Bird Dog', 'Modified Planks'],
          advancedExercises: [
            'Dragon Flag',
            'Ab Wheel Rollouts',
            'Hanging L-sits'
          ],
        );

      case 'Legs':
        return MuscleModel(
          name: 'Legs ',
          description:
              'The leg muscles include the quadriceps (front thigh), hamstrings (back thigh), glutes (buttocks), and calves. These large muscle groups are essential for movement, strength, and overall metabolism. Training legs is crucial for balanced physique development.',
          mainExercises: [
            'Squats',
            'Deadlifts',
            'Lunges',
            'Leg Press',
            'Hamstring Curls'
          ],
          tips: [
            'Focus on proper form, especially for compound movements',
            'Train all leg muscle groups for balance and symmetry',
            'Do not neglect hamstrings and calves',
            'Use appropriate depth in squats based on your mobility',
            'Rest adequately between leg workouts (48-72 hours)'
          ],
          beginnerExercises: ['Bodyweight Squats', 'Step-ups', 'Glute Bridges'],
          advancedExercises: [
            'Bulgarian Split Squats',
            'Front Squats',
            'Pistol Squats'
          ],
        );

      case 'Shoulders':
        return MuscleModel(
          name: 'Shoulders ',
          description:
              'The deltoid muscle has three heads: anterior (front), lateral (middle), and posterior (rear). These muscles are responsible for arm movement and shoulder stability. Well-developed shoulders create width in the upper body and improve the overall physique.',
          mainExercises: [
            'Overhead Press',
            'Lateral Raises',
            'Face Pulls',
            'Reverse Fly',
            'Upright Rows'
          ],
          tips: [
            'Train all three deltoid heads for balanced development',
            'Use lighter weights with strict form for isolation work',
            'Focus on the mind-muscle connection',
            'Avoid using momentum, especially in lateral raises',
            'Include both pressing and raising movements'
          ],
          beginnerExercises: [
            'Seated Dumbbell Press',
            'Band Pull-aparts',
            'Machine Lateral Raises'
          ],
          advancedExercises: [
            'Handstand Push-ups',
            'Leaning Lateral Raises',
            'Behind-the-neck Press'
          ],
        );

      default:
        return MuscleModel(
          name: 'Unknown Muscle',
          description: 'Information not available.',
          mainExercises: [],
          tips: [],
          beginnerExercises: [],
          advancedExercises: [],
        );
    }
  }
}
