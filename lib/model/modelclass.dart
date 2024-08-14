class DetailsModal {
  String? username, email;

  DetailsModal._({required this.username, required this.email});

  factory DetailsModal(Map m1) {
    return DetailsModal._(username: m1['username'], email: m1['email']);
  }

  Map<String, String> objectToMap(DetailsModal detailsModal) {
    return {
      'username': detailsModal.username??'akshar',
      'email': detailsModal.email!,
    };
  }
}