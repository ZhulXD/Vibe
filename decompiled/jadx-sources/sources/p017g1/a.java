package p017g1;

import R0.l;
import R0.m;
import Y0.f;
import Y0.h;
import Y0.i;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextPaint;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class a extends h implements l {

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public final Paint.FontMetrics f4341A;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public final m f4342B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public final F0.a f4343C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public final Rect f4344D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public int f4345E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public int f4346F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f4347G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f4348H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public boolean f4349I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f4350J;
    public int K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public float f4351L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public float f4352M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public float f4353N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public float f4354O;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public CharSequence f4355y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final Context f4356z;

    public a(Context context, int i3) {
        super(context, null, 0, i3);
        this.f4341A = new Paint.FontMetrics();
        m mVar = new m(this);
        this.f4342B = mVar;
        this.f4343C = new F0.a(2, this);
        this.f4344D = new Rect();
        this.f4351L = 1.0f;
        this.f4352M = 1.0f;
        this.f4353N = 0.5f;
        this.f4354O = 1.0f;
        this.f4356z = context;
        float f = context.getResources().getDisplayMetrics().density;
        TextPaint textPaint = mVar.f1934a;
        textPaint.density = f;
        textPaint.setTextAlign(Paint.Align.CENTER);
    }

    @Override // Y0.h, android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        Canvas canvas2;
        canvas.save();
        float fT = t();
        float f = (float) (-((Math.sqrt(2.0d) * ((double) this.f4350J)) - ((double) this.f4350J)));
        canvas.scale(this.f4351L, this.f4352M, (getBounds().width() * 0.5f) + getBounds().left, (getBounds().height() * this.f4353N) + getBounds().top);
        canvas.translate(fT, f);
        super.draw(canvas);
        if (this.f4355y == null) {
            canvas2 = canvas;
        } else {
            Rect bounds = getBounds();
            float fCenterY = bounds.centerY();
            m mVar = this.f4342B;
            TextPaint textPaint = mVar.f1934a;
            Paint.FontMetrics fontMetrics = this.f4341A;
            textPaint.getFontMetrics(fontMetrics);
            int i3 = (int) (fCenterY - ((fontMetrics.descent + fontMetrics.ascent) / 2.0f));
            if (mVar.g != null) {
                textPaint.drawableState = getState();
                mVar.g.d(this.f4356z, mVar.f1934a, mVar.b);
                textPaint.setAlpha((int) (this.f4354O * 255.0f));
            }
            CharSequence charSequence = this.f4355y;
            canvas2 = canvas;
            canvas2.drawText(charSequence, 0, charSequence.length(), bounds.centerX(), i3, textPaint);
        }
        canvas2.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return (int) Math.max(this.f4342B.f1934a.getTextSize(), this.f4347G);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        float f = this.f4345E * 2;
        CharSequence charSequence = this.f4355y;
        return (int) Math.max(f + (charSequence == null ? 0.0f : this.f4342B.a(charSequence.toString())), this.f4346F);
    }

    @Override // Y0.h, android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (this.f4349I) {
            Y0.l lVarE = this.b.f2383a.e();
            lVarE.f2427k = u();
            setShapeAppearanceModel(lVarE.a());
        }
    }

    public final float t() {
        int i3;
        Rect rect = this.f4344D;
        if (((rect.right - getBounds().right) - this.K) - this.f4348H < 0) {
            i3 = ((rect.right - getBounds().right) - this.K) - this.f4348H;
        } else {
            if (((rect.left - getBounds().left) - this.K) + this.f4348H <= 0) {
                return 0.0f;
            }
            i3 = ((rect.left - getBounds().left) - this.K) + this.f4348H;
        }
        return i3;
    }

    public final i u() {
        float f = -t();
        float fWidth = ((float) (((double) getBounds().width()) - (Math.sqrt(2.0d) * ((double) this.f4350J)))) / 2.0f;
        return new i(new f(this.f4350J), Math.min(Math.max(f, -fWidth), fWidth));
    }
}
