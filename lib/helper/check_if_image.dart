bool isImage(String extention){
  // .jpg,.jpeg,.png

  List imageExtentions = [
    "jpg", "jpeg", "png"
  ];

  return imageExtentions.contains(extention);
}