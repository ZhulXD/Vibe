package D0;

import R0.p;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Xml;
import com.minhub.gamehub.R;
import java.io.IOException;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f795a;
    public final c b = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final float f796c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final float f797d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final float f798e;
    public final float f;
    public final float g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float f799h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f800i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f801j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f802k;

    public d(Context context, c cVar) {
        AttributeSet attributeSet;
        int styleAttribute;
        int next;
        c cVar2 = cVar == null ? new c() : cVar;
        int i3 = cVar2.b;
        if (i3 != 0) {
            try {
                XmlResourceParser xml = context.getResources().getXml(i3);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                if (!TextUtils.equals(xml.getName(), "badge")) {
                    throw new XmlPullParserException("Must have a <" + ((Object) "badge") + "> start tag");
                }
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                attributeSet = attributeSetAsAttributeSet;
                styleAttribute = attributeSetAsAttributeSet.getStyleAttribute();
            } catch (IOException | XmlPullParserException e2) {
                Resources.NotFoundException notFoundException = new Resources.NotFoundException("Can't load badge resource ID #0x" + Integer.toHexString(i3));
                notFoundException.initCause(e2);
                throw notFoundException;
            }
        } else {
            attributeSet = null;
            styleAttribute = 0;
        }
        TypedArray typedArrayE = p.e(context, attributeSet, A0.a.f18a, R.attr.badgeStyle, styleAttribute == 0 ? R.style.Widget_MaterialComponents_Badge : styleAttribute, new int[0]);
        Resources resources = context.getResources();
        this.f796c = typedArrayE.getDimensionPixelSize(4, -1);
        this.f800i = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_horizontal_edge_offset);
        this.f801j = context.getResources().getDimensionPixelSize(R.dimen.mtrl_badge_text_horizontal_edge_offset);
        this.f797d = typedArrayE.getDimensionPixelSize(14, -1);
        this.f798e = typedArrayE.getDimension(12, resources.getDimension(R.dimen.m3_badge_size));
        this.g = typedArrayE.getDimension(17, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.f = typedArrayE.getDimension(3, resources.getDimension(R.dimen.m3_badge_size));
        this.f799h = typedArrayE.getDimension(13, resources.getDimension(R.dimen.m3_badge_with_text_size));
        this.f802k = typedArrayE.getInt(24, 1);
        c cVar3 = this.b;
        int i4 = cVar2.f778j;
        cVar3.f778j = i4 == -2 ? 255 : i4;
        int i5 = cVar2.f780l;
        if (i5 != -2) {
            cVar3.f780l = i5;
        } else if (typedArrayE.hasValue(23)) {
            this.b.f780l = typedArrayE.getInt(23, 0);
        } else {
            this.b.f780l = -1;
        }
        String str = cVar2.f779k;
        if (str != null) {
            this.b.f779k = str;
        } else if (typedArrayE.hasValue(7)) {
            this.b.f779k = typedArrayE.getString(7);
        }
        c cVar4 = this.b;
        cVar4.f784p = cVar2.f784p;
        CharSequence charSequence = cVar2.f785q;
        cVar4.f785q = charSequence == null ? context.getString(R.string.mtrl_badge_numberless_content_description) : charSequence;
        c cVar5 = this.b;
        int i6 = cVar2.f786r;
        cVar5.f786r = i6 == 0 ? R.plurals.mtrl_badge_content_description : i6;
        int i7 = cVar2.f787s;
        cVar5.f787s = i7 == 0 ? R.string.mtrl_exceed_max_badge_number_content_description : i7;
        Boolean bool = cVar2.f789u;
        cVar5.f789u = Boolean.valueOf(bool == null || bool.booleanValue());
        c cVar6 = this.b;
        int i8 = cVar2.f781m;
        cVar6.f781m = i8 == -2 ? typedArrayE.getInt(21, -2) : i8;
        c cVar7 = this.b;
        int i9 = cVar2.f782n;
        cVar7.f782n = i9 == -2 ? typedArrayE.getInt(22, -2) : i9;
        c cVar8 = this.b;
        Integer num = cVar2.f;
        cVar8.f = Integer.valueOf(num == null ? typedArrayE.getResourceId(5, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : num.intValue());
        c cVar9 = this.b;
        Integer num2 = cVar2.g;
        cVar9.g = Integer.valueOf(num2 == null ? typedArrayE.getResourceId(6, 0) : num2.intValue());
        c cVar10 = this.b;
        Integer num3 = cVar2.f776h;
        cVar10.f776h = Integer.valueOf(num3 == null ? typedArrayE.getResourceId(15, R.style.ShapeAppearance_M3_Sys_Shape_Corner_Full) : num3.intValue());
        c cVar11 = this.b;
        Integer num4 = cVar2.f777i;
        cVar11.f777i = Integer.valueOf(num4 == null ? typedArrayE.getResourceId(16, 0) : num4.intValue());
        c cVar12 = this.b;
        Integer num5 = cVar2.f773c;
        cVar12.f773c = Integer.valueOf(num5 == null ? com.bumptech.glide.d.r(context, typedArrayE, 1).getDefaultColor() : num5.intValue());
        c cVar13 = this.b;
        Integer num6 = cVar2.f775e;
        cVar13.f775e = Integer.valueOf(num6 == null ? typedArrayE.getResourceId(8, R.style.TextAppearance_MaterialComponents_Badge) : num6.intValue());
        Integer num7 = cVar2.f774d;
        if (num7 != null) {
            this.b.f774d = num7;
        } else if (typedArrayE.hasValue(9)) {
            this.b.f774d = Integer.valueOf(com.bumptech.glide.d.r(context, typedArrayE, 9).getDefaultColor());
        } else {
            int iIntValue = this.b.f775e.intValue();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iIntValue, A0.a.K);
            typedArrayObtainStyledAttributes.getDimension(0, 0.0f);
            ColorStateList colorStateListR = com.bumptech.glide.d.r(context, typedArrayObtainStyledAttributes, 3);
            com.bumptech.glide.d.r(context, typedArrayObtainStyledAttributes, 4);
            com.bumptech.glide.d.r(context, typedArrayObtainStyledAttributes, 5);
            typedArrayObtainStyledAttributes.getInt(2, 0);
            typedArrayObtainStyledAttributes.getInt(1, 1);
            int i10 = typedArrayObtainStyledAttributes.hasValue(12) ? 12 : 10;
            typedArrayObtainStyledAttributes.getResourceId(i10, 0);
            typedArrayObtainStyledAttributes.getString(i10);
            typedArrayObtainStyledAttributes.getBoolean(14, false);
            com.bumptech.glide.d.r(context, typedArrayObtainStyledAttributes, 6);
            typedArrayObtainStyledAttributes.getFloat(7, 0.0f);
            typedArrayObtainStyledAttributes.getFloat(8, 0.0f);
            typedArrayObtainStyledAttributes.getFloat(9, 0.0f);
            typedArrayObtainStyledAttributes.recycle();
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(iIntValue, A0.a.f38x);
            typedArrayObtainStyledAttributes2.hasValue(0);
            typedArrayObtainStyledAttributes2.getFloat(0, 0.0f);
            typedArrayObtainStyledAttributes2.recycle();
            this.b.f774d = Integer.valueOf(colorStateListR.getDefaultColor());
        }
        c cVar14 = this.b;
        Integer num8 = cVar2.f788t;
        cVar14.f788t = Integer.valueOf(num8 == null ? typedArrayE.getInt(2, 8388661) : num8.intValue());
        c cVar15 = this.b;
        Integer num9 = cVar2.f790v;
        cVar15.f790v = Integer.valueOf(num9 == null ? typedArrayE.getDimensionPixelSize(11, resources.getDimensionPixelSize(R.dimen.mtrl_badge_long_text_horizontal_padding)) : num9.intValue());
        c cVar16 = this.b;
        Integer num10 = cVar2.f791w;
        cVar16.f791w = Integer.valueOf(num10 == null ? typedArrayE.getDimensionPixelSize(10, resources.getDimensionPixelSize(R.dimen.m3_badge_with_text_vertical_padding)) : num10.intValue());
        c cVar17 = this.b;
        Integer num11 = cVar2.f792x;
        cVar17.f792x = Integer.valueOf(num11 == null ? typedArrayE.getDimensionPixelOffset(18, 0) : num11.intValue());
        c cVar18 = this.b;
        Integer num12 = cVar2.f793y;
        cVar18.f793y = Integer.valueOf(num12 == null ? typedArrayE.getDimensionPixelOffset(25, 0) : num12.intValue());
        c cVar19 = this.b;
        Integer num13 = cVar2.f794z;
        cVar19.f794z = Integer.valueOf(num13 == null ? typedArrayE.getDimensionPixelOffset(19, cVar19.f792x.intValue()) : num13.intValue());
        c cVar20 = this.b;
        Integer num14 = cVar2.f768A;
        cVar20.f768A = Integer.valueOf(num14 == null ? typedArrayE.getDimensionPixelOffset(26, cVar20.f793y.intValue()) : num14.intValue());
        c cVar21 = this.b;
        Integer num15 = cVar2.f771D;
        cVar21.f771D = Integer.valueOf(num15 == null ? typedArrayE.getDimensionPixelOffset(20, 0) : num15.intValue());
        c cVar22 = this.b;
        Integer num16 = cVar2.f769B;
        cVar22.f769B = Integer.valueOf(num16 == null ? 0 : num16.intValue());
        c cVar23 = this.b;
        Integer num17 = cVar2.f770C;
        cVar23.f770C = Integer.valueOf(num17 == null ? 0 : num17.intValue());
        c cVar24 = this.b;
        Boolean bool2 = cVar2.f772E;
        cVar24.f772E = Boolean.valueOf(bool2 == null ? typedArrayE.getBoolean(0, false) : bool2.booleanValue());
        typedArrayE.recycle();
        Locale locale = cVar2.f783o;
        if (locale == null) {
            this.b.f783o = Locale.getDefault(Locale.Category.FORMAT);
        } else {
            this.b.f783o = locale;
        }
        this.f795a = cVar2;
    }
}
