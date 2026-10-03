package androidx.core.graphics;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorSpace;
import android.graphics.Point;
import android.graphics.PointF;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.godotengine.godot.service.GodotService;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000D\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\b\u001a#\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006H\u0086\b\u001a7\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00062\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nH\u0087\b\u001a&\u0010\u000b\u001a\u00020\u0001*\u00020\u00012\u0017\u0010\f\u001a\u0013\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000f0\r¢\u0006\u0002\b\u0010H\u0086\b\u001a\u0015\u0010\u0011\u001a\u00020\b*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0013H\u0086\n\u001a\u0015\u0010\u0011\u001a\u00020\b*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u0014H\u0086\n\u001a\u001d\u0010\u0015\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u0003H\u0086\n\u001a'\u0010\u0018\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0019\u001a\u00020\bH\u0086\b\u001a'\u0010\u001a\u001a\u00020\u000f*\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\u00032\b\b\u0001\u0010\u001b\u001a\u00020\u0003H\u0086\n¨\u0006\u001c"}, d2 = {"createBitmap", "Landroid/graphics/Bitmap;", GodotService.KEY_WIDTH, "", GodotService.KEY_HEIGHT, "config", "Landroid/graphics/Bitmap$Config;", "hasAlpha", "", "colorSpace", "Landroid/graphics/ColorSpace;", "applyCanvas", "block", "Lkotlin/Function1;", "Landroid/graphics/Canvas;", "", "Lkotlin/ExtensionFunctionType;", "contains", "p", "Landroid/graphics/Point;", "Landroid/graphics/PointF;", "get", "x", "y", "scale", "filter", "set", "color", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class BitmapKt {
    public static final Bitmap applyCanvas(Bitmap bitmap, Function1<? super Canvas, Unit> function1) {
        function1.invoke(new Canvas(bitmap));
        return bitmap;
    }

    public static final boolean contains(Bitmap bitmap, Point point) {
        int i3;
        int width = bitmap.getWidth();
        int i4 = point.x;
        return i4 >= 0 && i4 < width && (i3 = point.y) >= 0 && i3 < bitmap.getHeight();
    }

    public static final Bitmap createBitmap(int i3, int i4, Bitmap.Config config) {
        return Bitmap.createBitmap(i3, i4, config);
    }

    public static /* synthetic */ Bitmap createBitmap$default(int i3, int i4, Bitmap.Config config, int i5, Object obj) {
        if ((i5 & 4) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        return Bitmap.createBitmap(i3, i4, config);
    }

    public static final int get(Bitmap bitmap, int i3, int i4) {
        return bitmap.getPixel(i3, i4);
    }

    public static final Bitmap scale(Bitmap bitmap, int i3, int i4, boolean z2) {
        return Bitmap.createScaledBitmap(bitmap, i3, i4, z2);
    }

    public static /* synthetic */ Bitmap scale$default(Bitmap bitmap, int i3, int i4, boolean z2, int i5, Object obj) {
        if ((i5 & 4) != 0) {
            z2 = true;
        }
        return Bitmap.createScaledBitmap(bitmap, i3, i4, z2);
    }

    public static final void set(Bitmap bitmap, int i3, int i4, int i5) {
        bitmap.setPixel(i3, i4, i5);
    }

    public static final boolean contains(Bitmap bitmap, PointF pointF) {
        float f = pointF.x;
        if (f < 0.0f || f >= bitmap.getWidth()) {
            return false;
        }
        float f3 = pointF.y;
        return f3 >= 0.0f && f3 < ((float) bitmap.getHeight());
    }

    @SuppressLint({"ClassVerificationFailure"})
    public static final Bitmap createBitmap(int i3, int i4, Bitmap.Config config, boolean z2, ColorSpace colorSpace) {
        return Bitmap.createBitmap(i3, i4, config, z2, colorSpace);
    }

    public static /* synthetic */ Bitmap createBitmap$default(int i3, int i4, Bitmap.Config config, boolean z2, ColorSpace colorSpace, int i5, Object obj) {
        if ((i5 & 4) != 0) {
            config = Bitmap.Config.ARGB_8888;
        }
        if ((i5 & 8) != 0) {
            z2 = true;
        }
        if ((i5 & 16) != 0) {
            ColorSpace.Named unused = ColorSpace.Named.SRGB;
            colorSpace = ColorSpace.get(ColorSpace.Named.SRGB);
        }
        return Bitmap.createBitmap(i3, i4, config, z2, colorSpace);
    }
}
