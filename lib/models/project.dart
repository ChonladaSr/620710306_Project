class Project {
  final String title; //ชื่อโครงการขอรับบริจาค
  final String description; //คำอธิบายเกี่ยวกับโครงการ
  final int targetAmount; //ยอดเงินขอรับบริจาคที่ต้องการ
  final int duration; //ระยะเวลาโครงการ
  final int recieveAmount; //จำนวนเงินที่ได้รับบริจาคมาแล้ว
  final int donateCount; //จำนวนครั้งที่มีบริจาค
  final String imageUrl; //รูปภาพ
  final String projectDuration;
  final String projectArea;

  Project({
    required this.title,
    required this.description,
    required this.targetAmount,
    required this.duration,
    required this.recieveAmount,
    required this.donateCount,
    required this.imageUrl,
    required this.projectDuration,
  required this.projectArea,
  });
}
