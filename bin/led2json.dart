import 'package:antlr4/antlr4.dart';
import 'package:led2json/grammar/LedLexer.dart';
import 'package:led2json/grammar/LedParser.dart';
import 'package:led2json/grammar/utils/led_helper.dart';
import 'package:led2json/grammar/utils/stack.dart';

import 'package:led2json/grammar/logic/logic.dart';

class TreeShapeListener extends LedHelper {
  final List<Handle> _handles = [];
  final Stack _stack = Stack();

  @override
  void exitAttribute(AttributeContext ctx) {
    final value = _stack.pop() as Value;
    final name = _stack.pop();
    print("   ---  attr $name = $value");
    _stack.push(Attribute(name, value));
  }

  @override
  void exitAttributeList(AttributeListContext ctx) {
    final numAttrs = ctx.childCount;
    final List<Attribute> attributes = [];
    for (int i = 0; i < numAttrs; i++) {
      final child = ctx.attribute(i);
      if (child != null) attributes.add(_stack.pop() as Attribute);
    }
    print("   ---  Attributes $attributes");
    _stack.push(attributes.reversed.toList());
  }

  @override
  void exitAttributeName(AttributeNameContext ctx) {
    final name = ctx.children!.first.toString();
    _stack.push(name);
  }

  @override
  void exitAttributeSection(AttributeSectionContext ctx) {}

  @override
  void exitAttributeValue(AttributeValueContext ctx) {
    final cId = ctx.ID();
    final cQString = ctx.Q_STRING();
    final cInt = ctx.INT();
    String? value;
    if (cId != null) {
      value = cId.text!;
    } else if (cQString != null) {
      final text = cQString.text!;
      value = text.substring(1, text.length - 1);
    } else if (cInt != null) {
      value = cInt.text!;
    }
    if (value != null) {
      print("   ---  attr-value $value");
      _stack.push(Value(value, null));
    }
  }

  @override
  void exitValue(ValueContext ctx) {
    final cId = ctx.ID();
    final cQString = ctx.Q_STRING();
    final cInt = ctx.INT();
    final cInstance = ctx.instance();
    String? value;
    Instance? instance;
    if (cId != null) {
      value = cId.text!;
    } else if (cQString != null) {
      final text = cQString.text!;
      value = text.substring(1, text.length - 1);
    } else if (cInt != null) {
      value = cInt.text!;
    } else if (cInstance != null) {
      instance = _stack.pop();
    }

    if (value != null || instance != null) {
      print("   ---  value $value $instance");
      _stack.push(Value(value, instance));
    }
  }

  @override
  void exitValueList(ValueListContext ctx) {
    final numValues = ctx.childCount;
    final List<Value> values = [];
    for (int i = 0; i < numValues; i++) {
      final child = ctx.value(i);
      if (child != null) values.add(_stack.pop());
    }
    print("   ---  values $values");
    _stack.push(values.reversed.toList());
  }

  @override
  void exitValueSection(ValueSectionContext ctx) {
    // Recebe a lista de valores na pilha e deixa.
  }

  @override
  void exitControl(ControlContext ctx) {}

  @override
  void exitInstance(InstanceContext ctx) {
    final ctrl = ctx.control();
    final attr = ctx.attributeSection();
    final val = ctx.valueSection();
    final List<Attribute> attributes;
    final List<Value> values;
    if (val != null && val.valueList() != null) {
      final x = _stack.pop();
      values = x;
    } else {
      values = [];
    }
    if (attr != null && attr.attributeList() != null) {
      attributes = _stack.pop();
    } else {
      attributes = [];
    }
    final controlName = ctrl!.text;
    print("---> INSTANCE ${controlName} ${attributes} ${values}");
    final instance = Instance(controlName, attributes, values);
    _stack.push(instance);
  }

  @override
  void exitHandle(HandleContext ctx) {
    final ntId = ctx.ID()!;
    final instance = _stack.pop() as Instance;
    final handleName = ntId.text!;
    _handles.add(Handle(handleName, instance));
  }

  @override
  void exitLed(LedContext ctx) {
    final led = Led(_handles);
    print(led.dump());
  }
}

void main(List<String> args) async {
  LedLexer.checkVersion();
  LedParser.checkVersion();
  final input = await InputStream.fromPath(args[0]);
  final lexer = LedLexer(input);
  final tokens = CommonTokenStream(lexer);
  final parser = LedParser(tokens);
  parser.addErrorListener(DiagnosticErrorListener());
  parser.buildParseTree = true;
  final tree = parser.led();
  ParseTreeWalker.DEFAULT.walk(TreeShapeListener(), tree);
}
