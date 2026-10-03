package p058w1;

import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.material.chip.ChipGroup;
import com.minhub.gamehub.editor.EditModeOverlay;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final View f5647a;
    public final View b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final View f5648c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinearLayout f5649d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final TextView f5650e;
    public final View f;
    public final View g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final View f5651h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final View f5652i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final View f5653j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final View f5654k;

    public c(ScrollView scrollView, TextView textView, LinearLayout linearLayout, LinearLayout linearLayout2, LinearLayout linearLayout3, LinearLayout linearLayout4, LinearLayout linearLayout5, LinearLayout linearLayout6, TextView textView2, TextView textView3, TextView textView4, TextView textView5) {
        this.f5650e = textView;
        this.f5649d = linearLayout;
        this.f5647a = linearLayout2;
        this.b = linearLayout3;
        this.f = linearLayout4;
        this.g = linearLayout5;
        this.f5651h = linearLayout6;
        this.f5648c = textView2;
        this.f5652i = textView3;
        this.f5653j = textView4;
        this.f5654k = textView5;
    }

    public c(LinearLayout linearLayout, Button button, Button button2, ImageButton imageButton, ChipGroup chipGroup, LinearLayout linearLayout2, EditText editText, LinearLayout linearLayout3, RecyclerView recyclerView, TextView textView, TextView textView2, TextView textView3) {
        this.f5647a = button;
        this.b = button2;
        this.f5648c = imageButton;
        this.f = chipGroup;
        this.f5649d = linearLayout2;
        this.g = editText;
        this.f5651h = linearLayout3;
        this.f5652i = recyclerView;
        this.f5650e = textView;
        this.f5653j = textView2;
        this.f5654k = textView3;
    }

    public c(ScrollView scrollView, Button button, Button button2, Button button3, Button button4, LinearLayout linearLayout, LinearLayout linearLayout2, Switch r8, Switch r9, Switch r10, TextView textView) {
        this.f5651h = scrollView;
        this.f5647a = button;
        this.b = button2;
        this.f = button3;
        this.g = button4;
        this.f5649d = linearLayout;
        this.f5648c = linearLayout2;
        this.f5652i = r8;
        this.f5653j = r9;
        this.f5654k = r10;
        this.f5650e = textView;
    }

    public c(FrameLayout frameLayout, Button button, ImageButton imageButton, Button button2, Button button3, Button button4, Button button5, EditModeOverlay editModeOverlay, LinearLayout linearLayout, SeekBar seekBar, SeekBar seekBar2, TextView textView) {
        this.f5647a = button;
        this.f5648c = imageButton;
        this.b = button2;
        this.f = button3;
        this.g = button4;
        this.f5651h = button5;
        this.f5652i = editModeOverlay;
        this.f5649d = linearLayout;
        this.f5653j = seekBar;
        this.f5654k = seekBar2;
        this.f5650e = textView;
    }
}
