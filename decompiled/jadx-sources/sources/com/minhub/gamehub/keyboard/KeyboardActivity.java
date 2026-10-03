package com.minhub.gamehub.keyboard;

import B1.C0046b;
import S1.c;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.view.ViewCompat;
import com.minhub.gamehub.R;
import com.minhub.gamehub.keyboard.KeyboardActivity;
import k.m1;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/minhub/gamehub/keyboard/KeyboardActivity;", "LS1/c;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nKeyboardActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KeyboardActivity.kt\ncom/minhub/gamehub/keyboard/KeyboardActivity\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,143:1\n161#2,8:144\n1#3:152\n*S KotlinDebug\n*F\n+ 1 KeyboardActivity.kt\ncom/minhub/gamehub/keyboard/KeyboardActivity\n*L\n31#1:144,8\n*E\n"})
public final class KeyboardActivity extends c {
    public static final /* synthetic */ int f = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public m1 f3832e;

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m1 m1Var = null;
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_keyboard, (ViewGroup) null, false);
        int i3 = R.id.btn_back;
        ImageButton imageButton = (ImageButton) viewInflate.findViewById(R.id.btn_back);
        if (imageButton != null) {
            i3 = R.id.btn_map_mode;
            Button button = (Button) viewInflate.findViewById(R.id.btn_map_mode);
            if (button != null) {
                i3 = R.id.btn_test_mode;
                Button button2 = (Button) viewInflate.findViewById(R.id.btn_test_mode);
                if (button2 != null) {
                    i3 = R.id.layout_header;
                    LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.layout_header);
                    if (linearLayout != null) {
                        i3 = R.id.tv_pressed_key;
                        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_pressed_key);
                        if (textView != null) {
                            i3 = R.id.virtual_keyboard;
                            VirtualKeyboardView virtualKeyboardView = (VirtualKeyboardView) viewInflate.findViewById(R.id.virtual_keyboard);
                            if (virtualKeyboardView != null) {
                                LinearLayout linearLayout2 = (LinearLayout) viewInflate;
                                m1 m1Var2 = new m1(linearLayout2, imageButton, button, button2, linearLayout, textView, virtualKeyboardView);
                                Intrinsics.checkNotNullExpressionValue(m1Var2, "inflate(...)");
                                this.f3832e = m1Var2;
                                setContentView(linearLayout2);
                                m1 m1Var3 = this.f3832e;
                                if (m1Var3 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("b");
                                    m1Var3 = null;
                                }
                                ViewCompat.setOnApplyWindowInsetsListener((LinearLayout) m1Var3.b, new C0046b(7, this));
                                m1 m1Var4 = this.f3832e;
                                if (m1Var4 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("b");
                                    m1Var4 = null;
                                }
                                final int i4 = 0;
                                ((VirtualKeyboardView) m1Var4.g).setOnKeyPress(new Function1(this) { // from class: F1.d

                                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                                    public final /* synthetic */ KeyboardActivity f974c;

                                    {
                                        this.f974c = this;
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) {
                                        int i5 = i4;
                                        KeyboardActivity keyboardActivity = this.f974c;
                                        f key = (f) obj;
                                        switch (i5) {
                                            case 0:
                                                int i6 = KeyboardActivity.f;
                                                Intrinsics.checkNotNullParameter(key, "key");
                                                m1 m1Var5 = keyboardActivity.f3832e;
                                                if (m1Var5 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("b");
                                                    m1Var5 = null;
                                                }
                                                m1Var5.f4880a.setText(keyboardActivity.getString(R.string.label_pressed) + " " + key.f980a);
                                                break;
                                            default:
                                                int i7 = KeyboardActivity.f;
                                                Intrinsics.checkNotNullParameter(key, "key");
                                                keyboardActivity.getClass();
                                                break;
                                        }
                                        return Unit.INSTANCE;
                                    }
                                });
                                m1 m1Var5 = this.f3832e;
                                if (m1Var5 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("b");
                                    m1Var5 = null;
                                }
                                final int i5 = 1;
                                ((VirtualKeyboardView) m1Var5.g).setOnKeyRelease(new Function1(this) { // from class: F1.d

                                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                                    public final /* synthetic */ KeyboardActivity f974c;

                                    {
                                        this.f974c = this;
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object invoke(Object obj) {
                                        int i6 = i5;
                                        KeyboardActivity keyboardActivity = this.f974c;
                                        f key = (f) obj;
                                        switch (i6) {
                                            case 0:
                                                int i7 = KeyboardActivity.f;
                                                Intrinsics.checkNotNullParameter(key, "key");
                                                m1 m1Var6 = keyboardActivity.f3832e;
                                                if (m1Var6 == null) {
                                                    Intrinsics.throwUninitializedPropertyAccessException("b");
                                                    m1Var6 = null;
                                                }
                                                m1Var6.f4880a.setText(keyboardActivity.getString(R.string.label_pressed) + " " + key.f980a);
                                                break;
                                            default:
                                                int i8 = KeyboardActivity.f;
                                                Intrinsics.checkNotNullParameter(key, "key");
                                                keyboardActivity.getClass();
                                                break;
                                        }
                                        return Unit.INSTANCE;
                                    }
                                });
                                m1 m1Var6 = this.f3832e;
                                if (m1Var6 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("b");
                                    m1Var6 = null;
                                }
                                final int i6 = 0;
                                ((ImageButton) m1Var6.f4881c).setOnClickListener(new View.OnClickListener(this) { // from class: F1.c

                                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                                    public final /* synthetic */ KeyboardActivity f973c;

                                    {
                                        this.f973c = this;
                                    }

                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i7 = i6;
                                        KeyboardActivity keyboardActivity = this.f973c;
                                        switch (i7) {
                                            case 0:
                                                int i8 = KeyboardActivity.f;
                                                keyboardActivity.finish();
                                                break;
                                            case 1:
                                                int i9 = KeyboardActivity.f;
                                                Toast.makeText(keyboardActivity, keyboardActivity.getString(R.string.toast_test_mode), 0).show();
                                                break;
                                            default:
                                                int i10 = KeyboardActivity.f;
                                                Toast.makeText(keyboardActivity, keyboardActivity.getString(R.string.toast_map_mode), 0).show();
                                                break;
                                        }
                                    }
                                });
                                m1 m1Var7 = this.f3832e;
                                if (m1Var7 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("b");
                                    m1Var7 = null;
                                }
                                final int i7 = 1;
                                ((Button) m1Var7.f4883e).setOnClickListener(new View.OnClickListener(this) { // from class: F1.c

                                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                                    public final /* synthetic */ KeyboardActivity f973c;

                                    {
                                        this.f973c = this;
                                    }

                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i8 = i7;
                                        KeyboardActivity keyboardActivity = this.f973c;
                                        switch (i8) {
                                            case 0:
                                                int i9 = KeyboardActivity.f;
                                                keyboardActivity.finish();
                                                break;
                                            case 1:
                                                int i10 = KeyboardActivity.f;
                                                Toast.makeText(keyboardActivity, keyboardActivity.getString(R.string.toast_test_mode), 0).show();
                                                break;
                                            default:
                                                int i11 = KeyboardActivity.f;
                                                Toast.makeText(keyboardActivity, keyboardActivity.getString(R.string.toast_map_mode), 0).show();
                                                break;
                                        }
                                    }
                                });
                                m1 m1Var8 = this.f3832e;
                                if (m1Var8 == null) {
                                    Intrinsics.throwUninitializedPropertyAccessException("b");
                                } else {
                                    m1Var = m1Var8;
                                }
                                final int i8 = 2;
                                ((Button) m1Var.f4882d).setOnClickListener(new View.OnClickListener(this) { // from class: F1.c

                                    /* JADX INFO: renamed from: c, reason: collision with root package name */
                                    public final /* synthetic */ KeyboardActivity f973c;

                                    {
                                        this.f973c = this;
                                    }

                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        int i9 = i8;
                                        KeyboardActivity keyboardActivity = this.f973c;
                                        switch (i9) {
                                            case 0:
                                                int i10 = KeyboardActivity.f;
                                                keyboardActivity.finish();
                                                break;
                                            case 1:
                                                int i11 = KeyboardActivity.f;
                                                Toast.makeText(keyboardActivity, keyboardActivity.getString(R.string.toast_test_mode), 0).show();
                                                break;
                                            default:
                                                int i12 = KeyboardActivity.f;
                                                Toast.makeText(keyboardActivity, keyboardActivity.getString(R.string.toast_map_mode), 0).show();
                                                break;
                                        }
                                    }
                                });
                                return;
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i3)));
    }
}
