package p066z1;

import A1.C0035p;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.CharsKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import p064y1.C0373f1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Regex f6442a = new Regex("try\\{(Plugins\\s*\\.\\s*link\\s*\\([^)]*\\)\\s*)\\}catch\\(e\\)\\{\\}(if\\s*\\([^)]*\\)\\s*;?)");
    public static final Regex b = new Regex("try\\{(Plugins\\s*\\.\\s*link\\s*\\([^)]*\\)\\s*;?)\\}catch\\(e\\)\\{\\}");

    public static boolean a(int i3, String str) {
        int i4 = 0;
        for (int i5 = i3 - 1; i5 >= 0; i5--) {
            char cCharAt = str.charAt(i5);
            if (cCharAt != '{') {
                if (cCharAt == '}') {
                    i4++;
                }
            } else if (i4 == 0) {
                int i6 = i5 - 1;
                while (i6 >= 0 && CharsKt.isWhitespace(str.charAt(i6))) {
                    i6--;
                }
                if (i6 >= 2 && StringsKt__StringsJVMKt.startsWith$default(str, "try", i6 - 2, false, 4, null)) {
                    return true;
                }
                i4 = 0;
            } else {
                i4--;
            }
        }
        return false;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0083  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [T, java.lang.CharSequence, java.lang.String] */
    /* JADX WARN: Type inference failed for: r1v2, types: [T, java.lang.String] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public static String b(String source) {
        int i3;
        int iD;
        int iC;
        Intrinsics.checkNotNullParameter(source, "source");
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? Replace = f6442a.replace(source, new C0373f1(16));
        objectRef.element = Replace;
        objectRef.element = b.replace((CharSequence) Replace, new C0035p(19, objectRef));
        StringBuilder sb = new StringBuilder();
        boolean z2 = false;
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) objectRef.element, "Plugins", 0, false, 6, (Object) null);
        int i4 = 0;
        while (iIndexOf$default >= 0) {
            String str = (String) objectRef.element;
            int i5 = iIndexOf$default + 7;
            int i6 = i5;
            while (i6 < str.length() && CharsKt.isWhitespace(str.charAt(i6))) {
                i6++;
            }
            if (i6 >= str.length() || str.charAt(i6) != '.') {
                i3 = -1;
            } else {
                do {
                    i6++;
                    if (i6 >= str.length()) {
                        break;
                    }
                } while (CharsKt.isWhitespace(str.charAt(i6)));
                if (StringsKt__StringsJVMKt.startsWith$default(str, "link", i6, false, 4, null)) {
                    i3 = i6 + 4;
                    while (i3 < str.length() && CharsKt.isWhitespace(str.charAt(i3))) {
                        i3++;
                    }
                    if (i3 >= str.length() || str.charAt(i3) != '(') {
                        i3 = -1;
                    }
                } else {
                    i3 = -1;
                }
            }
            int iC2 = i3 >= 0 ? c(i3, (String) objectRef.element) : -1;
            if (iC2 < 0) {
                iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) objectRef.element, "Plugins", i5, false, 4, (Object) null);
            } else {
                String str2 = (String) objectRef.element;
                int i7 = iC2 + 1;
                int i8 = i7;
                while (i8 < str2.length() && (str2.charAt(i8) == ' ' || str2.charAt(i8) == '\t')) {
                    i8++;
                }
                if (StringsKt__StringsJVMKt.startsWith$default(str2, "if", i8, false, 4, null)) {
                    int i9 = i8 + 2;
                    while (i9 < str2.length() && (str2.charAt(i9) == ' ' || str2.charAt(i9) == '\t')) {
                        i9++;
                    }
                    iD = (i9 >= str2.length() || str2.charAt(i9) != '(' || (iC = c(i9, str2)) < 0) ? d(i7, str2) : d(iC + 1, str2);
                } else {
                    iD = d(i7, str2);
                }
                String str3 = (String) objectRef.element;
                int i10 = iIndexOf$default - 1;
                while (i10 >= 0 && CharsKt.isWhitespace(str3.charAt(i10))) {
                    i10--;
                }
                if ((i10 < 0 || str3.charAt(i10) != '{' || i10 < 3 || !StringsKt__StringsJVMKt.startsWith$default(str3, "try", i10 - 3, false, 4, null)) && !a(iIndexOf$default, (String) objectRef.element)) {
                    sb.append((CharSequence) objectRef.element, i4, iIndexOf$default);
                    sb.append("try{");
                    sb.append((CharSequence) objectRef.element, iIndexOf$default, iD);
                    sb.append("}catch(e){}");
                    iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) objectRef.element, "Plugins", iD, false, 4, (Object) null);
                    z2 = true;
                    i4 = iD;
                } else {
                    iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) objectRef.element, "Plugins", iD, false, 4, (Object) null);
                }
            }
        }
        if (z2) {
            T t2 = objectRef.element;
            sb.append((CharSequence) t2, i4, ((String) t2).length());
            return sb.toString();
        }
        if (Intrinsics.areEqual(objectRef.element, source)) {
            return null;
        }
        return (String) objectRef.element;
    }

    public static int c(int i3, String str) {
        int length = str.length();
        int i4 = 0;
        while (i3 < length) {
            char cCharAt = str.charAt(i3);
            if (cCharAt == '(') {
                i4++;
            } else if (cCharAt == ')' && (i4 = i4 - 1) == 0) {
                return i3;
            }
            i3++;
        }
        return -1;
    }

    public static int d(int i3, String str) {
        int i4 = i3;
        while (i4 < str.length() && (str.charAt(i4) == ' ' || str.charAt(i4) == '\t')) {
            i4++;
        }
        return (i4 >= str.length() || str.charAt(i4) != ';') ? i3 : i4 + 1;
    }
}
