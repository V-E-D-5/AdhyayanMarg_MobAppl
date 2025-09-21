class UserProfile {
  final String name;
  final String classLevel; // e.g., "12"
  final String streamOfInterest; // Science, Arts, Commerce, Others
  final String gender; // Male, Female, Other
  final String location; // Jammu, Kashmir
  final String district; // District name

  const UserProfile({
    required this.name,
    required this.classLevel,
    required this.streamOfInterest,
    required this.gender,
    required this.location,
    required this.district,
  });

  UserProfile copyWith({
    String? name,
    String? classLevel,
    String? streamOfInterest,
    String? gender,
    String? location,
    String? district,
  }) {
    return UserProfile(
      name: name ?? this.name,
      classLevel: classLevel ?? this.classLevel,
      streamOfInterest: streamOfInterest ?? this.streamOfInterest,
      gender: gender ?? this.gender,
      location: location ?? this.location,
      district: district ?? this.district,
    );
  }
}

class CareerPath {
  final String id;
  final String title;
  final String description;
  final List<String> suitableStreams; // e.g., ["Science", "Commerce"]

  const CareerPath({
    required this.id,
    required this.title,
    required this.description,
    required this.suitableStreams,
  });
}

class Degree {
  final String name;
  final List<String> relatedCareers; // list of career ids

  const Degree({required this.name, required this.relatedCareers});
}

class College {
  final String id;
  final String name;
  final String city;
  final String state;
  final List<String> coursesOffered; // degree names
  final String? imageAsset; // optional local asset path
  final String? nirfRank; // NIRF ranking information
  final String estimatedFees; // Estimated fees per annum

  const College({
    required this.id,
    required this.name,
    required this.city,
    required this.state,
    required this.coursesOffered,
    this.imageAsset,
    this.nirfRank,
    required this.estimatedFees,
  });
}
