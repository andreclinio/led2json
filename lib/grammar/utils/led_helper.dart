import 'package:antlr4/antlr4.dart';
import 'package:led2json/grammar/LedListener.dart';
import 'package:led2json/grammar/LedParser.dart';

abstract class LedHelper implements LedListener {
  @override
  void enterAttribute(AttributeContext ctx) {}

  @override
  @override
  void enterControl(ControlContext ctx) {}

  @override
  void enterEveryRule(ParserRuleContext node) {}

  @override
  void enterHandle(HandleContext ctx) {}

  @override
  void enterInstance(InstanceContext ctx) {}

  @override
  void enterLed(LedContext ctx) {}

  @override
  void enterValue(ValueContext ctx) {}

  @override
  void enterAttributeList(AttributeListContext ctx) {}

  @override
  void enterAttributeName(AttributeNameContext ctx) {}

  @override
  void enterAttributeSection(AttributeSectionContext ctx) {}

  @override
  void enterAttributeValue(AttributeValueContext ctx) {}

  @override
  void enterValueList(ValueListContext ctx) {}

  @override
  void enterValueSection(ValueSectionContext ctx) {}

  @override
  void exitEveryRule(ParserRuleContext node) {}

  @override
  void visitErrorNode(ErrorNode node) {}

  @override
  void visitTerminal(TerminalNode node) {}
}
