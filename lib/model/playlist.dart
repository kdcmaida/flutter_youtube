class PlayList {
  String ListTitle = "", VideoId = "";

  PlayList(this.ListTitle, this.VideoId);

  String get Video_title => ListTitle;

  String get Video_id => VideoId;

  set Video_title(String newTitle) {
    if (newTitle.length < 255) {
      this.ListTitle = newTitle;
    }
  }

  set Video_id(String newTitle) {
    if (newTitle.length < 255) {
      this.VideoId = newTitle;
    }
  }
}
