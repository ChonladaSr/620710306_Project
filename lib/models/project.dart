class Project {
  final String title; //ชื่อเพลง
  final String description; //ชื่อศิลปิน
  final int PeopleLike; //ยอดการกดถูกใจ
  final String imageUrl; //รูปภาพ
  final String releaseDate; //วันที่ออกอากาศ
  final String company; //บริษัท

  Project({
    required this.title,
    required this.description,
    required this.PeopleLike,
    required this.imageUrl,
    required this.releaseDate,
  required this.company,
  });
}
