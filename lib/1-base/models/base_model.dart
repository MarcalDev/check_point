class BaseModel {
  late DateTime createdDate;
  late DateTime? updatedDate;
  bool isDeleted;
  bool isActive;

  BaseModel(
      {required this.createdDate,
      required this.updatedDate,
      this.isDeleted = false,
      this.isActive = true});
}
