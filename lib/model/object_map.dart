enum ObjectType {
  before,
  after,
}

class ObjectMap {
  final String name;
  ObjectType type;
  final String imgUrlBefore;
  final String imgUrlAfter;

  ObjectMap({
    required this.name,
    required this.type,
    required this.imgUrlBefore,
    required this.imgUrlAfter,
  });

  @override
  String toString() {
    return 'ObjectMap(name: $name, type: $type, imgUrlBefore: $imgUrlBefore, imgUrlAfter: $imgUrlAfter)';
  }

  ObjectMap copyWith({
    String? name,
    ObjectType? type,
    String? imgUrlBefore,
    String? imgUrlAfter,
  }) {
    return ObjectMap(
      name: name ?? this.name,
      type: type ?? this.type,
      imgUrlBefore: imgUrlBefore ?? this.imgUrlBefore,
      imgUrlAfter: imgUrlAfter ?? this.imgUrlAfter,
    );
  }
}
