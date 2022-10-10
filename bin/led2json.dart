import 'dart:io';

import 'package:antlr4/antlr4.dart';
import 'package:led2json/grammar/LedLexer.dart';
import 'package:led2json/grammar/LedParser.dart';
import 'package:led2json/grammar/utils/led_helper.dart';
import 'package:led2json/grammar/utils/stack.dart';

import 'package:led2json/grammar/logic/logic.dart';

class TreeShapeListener extends LedHelper {
  final Stack _stack = Stack();
  final List<Handle> _handles = [];
  String result = "";

  @override
  void exitAttribute(AttributeContext ctx) {
    final value = _stack.pop() as Value;
    final name = _stack.pop();
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
    final cString = ctx.STRING();
    String? value;
    if (cId != null) {
      value = cId.text!;
    } else if (cQString != null) {
      final text = cQString.text!;
      value = text.substring(1, text.length - 1);
    } else if (cString != null) {
      value = cString.text!;
    } else if (cInt != null) {
      value = cInt.text!;
    }
    if (value != null) {
      _stack.push(Value(value, null, null));
    }
  }

  @override
  void exitValue(ValueContext ctx) {
    final cId = ctx.ID();
    final cQString = ctx.Q_STRING();
    final cInt = ctx.INT();
    final cInstance = ctx.instance();
    final cHandle = ctx.handle();
    String? value;
    Instance? instance;
    Handle? handle;
    if (cId != null) {
      value = cId.text!;
    } else if (cQString != null) {
      final text = cQString.text!;
      value = text.substring(1, text.length - 1);
    } else if (cInt != null) {
      value = cInt.text!;
    } else if (cInstance != null) {
      instance = _stack.pop();
    } else if (cHandle != null) {
      handle = _stack.pop();
    }

    if (value != null || instance != null || handle != null) {
      _stack.push(Value(value, instance, handle));
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
    final instance = Instance(controlName, attributes, values);
    _stack.push(instance);
  }

  @override
  void exitHandle(HandleContext ctx) {
    final ntId = ctx.ID()!;
    final instance = _stack.pop() as Instance;
    final handleName = ntId.text!;
    final handle = Handle(handleName, instance);
    _handles.add(handle);
    _stack.push(handle);
  }

  @override
  void exitLed(LedContext ctx) {
    final led = Led(_handles);
    result = led.dump();
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
  final listener = TreeShapeListener();
  ParseTreeWalker.DEFAULT.walk(listener, tree);

  final output = File(args[1]);
  output.writeAsString(listener.result);
}
