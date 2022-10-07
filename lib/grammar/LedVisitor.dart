// Generated from grammar/Led.g4 by ANTLR 4.11.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'LedParser.dart';

/// This abstract class defines a complete generic visitor for a parse tree
/// produced by [LedParser].
///
/// [T] is the eturn type of the visit operation. Use `void` for
/// operations with no return type.
abstract class LedVisitor<T> extends ParseTreeVisitor<T> {
  /// Visit a parse tree produced by [LedParser.control].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitControl(ControlContext ctx);

  /// Visit a parse tree produced by [LedParser.attributeName].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitAttributeName(AttributeNameContext ctx);

  /// Visit a parse tree produced by [LedParser.attributeValue].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitAttributeValue(AttributeValueContext ctx);

  /// Visit a parse tree produced by [LedParser.attribute].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitAttribute(AttributeContext ctx);

  /// Visit a parse tree produced by [LedParser.attributeList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitAttributeList(AttributeListContext ctx);

  /// Visit a parse tree produced by [LedParser.attributeSection].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitAttributeSection(AttributeSectionContext ctx);

  /// Visit a parse tree produced by [LedParser.value].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitValue(ValueContext ctx);

  /// Visit a parse tree produced by [LedParser.valueList].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitValueList(ValueListContext ctx);

  /// Visit a parse tree produced by [LedParser.valueSection].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitValueSection(ValueSectionContext ctx);

  /// Visit a parse tree produced by [LedParser.instance].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitInstance(InstanceContext ctx);

  /// Visit a parse tree produced by [LedParser.handle].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitHandle(HandleContext ctx);

  /// Visit a parse tree produced by [LedParser.led].
  /// [ctx] the parse tree.
  /// Return the visitor result.
  T? visitLed(LedContext ctx);
}