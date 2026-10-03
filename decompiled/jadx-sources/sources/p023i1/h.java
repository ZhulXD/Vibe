package p023i1;

import java.lang.reflect.Field;
import java.util.Locale;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class h {
    public static final a b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ h[] f4432c;

    static {
        a aVar = new a();
        b = aVar;
        f4432c = new h[]{aVar, new h() { // from class: i1.b
            @Override // p023i1.h
            public final String b(Field field) {
                return h.c(field.getName());
            }
        }, new h() { // from class: i1.c
            @Override // p023i1.h
            public final String b(Field field) {
                return h.c(h.a(' ', field.getName()));
            }
        }, new h() { // from class: i1.d
            @Override // p023i1.h
            public final String b(Field field) {
                return h.a('_', field.getName()).toUpperCase(Locale.ENGLISH);
            }
        }, new h() { // from class: i1.e
            @Override // p023i1.h
            public final String b(Field field) {
                return h.a('_', field.getName()).toLowerCase(Locale.ENGLISH);
            }
        }, new h() { // from class: i1.f
            @Override // p023i1.h
            public final String b(Field field) {
                return h.a('-', field.getName()).toLowerCase(Locale.ENGLISH);
            }
        }, new h() { // from class: i1.g
            @Override // p023i1.h
            public final String b(Field field) {
                return h.a('.', field.getName()).toLowerCase(Locale.ENGLISH);
            }
        }};
    }

    public static String a(char c3, String str) {
        StringBuilder sb = new StringBuilder();
        int length = str.length();
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = str.charAt(i3);
            if (Character.isUpperCase(cCharAt) && sb.length() != 0) {
                sb.append(c3);
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static String c(String str) {
        int length = str.length();
        for (int i3 = 0; i3 < length; i3++) {
            char cCharAt = str.charAt(i3);
            if (Character.isLetter(cCharAt)) {
                if (Character.isUpperCase(cCharAt)) {
                    break;
                }
                char upperCase = Character.toUpperCase(cCharAt);
                if (i3 == 0) {
                    return upperCase + str.substring(1);
                }
                return str.substring(0, i3) + upperCase + str.substring(i3 + 1);
            }
        }
        return str;
    }

    public static h valueOf(String str) {
        return (h) Enum.valueOf(h.class, str);
    }

    public static h[] values() {
        return (h[]) f4432c.clone();
    }

    public abstract String b(Field field);
}
