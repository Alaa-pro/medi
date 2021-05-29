class Note {

  int _id;
  String _title;
  // String _date;
  // int _priority;
  int _min;
  int _max;
  int _dosage;


  Note(this._title,this._min,this._max,this._dosage);

  Note.withId(this._id, this._title,this._min,this._max,this._dosage);

  int get id => _id;
  String get title => _title;
  int get min => _min;
  int get max => _max;
  int get dosage => _dosage;


  set title(String newTitle) {
    if (newTitle.length <= 255) {
      this._title = newTitle;
    }
  }

  set min(int newMin) {
      this._min = newMin;
  }
  set max(int newMax) {
    this._max = newMax;
  }
  set dosage(int newDosage) {
    this._dosage = newDosage;
  }

  // set priority(int newPriority) {
  //   if (newPriority >= 1 && newPriority <= 2) {
  //     this._priority = newPriority;
  //   }
  // }
  //
  // set date(String newDate) {
  //   this._date = newDate;
  // }

  // set min(String newMin) {
  //   this._min = newMin;
  // }

  // Convert a Note object into a Map object
  Map<String, dynamic> toMap() {

    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    // map['priority'] = _priority;
    // map['date'] = _date;
    map['min'] = _min;
    map['max'] = _max;
    map['dosage'] = _dosage;
    return map;
  }

  // Extract a Note object from a Map object
  Note.fromMapObject(Map<String, dynamic> map) {
    this._id = map['id'];
    this._title = map['title'];
    // this._priority = map['priority'];
    // this._date = map['date'];
    this._min = map['min'];
    this._max = map['max'];
    this._dosage = map['dosage'];
  }
}



