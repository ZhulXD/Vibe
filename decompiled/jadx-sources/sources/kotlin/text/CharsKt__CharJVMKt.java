package kotlin.text;

import java.util.Locale;
import kotlin.Deprecated;
import kotlin.DeprecatedSinceKotlin;
import kotlin.Metadata;
import kotlin.PublishedApi;
import kotlin.ReplaceWith;
import kotlin.SinceKotlin;
import kotlin.internal.InlineOnly;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\f\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0004\u001a\r\u0010\u0005\u001a\u00020\u0006*\u00020\u0002H\u0087\b\u001a\r\u0010\u0007\u001a\u00020\u0006*\u00020\u0002H\u0087\b\u001a\r\u0010\b\u001a\u00020\u0006*\u00020\u0002H\u0087\b\u001a\r\u0010\t\u001a\u00020\u0006*\u00020\u0002H\u0087\b\u001a\r\u0010\n\u001a\u00020\u0006*\u00020\u0002H\u0087\b\u001a\r\u0010\u000b\u001a\u00020\u0006*\u00020\u0002H\u0087\b\u001a\r\u0010\f\u001a\u00020\u0006*\u00020\u0002H\u0087\b\u001a\r\u0010\r\u001a\u00020\u0006*\u00020\u0002H\u0087\b\u001a\n\u0010\u000e\u001a\u00020\u0006*\u00020\u0002\u001a\r\u0010\u000f\u001a\u00020\u0006*\u00020\u0002H\u0087\b\u001a\r\u0010\u0010\u001a\u00020\u0006*\u00020\u0002H\u0087\b\u001a\r\u0010\u0011\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\r\u0010\u0012\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\r\u0010\u0013\u001a\u00020\u0014*\u00020\u0002H\u0087\b\u001a\u0014\u0010\u0013\u001a\u00020\u0014*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0016H\u0007\u001a\r\u0010\u0017\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\r\u0010\u0018\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\r\u0010\u0019\u001a\u00020\u0014*\u00020\u0002H\u0087\b\u001a\u0014\u0010\u0019\u001a\u00020\u0014*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0016H\u0007\u001a\r\u0010\u001a\u001a\u00020\u0006*\u00020\u0002H\u0087\b\u001a\r\u0010\u001b\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\r\u0010\u001c\u001a\u00020\u0002*\u00020\u0002H\u0087\b\u001a\u0014\u0010\u001d\u001a\u00020\u0014*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0016H\u0007\u001a\r\u0010\"\u001a\u00020\u0006*\u00020\u0002H\u0087\b\u001a\r\u0010#\u001a\u00020\u0006*\u00020\u0002H\u0087\b\u001a\u0018\u0010$\u001a\u00020%2\u0006\u0010&\u001a\u00020\u00022\u0006\u0010'\u001a\u00020%H\u0000\u001a\u0010\u0010(\u001a\u00020%2\u0006\u0010'\u001a\u00020%H\u0001\"\u0015\u0010\u0000\u001a\u00020\u0001*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b\u0003\u0010\u0004\"\u0015\u0010\u001e\u001a\u00020\u001f*\u00020\u00028F¢\u0006\u0006\u001a\u0004\b \u0010!¨\u0006)"}, d2 = {"category", "Lkotlin/text/CharCategory;", "", "getCategory", "(C)Lkotlin/text/CharCategory;", "isDefined", "", "isLetter", "isLetterOrDigit", "isDigit", "isIdentifierIgnorable", "isISOControl", "isJavaIdentifierPart", "isJavaIdentifierStart", "isWhitespace", "isUpperCase", "isLowerCase", "toUpperCase", "uppercaseChar", "uppercase", "", "locale", "Ljava/util/Locale;", "toLowerCase", "lowercaseChar", "lowercase", "isTitleCase", "toTitleCase", "titlecaseChar", "titlecase", "directionality", "Lkotlin/text/CharDirectionality;", "getDirectionality", "(C)Lkotlin/text/CharDirectionality;", "isHighSurrogate", "isLowSurrogate", "digitOf", "", "char", "radix", "checkRadix", "kotlin-stdlib"}, k = 5, mv = {2, 2, 0}, xi = 49, xs = "kotlin/text/CharsKt")
public class CharsKt__CharJVMKt {
    @PublishedApi
    public static int checkRadix(int i3) {
        if (2 <= i3 && i3 < 37) {
            return i3;
        }
        StringBuilder sbO = E.b.o(i3, "radix ", " was not in valid range ");
        sbO.append(new IntRange(2, 36));
        throw new IllegalArgumentException(sbO.toString());
    }

    public static final int digitOf(char c3, int i3) {
        return Character.digit((int) c3, i3);
    }

    public static final CharCategory getCategory(char c3) {
        return CharCategory.INSTANCE.valueOf(Character.getType(c3));
    }

    public static final CharDirectionality getDirectionality(char c3) {
        return CharDirectionality.INSTANCE.valueOf(Character.getDirectionality(c3));
    }

    @InlineOnly
    private static final boolean isDefined(char c3) {
        return Character.isDefined(c3);
    }

    @InlineOnly
    private static final boolean isDigit(char c3) {
        return Character.isDigit(c3);
    }

    @InlineOnly
    private static final boolean isHighSurrogate(char c3) {
        return Character.isHighSurrogate(c3);
    }

    @InlineOnly
    private static final boolean isISOControl(char c3) {
        return Character.isISOControl(c3);
    }

    @InlineOnly
    private static final boolean isIdentifierIgnorable(char c3) {
        return Character.isIdentifierIgnorable(c3);
    }

    @InlineOnly
    private static final boolean isJavaIdentifierPart(char c3) {
        return Character.isJavaIdentifierPart(c3);
    }

    @InlineOnly
    private static final boolean isJavaIdentifierStart(char c3) {
        return Character.isJavaIdentifierStart(c3);
    }

    @InlineOnly
    private static final boolean isLetter(char c3) {
        return Character.isLetter(c3);
    }

    @InlineOnly
    private static final boolean isLetterOrDigit(char c3) {
        return Character.isLetterOrDigit(c3);
    }

    @InlineOnly
    private static final boolean isLowSurrogate(char c3) {
        return Character.isLowSurrogate(c3);
    }

    @InlineOnly
    private static final boolean isLowerCase(char c3) {
        return Character.isLowerCase(c3);
    }

    @InlineOnly
    private static final boolean isTitleCase(char c3) {
        return Character.isTitleCase(c3);
    }

    @InlineOnly
    private static final boolean isUpperCase(char c3) {
        return Character.isUpperCase(c3);
    }

    public static boolean isWhitespace(char c3) {
        return Character.isWhitespace(c3) || Character.isSpaceChar(c3);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final String lowercase(char c3) {
        String strValueOf = String.valueOf(c3);
        Intrinsics.checkNotNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = strValueOf.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final char lowercaseChar(char c3) {
        return Character.toLowerCase(c3);
    }

    @SinceKotlin(version = "1.5")
    public static final String titlecase(char c3, Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        String strUppercase = uppercase(c3, locale);
        if (strUppercase.length() <= 1) {
            String strValueOf = String.valueOf(c3);
            Intrinsics.checkNotNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
            String upperCase = strValueOf.toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            if (Intrinsics.areEqual(strUppercase, upperCase)) {
                return String.valueOf(Character.toTitleCase(c3));
            }
        } else if (c3 != 329) {
            char cCharAt = strUppercase.charAt(0);
            Intrinsics.checkNotNull(strUppercase, "null cannot be cast to non-null type java.lang.String");
            String strSubstring = strUppercase.substring(1);
            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
            Intrinsics.checkNotNull(strSubstring, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = strSubstring.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            return cCharAt + lowerCase;
        }
        return strUppercase;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final char titlecaseChar(char c3) {
        return Character.toTitleCase(c3);
    }

    @Deprecated(message = "Use lowercaseChar() instead.", replaceWith = @ReplaceWith(expression = "lowercaseChar()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "2.1", warningSince = "1.5")
    @InlineOnly
    private static final char toLowerCase(char c3) {
        return Character.toLowerCase(c3);
    }

    @Deprecated(message = "Use titlecaseChar() instead.", replaceWith = @ReplaceWith(expression = "titlecaseChar()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "2.1", warningSince = "1.5")
    @InlineOnly
    private static final char toTitleCase(char c3) {
        return Character.toTitleCase(c3);
    }

    @Deprecated(message = "Use uppercaseChar() instead.", replaceWith = @ReplaceWith(expression = "uppercaseChar()", imports = {}))
    @DeprecatedSinceKotlin(errorSince = "2.1", warningSince = "1.5")
    @InlineOnly
    private static final char toUpperCase(char c3) {
        return Character.toUpperCase(c3);
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final String uppercase(char c3) {
        String strValueOf = String.valueOf(c3);
        Intrinsics.checkNotNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
        String upperCase = strValueOf.toUpperCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return upperCase;
    }

    @SinceKotlin(version = "1.5")
    @InlineOnly
    private static final char uppercaseChar(char c3) {
        return Character.toUpperCase(c3);
    }

    @SinceKotlin(version = "1.5")
    public static final String lowercase(char c3, Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        String strValueOf = String.valueOf(c3);
        Intrinsics.checkNotNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
        String lowerCase = strValueOf.toLowerCase(locale);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        return lowerCase;
    }

    @SinceKotlin(version = "1.5")
    public static final String uppercase(char c3, Locale locale) {
        Intrinsics.checkNotNullParameter(locale, "locale");
        String strValueOf = String.valueOf(c3);
        Intrinsics.checkNotNull(strValueOf, "null cannot be cast to non-null type java.lang.String");
        String upperCase = strValueOf.toUpperCase(locale);
        Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
        return upperCase;
    }
}
