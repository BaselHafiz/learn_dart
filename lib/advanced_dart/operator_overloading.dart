void main() {
  var p1 = Point(3, 15, 6);
  var p2 = Point(17, 5, 14);

  var p3 = p1 + p2;
  print(p3.toString());

  if (p1 == p2)
    print("They're equal");
  else
    print("They aren't equal");
}

class Point {
  int x, y, z;

  Point(this.x, this.y, this.z);

  operator +(Point p) {
    return Point(this.x + p.x, this.y + p.y, this.z + p.z);
  }

  operator ==(other) {
    return this.x == other.x && this.y == other.y && this.z == other.z;
  }

  @override
  String toString() {
    return "x: $x, y: $y, z: $z";
  }
}
