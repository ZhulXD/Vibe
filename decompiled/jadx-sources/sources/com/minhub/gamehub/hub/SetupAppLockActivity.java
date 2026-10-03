package com.minhub.gamehub.hub;

import A1.C0035p;
import C1.V1;
import C1.i2;
import S1.c;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.minhub.gamehub.R;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import p058w1.g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/minhub/gamehub/hub/SetupAppLockActivity;", "LS1/c;", "<init>", "()V", "com/bumptech/glide/c", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class SetupAppLockActivity extends c {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ int f3805j = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public g f3806e;
    public V1 f;
    public final StringBuilder g = new StringBuilder();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public String f3807h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f3808i;

    public final String m() {
        String string = getString(this.f3808i ? R.string.app_lock_setup_confirm : R.string.app_lock_setup_enter);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        return string;
    }

    public final void n() {
        V1 v2 = this.f;
        if (v2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("ui");
            v2 = null;
        }
        v2.f(this.g.length());
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        V1 v2 = null;
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_setup_app_lock, (ViewGroup) null, false);
        int i3 = R.id.btn0;
        Button button = (Button) viewInflate.findViewById(R.id.btn0);
        if (button != null) {
            i3 = R.id.btn1;
            Button button2 = (Button) viewInflate.findViewById(R.id.btn1);
            if (button2 != null) {
                i3 = R.id.btn2;
                Button button3 = (Button) viewInflate.findViewById(R.id.btn2);
                if (button3 != null) {
                    i3 = R.id.btn3;
                    Button button4 = (Button) viewInflate.findViewById(R.id.btn3);
                    if (button4 != null) {
                        i3 = R.id.btn4;
                        Button button5 = (Button) viewInflate.findViewById(R.id.btn4);
                        if (button5 != null) {
                            i3 = R.id.btn5;
                            Button button6 = (Button) viewInflate.findViewById(R.id.btn5);
                            if (button6 != null) {
                                i3 = R.id.btn6;
                                Button button7 = (Button) viewInflate.findViewById(R.id.btn6);
                                if (button7 != null) {
                                    i3 = R.id.btn7;
                                    Button button8 = (Button) viewInflate.findViewById(R.id.btn7);
                                    if (button8 != null) {
                                        i3 = R.id.btn8;
                                        Button button9 = (Button) viewInflate.findViewById(R.id.btn8);
                                        if (button9 != null) {
                                            i3 = R.id.btn9;
                                            Button button10 = (Button) viewInflate.findViewById(R.id.btn9);
                                            if (button10 != null) {
                                                i3 = R.id.btn_backspace;
                                                ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.btn_backspace);
                                                if (imageButton != null) {
                                                    i3 = R.id.dot1;
                                                    ImageView imageView = (ImageView) viewInflate.findViewById(R.id.dot1);
                                                    if (imageView != null) {
                                                        i3 = R.id.dot2;
                                                        ImageView imageView2 = (ImageView) viewInflate.findViewById(R.id.dot2);
                                                        if (imageView2 != null) {
                                                            i3 = R.id.dot3;
                                                            ImageView imageView3 = (ImageView) viewInflate.findViewById(R.id.dot3);
                                                            if (imageView3 != null) {
                                                                i3 = R.id.dot4;
                                                                ImageView imageView4 = (ImageView) viewInflate.findViewById(R.id.dot4);
                                                                if (imageView4 != null) {
                                                                    i3 = R.id.dots_row;
                                                                    LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.dots_row);
                                                                    if (linearLayout != null) {
                                                                        i3 = R.id.pin_pad;
                                                                        LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.pin_pad);
                                                                        if (linearLayout2 != null) {
                                                                            i3 = R.id.tv_lock_title;
                                                                            TextView textView = (TextView) viewInflate.findViewById(R.id.tv_lock_title);
                                                                            if (textView != null) {
                                                                                i3 = R.id.tv_pin_hint;
                                                                                TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_pin_hint);
                                                                                if (textView2 != null) {
                                                                                    LinearLayout linearLayout3 = (LinearLayout) viewInflate;
                                                                                    g gVar = new g(linearLayout3, button, button2, button3, button4, button5, button6, button7, button8, button9, button10, imageButton, imageView, imageView2, imageView3, imageView4, linearLayout, linearLayout2, textView, textView2);
                                                                                    Intrinsics.checkNotNullExpressionValue(gVar, "inflate(...)");
                                                                                    this.f3806e = gVar;
                                                                                    setContentView(linearLayout3);
                                                                                    g gVar2 = this.f3806e;
                                                                                    if (gVar2 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar2 = null;
                                                                                    }
                                                                                    TextView tvLockTitle = gVar2.f5798r;
                                                                                    Intrinsics.checkNotNullExpressionValue(tvLockTitle, "tvLockTitle");
                                                                                    g gVar3 = this.f3806e;
                                                                                    if (gVar3 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar3 = null;
                                                                                    }
                                                                                    LinearLayout dotsRow = gVar3.f5796p;
                                                                                    Intrinsics.checkNotNullExpressionValue(dotsRow, "dotsRow");
                                                                                    g gVar4 = this.f3806e;
                                                                                    if (gVar4 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar4 = null;
                                                                                    }
                                                                                    ImageView imageView5 = gVar4.f5792l;
                                                                                    g gVar5 = this.f3806e;
                                                                                    if (gVar5 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar5 = null;
                                                                                    }
                                                                                    ImageView imageView6 = gVar5.f5793m;
                                                                                    g gVar6 = this.f3806e;
                                                                                    if (gVar6 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar6 = null;
                                                                                    }
                                                                                    ImageView imageView7 = gVar6.f5794n;
                                                                                    g gVar7 = this.f3806e;
                                                                                    if (gVar7 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar7 = null;
                                                                                    }
                                                                                    List listListOf = CollectionsKt.listOf((Object[]) new ImageView[]{imageView5, imageView6, imageView7, gVar7.f5795o});
                                                                                    g gVar8 = this.f3806e;
                                                                                    if (gVar8 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar8 = null;
                                                                                    }
                                                                                    TextView tvPinHint = gVar8.f5799s;
                                                                                    Intrinsics.checkNotNullExpressionValue(tvPinHint, "tvPinHint");
                                                                                    g gVar9 = this.f3806e;
                                                                                    if (gVar9 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar9 = null;
                                                                                    }
                                                                                    LinearLayout pinPad = gVar9.f5797q;
                                                                                    Intrinsics.checkNotNullExpressionValue(pinPad, "pinPad");
                                                                                    this.f = new V1(tvLockTitle, dotsRow, listListOf, tvPinHint, pinPad);
                                                                                    g gVar10 = this.f3806e;
                                                                                    if (gVar10 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar10 = null;
                                                                                    }
                                                                                    gVar10.f5798r.setText(m());
                                                                                    V1 v3 = this.f;
                                                                                    if (v3 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("ui");
                                                                                        v3 = null;
                                                                                    }
                                                                                    g gVar11 = this.f3806e;
                                                                                    if (gVar11 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar11 = null;
                                                                                    }
                                                                                    Button button11 = gVar11.f5784a;
                                                                                    g gVar12 = this.f3806e;
                                                                                    if (gVar12 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar12 = null;
                                                                                    }
                                                                                    Button button12 = gVar12.b;
                                                                                    g gVar13 = this.f3806e;
                                                                                    if (gVar13 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar13 = null;
                                                                                    }
                                                                                    Button button13 = gVar13.f5785c;
                                                                                    g gVar14 = this.f3806e;
                                                                                    if (gVar14 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar14 = null;
                                                                                    }
                                                                                    Button button14 = gVar14.f5786d;
                                                                                    g gVar15 = this.f3806e;
                                                                                    if (gVar15 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar15 = null;
                                                                                    }
                                                                                    Button button15 = gVar15.f5787e;
                                                                                    g gVar16 = this.f3806e;
                                                                                    if (gVar16 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar16 = null;
                                                                                    }
                                                                                    Button button16 = gVar16.f;
                                                                                    g gVar17 = this.f3806e;
                                                                                    if (gVar17 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar17 = null;
                                                                                    }
                                                                                    Button button17 = gVar17.g;
                                                                                    g gVar18 = this.f3806e;
                                                                                    if (gVar18 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar18 = null;
                                                                                    }
                                                                                    Button button18 = gVar18.f5788h;
                                                                                    g gVar19 = this.f3806e;
                                                                                    if (gVar19 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar19 = null;
                                                                                    }
                                                                                    Button button19 = gVar19.f5789i;
                                                                                    g gVar20 = this.f3806e;
                                                                                    if (gVar20 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar20 = null;
                                                                                    }
                                                                                    v3.b(CollectionsKt.listOf((Object[]) new Button[]{button11, button12, button13, button14, button15, button16, button17, button18, button19, gVar20.f5790j}), new C0035p(10, this));
                                                                                    V1 v4 = this.f;
                                                                                    if (v4 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("ui");
                                                                                        v4 = null;
                                                                                    }
                                                                                    g gVar21 = this.f3806e;
                                                                                    if (gVar21 == null) {
                                                                                        Intrinsics.throwUninitializedPropertyAccessException("b");
                                                                                        gVar21 = null;
                                                                                    }
                                                                                    ImageButton btnBackspace = gVar21.f5791k;
                                                                                    Intrinsics.checkNotNullExpressionValue(btnBackspace, "btnBackspace");
                                                                                    v4.a(btnBackspace, new i2(this, 0), new i2(this, 1));
                                                                                    n();
                                                                                    if (bundle == null) {
                                                                                        V1 v5 = this.f;
                                                                                        if (v5 == null) {
                                                                                            Intrinsics.throwUninitializedPropertyAccessException("ui");
                                                                                        } else {
                                                                                            v2 = v5;
                                                                                        }
                                                                                        v2.e();
                                                                                        return;
                                                                                    }
                                                                                    return;
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
    }
}
