package p011e;

import H0.j;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.appcompat.app.AlertController$RecycleListView;
import androidx.core.view.ViewCompat;
import androidx.core.widget.NestedScrollView;
import com.minhub.gamehub.R;
import k.C0328z0;

/* JADX INFO: renamed from: e.g, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class DialogInterfaceC0245g extends D implements DialogInterface {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final C0243e f4146d;

    public DialogInterfaceC0245g(ContextThemeWrapper contextThemeWrapper, int i3) {
        super(contextThemeWrapper, e(contextThemeWrapper, i3));
        this.f4146d = new C0243e(getContext(), this, getWindow());
    }

    public static int e(Context context, int i3) {
        if (((i3 >>> 24) & 255) >= 1) {
            return i3;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogTheme, typedValue, true);
        return typedValue.resourceId;
    }

    @Override // p011e.D, androidx.activity.ComponentDialog, android.app.Dialog
    public final void onCreate(Bundle bundle) {
        int i3;
        ListAdapter listAdapter;
        View viewFindViewById;
        super.onCreate(bundle);
        C0243e c0243e = this.f4146d;
        c0243e.b.setContentView(c0243e.f4144z);
        Context context = c0243e.f4122a;
        Window window = c0243e.f4123c;
        View viewFindViewById2 = window.findViewById(R.id.parentPanel);
        View viewFindViewById3 = viewFindViewById2.findViewById(R.id.topPanel);
        View viewFindViewById4 = viewFindViewById2.findViewById(R.id.contentPanel);
        View viewFindViewById5 = viewFindViewById2.findViewById(R.id.buttonPanel);
        ViewGroup viewGroup = (ViewGroup) viewFindViewById2.findViewById(R.id.customPanel);
        View view = c0243e.g;
        if (view == null) {
            view = null;
        }
        boolean z2 = view != null;
        if (!z2 || !C0243e.a(view)) {
            window.setFlags(131072, 131072);
        }
        if (z2) {
            FrameLayout frameLayout = (FrameLayout) window.findViewById(R.id.custom);
            frameLayout.addView(view, new ViewGroup.LayoutParams(-1, -1));
            if (c0243e.f4126h) {
                frameLayout.setPadding(0, 0, 0, 0);
            }
            if (c0243e.f != null) {
                ((LinearLayout.LayoutParams) ((C0328z0) viewGroup.getLayoutParams())).weight = 0.0f;
            }
        } else {
            viewGroup.setVisibility(8);
        }
        View viewFindViewById6 = viewGroup.findViewById(R.id.topPanel);
        View viewFindViewById7 = viewGroup.findViewById(R.id.contentPanel);
        View viewFindViewById8 = viewGroup.findViewById(R.id.buttonPanel);
        ViewGroup viewGroupB = C0243e.b(viewFindViewById6, viewFindViewById3);
        ViewGroup viewGroupB2 = C0243e.b(viewFindViewById7, viewFindViewById4);
        ViewGroup viewGroupB3 = C0243e.b(viewFindViewById8, viewFindViewById5);
        NestedScrollView nestedScrollView = (NestedScrollView) window.findViewById(R.id.scrollView);
        c0243e.f4136r = nestedScrollView;
        nestedScrollView.setFocusable(false);
        c0243e.f4136r.setNestedScrollingEnabled(false);
        TextView textView = (TextView) viewGroupB2.findViewById(android.R.id.message);
        c0243e.f4140v = textView;
        if (textView != null) {
            CharSequence charSequence = c0243e.f4125e;
            if (charSequence != null) {
                textView.setText(charSequence);
            } else {
                textView.setVisibility(8);
                c0243e.f4136r.removeView(c0243e.f4140v);
                if (c0243e.f != null) {
                    ViewGroup viewGroup2 = (ViewGroup) c0243e.f4136r.getParent();
                    int iIndexOfChild = viewGroup2.indexOfChild(c0243e.f4136r);
                    viewGroup2.removeViewAt(iIndexOfChild);
                    viewGroup2.addView(c0243e.f, iIndexOfChild, new ViewGroup.LayoutParams(-1, -1));
                } else {
                    viewGroupB2.setVisibility(8);
                }
            }
        }
        Button button = (Button) viewGroupB3.findViewById(android.R.id.button1);
        c0243e.f4127i = button;
        j jVar = c0243e.f4121F;
        button.setOnClickListener(jVar);
        if (TextUtils.isEmpty(c0243e.f4128j)) {
            c0243e.f4127i.setVisibility(8);
            i3 = 0;
        } else {
            c0243e.f4127i.setText(c0243e.f4128j);
            c0243e.f4127i.setVisibility(0);
            i3 = 1;
        }
        Button button2 = (Button) viewGroupB3.findViewById(android.R.id.button2);
        c0243e.f4130l = button2;
        button2.setOnClickListener(jVar);
        if (TextUtils.isEmpty(c0243e.f4131m)) {
            c0243e.f4130l.setVisibility(8);
        } else {
            c0243e.f4130l.setText(c0243e.f4131m);
            c0243e.f4130l.setVisibility(0);
            i3 |= 2;
        }
        Button button3 = (Button) viewGroupB3.findViewById(android.R.id.button3);
        c0243e.f4133o = button3;
        button3.setOnClickListener(jVar);
        if (TextUtils.isEmpty(c0243e.f4134p)) {
            c0243e.f4133o.setVisibility(8);
        } else {
            c0243e.f4133o.setText(c0243e.f4134p);
            c0243e.f4133o.setVisibility(0);
            i3 |= 4;
        }
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.alertDialogCenterButtons, typedValue, true);
        if (typedValue.data != 0) {
            if (i3 == 1) {
                Button button4 = c0243e.f4127i;
                LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button4.getLayoutParams();
                layoutParams.gravity = 1;
                layoutParams.weight = 0.5f;
                button4.setLayoutParams(layoutParams);
            } else if (i3 == 2) {
                Button button5 = c0243e.f4130l;
                LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) button5.getLayoutParams();
                layoutParams2.gravity = 1;
                layoutParams2.weight = 0.5f;
                button5.setLayoutParams(layoutParams2);
            } else if (i3 == 4) {
                Button button6 = c0243e.f4133o;
                LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) button6.getLayoutParams();
                layoutParams3.gravity = 1;
                layoutParams3.weight = 0.5f;
                button6.setLayoutParams(layoutParams3);
            }
        }
        if (i3 == 0) {
            viewGroupB3.setVisibility(8);
        }
        if (c0243e.f4141w != null) {
            viewGroupB.addView(c0243e.f4141w, 0, new ViewGroup.LayoutParams(-1, -2));
            window.findViewById(R.id.title_template).setVisibility(8);
        } else {
            c0243e.f4138t = (ImageView) window.findViewById(android.R.id.icon);
            if (TextUtils.isEmpty(c0243e.f4124d) || !c0243e.f4119D) {
                window.findViewById(R.id.title_template).setVisibility(8);
                c0243e.f4138t.setVisibility(8);
                viewGroupB.setVisibility(8);
            } else {
                TextView textView2 = (TextView) window.findViewById(R.id.alertTitle);
                c0243e.f4139u = textView2;
                textView2.setText(c0243e.f4124d);
                Drawable drawable = c0243e.f4137s;
                if (drawable != null) {
                    c0243e.f4138t.setImageDrawable(drawable);
                } else {
                    c0243e.f4139u.setPadding(c0243e.f4138t.getPaddingLeft(), c0243e.f4138t.getPaddingTop(), c0243e.f4138t.getPaddingRight(), c0243e.f4138t.getPaddingBottom());
                    c0243e.f4138t.setVisibility(8);
                }
            }
        }
        boolean z3 = viewGroup.getVisibility() != 8;
        int i4 = (viewGroupB == null || viewGroupB.getVisibility() == 8) ? 0 : 1;
        boolean z4 = viewGroupB3.getVisibility() != 8;
        if (!z4 && (viewFindViewById = viewGroupB2.findViewById(R.id.textSpacerNoButtons)) != null) {
            viewFindViewById.setVisibility(0);
        }
        if (i4 != 0) {
            NestedScrollView nestedScrollView2 = c0243e.f4136r;
            if (nestedScrollView2 != null) {
                nestedScrollView2.setClipToPadding(true);
            }
            View viewFindViewById9 = (c0243e.f4125e == null && c0243e.f == null) ? null : viewGroupB.findViewById(R.id.titleDividerNoCustom);
            if (viewFindViewById9 != null) {
                viewFindViewById9.setVisibility(0);
            }
        } else {
            View viewFindViewById10 = viewGroupB2.findViewById(R.id.textSpacerNoTitle);
            if (viewFindViewById10 != null) {
                viewFindViewById10.setVisibility(0);
            }
        }
        AlertController$RecycleListView alertController$RecycleListView = c0243e.f;
        if (alertController$RecycleListView != null && (!z4 || i4 == 0)) {
            alertController$RecycleListView.setPadding(alertController$RecycleListView.getPaddingLeft(), i4 != 0 ? alertController$RecycleListView.getPaddingTop() : alertController$RecycleListView.b, alertController$RecycleListView.getPaddingRight(), z4 ? alertController$RecycleListView.getPaddingBottom() : alertController$RecycleListView.f2616c);
        }
        if (!z3) {
            View view2 = c0243e.f;
            if (view2 == null) {
                view2 = c0243e.f4136r;
            }
            if (view2 != null) {
                int i5 = z4 ? 2 : 0;
                View viewFindViewById11 = window.findViewById(R.id.scrollIndicatorUp);
                View viewFindViewById12 = window.findViewById(R.id.scrollIndicatorDown);
                ViewCompat.setScrollIndicators(view2, i4 | i5, 3);
                if (viewFindViewById11 != null) {
                    viewGroupB2.removeView(viewFindViewById11);
                }
                if (viewFindViewById12 != null) {
                    viewGroupB2.removeView(viewFindViewById12);
                }
            }
        }
        AlertController$RecycleListView alertController$RecycleListView2 = c0243e.f;
        if (alertController$RecycleListView2 == null || (listAdapter = c0243e.f4142x) == null) {
            return;
        }
        alertController$RecycleListView2.setAdapter(listAdapter);
        int i6 = c0243e.f4143y;
        if (i6 > -1) {
            alertController$RecycleListView2.setItemChecked(i6, true);
            alertController$RecycleListView2.setSelection(i6);
        }
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyDown(int i3, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f4146d.f4136r;
        if (nestedScrollView == null || !nestedScrollView.executeKeyEvent(keyEvent)) {
            return super.onKeyDown(i3, keyEvent);
        }
        return true;
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i3, KeyEvent keyEvent) {
        NestedScrollView nestedScrollView = this.f4146d.f4136r;
        if (nestedScrollView == null || !nestedScrollView.executeKeyEvent(keyEvent)) {
            return super.onKeyUp(i3, keyEvent);
        }
        return true;
    }

    @Override // p011e.D, android.app.Dialog
    public final void setTitle(CharSequence charSequence) {
        super.setTitle(charSequence);
        C0243e c0243e = this.f4146d;
        c0243e.f4124d = charSequence;
        TextView textView = c0243e.f4139u;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }
}
