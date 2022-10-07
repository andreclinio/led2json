String _spaces(n) => List.filled(n + 1, ' ').join();

class Led {
  final List<Handle> handles;
  Led(this.handles);

  String dump() {
    final spc = _spaces(4);
    final hTxt = handles.map((h) => '$spc"${h.name}": ${h.instance.dump(4)}').join(',\n');
    return '{\n$hTxt\n}';
  }
}

class Instance {
  final String controlName;
  final List<Attribute> attributes;
  final List<Value> values;
  Instance(this.controlName, this.attributes, this.values);

  @override
  String toString() {
    return "@Instance: $controlName";
  }

  String dump(int ident) {
    final spc = _spaces(ident);
    final spc2 = _spaces(ident + 4);
    final aTxt = attributes.map((a) => a.dump()).join(', ');
    final vTxt = values.map((v) => v.dump(ident + 8)).join(', ');
    final attrsDump = attributes.isEmpty ? '{}' : '{ $aTxt }';
    final valsDump = values.isEmpty ? '[]' : '[$vTxt\n$spc2]';
    return '\n'
        '$spc{\n'
        '$spc2"control": "$controlName",\n'
        '$spc2"attributes": $attrsDump, \n'
        '$spc2"values": $valsDump\n'
        '$spc}';
  }
}

class Handle {
  final String name;
  final Instance instance;
  Handle(this.name, this.instance);

  @override
  String toString() {
    return "@Handle: $name (${instance.controlName})";
  }

  String dump(int ident) {
    final spc = _spaces(ident);
    return '$spc"$name": ${instance.dump(ident + 2)}';
  }
}

class Attribute {
  final String name;
  final Value value;
  Attribute(this.name, this.value);

  @override
  String toString() {
    return "@Attribute: <$name: $value>";
  }

  String dump() {
    return '"$name": ${value.dump(0)}';
  }
}

class Value {
  final String? value;
  final Instance? instance;

  Value(this.value, this.instance);

  String dump(int ident) {
    return instance != null ? instance!.dump(ident) : '"$value"';
  }

  @override
  String toString() {
    return "@Value: $value";
  }
}
