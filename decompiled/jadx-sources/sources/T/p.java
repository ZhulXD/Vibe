package T;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import androidx.core.graphics.drawable.DrawableCompat;
import androidx.core.view.MotionEventCompat;
import java.io.IOException;
import java.util.ArrayDeque;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class p extends g {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final PorterDuff.Mode f2125k = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public n f2126c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public PorterDuffColorFilter f2127d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public ColorFilter f2128e;
    public boolean f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final float[] f2129h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Matrix f2130i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Rect f2131j;

    public p() {
        this.g = true;
        this.f2129h = new float[9];
        this.f2130i = new Matrix();
        this.f2131j = new Rect();
        n nVar = new n();
        nVar.f2116c = null;
        nVar.f2117d = f2125k;
        nVar.b = new m();
        this.f2126c = nVar;
    }

    public final PorterDuffColorFilter a(ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean canApplyTheme() {
        Drawable drawable = this.b;
        if (drawable == null) {
            return false;
        }
        DrawableCompat.canApplyTheme(drawable);
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Paint paint;
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.draw(canvas);
            return;
        }
        Rect rect = this.f2131j;
        copyBounds(rect);
        if (rect.width() <= 0 || rect.height() <= 0) {
            return;
        }
        ColorFilter colorFilter = this.f2128e;
        if (colorFilter == null) {
            colorFilter = this.f2127d;
        }
        Matrix matrix = this.f2130i;
        canvas.getMatrix(matrix);
        float[] fArr = this.f2129h;
        matrix.getValues(fArr);
        float fAbs = Math.abs(fArr[0]);
        float fAbs2 = Math.abs(fArr[4]);
        float fAbs3 = Math.abs(fArr[1]);
        float fAbs4 = Math.abs(fArr[3]);
        if (fAbs3 != 0.0f || fAbs4 != 0.0f) {
            fAbs = 1.0f;
            fAbs2 = 1.0f;
        }
        int iWidth = (int) (rect.width() * fAbs);
        int iHeight = (int) (rect.height() * fAbs2);
        int iMin = Math.min(2048, iWidth);
        int iMin2 = Math.min(2048, iHeight);
        if (iMin <= 0 || iMin2 <= 0) {
            return;
        }
        int iSave = canvas.save();
        canvas.translate(rect.left, rect.top);
        if (isAutoMirrored() && DrawableCompat.getLayoutDirection(this) == 1) {
            canvas.translate(rect.width(), 0.0f);
            canvas.scale(-1.0f, 1.0f);
        }
        rect.offsetTo(0, 0);
        n nVar = this.f2126c;
        Bitmap bitmap = nVar.f;
        if (bitmap == null || iMin != bitmap.getWidth() || iMin2 != nVar.f.getHeight()) {
            nVar.f = Bitmap.createBitmap(iMin, iMin2, Bitmap.Config.ARGB_8888);
            nVar.f2122k = true;
        }
        if (this.g) {
            n nVar2 = this.f2126c;
            if (nVar2.f2122k || nVar2.g != nVar2.f2116c || nVar2.f2119h != nVar2.f2117d || nVar2.f2121j != nVar2.f2118e || nVar2.f2120i != nVar2.b.getRootAlpha()) {
                n nVar3 = this.f2126c;
                nVar3.f.eraseColor(0);
                Canvas canvas2 = new Canvas(nVar3.f);
                m mVar = nVar3.b;
                mVar.a(mVar.g, m.f2102p, canvas2, iMin, iMin2);
                n nVar4 = this.f2126c;
                nVar4.g = nVar4.f2116c;
                nVar4.f2119h = nVar4.f2117d;
                nVar4.f2120i = nVar4.b.getRootAlpha();
                nVar4.f2121j = nVar4.f2118e;
                nVar4.f2122k = false;
            }
        } else {
            n nVar5 = this.f2126c;
            nVar5.f.eraseColor(0);
            Canvas canvas3 = new Canvas(nVar5.f);
            m mVar2 = nVar5.b;
            mVar2.a(mVar2.g, m.f2102p, canvas3, iMin, iMin2);
        }
        n nVar6 = this.f2126c;
        if (nVar6.b.getRootAlpha() >= 255 && colorFilter == null) {
            paint = null;
        } else {
            if (nVar6.f2123l == null) {
                Paint paint2 = new Paint();
                nVar6.f2123l = paint2;
                paint2.setFilterBitmap(true);
            }
            nVar6.f2123l.setAlpha(nVar6.b.getRootAlpha());
            nVar6.f2123l.setColorFilter(colorFilter);
            paint = nVar6.f2123l;
        }
        canvas.drawBitmap(nVar6.f, (Rect) null, rect, paint);
        canvas.restoreToCount(iSave);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        Drawable drawable = this.b;
        return drawable != null ? DrawableCompat.getAlpha(drawable) : this.f2126c.b.getRootAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getChangingConfigurations() {
        Drawable drawable = this.b;
        return drawable != null ? drawable.getChangingConfigurations() : super.getChangingConfigurations() | this.f2126c.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public final ColorFilter getColorFilter() {
        Drawable drawable = this.b;
        return drawable != null ? DrawableCompat.getColorFilter(drawable) : this.f2128e;
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        if (this.b != null) {
            return new o(this.b.getConstantState());
        }
        this.f2126c.f2115a = getChangingConfigurations();
        return this.f2126c;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        Drawable drawable = this.b;
        return drawable != null ? drawable.getIntrinsicHeight() : (int) this.f2126c.b.f2108i;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        Drawable drawable = this.b;
        return drawable != null ? drawable.getIntrinsicWidth() : (int) this.f2126c.b.f2107h;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.getOpacity();
        }
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet) throws XmlPullParserException, IOException {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.inflate(resources, xmlPullParser, attributeSet);
        } else {
            inflate(resources, xmlPullParser, attributeSet, null);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void invalidateSelf() {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.invalidateSelf();
        } else {
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isAutoMirrored() {
        Drawable drawable = this.b;
        return drawable != null ? DrawableCompat.isAutoMirrored(drawable) : this.f2126c.f2118e;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.isStateful();
        }
        if (super.isStateful()) {
            return true;
        }
        n nVar = this.f2126c;
        if (nVar == null) {
            return false;
        }
        m mVar = nVar.b;
        if (mVar.f2113n == null) {
            mVar.f2113n = Boolean.valueOf(mVar.g.a());
        }
        if (mVar.f2113n.booleanValue()) {
            return true;
        }
        ColorStateList colorStateList = this.f2126c.f2116c;
        return colorStateList != null && colorStateList.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable mutate() {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.mutate();
            return this;
        }
        if (!this.f && super.mutate() == this) {
            n nVar = this.f2126c;
            n nVar2 = new n();
            nVar2.f2116c = null;
            nVar2.f2117d = f2125k;
            if (nVar != null) {
                nVar2.f2115a = nVar.f2115a;
                m mVar = new m(nVar.b);
                nVar2.b = mVar;
                if (nVar.b.f2106e != null) {
                    mVar.f2106e = new Paint(nVar.b.f2106e);
                }
                if (nVar.b.f2105d != null) {
                    nVar2.b.f2105d = new Paint(nVar.b.f2105d);
                }
                nVar2.f2116c = nVar.f2116c;
                nVar2.f2117d = nVar.f2117d;
                nVar2.f2118e = nVar.f2118e;
            }
            this.f2126c = nVar2;
            this.f = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean onStateChange(int[] iArr) {
        boolean z2;
        PorterDuff.Mode mode;
        Drawable drawable = this.b;
        if (drawable != null) {
            return drawable.setState(iArr);
        }
        n nVar = this.f2126c;
        ColorStateList colorStateList = nVar.f2116c;
        if (colorStateList == null || (mode = nVar.f2117d) == null) {
            z2 = false;
        } else {
            this.f2127d = a(colorStateList, mode);
            invalidateSelf();
            z2 = true;
        }
        m mVar = nVar.b;
        if (mVar.f2113n == null) {
            mVar.f2113n = Boolean.valueOf(mVar.g.a());
        }
        if (mVar.f2113n.booleanValue()) {
            boolean zB = nVar.b.g.b(iArr);
            nVar.f2122k |= zB;
            if (zB) {
                invalidateSelf();
                return true;
            }
        }
        return z2;
    }

    @Override // android.graphics.drawable.Drawable
    public final void scheduleSelf(Runnable runnable, long j2) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.scheduleSelf(runnable, j2);
        } else {
            super.scheduleSelf(runnable, j2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i3) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.setAlpha(i3);
        } else if (this.f2126c.b.getRootAlpha() != i3) {
            this.f2126c.b.setRootAlpha(i3);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAutoMirrored(boolean z2) {
        Drawable drawable = this.b;
        if (drawable != null) {
            DrawableCompat.setAutoMirrored(drawable, z2);
        } else {
            this.f2126c.f2118e = z2;
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.setColorFilter(colorFilter);
        } else {
            this.f2128e = colorFilter;
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public final void setTint(int i3) {
        Drawable drawable = this.b;
        if (drawable != null) {
            DrawableCompat.setTint(drawable, i3);
        } else {
            setTintList(ColorStateList.valueOf(i3));
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public final void setTintList(ColorStateList colorStateList) {
        Drawable drawable = this.b;
        if (drawable != null) {
            DrawableCompat.setTintList(drawable, colorStateList);
            return;
        }
        n nVar = this.f2126c;
        if (nVar.f2116c != colorStateList) {
            nVar.f2116c = colorStateList;
            this.f2127d = a(colorStateList, nVar.f2117d);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.TintAwareDrawable
    public final void setTintMode(PorterDuff.Mode mode) {
        Drawable drawable = this.b;
        if (drawable != null) {
            DrawableCompat.setTintMode(drawable, mode);
            return;
        }
        n nVar = this.f2126c;
        if (nVar.f2117d != mode) {
            nVar.f2117d = mode;
            this.f2127d = a(nVar.f2116c, mode);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z2, boolean z3) {
        Drawable drawable = this.b;
        return drawable != null ? drawable.setVisible(z2, z3) : super.setVisible(z2, z3);
    }

    @Override // android.graphics.drawable.Drawable
    public final void unscheduleSelf(Runnable runnable) {
        Drawable drawable = this.b;
        if (drawable != null) {
            drawable.unscheduleSelf(runnable);
        } else {
            super.unscheduleSelf(runnable);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final void inflate(Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        p041q.j jVar;
        ArrayDeque arrayDeque;
        boolean z2;
        int i3;
        int i4;
        Paint.Join join;
        XmlPullParser xmlPullParser2 = xmlPullParser;
        Resources.Theme theme2 = theme;
        Drawable drawable = this.b;
        if (drawable != null) {
            DrawableCompat.inflate(drawable, resources, xmlPullParser2, attributeSet, theme2);
            return;
        }
        n nVar = this.f2126c;
        nVar.b = new m();
        TypedArray typedArrayObtainAttributes = TypedArrayUtils.obtainAttributes(resources, theme2, attributeSet, a.f2071a);
        n nVar2 = this.f2126c;
        m mVar = nVar2.b;
        int namedInt = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes, xmlPullParser2, "tintMode", 6, -1);
        PorterDuff.Mode mode = PorterDuff.Mode.SRC_IN;
        int i5 = 3;
        if (namedInt == 3) {
            mode = PorterDuff.Mode.SRC_OVER;
        } else if (namedInt != 5) {
            if (namedInt != 9) {
                switch (namedInt) {
                    case MotionEventCompat.AXIS_RZ /* 14 */:
                        mode = PorterDuff.Mode.MULTIPLY;
                        break;
                    case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        mode = PorterDuff.Mode.SCREEN;
                        break;
                    case 16:
                        mode = PorterDuff.Mode.ADD;
                        break;
                }
            } else {
                mode = PorterDuff.Mode.SRC_ATOP;
            }
        }
        nVar2.f2117d = mode;
        int i6 = 1;
        ColorStateList namedColorStateList = TypedArrayUtils.getNamedColorStateList(typedArrayObtainAttributes, xmlPullParser2, theme2, "tint", 1);
        if (namedColorStateList != null) {
            nVar2.f2116c = namedColorStateList;
        }
        nVar2.f2118e = TypedArrayUtils.getNamedBoolean(typedArrayObtainAttributes, xmlPullParser2, "autoMirrored", 5, nVar2.f2118e);
        mVar.f2109j = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser2, "viewportWidth", 7, mVar.f2109j);
        float namedFloat = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser2, "viewportHeight", 8, mVar.f2110k);
        mVar.f2110k = namedFloat;
        float f = 0.0f;
        if (mVar.f2109j <= 0.0f) {
            throw new XmlPullParserException(typedArrayObtainAttributes.getPositionDescription() + "<vector> tag requires viewportWidth > 0");
        }
        if (namedFloat > 0.0f) {
            mVar.f2107h = typedArrayObtainAttributes.getDimension(3, mVar.f2107h);
            int i7 = 2;
            float dimension = typedArrayObtainAttributes.getDimension(2, mVar.f2108i);
            mVar.f2108i = dimension;
            if (mVar.f2107h <= 0.0f) {
                throw new XmlPullParserException(typedArrayObtainAttributes.getPositionDescription() + "<vector> tag requires width > 0");
            }
            if (dimension > 0.0f) {
                mVar.setAlpha(TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes, xmlPullParser2, "alpha", 4, mVar.getAlpha()));
                boolean z3 = false;
                String string = typedArrayObtainAttributes.getString(0);
                if (string != null) {
                    mVar.f2112m = string;
                    mVar.f2114o.put(string, mVar);
                }
                typedArrayObtainAttributes.recycle();
                nVar.f2115a = getChangingConfigurations();
                nVar.f2122k = true;
                n nVar3 = this.f2126c;
                m mVar2 = nVar3.b;
                ArrayDeque arrayDeque2 = new ArrayDeque();
                j jVar2 = mVar2.g;
                p041q.j jVar3 = mVar2.f2114o;
                arrayDeque2.push(jVar2);
                int eventType = xmlPullParser2.getEventType();
                int depth = xmlPullParser2.getDepth() + 1;
                boolean z4 = true;
                while (eventType != i6 && (xmlPullParser2.getDepth() >= depth || eventType != i5)) {
                    if (eventType == i7) {
                        String name = xmlPullParser2.getName();
                        j jVar4 = (j) arrayDeque2.peek();
                        if ("path".equals(name)) {
                            i iVar = new i();
                            iVar.f2084e = f;
                            iVar.g = 1.0f;
                            iVar.f2085h = 1.0f;
                            iVar.f2086i = f;
                            iVar.f2087j = 1.0f;
                            iVar.f2088k = f;
                            Paint.Cap cap = Paint.Cap.BUTT;
                            iVar.f2089l = cap;
                            Paint.Join join2 = Paint.Join.MITER;
                            iVar.f2090m = join2;
                            p041q.j jVar5 = jVar3;
                            iVar.f2091n = 4.0f;
                            TypedArray typedArrayObtainAttributes2 = TypedArrayUtils.obtainAttributes(resources, theme2, attributeSet, a.f2072c);
                            if (TypedArrayUtils.hasAttribute(xmlPullParser2, "pathData")) {
                                String string2 = typedArrayObtainAttributes2.getString(0);
                                if (string2 != null) {
                                    iVar.b = string2;
                                }
                                String string3 = typedArrayObtainAttributes2.getString(2);
                                if (string3 != null) {
                                    iVar.f2100a = PathParser.createNodesFromPathData(string3);
                                }
                                xmlPullParser2 = xmlPullParser;
                                iVar.f = TypedArrayUtils.getNamedComplexColor(typedArrayObtainAttributes2, xmlPullParser2, theme2, "fillColor", 1, 0);
                                iVar.f2085h = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes2, xmlPullParser2, "fillAlpha", 12, iVar.f2085h);
                                int namedInt2 = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes2, xmlPullParser2, "strokeLineCap", 8, -1);
                                Paint.Cap cap2 = iVar.f2089l;
                                if (namedInt2 == 0) {
                                    cap2 = cap;
                                } else if (namedInt2 == 1) {
                                    cap2 = Paint.Cap.ROUND;
                                } else if (namedInt2 == 2) {
                                    cap2 = Paint.Cap.SQUARE;
                                }
                                iVar.f2089l = cap2;
                                int namedInt3 = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes2, xmlPullParser2, "strokeLineJoin", 9, -1);
                                Paint.Join join3 = iVar.f2090m;
                                if (namedInt3 == 0) {
                                    join = join2;
                                } else if (namedInt3 != 1) {
                                    join = namedInt3 != 2 ? join3 : Paint.Join.BEVEL;
                                } else {
                                    join = Paint.Join.ROUND;
                                }
                                iVar.f2090m = join;
                                iVar.f2091n = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes2, xmlPullParser2, "strokeMiterLimit", 10, iVar.f2091n);
                                theme2 = theme;
                                iVar.f2083d = TypedArrayUtils.getNamedComplexColor(typedArrayObtainAttributes2, xmlPullParser2, theme2, "strokeColor", 3, 0);
                                iVar.g = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes2, xmlPullParser2, "strokeAlpha", 11, iVar.g);
                                iVar.f2084e = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes2, xmlPullParser2, "strokeWidth", 4, iVar.f2084e);
                                iVar.f2087j = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes2, xmlPullParser2, "trimPathEnd", 6, iVar.f2087j);
                                iVar.f2088k = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes2, xmlPullParser2, "trimPathOffset", 7, iVar.f2088k);
                                iVar.f2086i = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes2, xmlPullParser2, "trimPathStart", 5, iVar.f2086i);
                                iVar.f2101c = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes2, xmlPullParser2, "fillType", 13, iVar.f2101c);
                            }
                            typedArrayObtainAttributes2.recycle();
                            jVar4.b.add(iVar);
                            if (iVar.getPathName() != null) {
                                jVar5.put(iVar.getPathName(), iVar);
                            }
                            nVar3.f2115a = nVar3.f2115a;
                            jVar = jVar5;
                            arrayDeque = arrayDeque2;
                            z2 = false;
                            z4 = false;
                        } else {
                            ArrayDeque arrayDeque3 = arrayDeque2;
                            jVar = jVar3;
                            arrayDeque = arrayDeque3;
                            if ("clip-path".equals(name)) {
                                h hVar = new h();
                                if (TypedArrayUtils.hasAttribute(xmlPullParser2, "pathData")) {
                                    TypedArray typedArrayObtainAttributes3 = TypedArrayUtils.obtainAttributes(resources, theme2, attributeSet, a.f2073d);
                                    String string4 = typedArrayObtainAttributes3.getString(0);
                                    if (string4 != null) {
                                        hVar.b = string4;
                                    }
                                    String string5 = typedArrayObtainAttributes3.getString(1);
                                    if (string5 != null) {
                                        hVar.f2100a = PathParser.createNodesFromPathData(string5);
                                    }
                                    hVar.f2101c = TypedArrayUtils.getNamedInt(typedArrayObtainAttributes3, xmlPullParser2, "fillType", 2, 0);
                                    typedArrayObtainAttributes3.recycle();
                                }
                                jVar4.b.add(hVar);
                                if (hVar.getPathName() != null) {
                                    jVar.put(hVar.getPathName(), hVar);
                                }
                                nVar3.f2115a = nVar3.f2115a;
                            } else if ("group".equals(name)) {
                                j jVar6 = new j();
                                TypedArray typedArrayObtainAttributes4 = TypedArrayUtils.obtainAttributes(resources, theme2, attributeSet, a.b);
                                jVar6.f2093c = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes4, xmlPullParser2, "rotation", 5, jVar6.f2093c);
                                jVar6.f2094d = typedArrayObtainAttributes4.getFloat(1, jVar6.f2094d);
                                jVar6.f2095e = typedArrayObtainAttributes4.getFloat(2, jVar6.f2095e);
                                jVar6.f = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes4, xmlPullParser2, "scaleX", 3, jVar6.f);
                                jVar6.g = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes4, xmlPullParser2, "scaleY", 4, jVar6.g);
                                jVar6.f2096h = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes4, xmlPullParser2, "translateX", 6, jVar6.f2096h);
                                jVar6.f2097i = TypedArrayUtils.getNamedFloat(typedArrayObtainAttributes4, xmlPullParser2, "translateY", 7, jVar6.f2097i);
                                z2 = false;
                                String string6 = typedArrayObtainAttributes4.getString(0);
                                if (string6 != null) {
                                    jVar6.f2099k = string6;
                                }
                                jVar6.c();
                                typedArrayObtainAttributes4.recycle();
                                jVar4.b.add(jVar6);
                                arrayDeque.push(jVar6);
                                if (jVar6.getGroupName() != null) {
                                    jVar.put(jVar6.getGroupName(), jVar6);
                                }
                                nVar3.f2115a = nVar3.f2115a;
                            }
                            z2 = false;
                        }
                        i3 = 3;
                        i4 = 1;
                    } else {
                        ArrayDeque arrayDeque4 = arrayDeque2;
                        jVar = jVar3;
                        arrayDeque = arrayDeque4;
                        z2 = z3;
                        i3 = i5;
                        i4 = 1;
                        if (eventType == i3 && "group".equals(xmlPullParser2.getName())) {
                            arrayDeque.pop();
                        }
                    }
                    eventType = xmlPullParser2.next();
                    p041q.j jVar7 = jVar;
                    arrayDeque2 = arrayDeque;
                    jVar3 = jVar7;
                    i5 = i3;
                    z3 = z2;
                    i6 = i4;
                    i7 = 2;
                    f = 0.0f;
                }
                if (!z4) {
                    this.f2127d = a(nVar.f2116c, nVar.f2117d);
                    return;
                }
                throw new XmlPullParserException("no path defined");
            }
            throw new XmlPullParserException(typedArrayObtainAttributes.getPositionDescription() + "<vector> tag requires height > 0");
        }
        throw new XmlPullParserException(typedArrayObtainAttributes.getPositionDescription() + "<vector> tag requires viewportHeight > 0");
    }

    public p(n nVar) {
        this.g = true;
        this.f2129h = new float[9];
        this.f2130i = new Matrix();
        this.f2131j = new Rect();
        this.f2126c = nVar;
        this.f2127d = a(nVar.f2116c, nVar.f2117d);
    }
}
