package kotlin.text;

import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"kotlin/text/StringsKt__AppendableKt", "kotlin/text/StringsKt__IndentKt", "kotlin/text/StringsKt__RegexExtensionsJVMKt", "kotlin/text/StringsKt__RegexExtensionsKt", "kotlin/text/StringsKt__StringBuilderJVMKt", "kotlin/text/StringsKt__StringBuilderKt", "kotlin/text/StringsKt__StringNumberConversionsJVMKt", "kotlin/text/StringsKt__StringNumberConversionsKt", "kotlin/text/StringsKt__StringsJVMKt", "kotlin/text/StringsKt__StringsKt", "kotlin/text/StringsKt___StringsJvmKt", "kotlin/text/StringsKt___StringsKt"}, k = 4, mv = {2, 2, 0}, xi = 49)
public final class StringsKt extends StringsKt___StringsKt {
    private StringsKt() {
    }

    public static /* bridge */ /* synthetic */ String F(String str, char c3, char c4) {
        return StringsKt__StringsJVMKt.replace$default(str, c3, c4, false, 4, (Object) null);
    }

    public static /* bridge */ /* synthetic */ boolean N(String str, String str2) {
        return StringsKt__StringsJVMKt.startsWith$default(str, str2, false, 2, null);
    }

    public static /* bridge */ /* synthetic */ String R(String str) {
        return StringsKt__StringsKt.substringAfterLast(str, '.', "");
    }

    public static /* bridge */ /* synthetic */ String X(String str, String str2) {
        return StringsKt__StringsKt.substringBeforeLast$default(str, str2, (String) null, 2, (Object) null);
    }

    public static /* bridge */ /* synthetic */ boolean s(CharSequence charSequence, char c3) {
        return StringsKt__StringsKt.endsWith$default(charSequence, c3, false, 2, (Object) null);
    }
}
