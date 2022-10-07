class Instance {
  final String controlName;
  final List<Attribute> attributes;
  final List<Value> values;
  Instance(this.controlName, this.attributes, this.values);
}

class Handle {
  final String name;
  final Instance control;
  Handle(this.name, this.control);
}

class Attribute {
  final String name;
  final Value value;
  Attribute(this.name, this.value);

  @override
  String toString() {
    return "Attribute: <$name: $value>";
  }
}

class Value {
  final String value;
  Value(this.value);

  @override
  String toString() {
    return "Value: $value";
  }
}
