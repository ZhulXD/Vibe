package com.google.android.material.datepicker;

import C1.V;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.fragment.app.DialogFragment;
import com.google.android.material.internal.CheckableImageButton;
import com.minhub.gamehub.R;
import java.util.Calendar;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class n<S> extends DialogFragment {
    public final LinkedHashSet b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedHashSet f3435c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f3436d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public u f3437e;
    public b f;
    public l g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f3438h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public CharSequence f3439i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f3440j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f3441k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f3442l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public CharSequence f3443m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f3444n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public CharSequence f3445o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f3446p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public CharSequence f3447q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f3448r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public CharSequence f3449s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public TextView f3450t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public CheckableImageButton f3451u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public Y0.h f3452v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public boolean f3453w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public CharSequence f3454x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public CharSequence f3455y;

    public n() {
        new LinkedHashSet();
        new LinkedHashSet();
        this.b = new LinkedHashSet();
        this.f3435c = new LinkedHashSet();
    }

    public static int c(Context context) {
        Resources resources = context.getResources();
        int dimensionPixelOffset = resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_content_padding);
        Calendar calendarB = w.b();
        calendarB.set(5, 1);
        Calendar calendarA = w.a(calendarB);
        calendarA.get(2);
        calendarA.get(1);
        int maximum = calendarA.getMaximum(7);
        calendarA.getActualMaximum(5);
        calendarA.getTimeInMillis();
        int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.mtrl_calendar_day_width) * maximum;
        return ((maximum - 1) * resources.getDimensionPixelOffset(R.dimen.mtrl_calendar_month_horizontal_padding)) + dimensionPixelSize + (dimensionPixelOffset * 2);
    }

    public static boolean d(Context context, int i3) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(com.bumptech.glide.c.P(context, l.class.getCanonicalName(), R.attr.materialCalendarStyle).data, new int[]{i3});
        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(0, false);
        typedArrayObtainStyledAttributes.recycle();
        return z2;
    }

    public final void b() {
        if (getArguments().getParcelable("DATE_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnCancelListener) it.next()).onCancel(dialogInterface);
        }
        super.onCancel(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f3436d = bundle.getInt("OVERRIDE_THEME_RES_ID");
        if (bundle.getParcelable("DATE_SELECTOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f = (b) bundle.getParcelable("CALENDAR_CONSTRAINTS_KEY");
        if (bundle.getParcelable("DAY_VIEW_DECORATOR_KEY") != null) {
            throw new ClassCastException();
        }
        this.f3438h = bundle.getInt("TITLE_TEXT_RES_ID_KEY");
        this.f3439i = bundle.getCharSequence("TITLE_TEXT_KEY");
        this.f3441k = bundle.getInt("INPUT_MODE_KEY");
        this.f3442l = bundle.getInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f3443m = bundle.getCharSequence("POSITIVE_BUTTON_TEXT_KEY");
        this.f3444n = bundle.getInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f3445o = bundle.getCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        this.f3446p = bundle.getInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY");
        this.f3447q = bundle.getCharSequence("NEGATIVE_BUTTON_TEXT_KEY");
        this.f3448r = bundle.getInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY");
        this.f3449s = bundle.getCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY");
        CharSequence text = this.f3439i;
        if (text == null) {
            text = requireContext().getResources().getText(this.f3438h);
        }
        this.f3454x = text;
        if (text != null) {
            CharSequence[] charSequenceArrSplit = TextUtils.split(String.valueOf(text), "\n");
            if (charSequenceArrSplit.length > 1) {
                text = charSequenceArrSplit[0];
            }
        } else {
            text = null;
        }
        this.f3455y = text;
    }

    @Override // androidx.fragment.app.DialogFragment
    public final Dialog onCreateDialog(Bundle bundle) {
        Context contextRequireContext = requireContext();
        requireContext();
        int i3 = this.f3436d;
        if (i3 == 0) {
            b();
            throw null;
        }
        Dialog dialog = new Dialog(contextRequireContext, i3);
        Context context = dialog.getContext();
        this.f3440j = d(context, android.R.attr.windowFullscreen);
        this.f3452v = new Y0.h(context, null, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, A0.a.f32r, R.attr.materialCalendarStyle, R.style.Widget_MaterialComponents_MaterialCalendar);
        int color = typedArrayObtainStyledAttributes.getColor(1, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.f3452v.j(context);
        this.f3452v.l(ColorStateList.valueOf(color));
        this.f3452v.k(ViewCompat.getElevation(dialog.getWindow().getDecorView()));
        return dialog;
    }

    @Override // androidx.fragment.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(this.f3440j ? R.layout.mtrl_picker_fullscreen : R.layout.mtrl_picker_dialog, viewGroup);
        Context context = viewInflate.getContext();
        if (this.f3440j) {
            viewInflate.findViewById(R.id.mtrl_calendar_frame).setLayoutParams(new LinearLayout.LayoutParams(c(context), -2));
        } else {
            viewInflate.findViewById(R.id.mtrl_calendar_main_pane).setLayoutParams(new LinearLayout.LayoutParams(c(context), -1));
        }
        ViewCompat.setAccessibilityLiveRegion((TextView) viewInflate.findViewById(R.id.mtrl_picker_header_selection_text), 1);
        this.f3451u = (CheckableImageButton) viewInflate.findViewById(R.id.mtrl_picker_header_toggle);
        this.f3450t = (TextView) viewInflate.findViewById(R.id.mtrl_picker_title_text);
        this.f3451u.setTag("TOGGLE_BUTTON_TAG");
        CheckableImageButton checkableImageButton = this.f3451u;
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{android.R.attr.state_checked}, com.bumptech.glide.d.v(context, R.drawable.material_ic_calendar_black_24dp));
        stateListDrawable.addState(new int[0], com.bumptech.glide.d.v(context, R.drawable.material_ic_edit_black_24dp));
        checkableImageButton.setImageDrawable(stateListDrawable);
        this.f3451u.setChecked(this.f3441k != 0);
        ViewCompat.setAccessibilityDelegate(this.f3451u, null);
        CheckableImageButton checkableImageButton2 = this.f3451u;
        this.f3451u.setContentDescription(this.f3441k == 1 ? checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_calendar_input_mode) : checkableImageButton2.getContext().getString(R.string.mtrl_picker_toggle_to_text_input_mode));
        this.f3451u.setOnClickListener(new V(4, this));
        b();
        throw null;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public final void onDismiss(DialogInterface dialogInterface) {
        Iterator it = this.f3435c.iterator();
        while (it.hasNext()) {
            ((DialogInterface.OnDismissListener) it.next()).onDismiss(dialogInterface);
        }
        ViewGroup viewGroup = (ViewGroup) getView();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
        }
        super.onDismiss(dialogInterface);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("OVERRIDE_THEME_RES_ID", this.f3436d);
        bundle.putParcelable("DATE_SELECTOR_KEY", null);
        b bVar = this.f;
        a aVar = new a();
        int i3 = a.b;
        int i4 = a.b;
        long j2 = bVar.b.g;
        long j3 = bVar.f3408c.g;
        aVar.f3407a = Long.valueOf(bVar.f3410e.g);
        int i5 = bVar.f;
        e eVar = bVar.f3409d;
        l lVar = this.g;
        p pVar = lVar == null ? null : lVar.f3426e;
        if (pVar != null) {
            aVar.f3407a = Long.valueOf(pVar.g);
        }
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("DEEP_COPY_VALIDATOR_KEY", eVar);
        p pVarB = p.b(j2);
        p pVarB2 = p.b(j3);
        e eVar2 = (e) bundle2.getParcelable("DEEP_COPY_VALIDATOR_KEY");
        Long l2 = aVar.f3407a;
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", new b(pVarB, pVarB2, eVar2, l2 == null ? null : p.b(l2.longValue()), i5));
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putInt("TITLE_TEXT_RES_ID_KEY", this.f3438h);
        bundle.putCharSequence("TITLE_TEXT_KEY", this.f3439i);
        bundle.putInt("INPUT_MODE_KEY", this.f3441k);
        bundle.putInt("POSITIVE_BUTTON_TEXT_RES_ID_KEY", this.f3442l);
        bundle.putCharSequence("POSITIVE_BUTTON_TEXT_KEY", this.f3443m);
        bundle.putInt("POSITIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f3444n);
        bundle.putCharSequence("POSITIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f3445o);
        bundle.putInt("NEGATIVE_BUTTON_TEXT_RES_ID_KEY", this.f3446p);
        bundle.putCharSequence("NEGATIVE_BUTTON_TEXT_KEY", this.f3447q);
        bundle.putInt("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_RES_ID_KEY", this.f3448r);
        bundle.putCharSequence("NEGATIVE_BUTTON_CONTENT_DESCRIPTION_KEY", this.f3449s);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStart() {
        u uVar;
        super.onStart();
        Window window = requireDialog().getWindow();
        if (this.f3440j) {
            window.setLayout(-1, -1);
            window.setBackgroundDrawable(this.f3452v);
            if (!this.f3453w) {
                View viewFindViewById = requireView().findViewById(R.id.fullscreen_header);
                ColorStateList colorStateListT = com.bumptech.glide.d.t(viewFindViewById.getBackground());
                Integer numValueOf = colorStateListT != null ? Integer.valueOf(colorStateListT.getDefaultColor()) : null;
                int i3 = Build.VERSION.SDK_INT;
                boolean z2 = false;
                boolean z3 = numValueOf == null || numValueOf.intValue() == 0;
                int iK = com.bumptech.glide.c.k(window.getContext(), android.R.attr.colorBackground, ViewCompat.MEASURED_STATE_MASK);
                if (z3) {
                    numValueOf = Integer.valueOf(iK);
                }
                WindowCompat.setDecorFitsSystemWindows(window, false);
                window.getContext();
                int alphaComponent = i3 < 27 ? ColorUtils.setAlphaComponent(com.bumptech.glide.c.k(window.getContext(), android.R.attr.navigationBarColor, ViewCompat.MEASURED_STATE_MASK), 128) : 0;
                window.setStatusBarColor(0);
                window.setNavigationBarColor(alphaComponent);
                WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightStatusBars(com.bumptech.glide.c.q(0) || com.bumptech.glide.c.q(numValueOf.intValue()));
                boolean zQ = com.bumptech.glide.c.q(iK);
                if (com.bumptech.glide.c.q(alphaComponent) || (alphaComponent == 0 && zQ)) {
                    z2 = true;
                }
                WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightNavigationBars(z2);
                ViewCompat.setOnApplyWindowInsetsListener(viewFindViewById, new m(viewFindViewById, viewFindViewById.getLayoutParams().height, viewFindViewById.getPaddingTop()));
                this.f3453w = true;
            }
        } else {
            window.setLayout(-2, -2);
            int dimensionPixelOffset = getResources().getDimensionPixelOffset(R.dimen.mtrl_calendar_dialog_background_inset);
            Rect rect = new Rect(dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset);
            window.setBackgroundDrawable(new InsetDrawable((Drawable) this.f3452v, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset, dimensionPixelOffset));
            window.getDecorView().setOnTouchListener(new O0.a(requireDialog(), rect));
        }
        requireContext();
        int i4 = this.f3436d;
        if (i4 == 0) {
            b();
            throw null;
        }
        b();
        b bVar = this.f;
        l lVar = new l();
        Bundle bundle = new Bundle();
        bundle.putInt("THEME_RES_ID_KEY", i4);
        bundle.putParcelable("GRID_SELECTOR_KEY", null);
        bundle.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar);
        bundle.putParcelable("DAY_VIEW_DECORATOR_KEY", null);
        bundle.putParcelable("CURRENT_MONTH_KEY", bVar.f3410e);
        lVar.setArguments(bundle);
        this.g = lVar;
        if (this.f3441k == 1) {
            uVar = lVar;
            b();
            b bVar2 = this.f;
            o oVar = new o();
            Bundle bundle2 = new Bundle();
            bundle2.putInt("THEME_RES_ID_KEY", i4);
            bundle2.putParcelable("DATE_SELECTOR_KEY", null);
            bundle2.putParcelable("CALENDAR_CONSTRAINTS_KEY", bVar2);
            oVar.setArguments(bundle2);
            uVar = oVar;
        }
        uVar = lVar;
        this.f3437e = uVar;
        this.f3450t.setText((this.f3441k == 1 && getResources().getConfiguration().orientation == 2) ? this.f3455y : this.f3454x);
        b();
        getContext();
        throw null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public final void onStop() {
        this.f3437e.b.clear();
        super.onStop();
    }
}
