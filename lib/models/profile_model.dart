class ProfileModel {
  final String name;
  final String studentId;
  final String email;
  final String bio;

  const ProfileModel({
    required this.name,
    required this.studentId,
    required this.email,
    required this.bio,
  });

  String get initials {
    final parts = name.trim().split(RegExp(r'\s+'));
    if (parts.isEmpty) return '';
    if (parts.length == 1) return parts.first.substring(0, 1).toUpperCase();
    return (parts.first.substring(0, 1) + parts.last.substring(0, 1))
        .toUpperCase();
  }
}
