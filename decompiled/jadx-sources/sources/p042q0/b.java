package p042q0;

import T.e;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.Gravity;
import java.util.ArrayList;
import p063y0.f;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class b extends Drawable implements e, Animatable {
    public final e b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5265c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f5266d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5267e;
    public int g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f5269i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Paint f5270j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Rect f5271k;
    public boolean f = true;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f5268h = -1;

    public b(e eVar) {
        this.b = eVar;
    }

    public final void a() {
        f.a("You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request.", !this.f5267e);
        f fVar = (f) this.b.b;
        if (fVar.f5276a.f3135l.f3117c == 1) {
            invalidateSelf();
            return;
        }
        if (this.f5265c) {
            return;
        }
        this.f5265c = true;
        ArrayList arrayList = fVar.f5277c;
        if (fVar.f5282j) {
            throw new IllegalStateException("Cannot subscribe to a cleared frame loader");
        }
        if (arrayList.contains(this)) {
            throw new IllegalStateException("Cannot subscribe twice in a row");
        }
        boolean zIsEmpty = arrayList.isEmpty();
        arrayList.add(this);
        if (zIsEmpty && !fVar.f) {
            fVar.f = true;
            fVar.f5282j = false;
            fVar.a();
        }
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (this.f5267e) {
            return;
        }
        if (this.f5269i) {
            int intrinsicWidth = getIntrinsicWidth();
            int intrinsicHeight = getIntrinsicHeight();
            Rect bounds = getBounds();
            if (this.f5271k == null) {
                this.f5271k = new Rect();
            }
            Gravity.apply(119, intrinsicWidth, intrinsicHeight, bounds, this.f5271k);
            this.f5269i = false;
        }
        f fVar = (f) this.b.b;
        d dVar = fVar.f5281i;
        Bitmap bitmap = dVar != null ? dVar.f5275h : fVar.f5284l;
        if (this.f5271k == null) {
            this.f5271k = new Rect();
        }
        Rect rect = this.f5271k;
        if (this.f5270j == null) {
            this.f5270j = new Paint(2);
        }
        canvas.drawBitmap(bitmap, (Rect) null, rect, this.f5270j);
    }

    @Override // android.graphics.drawable.Drawable
    public final Drawable.ConstantState getConstantState() {
        return this.b;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return ((f) this.b.b).f5288p;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return ((f) this.b.b).f5287o;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -2;
    }

    @Override // android.graphics.drawable.Animatable
    public final boolean isRunning() {
        return this.f5265c;
    }

    @Override // android.graphics.drawable.Drawable
    public final void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f5269i = true;
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i3) {
        if (this.f5270j == null) {
            this.f5270j = new Paint(2);
        }
        this.f5270j.setAlpha(i3);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
        if (this.f5270j == null) {
            this.f5270j = new Paint(2);
        }
        this.f5270j.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean setVisible(boolean z2, boolean z3) {
        f.a("Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View's visibility.", !this.f5267e);
        this.f = z2;
        if (!z2) {
            this.f5265c = false;
            f fVar = (f) this.b.b;
            ArrayList arrayList = fVar.f5277c;
            arrayList.remove(this);
            if (arrayList.isEmpty()) {
                fVar.f = false;
            }
        } else if (this.f5266d) {
            a();
        }
        return super.setVisible(z2, z3);
    }

    @Override // android.graphics.drawable.Animatable
    public final void start() {
        this.f5266d = true;
        this.g = 0;
        if (this.f) {
            a();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public final void stop() {
        this.f5266d = false;
        this.f5265c = false;
        f fVar = (f) this.b.b;
        ArrayList arrayList = fVar.f5277c;
        arrayList.remove(this);
        if (arrayList.isEmpty()) {
            fVar.f = false;
        }
    }
}
