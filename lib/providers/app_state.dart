import 'package:flutter/foundation.dart';

import '../models/models.dart';
import '../data/mock_data.dart';

class AppState extends ChangeNotifier {
  UserProfile? _user;
  final Set<String> _bookmarkedDegreeNames = {};

  // Quiz results
  String? _quizRecommendedStream; // Science, Arts, Commerce

  // Expose data
  UserProfile? get user => _user;
  List<College> get colleges => jkColleges;
  List<CareerPath> get careers => careerPaths;
  List<Degree> get allDegrees => degrees;
  String? get quizRecommendedStream => _quizRecommendedStream;

  List<Degree> get bookmarkedDegrees =>
      degrees.where((d) => _bookmarkedDegreeNames.contains(d.name)).toList();

  void saveUser(String name, String classLevel, String streamOfInterest,
      String gender, String location, String district) {
    _user = UserProfile(
      name: name,
      classLevel: classLevel,
      streamOfInterest: streamOfInterest,
      gender: gender,
      location: location,
      district: district,
    );
    notifyListeners();
  }

  void logout() {
    _user = null;
    _bookmarkedDegreeNames.clear();
    _quizRecommendedStream = null;
    notifyListeners();
  }

  void toggleBookmark(String degreeName) {
    if (_bookmarkedDegreeNames.contains(degreeName)) {
      _bookmarkedDegreeNames.remove(degreeName);
    } else {
      _bookmarkedDegreeNames.add(degreeName);
    }
    notifyListeners();
  }

  bool isBookmarked(String degreeName) =>
      _bookmarkedDegreeNames.contains(degreeName);

  List<CareerPath> recommendedForUser() {
    final stream = _user?.streamOfInterest;
    if (stream == null) return careers;
    return careers.where((c) => c.suitableStreams.contains(stream)).toList();
  }

  void setQuizRecommendation(String stream) {
    _quizRecommendedStream = stream;
    notifyListeners();
  }
}
