package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import com.minhub.gamehub.R;
import k.Z0;
import p008d.a;
import p024j.D;
import p024j.p;
import p024j.s;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class ListMenuItemView extends LinearLayout implements D, AbsListView.SelectionBoundsAdjuster {
    public s b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public ImageView f2629c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public RadioButton f2630d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TextView f2631e;
    public CheckBox f;
    public TextView g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ImageView f2632h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ImageView f2633i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public LinearLayout f2634j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Drawable f2635k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f2636l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final Context f2637m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f2638n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final Drawable f2639o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f2640p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public LayoutInflater f2641q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public boolean f2642r;

    public ListMenuItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        Z0 z0E = Z0.e(getContext(), attributeSet, a.f3855r, R.attr.listMenuViewStyle);
        this.f2635k = z0E.b(5);
        TypedArray typedArray = z0E.b;
        this.f2636l = typedArray.getResourceId(1, -1);
        this.f2638n = typedArray.getBoolean(7, false);
        this.f2637m = context;
        this.f2639o = z0E.b(8);
        TypedArray typedArrayObtainStyledAttributes = context.getTheme().obtainStyledAttributes(null, new int[]{android.R.attr.divider}, R.attr.dropDownListViewStyle, 0);
        this.f2640p = typedArrayObtainStyledAttributes.hasValue(0);
        z0E.f();
        typedArrayObtainStyledAttributes.recycle();
    }

    private LayoutInflater getInflater() {
        if (this.f2641q == null) {
            this.f2641q = LayoutInflater.from(getContext());
        }
        return this.f2641q;
    }

    private void setSubMenuArrowVisible(boolean z2) {
        ImageView imageView = this.f2632h;
        if (imageView != null) {
            imageView.setVisibility(z2 ? 0 : 8);
        }
    }

    @Override // android.widget.AbsListView.SelectionBoundsAdjuster
    public final void adjustListItemSelectionBounds(Rect rect) {
        ImageView imageView = this.f2633i;
        if (imageView == null || imageView.getVisibility() != 0) {
            return;
        }
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f2633i.getLayoutParams();
        rect.top = this.f2633i.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin + rect.top;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x0035  */
    /* JADX WARN: Code duplicated, block: B:25:0x0054  */
    /* JADX WARN: Code duplicated, block: B:28:0x0058  */
    @Override // p024j.D
    public final void b(s sVar) {
        boolean z2;
        int i3;
        String string;
        boolean z3;
        this.b = sVar;
        boolean zIsVisible = sVar.isVisible();
        p pVar = sVar.f4590n;
        setVisibility(zIsVisible ? 0 : 8);
        setTitle(sVar.f4583e);
        setCheckable(sVar.isCheckable());
        if (pVar.o()) {
            if ((pVar.n() ? sVar.f4586j : sVar.f4584h) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
        } else {
            z2 = false;
        }
        pVar.n();
        if (z2) {
            s sVar2 = this.b;
            p pVar2 = sVar2.f4590n;
            if (pVar2.o()) {
                if ((pVar2.n() ? sVar2.f4586j : sVar2.f4584h) != 0) {
                    z3 = true;
                } else {
                    z3 = false;
                }
            } else {
                z3 = false;
            }
            i3 = z3 ? 0 : 8;
        }
        if (i3 == 0) {
            TextView textView = this.g;
            s sVar3 = this.b;
            p pVar3 = sVar3.f4590n;
            Context context = pVar3.f4553a;
            char c3 = pVar3.n() ? sVar3.f4586j : sVar3.f4584h;
            if (c3 == 0) {
                string = "";
            } else {
                Resources resources = context.getResources();
                StringBuilder sb = new StringBuilder();
                if (ViewConfiguration.get(context).hasPermanentMenuKey()) {
                    sb.append(resources.getString(R.string.abc_prepend_shortcut_label));
                }
                int i4 = pVar3.n() ? sVar3.f4587k : sVar3.f4585i;
                s.a(sb, i4, 65536, resources.getString(R.string.abc_menu_meta_shortcut_label));
                s.a(sb, i4, 4096, resources.getString(R.string.abc_menu_ctrl_shortcut_label));
                s.a(sb, i4, 2, resources.getString(R.string.abc_menu_alt_shortcut_label));
                s.a(sb, i4, 1, resources.getString(R.string.abc_menu_shift_shortcut_label));
                s.a(sb, i4, 4, resources.getString(R.string.abc_menu_sym_shortcut_label));
                s.a(sb, i4, 8, resources.getString(R.string.abc_menu_function_shortcut_label));
                if (c3 == '\b') {
                    sb.append(resources.getString(R.string.abc_menu_delete_shortcut_label));
                } else if (c3 == '\n') {
                    sb.append(resources.getString(R.string.abc_menu_enter_shortcut_label));
                } else if (c3 != ' ') {
                    sb.append(c3);
                } else {
                    sb.append(resources.getString(R.string.abc_menu_space_shortcut_label));
                }
                string = sb.toString();
            }
            textView.setText(string);
        }
        if (this.g.getVisibility() != i3) {
            this.g.setVisibility(i3);
        }
        setIcon(sVar.getIcon());
        setEnabled(sVar.isEnabled());
        setSubMenuArrowVisible(sVar.hasSubMenu());
        setContentDescription(sVar.f4593q);
    }

    @Override // p024j.D
    public s getItemData() {
        return this.b;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        setBackground(this.f2635k);
        TextView textView = (TextView) findViewById(R.id.title);
        this.f2631e = textView;
        int i3 = this.f2636l;
        if (i3 != -1) {
            textView.setTextAppearance(this.f2637m, i3);
        }
        this.g = (TextView) findViewById(R.id.shortcut);
        ImageView imageView = (ImageView) findViewById(R.id.submenuarrow);
        this.f2632h = imageView;
        if (imageView != null) {
            imageView.setImageDrawable(this.f2639o);
        }
        this.f2633i = (ImageView) findViewById(R.id.group_divider);
        this.f2634j = (LinearLayout) findViewById(R.id.content);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i3, int i4) {
        if (this.f2629c != null && this.f2638n) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) this.f2629c.getLayoutParams();
            int i5 = layoutParams.height;
            if (i5 > 0 && layoutParams2.width <= 0) {
                layoutParams2.width = i5;
            }
        }
        super.onMeasure(i3, i4);
    }

    public void setCheckable(boolean z2) {
        CompoundButton compoundButton;
        View view;
        if (!z2 && this.f2630d == null && this.f == null) {
            return;
        }
        if ((this.b.f4600x & 4) != 0) {
            if (this.f2630d == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f2630d = radioButton;
                LinearLayout linearLayout = this.f2634j;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f2630d;
            view = this.f;
        } else {
            if (this.f == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f = checkBox;
                LinearLayout linearLayout2 = this.f2634j;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f;
            view = this.f2630d;
        }
        if (z2) {
            compoundButton.setChecked(this.b.isChecked());
            if (compoundButton.getVisibility() != 0) {
                compoundButton.setVisibility(0);
            }
            if (view == null || view.getVisibility() == 8) {
                return;
            }
            view.setVisibility(8);
            return;
        }
        CheckBox checkBox2 = this.f;
        if (checkBox2 != null) {
            checkBox2.setVisibility(8);
        }
        RadioButton radioButton2 = this.f2630d;
        if (radioButton2 != null) {
            radioButton2.setVisibility(8);
        }
    }

    public void setChecked(boolean z2) {
        CompoundButton compoundButton;
        if ((this.b.f4600x & 4) != 0) {
            if (this.f2630d == null) {
                RadioButton radioButton = (RadioButton) getInflater().inflate(R.layout.abc_list_menu_item_radio, (ViewGroup) this, false);
                this.f2630d = radioButton;
                LinearLayout linearLayout = this.f2634j;
                if (linearLayout != null) {
                    linearLayout.addView(radioButton, -1);
                } else {
                    addView(radioButton, -1);
                }
            }
            compoundButton = this.f2630d;
        } else {
            if (this.f == null) {
                CheckBox checkBox = (CheckBox) getInflater().inflate(R.layout.abc_list_menu_item_checkbox, (ViewGroup) this, false);
                this.f = checkBox;
                LinearLayout linearLayout2 = this.f2634j;
                if (linearLayout2 != null) {
                    linearLayout2.addView(checkBox, -1);
                } else {
                    addView(checkBox, -1);
                }
            }
            compoundButton = this.f;
        }
        compoundButton.setChecked(z2);
    }

    public void setForceShowIcon(boolean z2) {
        this.f2642r = z2;
        this.f2638n = z2;
    }

    public void setGroupDividerEnabled(boolean z2) {
        ImageView imageView = this.f2633i;
        if (imageView != null) {
            imageView.setVisibility((this.f2640p || !z2) ? 8 : 0);
        }
    }

    public void setIcon(Drawable drawable) {
        p pVar = this.b.f4590n;
        boolean z2 = this.f2642r;
        if (z2 || this.f2638n) {
            ImageView imageView = this.f2629c;
            if (imageView == null && drawable == null && !this.f2638n) {
                return;
            }
            if (imageView == null) {
                ImageView imageView2 = (ImageView) getInflater().inflate(R.layout.abc_list_menu_item_icon, (ViewGroup) this, false);
                this.f2629c = imageView2;
                LinearLayout linearLayout = this.f2634j;
                if (linearLayout != null) {
                    linearLayout.addView(imageView2, 0);
                } else {
                    addView(imageView2, 0);
                }
            }
            if (drawable == null && !this.f2638n) {
                this.f2629c.setVisibility(8);
                return;
            }
            ImageView imageView3 = this.f2629c;
            if (!z2) {
                drawable = null;
            }
            imageView3.setImageDrawable(drawable);
            if (this.f2629c.getVisibility() != 0) {
                this.f2629c.setVisibility(0);
            }
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (charSequence == null) {
            if (this.f2631e.getVisibility() != 8) {
                this.f2631e.setVisibility(8);
            }
        } else {
            this.f2631e.setText(charSequence);
            if (this.f2631e.getVisibility() != 0) {
                this.f2631e.setVisibility(0);
            }
        }
    }
}
