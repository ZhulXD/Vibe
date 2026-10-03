package k;

import android.graphics.drawable.Drawable;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

/* JADX INFO: renamed from: k.n0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0305n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final boolean f4888a;
    public static final Method b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Field f4889c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Field f4890d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Field f4891e;
    public static final Field f;

    /* JADX WARN: Code duplicated, block: B:25:0x004a  */
    /* JADX WARN: Code duplicated, block: B:26:0x0057  */
    static {
        Method method;
        Field field;
        Field field2;
        Field field3;
        Field field4;
        boolean z2;
        try {
            Class<?> cls = Class.forName("android.graphics.Insets");
            method = Drawable.class.getMethod("getOpticalInsets", null);
            try {
                field = cls.getField("left");
                try {
                    field2 = cls.getField("top");
                    try {
                        field3 = cls.getField("right");
                        try {
                            field4 = cls.getField("bottom");
                            z2 = true;
                        } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused) {
                            field4 = null;
                            z2 = false;
                        }
                    } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused2) {
                        field3 = null;
                    }
                } catch (ClassNotFoundException unused3) {
                    field2 = null;
                    field3 = field2;
                    field4 = null;
                    z2 = false;
                    if (z2) {
                        b = method;
                        f4889c = field;
                        f4890d = field2;
                        f4891e = field3;
                        f = field4;
                        f4888a = true;
                        return;
                    }
                    b = null;
                    f4889c = null;
                    f4890d = null;
                    f4891e = null;
                    f = null;
                    f4888a = false;
                } catch (NoSuchFieldException unused4) {
                    field2 = null;
                    field3 = field2;
                    field4 = null;
                    z2 = false;
                    if (z2) {
                        b = method;
                        f4889c = field;
                        f4890d = field2;
                        f4891e = field3;
                        f = field4;
                        f4888a = true;
                        return;
                    }
                    b = null;
                    f4889c = null;
                    f4890d = null;
                    f4891e = null;
                    f = null;
                    f4888a = false;
                } catch (NoSuchMethodException unused5) {
                    field2 = null;
                    field3 = field2;
                    field4 = null;
                    z2 = false;
                    if (z2) {
                        b = method;
                        f4889c = field;
                        f4890d = field2;
                        f4891e = field3;
                        f = field4;
                        f4888a = true;
                        return;
                    }
                    b = null;
                    f4889c = null;
                    f4890d = null;
                    f4891e = null;
                    f = null;
                    f4888a = false;
                }
            } catch (ClassNotFoundException unused6) {
                field = null;
                field2 = field;
                field3 = field2;
                field4 = null;
                z2 = false;
                if (z2) {
                    b = method;
                    f4889c = field;
                    f4890d = field2;
                    f4891e = field3;
                    f = field4;
                    f4888a = true;
                    return;
                }
                b = null;
                f4889c = null;
                f4890d = null;
                f4891e = null;
                f = null;
                f4888a = false;
            } catch (NoSuchFieldException unused7) {
                field = null;
                field2 = field;
                field3 = field2;
                field4 = null;
                z2 = false;
                if (z2) {
                    b = method;
                    f4889c = field;
                    f4890d = field2;
                    f4891e = field3;
                    f = field4;
                    f4888a = true;
                    return;
                }
                b = null;
                f4889c = null;
                f4890d = null;
                f4891e = null;
                f = null;
                f4888a = false;
            } catch (NoSuchMethodException unused8) {
                field = null;
                field2 = field;
                field3 = field2;
                field4 = null;
                z2 = false;
                if (z2) {
                    b = method;
                    f4889c = field;
                    f4890d = field2;
                    f4891e = field3;
                    f = field4;
                    f4888a = true;
                    return;
                }
                b = null;
                f4889c = null;
                f4890d = null;
                f4891e = null;
                f = null;
                f4888a = false;
            }
        } catch (ClassNotFoundException unused9) {
            method = null;
            field = null;
        } catch (NoSuchFieldException unused10) {
            method = null;
            field = null;
        } catch (NoSuchMethodException unused11) {
            method = null;
            field = null;
        }
        if (z2) {
            b = method;
            f4889c = field;
            f4890d = field2;
            f4891e = field3;
            f = field4;
            f4888a = true;
            return;
        }
        b = null;
        f4889c = null;
        f4890d = null;
        f4891e = null;
        f = null;
        f4888a = false;
    }
}
