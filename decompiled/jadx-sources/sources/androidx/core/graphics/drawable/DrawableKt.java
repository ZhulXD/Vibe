package androidx.core.graphics.drawable;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.godotengine.godot.service.GodotService;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u001a*\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\b\b\u0003\u0010\u0003\u001a\u00020\u00042\b\b\u0003\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u001a,\u0010\b\u001a\u0004\u0018\u00010\u0001*\u00020\u00022\b\b\u0003\u0010\u0003\u001a\u00020\u00042\b\b\u0003\u0010\u0005\u001a\u00020\u00042\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u001a2\u0010\t\u001a\u00020\n*\u00020\u00022\b\b\u0003\u0010\u000b\u001a\u00020\u00042\b\b\u0003\u0010\f\u001a\u00020\u00042\b\b\u0003\u0010\r\u001a\u00020\u00042\b\b\u0003\u0010\u000e\u001a\u00020\u0004¨\u0006\u000f"}, d2 = {"toBitmap", "Landroid/graphics/Bitmap;", "Landroid/graphics/drawable/Drawable;", GodotService.KEY_WIDTH, "", GodotService.KEY_HEIGHT, "config", "Landroid/graphics/Bitmap$Config;", "toBitmapOrNull", "updateBounds", "", "left", "top", "right", "bottom", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Drawable.kt\nandroidx/core/graphics/drawable/DrawableKt\n+ 2 Rect.kt\nandroidx/core/graphics/RectKt\n*L\n1#1,118:1\n37#2,31:119\n*S KotlinDebug\n*F\n+ 1 Drawable.kt\nandroidx/core/graphics/drawable/DrawableKt\n*L\n66#1:119,31\n*E\n"})
public final class DrawableKt {
    public static final Bitmap toBitmap(Drawable drawable, int i3, int i4, Bitmap.Config config) {
        if (drawable instanceof BitmapDrawable) {
            BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
            if (bitmapDrawable.getBitmap() == null) {
                throw new IllegalArgumentException("bitmap is null");
            }
            if (config == null || bitmapDrawable.getBitmap().getConfig() == config) {
                return (i3 == bitmapDrawable.getBitmap().getWidth() && i4 == bitmapDrawable.getBitmap().getHeight()) ? bitmapDrawable.getBitmap() : Bitmap.createScaledBitmap(bitmapDrawable.getBitmap(), i3, i4, true);
            }
        }
        Rect bounds = drawable.getBounds();
        int i5 = bounds.left;
        int i6 = bounds.top;
        int i7 = bounds.right;
        int i8 = bounds.bottom;
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i3, i4, config);
        drawable.setBounds(0, 0, i3, i4);
        drawable.draw(new Canvas(bitmapCreateBitmap));
        drawable.setBounds(i5, i6, i7, i8);
        return bitmapCreateBitmap;
    }

    public static /* synthetic */ Bitmap toBitmap$default(Drawable drawable, int i3, int i4, Bitmap.Config config, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i3 = drawable.getIntrinsicWidth();
        }
        if ((i5 & 2) != 0) {
            i4 = drawable.getIntrinsicHeight();
        }
        if ((i5 & 4) != 0) {
            config = null;
        }
        return toBitmap(drawable, i3, i4, config);
    }

    public static final Bitmap toBitmapOrNull(Drawable drawable, int i3, int i4, Bitmap.Config config) {
        if ((drawable instanceof BitmapDrawable) && ((BitmapDrawable) drawable).getBitmap() == null) {
            return null;
        }
        return toBitmap(drawable, i3, i4, config);
    }

    public static /* synthetic */ Bitmap toBitmapOrNull$default(Drawable drawable, int i3, int i4, Bitmap.Config config, int i5, Object obj) {
        if ((i5 & 1) != 0) {
            i3 = drawable.getIntrinsicWidth();
        }
        if ((i5 & 2) != 0) {
            i4 = drawable.getIntrinsicHeight();
        }
        if ((i5 & 4) != 0) {
            config = null;
        }
        return toBitmapOrNull(drawable, i3, i4, config);
    }

    public static final void updateBounds(Drawable drawable, int i3, int i4, int i5, int i6) {
        drawable.setBounds(i3, i4, i5, i6);
    }

    public static /* synthetic */ void updateBounds$default(Drawable drawable, int i3, int i4, int i5, int i6, int i7, Object obj) {
        if ((i7 & 1) != 0) {
            i3 = drawable.getBounds().left;
        }
        if ((i7 & 2) != 0) {
            i4 = drawable.getBounds().top;
        }
        if ((i7 & 4) != 0) {
            i5 = drawable.getBounds().right;
        }
        if ((i7 & 8) != 0) {
            i6 = drawable.getBounds().bottom;
        }
        updateBounds(drawable, i3, i4, i5, i6);
    }
}
