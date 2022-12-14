// Generated from /home/macplinio/study/led2json/Led.g4 by ANTLR 4.9.2
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class LedLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.9.2", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		EQ=1, COMMA=2, SEMI=3, LPAREN=4, RPAREN=5, LSQUARE=6, RSQUARE=7, QUOTE=8, 
		INT=9, ID=10, WS=11, Q_STRING=12, NS_STRING=13;
	public static String[] channelNames = {
		"DEFAULT_TOKEN_CHANNEL", "HIDDEN"
	};

	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	private static String[] makeRuleNames() {
		return new String[] {
			"EQ", "COMMA", "SEMI", "LPAREN", "RPAREN", "LSQUARE", "RSQUARE", "QUOTE", 
			"INT", "ID", "WS", "Q_STRING", "NS_STRING"
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


	public LedLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Led.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getChannelNames() { return channelNames; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2\17P\b\1\4\2\t\2\4"+
		"\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t"+
		"\13\4\f\t\f\4\r\t\r\4\16\t\16\3\2\3\2\3\3\3\3\3\4\3\4\3\5\3\5\3\6\3\6"+
		"\3\7\3\7\3\b\3\b\3\t\3\t\3\n\6\n/\n\n\r\n\16\n\60\3\13\3\13\7\13\65\n"+
		"\13\f\13\16\138\13\13\3\f\6\f;\n\f\r\f\16\f<\3\f\3\f\3\r\3\r\3\r\3\r\7"+
		"\rE\n\r\f\r\16\rH\13\r\3\r\3\r\3\16\6\16M\n\16\r\16\16\16N\4FN\2\17\3"+
		"\3\5\4\7\5\t\6\13\7\r\b\17\t\21\n\23\13\25\f\27\r\31\16\33\17\3\2\7\3"+
		"\2\62;\5\2C\\aac|\6\2\62;C\\aac|\5\2\13\f\16\17\"\"\4\2$$\u0080\u0080"+
		"\2U\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3"+
		"\2\2\2\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2"+
		"\2\2\31\3\2\2\2\2\33\3\2\2\2\3\35\3\2\2\2\5\37\3\2\2\2\7!\3\2\2\2\t#\3"+
		"\2\2\2\13%\3\2\2\2\r\'\3\2\2\2\17)\3\2\2\2\21+\3\2\2\2\23.\3\2\2\2\25"+
		"\62\3\2\2\2\27:\3\2\2\2\31@\3\2\2\2\33L\3\2\2\2\35\36\7?\2\2\36\4\3\2"+
		"\2\2\37 \7.\2\2 \6\3\2\2\2!\"\7=\2\2\"\b\3\2\2\2#$\7*\2\2$\n\3\2\2\2%"+
		"&\7+\2\2&\f\3\2\2\2\'(\7]\2\2(\16\3\2\2\2)*\7_\2\2*\20\3\2\2\2+,\7$\2"+
		"\2,\22\3\2\2\2-/\t\2\2\2.-\3\2\2\2/\60\3\2\2\2\60.\3\2\2\2\60\61\3\2\2"+
		"\2\61\24\3\2\2\2\62\66\t\3\2\2\63\65\t\4\2\2\64\63\3\2\2\2\658\3\2\2\2"+
		"\66\64\3\2\2\2\66\67\3\2\2\2\67\26\3\2\2\28\66\3\2\2\29;\t\5\2\2:9\3\2"+
		"\2\2;<\3\2\2\2<:\3\2\2\2<=\3\2\2\2=>\3\2\2\2>?\b\f\2\2?\30\3\2\2\2@F\5"+
		"\21\t\2AB\7^\2\2BE\7$\2\2CE\13\2\2\2DA\3\2\2\2DC\3\2\2\2EH\3\2\2\2FG\3"+
		"\2\2\2FD\3\2\2\2GI\3\2\2\2HF\3\2\2\2IJ\5\21\t\2J\32\3\2\2\2KM\t\6\2\2"+
		"LK\3\2\2\2MN\3\2\2\2NO\3\2\2\2NL\3\2\2\2O\34\3\2\2\2\t\2\60\66<DFN\3\b"+
		"\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}