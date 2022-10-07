// Generated from /home/macplinio/study/led2json/Led.g4 by ANTLR 4.9.2
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class LedParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.9.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		EQ=1, COMMA=2, SEMI=3, LPAREN=4, RPAREN=5, LSQUARE=6, RSQUARE=7, QUOTE=8, 
		INT=9, ID=10, WS=11, Q_STRING=12, NS_STRING=13;
	public static final int
		RULE_attribute_name = 0, RULE_attribute_value = 1, RULE_attribute = 2, 
		RULE_attributes = 3, RULE_attribute_section = 4, RULE_value = 5, RULE_values = 6, 
		RULE_value_section = 7, RULE_definition = 8, RULE_statement = 9, RULE_led = 10;
	private static String[] makeRuleNames() {
		return new String[] {
			"attribute_name", "attribute_value", "attribute", "attributes", "attribute_section", 
			"value", "values", "value_section", "definition", "statement", "led"
		};
	}
	public static final String[] ruleNames = makeRuleNames();

	private static String[] makeLiteralNames() {
		return new String[] {
			null, "'='", "','", "';'", "'('", "')'", "'['", "']'", "'\"'"
		};
	}
	private static final String[] _LITERAL_NAMES = makeLiteralNames();
	private static String[] makeSymbolicNames() {
		return new String[] {
			null, "EQ", "COMMA", "SEMI", "LPAREN", "RPAREN", "LSQUARE", "RSQUARE", 
			"QUOTE", "INT", "ID", "WS", "Q_STRING", "NS_STRING"
		};
	}
	private static final String[] _SYMBOLIC_NAMES = makeSymbolicNames();
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Led.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }

	public LedParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	public static class Attribute_nameContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LedParser.ID, 0); }
		public TerminalNode Q_STRING() { return getToken(LedParser.Q_STRING, 0); }
		public TerminalNode NS_STRING() { return getToken(LedParser.NS_STRING, 0); }
		public TerminalNode INT() { return getToken(LedParser.INT, 0); }
		public Attribute_nameContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_attribute_name; }
	}

	public final Attribute_nameContext attribute_name() throws RecognitionException {
		Attribute_nameContext _localctx = new Attribute_nameContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_attribute_name);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(22);
			_la = _input.LA(1);
			if ( !((((_la) & ~0x3f) == 0 && ((1L << _la) & ((1L << INT) | (1L << ID) | (1L << Q_STRING) | (1L << NS_STRING))) != 0)) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Attribute_valueContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LedParser.ID, 0); }
		public TerminalNode INT() { return getToken(LedParser.INT, 0); }
		public Attribute_valueContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_attribute_value; }
	}

	public final Attribute_valueContext attribute_value() throws RecognitionException {
		Attribute_valueContext _localctx = new Attribute_valueContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_attribute_value);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(24);
			_la = _input.LA(1);
			if ( !(_la==INT || _la==ID) ) {
			_errHandler.recoverInline(this);
			}
			else {
				if ( _input.LA(1)==Token.EOF ) matchedEOF = true;
				_errHandler.reportMatch(this);
				consume();
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AttributeContext extends ParserRuleContext {
		public Attribute_nameContext attribute_name() {
			return getRuleContext(Attribute_nameContext.class,0);
		}
		public TerminalNode EQ() { return getToken(LedParser.EQ, 0); }
		public Attribute_valueContext attribute_value() {
			return getRuleContext(Attribute_valueContext.class,0);
		}
		public AttributeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_attribute; }
	}

	public final AttributeContext attribute() throws RecognitionException {
		AttributeContext _localctx = new AttributeContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_attribute);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(26);
			attribute_name();
			setState(27);
			match(EQ);
			setState(28);
			attribute_value();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AttributesContext extends ParserRuleContext {
		public AttributeContext attribute() {
			return getRuleContext(AttributeContext.class,0);
		}
		public TerminalNode COMMA() { return getToken(LedParser.COMMA, 0); }
		public AttributesContext attributes() {
			return getRuleContext(AttributesContext.class,0);
		}
		public AttributesContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_attributes; }
	}

	public final AttributesContext attributes() throws RecognitionException {
		AttributesContext _localctx = new AttributesContext(_ctx, getState());
		enterRule(_localctx, 6, RULE_attributes);
		try {
			setState(36);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,0,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(30);
				attribute();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(31);
				attribute();
				setState(32);
				match(COMMA);
				setState(33);
				attributes();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Attribute_sectionContext extends ParserRuleContext {
		public TerminalNode LSQUARE() { return getToken(LedParser.LSQUARE, 0); }
		public AttributesContext attributes() {
			return getRuleContext(AttributesContext.class,0);
		}
		public TerminalNode RSQUARE() { return getToken(LedParser.RSQUARE, 0); }
		public Attribute_sectionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_attribute_section; }
	}

	public final Attribute_sectionContext attribute_section() throws RecognitionException {
		Attribute_sectionContext _localctx = new Attribute_sectionContext(_ctx, getState());
		enterRule(_localctx, 8, RULE_attribute_section);
		try {
			setState(44);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,1,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(38);
				match(LSQUARE);
				setState(39);
				attributes();
				setState(40);
				match(RSQUARE);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(42);
				match(LSQUARE);
				setState(43);
				match(RSQUARE);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ValueContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LedParser.ID, 0); }
		public TerminalNode INT() { return getToken(LedParser.INT, 0); }
		public DefinitionContext definition() {
			return getRuleContext(DefinitionContext.class,0);
		}
		public ValueContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_value; }
	}

	public final ValueContext value() throws RecognitionException {
		ValueContext _localctx = new ValueContext(_ctx, getState());
		enterRule(_localctx, 10, RULE_value);
		try {
			setState(49);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,2,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(46);
				match(ID);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(47);
				match(INT);
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				setState(48);
				definition();
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ValuesContext extends ParserRuleContext {
		public ValueContext value() {
			return getRuleContext(ValueContext.class,0);
		}
		public TerminalNode COMMA() { return getToken(LedParser.COMMA, 0); }
		public ValuesContext values() {
			return getRuleContext(ValuesContext.class,0);
		}
		public ValuesContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_values; }
	}

	public final ValuesContext values() throws RecognitionException {
		ValuesContext _localctx = new ValuesContext(_ctx, getState());
		enterRule(_localctx, 12, RULE_values);
		try {
			setState(57);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,3,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(51);
				value();
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(52);
				value();
				setState(53);
				match(COMMA);
				setState(54);
				values();
				}
				break;
			case 3:
				enterOuterAlt(_localctx, 3);
				{
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class Value_sectionContext extends ParserRuleContext {
		public TerminalNode LPAREN() { return getToken(LedParser.LPAREN, 0); }
		public ValuesContext values() {
			return getRuleContext(ValuesContext.class,0);
		}
		public TerminalNode RPAREN() { return getToken(LedParser.RPAREN, 0); }
		public Value_sectionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_value_section; }
	}

	public final Value_sectionContext value_section() throws RecognitionException {
		Value_sectionContext _localctx = new Value_sectionContext(_ctx, getState());
		enterRule(_localctx, 14, RULE_value_section);
		try {
			setState(65);
			_errHandler.sync(this);
			switch ( getInterpreter().adaptivePredict(_input,4,_ctx) ) {
			case 1:
				enterOuterAlt(_localctx, 1);
				{
				setState(59);
				match(LPAREN);
				setState(60);
				values();
				setState(61);
				match(RPAREN);
				}
				break;
			case 2:
				enterOuterAlt(_localctx, 2);
				{
				setState(63);
				match(LPAREN);
				setState(64);
				match(RPAREN);
				}
				break;
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DefinitionContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LedParser.ID, 0); }
		public Attribute_sectionContext attribute_section() {
			return getRuleContext(Attribute_sectionContext.class,0);
		}
		public Value_sectionContext value_section() {
			return getRuleContext(Value_sectionContext.class,0);
		}
		public DefinitionContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_definition; }
	}

	public final DefinitionContext definition() throws RecognitionException {
		DefinitionContext _localctx = new DefinitionContext(_ctx, getState());
		enterRule(_localctx, 16, RULE_definition);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(67);
			match(ID);
			setState(68);
			attribute_section();
			setState(69);
			value_section();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class StatementContext extends ParserRuleContext {
		public TerminalNode ID() { return getToken(LedParser.ID, 0); }
		public TerminalNode EQ() { return getToken(LedParser.EQ, 0); }
		public DefinitionContext definition() {
			return getRuleContext(DefinitionContext.class,0);
		}
		public StatementContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_statement; }
	}

	public final StatementContext statement() throws RecognitionException {
		StatementContext _localctx = new StatementContext(_ctx, getState());
		enterRule(_localctx, 18, RULE_statement);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(71);
			match(ID);
			setState(72);
			match(EQ);
			setState(73);
			definition();
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LedContext extends ParserRuleContext {
		public List<StatementContext> statement() {
			return getRuleContexts(StatementContext.class);
		}
		public StatementContext statement(int i) {
			return getRuleContext(StatementContext.class,i);
		}
		public LedContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_led; }
	}

	public final LedContext led() throws RecognitionException {
		LedContext _localctx = new LedContext(_ctx, getState());
		enterRule(_localctx, 20, RULE_led);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(78);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==ID) {
				{
				{
				setState(75);
				statement();
				}
				}
				setState(80);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\3\17T\4\2\t\2\4\3\t"+
		"\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t\13\4"+
		"\f\t\f\3\2\3\2\3\3\3\3\3\4\3\4\3\4\3\4\3\5\3\5\3\5\3\5\3\5\3\5\5\5\'\n"+
		"\5\3\6\3\6\3\6\3\6\3\6\3\6\5\6/\n\6\3\7\3\7\3\7\5\7\64\n\7\3\b\3\b\3\b"+
		"\3\b\3\b\3\b\5\b<\n\b\3\t\3\t\3\t\3\t\3\t\3\t\5\tD\n\t\3\n\3\n\3\n\3\n"+
		"\3\13\3\13\3\13\3\13\3\f\7\fO\n\f\f\f\16\fR\13\f\3\f\2\2\r\2\4\6\b\n\f"+
		"\16\20\22\24\26\2\4\4\2\13\f\16\17\3\2\13\f\2Q\2\30\3\2\2\2\4\32\3\2\2"+
		"\2\6\34\3\2\2\2\b&\3\2\2\2\n.\3\2\2\2\f\63\3\2\2\2\16;\3\2\2\2\20C\3\2"+
		"\2\2\22E\3\2\2\2\24I\3\2\2\2\26P\3\2\2\2\30\31\t\2\2\2\31\3\3\2\2\2\32"+
		"\33\t\3\2\2\33\5\3\2\2\2\34\35\5\2\2\2\35\36\7\3\2\2\36\37\5\4\3\2\37"+
		"\7\3\2\2\2 \'\5\6\4\2!\"\5\6\4\2\"#\7\4\2\2#$\5\b\5\2$\'\3\2\2\2%\'\3"+
		"\2\2\2& \3\2\2\2&!\3\2\2\2&%\3\2\2\2\'\t\3\2\2\2()\7\b\2\2)*\5\b\5\2*"+
		"+\7\t\2\2+/\3\2\2\2,-\7\b\2\2-/\7\t\2\2.(\3\2\2\2.,\3\2\2\2/\13\3\2\2"+
		"\2\60\64\7\f\2\2\61\64\7\13\2\2\62\64\5\22\n\2\63\60\3\2\2\2\63\61\3\2"+
		"\2\2\63\62\3\2\2\2\64\r\3\2\2\2\65<\5\f\7\2\66\67\5\f\7\2\678\7\4\2\2"+
		"89\5\16\b\29<\3\2\2\2:<\3\2\2\2;\65\3\2\2\2;\66\3\2\2\2;:\3\2\2\2<\17"+
		"\3\2\2\2=>\7\6\2\2>?\5\16\b\2?@\7\7\2\2@D\3\2\2\2AB\7\6\2\2BD\7\7\2\2"+
		"C=\3\2\2\2CA\3\2\2\2D\21\3\2\2\2EF\7\f\2\2FG\5\n\6\2GH\5\20\t\2H\23\3"+
		"\2\2\2IJ\7\f\2\2JK\7\3\2\2KL\5\22\n\2L\25\3\2\2\2MO\5\24\13\2NM\3\2\2"+
		"\2OR\3\2\2\2PN\3\2\2\2PQ\3\2\2\2Q\27\3\2\2\2RP\3\2\2\2\b&.\63;CP";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}