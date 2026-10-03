package androidx.emoji2.text;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.text.style.ReplacementSpan;
import androidx.core.util.Preconditions;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class w extends ReplacementSpan {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final v f2901c;
    public TextPaint f;
    public final Paint.FontMetricsInt b = new Paint.FontMetricsInt();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public short f2902d = -1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public float f2903e = 1.0f;

    public w(v vVar) {
        Preconditions.checkNotNull(vVar, "rasterizer cannot be null");
        this.f2901c = vVar;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0042  */
    /* JADX WARN: Code duplicated, block: B:21:0x0046  */
    @Override // android.text.style.ReplacementSpan
    public final void draw(Canvas canvas, CharSequence charSequence, int i3, int i4, float f, int i5, int i6, int i7, Paint paint) {
        TextPaint textPaint = null;
        if (charSequence instanceof Spanned) {
            CharacterStyle[] characterStyleArr = (CharacterStyle[]) ((Spanned) charSequence).getSpans(i3, i4, CharacterStyle.class);
            if (characterStyleArr.length != 0) {
                if (characterStyleArr.length != 1 || characterStyleArr[0] != this) {
                    TextPaint textPaint2 = this.f;
                    if (textPaint2 == null) {
                        textPaint2 = new TextPaint();
                        this.f = textPaint2;
                    }
                    textPaint = textPaint2;
                    textPaint.set(paint);
                    for (CharacterStyle characterStyle : characterStyleArr) {
                        characterStyle.updateDrawState(textPaint);
                    }
                } else if (paint instanceof TextPaint) {
                    textPaint = (TextPaint) paint;
                }
            } else if (paint instanceof TextPaint) {
                textPaint = (TextPaint) paint;
            }
        } else if (paint instanceof TextPaint) {
            textPaint = (TextPaint) paint;
        }
        TextPaint textPaint3 = textPaint;
        if (textPaint3 != null && textPaint3.bgColor != 0) {
            int color = textPaint3.getColor();
            Paint.Style style = textPaint3.getStyle();
            textPaint3.setColor(textPaint3.bgColor);
            textPaint3.setStyle(Paint.Style.FILL);
            canvas.drawRect(f, i5, f + this.f2902d, i7, textPaint3);
            textPaint3.setStyle(style);
            textPaint3.setColor(color);
        }
        j.a().getClass();
        float f3 = i6;
        Paint paint2 = textPaint3;
        if (textPaint3 == null) {
            paint2 = paint;
        }
        v vVar = this.f2901c;
        N1.w wVar = vVar.b;
        Typeface typeface = (Typeface) wVar.f1495d;
        Typeface typeface2 = paint2.getTypeface();
        paint2.setTypeface(typeface);
        canvas.drawText((char[]) wVar.b, vVar.f2899a * 2, 2, f, f3, paint2);
        paint2.setTypeface(typeface2);
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i3, int i4, Paint.FontMetricsInt fontMetricsInt) {
        Paint.FontMetricsInt fontMetricsInt2 = this.b;
        paint.getFontMetricsInt(fontMetricsInt2);
        float fAbs = Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f;
        v vVar = this.f2901c;
        G.a aVarB = vVar.b();
        int iA = aVarB.a(14);
        this.f2903e = fAbs / (iA != 0 ? aVarB.b.getShort(iA + aVarB.f984a) : (short) 0);
        G.a aVarB2 = vVar.b();
        int iA2 = aVarB2.a(14);
        if (iA2 != 0) {
            aVarB2.b.getShort(iA2 + aVarB2.f984a);
        }
        G.a aVarB3 = vVar.b();
        int iA3 = aVarB3.a(12);
        short s2 = (short) ((iA3 != 0 ? aVarB3.b.getShort(iA3 + aVarB3.f984a) : (short) 0) * this.f2903e);
        this.f2902d = s2;
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return s2;
    }
}
