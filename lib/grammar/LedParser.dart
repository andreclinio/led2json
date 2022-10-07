// Generated from grammar/Led.g4 by ANTLR 4.11.1
// ignore_for_file: unused_import, unused_local_variable, prefer_single_quotes
import 'package:antlr4/antlr4.dart';

import 'LedListener.dart';
import 'LedBaseListener.dart';
import 'LedVisitor.dart';
import 'LedBaseVisitor.dart';
const int RULE_control = 0, RULE_attributeName = 1, RULE_attributeValue = 2, 
          RULE_attribute = 3, RULE_attributeList = 4, RULE_attributeSection = 5, 
          RULE_value = 6, RULE_valueList = 7, RULE_valueSection = 8, RULE_instance = 9, 
          RULE_handle = 10, RULE_led = 11;
class LedParser extends Parser {
  static final checkVersion = () => RuntimeMetaData.checkVersion('4.11.1', RuntimeMetaData.VERSION);
  static const int TOKEN_EOF = IntStream.EOF;

  static final List<DFA> _decisionToDFA = List.generate(
      _ATN.numberOfDecisions, (i) => DFA(_ATN.getDecisionState(i), i));
  static final PredictionContextCache _sharedContextCache = PredictionContextCache();
  static const int TOKEN_T__0 = 1, TOKEN_T__1 = 2, TOKEN_T__2 = 3, TOKEN_T__3 = 4, 
                   TOKEN_T__4 = 5, TOKEN_T__5 = 6, TOKEN_T__6 = 7, TOKEN_T__7 = 8, 
                   TOKEN_T__8 = 9, TOKEN_EQ = 10, TOKEN_COMMA = 11, TOKEN_SEMI = 12, 
                   TOKEN_LPAREN = 13, TOKEN_RPAREN = 14, TOKEN_LSQUARE = 15, 
                   TOKEN_RSQUARE = 16, TOKEN_QUOTE = 17, TOKEN_INT = 18, 
                   TOKEN_ID = 19, TOKEN_WS = 20, TOKEN_NEWLINE = 21, TOKEN_Q_STRING = 22;

  @override
  final List<String> ruleNames = [
    'control', 'attributeName', 'attributeValue', 'attribute', 'attributeList', 
    'attributeSection', 'value', 'valueList', 'valueSection', 'instance', 
    'handle', 'led'
  ];

  static final List<String?> _LITERAL_NAMES = [
      null, "'menu'", "'submenu'", "'button'", "'item'", "'dialog'", "'separator'", 
      "'fill'", "'hbox'", "'vbox'", "'='", "','", "';'", "'('", "')'", "'['", 
      "']'", "'\"'"
  ];
  static final List<String?> _SYMBOLIC_NAMES = [
      null, null, null, null, null, null, null, null, null, null, "EQ", 
      "COMMA", "SEMI", "LPAREN", "RPAREN", "LSQUARE", "RSQUARE", "QUOTE", 
      "INT", "ID", "WS", "NEWLINE", "Q_STRING"
  ];
  static final Vocabulary VOCABULARY = VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

  @override
  Vocabulary get vocabulary {
    return VOCABULARY;
  }

  @override
  String get grammarFileName => 'Led.g4';

  @override
  List<int> get serializedATN => _serializedATN;

  @override
  ATN getATN() {
   return _ATN;
  }

  LedParser(TokenStream input) : super(input) {
    interpreter = ParserATNSimulator(this, _ATN, _decisionToDFA, _sharedContextCache);
  }

  ControlContext control() {
    dynamic _localctx = ControlContext(context, state);
    enterRule(_localctx, 0, RULE_control);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 24;
      _la = tokenStream.LA(1)!;
      if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 1022) != 0)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AttributeNameContext attributeName() {
    dynamic _localctx = AttributeNameContext(context, state);
    enterRule(_localctx, 2, RULE_attributeName);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 26;
      _la = tokenStream.LA(1)!;
      if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 4980736) != 0)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AttributeValueContext attributeValue() {
    dynamic _localctx = AttributeValueContext(context, state);
    enterRule(_localctx, 4, RULE_attributeValue);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 28;
      _la = tokenStream.LA(1)!;
      if (!(((_la) & ~0x3f) == 0 && ((1 << _la) & 4980736) != 0)) {
      errorHandler.recoverInline(this);
      } else {
        if ( tokenStream.LA(1)! == IntStream.EOF ) matchedEOF = true;
        errorHandler.reportMatch(this);
        consume();
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AttributeContext attribute() {
    dynamic _localctx = AttributeContext(context, state);
    enterRule(_localctx, 6, RULE_attribute);
    try {
      enterOuterAlt(_localctx, 1);
      state = 30;
      attributeName();
      state = 31;
      match(TOKEN_EQ);
      state = 32;
      attributeValue();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AttributeListContext attributeList() {
    dynamic _localctx = AttributeListContext(context, state);
    enterRule(_localctx, 8, RULE_attributeList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 34;
      attribute();
      state = 39;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 35;
        match(TOKEN_COMMA);
        state = 36;
        attribute();
        state = 41;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  AttributeSectionContext attributeSection() {
    dynamic _localctx = AttributeSectionContext(context, state);
    enterRule(_localctx, 10, RULE_attributeSection);
    try {
      state = 49;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 1, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 42;
        match(TOKEN_LSQUARE);
        state = 43;
        attributeList();
        state = 44;
        match(TOKEN_RSQUARE);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 46;
        match(TOKEN_LSQUARE);
        state = 47;
        match(TOKEN_RSQUARE);
        break;
      case 3:
        enterOuterAlt(_localctx, 3);

        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ValueContext value() {
    dynamic _localctx = ValueContext(context, state);
    enterRule(_localctx, 12, RULE_value);
    try {
      state = 55;
      errorHandler.sync(this);
      switch (tokenStream.LA(1)!) {
      case TOKEN_ID:
        enterOuterAlt(_localctx, 1);
        state = 51;
        match(TOKEN_ID);
        break;
      case TOKEN_INT:
        enterOuterAlt(_localctx, 2);
        state = 52;
        match(TOKEN_INT);
        break;
      case TOKEN_Q_STRING:
        enterOuterAlt(_localctx, 3);
        state = 53;
        match(TOKEN_Q_STRING);
        break;
      case TOKEN_T__0:
      case TOKEN_T__1:
      case TOKEN_T__2:
      case TOKEN_T__3:
      case TOKEN_T__4:
      case TOKEN_T__5:
      case TOKEN_T__6:
      case TOKEN_T__7:
      case TOKEN_T__8:
        enterOuterAlt(_localctx, 4);
        state = 54;
        instance();
        break;
      default:
        throw NoViableAltException(this);
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ValueListContext valueList() {
    dynamic _localctx = ValueListContext(context, state);
    enterRule(_localctx, 14, RULE_valueList);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 57;
      value();
      state = 62;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_COMMA) {
        state = 58;
        match(TOKEN_COMMA);
        state = 59;
        value();
        state = 64;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  ValueSectionContext valueSection() {
    dynamic _localctx = ValueSectionContext(context, state);
    enterRule(_localctx, 16, RULE_valueSection);
    try {
      state = 71;
      errorHandler.sync(this);
      switch (interpreter!.adaptivePredict(tokenStream, 4, context)) {
      case 1:
        enterOuterAlt(_localctx, 1);
        state = 65;
        match(TOKEN_LPAREN);
        state = 66;
        valueList();
        state = 67;
        match(TOKEN_RPAREN);
        break;
      case 2:
        enterOuterAlt(_localctx, 2);
        state = 69;
        match(TOKEN_LPAREN);
        state = 70;
        match(TOKEN_RPAREN);
        break;
      }
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  InstanceContext instance() {
    dynamic _localctx = InstanceContext(context, state);
    enterRule(_localctx, 18, RULE_instance);
    try {
      enterOuterAlt(_localctx, 1);
      state = 73;
      control();
      state = 74;
      attributeSection();
      state = 75;
      valueSection();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  HandleContext handle() {
    dynamic _localctx = HandleContext(context, state);
    enterRule(_localctx, 20, RULE_handle);
    try {
      enterOuterAlt(_localctx, 1);
      state = 77;
      match(TOKEN_ID);
      state = 78;
      match(TOKEN_EQ);
      state = 79;
      instance();
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  LedContext led() {
    dynamic _localctx = LedContext(context, state);
    enterRule(_localctx, 22, RULE_led);
    int _la;
    try {
      enterOuterAlt(_localctx, 1);
      state = 84;
      errorHandler.sync(this);
      _la = tokenStream.LA(1)!;
      while (_la == TOKEN_ID) {
        state = 81;
        handle();
        state = 86;
        errorHandler.sync(this);
        _la = tokenStream.LA(1)!;
      }
      state = 87;
      match(TOKEN_EOF);
    } on RecognitionException catch (re) {
      _localctx.exception = re;
      errorHandler.reportError(this, re);
      errorHandler.recover(this, re);
    } finally {
      exitRule();
    }
    return _localctx;
  }

  static const List<int> _serializedATN = [
      4,1,22,90,2,0,7,0,2,1,7,1,2,2,7,2,2,3,7,3,2,4,7,4,2,5,7,5,2,6,7,6,
      2,7,7,7,2,8,7,8,2,9,7,9,2,10,7,10,2,11,7,11,1,0,1,0,1,1,1,1,1,2,1,
      2,1,3,1,3,1,3,1,3,1,4,1,4,1,4,5,4,38,8,4,10,4,12,4,41,9,4,1,5,1,5,
      1,5,1,5,1,5,1,5,1,5,3,5,50,8,5,1,6,1,6,1,6,1,6,3,6,56,8,6,1,7,1,7,
      1,7,5,7,61,8,7,10,7,12,7,64,9,7,1,8,1,8,1,8,1,8,1,8,1,8,3,8,72,8,8,
      1,9,1,9,1,9,1,9,1,10,1,10,1,10,1,10,1,11,5,11,83,8,11,10,11,12,11,
      86,9,11,1,11,1,11,1,11,0,0,12,0,2,4,6,8,10,12,14,16,18,20,22,0,2,1,
      0,1,9,2,0,18,19,22,22,86,0,24,1,0,0,0,2,26,1,0,0,0,4,28,1,0,0,0,6,
      30,1,0,0,0,8,34,1,0,0,0,10,49,1,0,0,0,12,55,1,0,0,0,14,57,1,0,0,0,
      16,71,1,0,0,0,18,73,1,0,0,0,20,77,1,0,0,0,22,84,1,0,0,0,24,25,7,0,
      0,0,25,1,1,0,0,0,26,27,7,1,0,0,27,3,1,0,0,0,28,29,7,1,0,0,29,5,1,0,
      0,0,30,31,3,2,1,0,31,32,5,10,0,0,32,33,3,4,2,0,33,7,1,0,0,0,34,39,
      3,6,3,0,35,36,5,11,0,0,36,38,3,6,3,0,37,35,1,0,0,0,38,41,1,0,0,0,39,
      37,1,0,0,0,39,40,1,0,0,0,40,9,1,0,0,0,41,39,1,0,0,0,42,43,5,15,0,0,
      43,44,3,8,4,0,44,45,5,16,0,0,45,50,1,0,0,0,46,47,5,15,0,0,47,50,5,
      16,0,0,48,50,1,0,0,0,49,42,1,0,0,0,49,46,1,0,0,0,49,48,1,0,0,0,50,
      11,1,0,0,0,51,56,5,19,0,0,52,56,5,18,0,0,53,56,5,22,0,0,54,56,3,18,
      9,0,55,51,1,0,0,0,55,52,1,0,0,0,55,53,1,0,0,0,55,54,1,0,0,0,56,13,
      1,0,0,0,57,62,3,12,6,0,58,59,5,11,0,0,59,61,3,12,6,0,60,58,1,0,0,0,
      61,64,1,0,0,0,62,60,1,0,0,0,62,63,1,0,0,0,63,15,1,0,0,0,64,62,1,0,
      0,0,65,66,5,13,0,0,66,67,3,14,7,0,67,68,5,14,0,0,68,72,1,0,0,0,69,
      70,5,13,0,0,70,72,5,14,0,0,71,65,1,0,0,0,71,69,1,0,0,0,72,17,1,0,0,
      0,73,74,3,0,0,0,74,75,3,10,5,0,75,76,3,16,8,0,76,19,1,0,0,0,77,78,
      5,19,0,0,78,79,5,10,0,0,79,80,3,18,9,0,80,21,1,0,0,0,81,83,3,20,10,
      0,82,81,1,0,0,0,83,86,1,0,0,0,84,82,1,0,0,0,84,85,1,0,0,0,85,87,1,
      0,0,0,86,84,1,0,0,0,87,88,5,0,0,1,88,23,1,0,0,0,6,39,49,55,62,71,84
  ];

  static final ATN _ATN =
      ATNDeserializer().deserialize(_serializedATN);
}
class ControlContext extends ParserRuleContext {
  ControlContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_control;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.enterControl(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.exitControl(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LedVisitor<T>) {
     return visitor.visitControl(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class AttributeNameContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(LedParser.TOKEN_ID, 0);
  TerminalNode? Q_STRING() => getToken(LedParser.TOKEN_Q_STRING, 0);
  TerminalNode? INT() => getToken(LedParser.TOKEN_INT, 0);
  AttributeNameContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_attributeName;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.enterAttributeName(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.exitAttributeName(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LedVisitor<T>) {
     return visitor.visitAttributeName(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class AttributeValueContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(LedParser.TOKEN_ID, 0);
  TerminalNode? INT() => getToken(LedParser.TOKEN_INT, 0);
  TerminalNode? Q_STRING() => getToken(LedParser.TOKEN_Q_STRING, 0);
  AttributeValueContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_attributeValue;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.enterAttributeValue(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.exitAttributeValue(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LedVisitor<T>) {
     return visitor.visitAttributeValue(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class AttributeContext extends ParserRuleContext {
  AttributeNameContext? attributeName() => getRuleContext<AttributeNameContext>(0);
  TerminalNode? EQ() => getToken(LedParser.TOKEN_EQ, 0);
  AttributeValueContext? attributeValue() => getRuleContext<AttributeValueContext>(0);
  AttributeContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_attribute;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.enterAttribute(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.exitAttribute(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LedVisitor<T>) {
     return visitor.visitAttribute(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class AttributeListContext extends ParserRuleContext {
  List<AttributeContext> attributes() => getRuleContexts<AttributeContext>();
  AttributeContext? attribute(int i) => getRuleContext<AttributeContext>(i);
  List<TerminalNode> COMMAs() => getTokens(LedParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(LedParser.TOKEN_COMMA, i);
  AttributeListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_attributeList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.enterAttributeList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.exitAttributeList(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LedVisitor<T>) {
     return visitor.visitAttributeList(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class AttributeSectionContext extends ParserRuleContext {
  TerminalNode? LSQUARE() => getToken(LedParser.TOKEN_LSQUARE, 0);
  AttributeListContext? attributeList() => getRuleContext<AttributeListContext>(0);
  TerminalNode? RSQUARE() => getToken(LedParser.TOKEN_RSQUARE, 0);
  AttributeSectionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_attributeSection;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.enterAttributeSection(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.exitAttributeSection(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LedVisitor<T>) {
     return visitor.visitAttributeSection(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ValueContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(LedParser.TOKEN_ID, 0);
  TerminalNode? INT() => getToken(LedParser.TOKEN_INT, 0);
  TerminalNode? Q_STRING() => getToken(LedParser.TOKEN_Q_STRING, 0);
  InstanceContext? instance() => getRuleContext<InstanceContext>(0);
  ValueContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_value;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.enterValue(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.exitValue(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LedVisitor<T>) {
     return visitor.visitValue(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ValueListContext extends ParserRuleContext {
  List<ValueContext> values() => getRuleContexts<ValueContext>();
  ValueContext? value(int i) => getRuleContext<ValueContext>(i);
  List<TerminalNode> COMMAs() => getTokens(LedParser.TOKEN_COMMA);
  TerminalNode? COMMA(int i) => getToken(LedParser.TOKEN_COMMA, i);
  ValueListContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_valueList;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.enterValueList(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.exitValueList(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LedVisitor<T>) {
     return visitor.visitValueList(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class ValueSectionContext extends ParserRuleContext {
  TerminalNode? LPAREN() => getToken(LedParser.TOKEN_LPAREN, 0);
  ValueListContext? valueList() => getRuleContext<ValueListContext>(0);
  TerminalNode? RPAREN() => getToken(LedParser.TOKEN_RPAREN, 0);
  ValueSectionContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_valueSection;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.enterValueSection(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.exitValueSection(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LedVisitor<T>) {
     return visitor.visitValueSection(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class InstanceContext extends ParserRuleContext {
  ControlContext? control() => getRuleContext<ControlContext>(0);
  AttributeSectionContext? attributeSection() => getRuleContext<AttributeSectionContext>(0);
  ValueSectionContext? valueSection() => getRuleContext<ValueSectionContext>(0);
  InstanceContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_instance;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.enterInstance(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.exitInstance(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LedVisitor<T>) {
     return visitor.visitInstance(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class HandleContext extends ParserRuleContext {
  TerminalNode? ID() => getToken(LedParser.TOKEN_ID, 0);
  TerminalNode? EQ() => getToken(LedParser.TOKEN_EQ, 0);
  InstanceContext? instance() => getRuleContext<InstanceContext>(0);
  HandleContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_handle;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.enterHandle(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.exitHandle(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LedVisitor<T>) {
     return visitor.visitHandle(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

class LedContext extends ParserRuleContext {
  TerminalNode? EOF() => getToken(LedParser.TOKEN_EOF, 0);
  List<HandleContext> handles() => getRuleContexts<HandleContext>();
  HandleContext? handle(int i) => getRuleContext<HandleContext>(i);
  LedContext([ParserRuleContext? parent, int? invokingState]) : super(parent, invokingState);
  @override
  int get ruleIndex => RULE_led;
  @override
  void enterRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.enterLed(this);
  }
  @override
  void exitRule(ParseTreeListener listener) {
    if (listener is LedListener) listener.exitLed(this);
  }
  @override
  T? accept<T>(ParseTreeVisitor<T> visitor) {
    if (visitor is LedVisitor<T>) {
     return visitor.visitLed(this);
    } else {
    	return visitor.visitChildren(this);
    }
  }
}

