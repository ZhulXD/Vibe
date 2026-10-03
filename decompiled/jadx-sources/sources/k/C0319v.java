package k;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.view.View;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import com.minhub.gamehub.R;

/* JADX INFO: renamed from: k.v, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0319v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f4921a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4922c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f4923d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f4924e;
    public final Object f;

    public /* synthetic */ C0319v(View view, View view2, View view3, TextView textView, TextView textView2, TextView textView3) {
        this.f4921a = view;
        this.b = view2;
        this.f4922c = view3;
        this.f4923d = textView;
        this.f4924e = textView2;
        this.f = textView3;
    }

    public static boolean a(int[] iArr, int i3) {
        for (int i4 : iArr) {
            if (i4 == i3) {
                return true;
            }
        }
        return false;
    }

    public static ColorStateList b(Context context, int i3) {
        int iC = V0.c(context, R.attr.colorControlHighlight);
        int iB = V0.b(context, R.attr.colorButtonNormal);
        int[] iArr = V0.b;
        int[] iArr2 = V0.f4790d;
        int iCompositeColors = ColorUtils.compositeColors(iC, i3);
        return new ColorStateList(new int[][]{iArr, iArr2, V0.f4789c, V0.f}, new int[]{iB, iCompositeColors, ColorUtils.compositeColors(iC, i3), i3});
    }

    public static LayerDrawable c(P0 p0, Context context, int i3) {
        BitmapDrawable bitmapDrawable;
        BitmapDrawable bitmapDrawable2;
        BitmapDrawable bitmapDrawable3;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(i3);
        Drawable drawableC = p0.c(context, R.drawable.abc_star_black_48dp);
        Drawable drawableC2 = p0.c(context, R.drawable.abc_star_half_black_48dp);
        if ((drawableC instanceof BitmapDrawable) && drawableC.getIntrinsicWidth() == dimensionPixelSize && drawableC.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable = (BitmapDrawable) drawableC;
            bitmapDrawable2 = new BitmapDrawable(bitmapDrawable.getBitmap());
        } else {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawableC.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawableC.draw(canvas);
            bitmapDrawable = new BitmapDrawable(bitmapCreateBitmap);
            bitmapDrawable2 = new BitmapDrawable(bitmapCreateBitmap);
        }
        bitmapDrawable2.setTileModeX(Shader.TileMode.REPEAT);
        if ((drawableC2 instanceof BitmapDrawable) && drawableC2.getIntrinsicWidth() == dimensionPixelSize && drawableC2.getIntrinsicHeight() == dimensionPixelSize) {
            bitmapDrawable3 = (BitmapDrawable) drawableC2;
        } else {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(dimensionPixelSize, dimensionPixelSize, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(bitmapCreateBitmap2);
            drawableC2.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
            drawableC2.draw(canvas2);
            bitmapDrawable3 = new BitmapDrawable(bitmapCreateBitmap2);
        }
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{bitmapDrawable, bitmapDrawable3, bitmapDrawable2});
        layerDrawable.setId(0, android.R.id.background);
        layerDrawable.setId(1, android.R.id.secondaryProgress);
        layerDrawable.setId(2, android.R.id.progress);
        return layerDrawable;
    }

    public static void e(Drawable drawable, int i3, PorterDuff.Mode mode) {
        Drawable drawableMutate = drawable.mutate();
        if (mode == null) {
            mode = C0321w.b;
        }
        drawableMutate.setColorFilter(C0321w.c(i3, mode));
    }

    public ColorStateList d(Context context, int i3) {
        if (i3 == R.drawable.abc_edit_text_material) {
            return ContextCompat.getColorStateList(context, R.color.abc_tint_edittext);
        }
        if (i3 == R.drawable.abc_switch_track_mtrl_alpha) {
            return ContextCompat.getColorStateList(context, R.color.abc_tint_switch_track);
        }
        if (i3 != R.drawable.abc_switch_thumb_material) {
            if (i3 == R.drawable.abc_btn_default_mtrl_shape) {
                return b(context, V0.c(context, R.attr.colorButtonNormal));
            }
            if (i3 == R.drawable.abc_btn_borderless_material) {
                return b(context, 0);
            }
            if (i3 == R.drawable.abc_btn_colored_material) {
                return b(context, V0.c(context, R.attr.colorAccent));
            }
            if (i3 == R.drawable.abc_spinner_mtrl_am_alpha || i3 == R.drawable.abc_spinner_textfield_background_material) {
                return ContextCompat.getColorStateList(context, R.color.abc_tint_spinner);
            }
            if (a((int[]) this.b, i3)) {
                return V0.d(context, R.attr.colorControlNormal);
            }
            if (a((int[]) this.f4924e, i3)) {
                return ContextCompat.getColorStateList(context, R.color.abc_tint_default);
            }
            if (a((int[]) this.f, i3)) {
                return ContextCompat.getColorStateList(context, R.color.abc_tint_btn_checkable);
            }
            if (i3 == R.drawable.abc_seekbar_thumb_material) {
                return ContextCompat.getColorStateList(context, R.color.abc_tint_seek_thumb);
            }
            return null;
        }
        int[][] iArr = new int[3][];
        int[] iArr2 = new int[3];
        ColorStateList colorStateListD = V0.d(context, R.attr.colorSwitchThumbNormal);
        if (colorStateListD == null || !colorStateListD.isStateful()) {
            iArr[0] = V0.b;
            iArr2[0] = V0.b(context, R.attr.colorSwitchThumbNormal);
            iArr[1] = V0.f4791e;
            iArr2[1] = V0.c(context, R.attr.colorControlActivated);
            iArr[2] = V0.f;
            iArr2[2] = V0.c(context, R.attr.colorSwitchThumbNormal);
        } else {
            int[] iArr3 = V0.b;
            iArr[0] = iArr3;
            iArr2[0] = colorStateListD.getColorForState(iArr3, 0);
            iArr[1] = V0.f4791e;
            iArr2[1] = V0.c(context, R.attr.colorControlActivated);
            iArr[2] = V0.f;
            iArr2[2] = colorStateListD.getDefaultColor();
        }
        return new ColorStateList(iArr, iArr2);
    }

    public C0319v() {
        this.f4921a = new int[]{R.drawable.abc_textfield_search_default_mtrl_alpha, R.drawable.abc_textfield_default_mtrl_alpha, R.drawable.abc_ab_share_pack_mtrl_alpha};
        this.b = new int[]{R.drawable.abc_ic_commit_search_api_mtrl_alpha, R.drawable.abc_seekbar_tick_mark_material, R.drawable.abc_ic_menu_share_mtrl_alpha, R.drawable.abc_ic_menu_copy_mtrl_am_alpha, R.drawable.abc_ic_menu_cut_mtrl_alpha, R.drawable.abc_ic_menu_selectall_mtrl_alpha, R.drawable.abc_ic_menu_paste_mtrl_am_alpha};
        this.f4922c = new int[]{R.drawable.abc_textfield_activated_mtrl_alpha, R.drawable.abc_textfield_search_activated_mtrl_alpha, R.drawable.abc_cab_background_top_mtrl_alpha, R.drawable.abc_text_cursor_material, R.drawable.abc_text_select_handle_left_mtrl, R.drawable.abc_text_select_handle_middle_mtrl, R.drawable.abc_text_select_handle_right_mtrl};
        this.f4923d = new int[]{R.drawable.abc_popup_background_mtrl_mult, R.drawable.abc_cab_background_internal_bg, R.drawable.abc_menu_hardkey_panel_mtrl_mult};
        this.f4924e = new int[]{R.drawable.abc_tab_indicator_material, R.drawable.abc_textfield_search_material};
        this.f = new int[]{R.drawable.abc_btn_check_material, R.drawable.abc_btn_radio_material, R.drawable.abc_btn_check_material_anim, R.drawable.abc_btn_radio_material_anim};
    }
}
