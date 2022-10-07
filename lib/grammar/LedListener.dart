// Generated from grammar/Led.g4 by ANTLR 4.11.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'LedParser.dart';

/// This abstract class defines a complete listener for a parse tree produced by
/// [LedParser].
abstract class LedListener extends ParseTreeListener {
  /// Enter a parse tree produced by [LedParser.control].
  /// [ctx] the parse tree
  void enterControl(ControlContext ctx);
  /// Exit a parse tree produced by [LedParser.control].
  /// [ctx] the parse tree
  void exitControl(ControlContext ctx);

  /// Enter a parse tree produced by [LedParser.attributeName].
  /// [ctx] the parse tree
  void enterAttributeName(AttributeNameContext ctx);
  /// Exit a parse tree produced by [LedParser.attributeName].
  /// [ctx] the parse tree
  void exitAttributeName(AttributeNameContext ctx);

  /// Enter a parse tree produced by [LedParser.attributeValue].
  /// [ctx] the parse tree
  void enterAttributeValue(AttributeValueContext ctx);
  /// Exit a parse tree produced by [LedParser.attributeValue].
  /// [ctx] the parse tree
  void exitAttributeValue(AttributeValueContext ctx);

  /// Enter a parse tree produced by [LedParser.attribute].
  /// [ctx] the parse tree
  void enterAttribute(AttributeContext ctx);
  /// Exit a parse tree produced by [LedParser.attribute].
  /// [ctx] the parse tree
  void exitAttribute(AttributeContext ctx);

  /// Enter a parse tree produced by [LedParser.attributeList].
  /// [ctx] the parse tree
  void enterAttributeList(AttributeListContext ctx);
  /// Exit a parse tree produced by [LedParser.attributeList].
  /// [ctx] the parse tree
  void exitAttributeList(AttributeListContext ctx);

  /// Enter a parse tree produced by [LedParser.attributeSection].
  /// [ctx] the parse tree
  void enterAttributeSection(AttributeSectionContext ctx);
  /// Exit a parse tree produced by [LedParser.attributeSection].
  /// [ctx] the parse tree
  void exitAttributeSection(AttributeSectionContext ctx);

  /// Enter a parse tree produced by [LedParser.value].
  /// [ctx] the parse tree
  void enterValue(ValueContext ctx);
  /// Exit a parse tree produced by [LedParser.value].
  /// [ctx] the parse tree
  void exitValue(ValueContext ctx);

  /// Enter a parse tree produced by [LedParser.valueList].
  /// [ctx] the parse tree
  void enterValueList(ValueListContext ctx);
  /// Exit a parse tree produced by [LedParser.valueList].
  /// [ctx] the parse tree
  void exitValueList(ValueListContext ctx);

  /// Enter a parse tree produced by [LedParser.valueSection].
  /// [ctx] the parse tree
  void enterValueSection(ValueSectionContext ctx);
  /// Exit a parse tree produced by [LedParser.valueSection].
  /// [ctx] the parse tree
  void exitValueSection(ValueSectionContext ctx);

  /// Enter a parse tree produced by [LedParser.instance].
  /// [ctx] the parse tree
  void enterInstance(InstanceContext ctx);
  /// Exit a parse tree produced by [LedParser.instance].
  /// [ctx] the parse tree
  void exitInstance(InstanceContext ctx);

  /// Enter a parse tree produced by [LedParser.handle].
  /// [ctx] the parse tree
  void enterHandle(HandleContext ctx);
  /// Exit a parse tree produced by [LedParser.handle].
  /// [ctx] the parse tree
  void exitHandle(HandleContext ctx);

  /// Enter a parse tree produced by [LedParser.led].
  /// [ctx] the parse tree
  void enterLed(LedContext ctx);
  /// Exit a parse tree produced by [LedParser.led].
  /// [ctx] the parse tree
  void exitLed(LedContext ctx);
}