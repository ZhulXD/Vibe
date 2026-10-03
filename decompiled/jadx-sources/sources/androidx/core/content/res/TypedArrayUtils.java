package androidx.core.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class TypedArrayUtils {
    private static final String NAMESPACE = "http://schemas.android.com/apk/res/android";

    private TypedArrayUtils() {
    }

    public static int getAttr(Context context, int i3, int i4) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(i3, typedValue, true);
        return typedValue.resourceId != 0 ? i3 : i4;
    }

    public static boolean getBoolean(TypedArray typedArray, int i3, int i4, boolean z2) {
        return typedArray.getBoolean(i3, typedArray.getBoolean(i4, z2));
    }

    public static Drawable getDrawable(TypedArray typedArray, int i3, int i4) {
        Drawable drawable = typedArray.getDrawable(i3);
        return drawable == null ? typedArray.getDrawable(i4) : drawable;
    }

    public static int getInt(TypedArray typedArray, int i3, int i4, int i5) {
        return typedArray.getInt(i3, typedArray.getInt(i4, i5));
    }

    public static boolean getNamedBoolean(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i3, boolean z2) {
        return !hasAttribute(xmlPullParser, str) ? z2 : typedArray.getBoolean(i3, z2);
    }

    public static int getNamedColor(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i3, int i4) {
        return !hasAttribute(xmlPullParser, str) ? i4 : typedArray.getColor(i3, i4);
    }

    public static ColorStateList getNamedColorStateList(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i3) {
        if (!hasAttribute(xmlPullParser, str)) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        typedArray.getValue(i3, typedValue);
        int i4 = typedValue.type;
        if (i4 != 2) {
            return (i4 < 28 || i4 > 31) ? ColorStateListInflaterCompat.inflate(typedArray.getResources(), typedArray.getResourceId(i3, 0), theme) : getNamedColorStateListFromInt(typedValue);
        }
        throw new UnsupportedOperationException("Failed to resolve attribute at index " + i3 + ": " + typedValue);
    }

    private static ColorStateList getNamedColorStateListFromInt(TypedValue typedValue) {
        return ColorStateList.valueOf(typedValue.data);
    }

    public static ComplexColorCompat getNamedComplexColor(TypedArray typedArray, XmlPullParser xmlPullParser, Resources.Theme theme, String str, int i3, int i4) {
        if (hasAttribute(xmlPullParser, str)) {
            TypedValue typedValue = new TypedValue();
            typedArray.getValue(i3, typedValue);
            int i5 = typedValue.type;
            if (i5 >= 28 && i5 <= 31) {
                return ComplexColorCompat.from(typedValue.data);
            }
            ComplexColorCompat complexColorCompatInflate = ComplexColorCompat.inflate(typedArray.getResources(), typedArray.getResourceId(i3, 0), theme);
            if (complexColorCompatInflate != null) {
                return complexColorCompatInflate;
            }
        }
        return ComplexColorCompat.from(i4);
    }

    public static float getNamedFloat(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i3, float f) {
        return !hasAttribute(xmlPullParser, str) ? f : typedArray.getFloat(i3, f);
    }

    public static int getNamedInt(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i3, int i4) {
        return !hasAttribute(xmlPullParser, str) ? i4 : typedArray.getInt(i3, i4);
    }

    public static int getNamedResourceId(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i3, int i4) {
        return !hasAttribute(xmlPullParser, str) ? i4 : typedArray.getResourceId(i3, i4);
    }

    public static String getNamedString(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i3) {
        if (hasAttribute(xmlPullParser, str)) {
            return typedArray.getString(i3);
        }
        return null;
    }

    public static int getResourceId(TypedArray typedArray, int i3, int i4, int i5) {
        return typedArray.getResourceId(i3, typedArray.getResourceId(i4, i5));
    }

    public static String getString(TypedArray typedArray, int i3, int i4) {
        String string = typedArray.getString(i3);
        return string == null ? typedArray.getString(i4) : string;
    }

    public static CharSequence getText(TypedArray typedArray, int i3, int i4) {
        CharSequence text = typedArray.getText(i3);
        return text == null ? typedArray.getText(i4) : text;
    }

    public static CharSequence[] getTextArray(TypedArray typedArray, int i3, int i4) {
        CharSequence[] textArray = typedArray.getTextArray(i3);
        return textArray == null ? typedArray.getTextArray(i4) : textArray;
    }

    public static boolean hasAttribute(XmlPullParser xmlPullParser, String str) {
        return xmlPullParser.getAttributeValue(NAMESPACE, str) != null;
    }

    public static TypedArray obtainAttributes(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    public static TypedValue peekNamedValue(TypedArray typedArray, XmlPullParser xmlPullParser, String str, int i3) {
        if (hasAttribute(xmlPullParser, str)) {
            return typedArray.peekValue(i3);
        }
        return null;
    }
}
