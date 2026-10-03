package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.TypedValue;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.drawable.DrawableCompat;
import com.minhub.gamehub.R;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class P0 {
    public static P0 g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WeakHashMap f4729a;
    public final WeakHashMap b = new WeakHashMap(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public TypedValue f4730c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f4731d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public C0319v f4732e;
    public static final PorterDuff.Mode f = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final O0 f4728h = new O0(6);

    public static synchronized P0 b() {
        try {
            if (g == null) {
                g = new P0();
            }
        } catch (Throwable th) {
            throw th;
        }
        return g;
    }

    public static synchronized PorterDuffColorFilter e(int i3, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilter;
        O0 o2 = f4728h;
        o2.getClass();
        int i4 = (31 + i3) * 31;
        porterDuffColorFilter = (PorterDuffColorFilter) o2.a(Integer.valueOf(mode.hashCode() + i4));
        if (porterDuffColorFilter == null) {
            porterDuffColorFilter = new PorterDuffColorFilter(i3, mode);
        }
        return porterDuffColorFilter;
    }

    public final Drawable a(Context context, int i3) {
        Drawable drawableNewDrawable;
        WeakReference weakReference;
        if (this.f4730c == null) {
            this.f4730c = new TypedValue();
        }
        TypedValue typedValue = this.f4730c;
        context.getResources().getValue(i3, typedValue, true);
        long j2 = (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
        synchronized (this) {
            p041q.g gVar = (p041q.g) this.b.get(context);
            drawableNewDrawable = null;
            if (gVar != null && (weakReference = (WeakReference) gVar.b(j2)) != null) {
                Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
                if (constantState != null) {
                    drawableNewDrawable = constantState.newDrawable(context.getResources());
                } else {
                    gVar.f(j2);
                }
            }
        }
        if (drawableNewDrawable != null) {
            return drawableNewDrawable;
        }
        LayerDrawable layerDrawableC = null;
        if (this.f4732e != null) {
            if (i3 == R.drawable.abc_cab_background_top_material) {
                layerDrawableC = new LayerDrawable(new Drawable[]{c(context, R.drawable.abc_cab_background_internal_bg), c(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
            } else if (i3 == R.drawable.abc_ratingbar_material) {
                layerDrawableC = C0319v.c(this, context, R.dimen.abc_star_big);
            } else if (i3 == R.drawable.abc_ratingbar_indicator_material) {
                layerDrawableC = C0319v.c(this, context, R.dimen.abc_star_medium);
            } else if (i3 == R.drawable.abc_ratingbar_small_material) {
                layerDrawableC = C0319v.c(this, context, R.dimen.abc_star_small);
            }
        }
        if (layerDrawableC == null) {
            return layerDrawableC;
        }
        layerDrawableC.setChangingConfigurations(typedValue.changingConfigurations);
        synchronized (this) {
            try {
                Drawable.ConstantState constantState2 = layerDrawableC.getConstantState();
                if (constantState2 != null) {
                    p041q.g gVar2 = (p041q.g) this.b.get(context);
                    if (gVar2 == null) {
                        gVar2 = new p041q.g();
                        this.b.put(context, gVar2);
                    }
                    gVar2.e(j2, new WeakReference(constantState2));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return layerDrawableC;
    }

    public final synchronized Drawable c(Context context, int i3) {
        return d(context, i3, false);
    }

    public final synchronized Drawable d(Context context, int i3, boolean z2) {
        Drawable drawableA;
        try {
            if (!this.f4731d) {
                this.f4731d = true;
                Drawable drawableC = c(context, R.drawable.abc_vector_test);
                if (drawableC == null || (!(drawableC instanceof T.p) && !"android.graphics.drawable.VectorDrawable".equals(drawableC.getClass().getName()))) {
                    this.f4731d = false;
                    throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
                }
            }
            drawableA = a(context, i3);
            if (drawableA == null) {
                drawableA = ContextCompat.getDrawable(context, i3);
            }
            if (drawableA != null) {
                drawableA = g(context, i3, z2, drawableA);
            }
            if (drawableA != null) {
                AbstractC0309p0.a(drawableA);
            }
        } catch (Throwable th) {
            throw th;
        }
        return drawableA;
    }

    public final synchronized ColorStateList f(Context context, int i3) {
        ColorStateList colorStateList;
        p041q.k kVar;
        WeakHashMap weakHashMap = this.f4729a;
        ColorStateList colorStateListD = null;
        colorStateList = (weakHashMap == null || (kVar = (p041q.k) weakHashMap.get(context)) == null) ? null : (ColorStateList) kVar.b(i3);
        if (colorStateList == null) {
            C0319v c0319v = this.f4732e;
            if (c0319v != null) {
                colorStateListD = c0319v.d(context, i3);
            }
            if (colorStateListD != null) {
                if (this.f4729a == null) {
                    this.f4729a = new WeakHashMap();
                }
                p041q.k kVar2 = (p041q.k) this.f4729a.get(context);
                if (kVar2 == null) {
                    kVar2 = new p041q.k();
                    this.f4729a.put(context, kVar2);
                }
                kVar2.a(i3, colorStateListD);
            }
            colorStateList = colorStateListD;
        }
        return colorStateList;
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00ef  */
    /* JADX WARN: Code duplicated, block: B:51:0x0100  */
    public final Drawable g(Context context, int i3, boolean z2, Drawable drawable) {
        int i4;
        boolean z3;
        int iRound;
        Drawable drawableMutate;
        ColorStateList colorStateListF = f(context, i3);
        PorterDuff.Mode mode = null;
        if (colorStateListF != null) {
            Drawable drawableWrap = DrawableCompat.wrap(drawable.mutate());
            DrawableCompat.setTintList(drawableWrap, colorStateListF);
            if (this.f4732e != null && i3 == R.drawable.abc_switch_thumb_material) {
                mode = PorterDuff.Mode.MULTIPLY;
            }
            if (mode != null) {
                DrawableCompat.setTintMode(drawableWrap, mode);
            }
            return drawableWrap;
        }
        if (this.f4732e != null) {
            if (i3 == R.drawable.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.background);
                int iC = V0.c(context, R.attr.colorControlNormal);
                PorterDuff.Mode mode2 = C0321w.b;
                C0319v.e(drawableFindDrawableByLayerId, iC, mode2);
                C0319v.e(layerDrawable.findDrawableByLayerId(android.R.id.secondaryProgress), V0.c(context, R.attr.colorControlNormal), mode2);
                C0319v.e(layerDrawable.findDrawableByLayerId(android.R.id.progress), V0.c(context, R.attr.colorControlActivated), mode2);
                return drawable;
            }
            if (i3 == R.drawable.abc_ratingbar_material || i3 == R.drawable.abc_ratingbar_indicator_material || i3 == R.drawable.abc_ratingbar_small_material) {
                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(android.R.id.background);
                int iB = V0.b(context, R.attr.colorControlNormal);
                PorterDuff.Mode mode3 = C0321w.b;
                C0319v.e(drawableFindDrawableByLayerId2, iB, mode3);
                C0319v.e(layerDrawable2.findDrawableByLayerId(android.R.id.secondaryProgress), V0.c(context, R.attr.colorControlActivated), mode3);
                C0319v.e(layerDrawable2.findDrawableByLayerId(android.R.id.progress), V0.c(context, R.attr.colorControlActivated), mode3);
                return drawable;
            }
        }
        C0319v c0319v = this.f4732e;
        boolean z4 = false;
        if (c0319v != null) {
            PorterDuff.Mode mode4 = C0321w.b;
            if (C0319v.a((int[]) c0319v.f4921a, i3)) {
                i4 = R.attr.colorControlNormal;
            } else if (C0319v.a((int[]) c0319v.f4922c, i3)) {
                i4 = R.attr.colorControlActivated;
            } else {
                if (C0319v.a((int[]) c0319v.f4923d, i3)) {
                    mode4 = PorterDuff.Mode.MULTIPLY;
                } else {
                    if (i3 == R.drawable.abc_list_divider_mtrl_alpha) {
                        iRound = Math.round(40.8f);
                        i4 = 16842800;
                        z3 = true;
                    } else {
                        if (i3 != R.drawable.abc_dialog_material_background) {
                            i4 = 0;
                            z3 = false;
                        }
                        iRound = -1;
                    }
                    if (z3) {
                        drawableMutate = drawable.mutate();
                        drawableMutate.setColorFilter(C0321w.c(V0.c(context, i4), mode4));
                        if (iRound != -1) {
                            drawableMutate.setAlpha(iRound);
                        }
                        z4 = true;
                    }
                }
                i4 = 16842801;
            }
            z3 = true;
            iRound = -1;
            if (z3) {
                drawableMutate = drawable.mutate();
                drawableMutate.setColorFilter(C0321w.c(V0.c(context, i4), mode4));
                if (iRound != -1) {
                    drawableMutate.setAlpha(iRound);
                }
                z4 = true;
            }
        }
        if (z4 || !z2) {
            return drawable;
        }
        return null;
    }
}
