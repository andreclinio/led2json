// Generated from grammar/Led.g4 by ANTLR 4.11.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'LedParser.dart';
import 'LedVisitor.dart';

/// This class provides an empty implementation of [LedVisitor],
/// which can be extended to create a visitor which only needs to handle
/// a subset of the available methods.
///
/// [T] is the return type of the visit operation. Use `void` for
/// operations with no return type.
class LedBaseVisitor<T> extends ParseTreeVisitor<T> implements LedVisitor<T> {
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitControl(ControlContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitAttributeName(AttributeNameContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitAttributeValue(AttributeValueContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitAttribute(AttributeContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitAttributeList(AttributeListContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitAttributeSection(AttributeSectionContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitValue(ValueContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitValueList(ValueListContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitValueSection(ValueSectionContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitInstance(InstanceContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitHandle(HandleContext ctx) => visitChildren(ctx);
  /// The default implementation returns the result of calling
  /// [visitChildren] on [ctx].
  @override
  T? visitLed(LedContext ctx) => visitChildren(ctx);
}