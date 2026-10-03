package k;

import android.content.Context;
import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.keyboard.VirtualKeyboardView;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class m1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f4880a;
    public final Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f4881c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f4882d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f4883e;
    public final Object f;
    public final Object g;

    public m1(LinearLayout linearLayout, ImageButton imageButton, Button button, Button button2, LinearLayout linearLayout2, TextView textView, VirtualKeyboardView virtualKeyboardView) {
        this.b = linearLayout;
        this.f4881c = imageButton;
        this.f4882d = button;
        this.f4883e = button2;
        this.f = linearLayout2;
        this.f4880a = textView;
        this.g = virtualKeyboardView;
    }

    public m1(Context context) {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
        this.f4882d = layoutParams;
        this.f4883e = new Rect();
        this.f = new int[2];
        this.g = new int[2];
        this.b = context;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.abc_tooltip, (ViewGroup) null);
        this.f4881c = viewInflate;
        this.f4880a = (TextView) viewInflate.findViewById(R.id.message);
        layoutParams.setTitle(m1.class.getSimpleName());
        layoutParams.packageName = context.getPackageName();
        layoutParams.type = 1002;
        layoutParams.width = -2;
        layoutParams.height = -2;
        layoutParams.format = -3;
        layoutParams.windowAnimations = R.style.Animation_AppCompat_Tooltip;
        layoutParams.flags = 24;
    }

    public m1(LinearLayout linearLayout, Button button, Button button2, EditText editText, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, NestedScrollView nestedScrollView, NestedScrollView nestedScrollView2, TextView textView, TextView textView2, TextView textView3, TextView textView4) {
        this.b = editText;
        this.f4881c = nestedScrollView;
        this.f4882d = nestedScrollView2;
        this.f4880a = textView;
        this.f4883e = textView2;
        this.f = textView3;
        this.g = textView4;
    }
}
