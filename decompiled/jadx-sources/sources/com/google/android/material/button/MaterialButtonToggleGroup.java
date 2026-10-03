package com.google.android.material.button;

import A1.C0009b;
import C1.C0115w1;
import I0.d;
import I0.e;
import R0.p;
import R0.t;
import Y0.l;
import Y0.m;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.ToggleButton;
import androidx.core.view.MarginLayoutParamsCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.google.android.material.timepicker.f;
import com.minhub.gamehub.R;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import java.util.TreeMap;
import p015f1.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class MaterialButtonToggleGroup extends LinearLayout {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final /* synthetic */ int f3365l = 0;
    public final ArrayList b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0009b f3366c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final LinkedHashSet f3367d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final C0115w1 f3368e;
    public Integer[] f;
    public boolean g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f3369h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f3370i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f3371j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public HashSet f3372k;

    public MaterialButtonToggleGroup(Context context, AttributeSet attributeSet) {
        super(a.a(context, attributeSet, R.attr.materialButtonToggleGroupStyle, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup), attributeSet, R.attr.materialButtonToggleGroupStyle);
        this.b = new ArrayList();
        this.f3366c = new C0009b((Object) this);
        this.f3367d = new LinkedHashSet();
        this.f3368e = new C0115w1(1, this);
        this.g = false;
        this.f3372k = new HashSet();
        TypedArray typedArrayE = p.e(getContext(), attributeSet, A0.a.f31q, R.attr.materialButtonToggleGroupStyle, R.style.Widget_MaterialComponents_MaterialButtonToggleGroup, new int[0]);
        setSingleSelection(typedArrayE.getBoolean(3, false));
        this.f3371j = typedArrayE.getResourceId(1, -1);
        this.f3370i = typedArrayE.getBoolean(2, false);
        setChildrenDrawingOrderEnabled(true);
        setEnabled(typedArrayE.getBoolean(0, true));
        typedArrayE.recycle();
        ViewCompat.setImportantForAccessibility(this, 1);
    }

    private int getFirstVisibleChildIndex() {
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            if (c(i3)) {
                return i3;
            }
        }
        return -1;
    }

    private int getLastVisibleChildIndex() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            if (c(childCount)) {
                return childCount;
            }
        }
        return -1;
    }

    private int getVisibleButtonCount() {
        int i3 = 0;
        for (int i4 = 0; i4 < getChildCount(); i4++) {
            if ((getChildAt(i4) instanceof MaterialButton) && c(i4)) {
                i3++;
            }
        }
        return i3;
    }

    private void setGeneratedIdIfNeeded(MaterialButton materialButton) {
        if (materialButton.getId() == -1) {
            materialButton.setId(ViewCompat.generateViewId());
        }
    }

    private void setupButtonChild(MaterialButton materialButton) {
        materialButton.setMaxLines(1);
        materialButton.setEllipsize(TextUtils.TruncateAt.END);
        materialButton.setCheckable(true);
        materialButton.setOnPressedChangeListenerInternal(this.f3366c);
        materialButton.setShouldDrawSurfaceColorStroke(true);
    }

    public final void a() {
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        if (firstVisibleChildIndex == -1) {
            return;
        }
        for (int i3 = firstVisibleChildIndex + 1; i3 < getChildCount(); i3++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i3);
            int iMin = Math.min(materialButton.getStrokeWidth(), ((MaterialButton) getChildAt(i3 - 1)).getStrokeWidth());
            ViewGroup.LayoutParams layoutParams = materialButton.getLayoutParams();
            LinearLayout.LayoutParams layoutParams2 = layoutParams instanceof LinearLayout.LayoutParams ? (LinearLayout.LayoutParams) layoutParams : new LinearLayout.LayoutParams(layoutParams.width, layoutParams.height);
            if (getOrientation() == 0) {
                MarginLayoutParamsCompat.setMarginEnd(layoutParams2, 0);
                MarginLayoutParamsCompat.setMarginStart(layoutParams2, -iMin);
                layoutParams2.topMargin = 0;
            } else {
                layoutParams2.bottomMargin = 0;
                layoutParams2.topMargin = -iMin;
                MarginLayoutParamsCompat.setMarginStart(layoutParams2, 0);
            }
            materialButton.setLayoutParams(layoutParams2);
        }
        if (getChildCount() == 0 || firstVisibleChildIndex == -1) {
            return;
        }
        LinearLayout.LayoutParams layoutParams3 = (LinearLayout.LayoutParams) ((MaterialButton) getChildAt(firstVisibleChildIndex)).getLayoutParams();
        if (getOrientation() == 1) {
            layoutParams3.topMargin = 0;
            layoutParams3.bottomMargin = 0;
        } else {
            MarginLayoutParamsCompat.setMarginEnd(layoutParams3, 0);
            MarginLayoutParamsCompat.setMarginStart(layoutParams3, 0);
            layoutParams3.leftMargin = 0;
            layoutParams3.rightMargin = 0;
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i3, ViewGroup.LayoutParams layoutParams) {
        if (!(view instanceof MaterialButton)) {
            Log.e("MButtonToggleGroup", "Child views must be of type MaterialButton.");
            return;
        }
        super.addView(view, i3, layoutParams);
        MaterialButton materialButton = (MaterialButton) view;
        setGeneratedIdIfNeeded(materialButton);
        setupButtonChild(materialButton);
        b(materialButton.getId(), materialButton.f3362p);
        m shapeAppearanceModel = materialButton.getShapeAppearanceModel();
        this.b.add(new e(shapeAppearanceModel.f2432e, shapeAppearanceModel.f2433h, shapeAppearanceModel.f, shapeAppearanceModel.g));
        materialButton.setEnabled(isEnabled());
        ViewCompat.setAccessibilityDelegate(materialButton, new d(this));
    }

    public final void b(int i3, boolean z2) {
        if (i3 == -1) {
            Log.e("MButtonToggleGroup", "Button ID is not valid: " + i3);
            return;
        }
        HashSet hashSet = new HashSet(this.f3372k);
        if (z2 && !hashSet.contains(Integer.valueOf(i3))) {
            if (this.f3369h && !hashSet.isEmpty()) {
                hashSet.clear();
            }
            hashSet.add(Integer.valueOf(i3));
        } else {
            if (z2 || !hashSet.contains(Integer.valueOf(i3))) {
                return;
            }
            if (!this.f3370i || hashSet.size() > 1) {
                hashSet.remove(Integer.valueOf(i3));
            }
        }
        d(hashSet);
    }

    public final boolean c(int i3) {
        return getChildAt(i3).getVisibility() != 8;
    }

    public final void d(Set set) {
        HashSet hashSet = this.f3372k;
        this.f3372k = new HashSet(set);
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            int id = ((MaterialButton) getChildAt(i3)).getId();
            boolean zContains = set.contains(Integer.valueOf(id));
            View viewFindViewById = findViewById(id);
            if (viewFindViewById instanceof MaterialButton) {
                this.g = true;
                ((MaterialButton) viewFindViewById).setChecked(zContains);
                this.g = false;
            }
            if (hashSet.contains(Integer.valueOf(id)) != set.contains(Integer.valueOf(id))) {
                set.contains(Integer.valueOf(id));
                Iterator it = this.f3367d.iterator();
                while (it.hasNext()) {
                    ((f) it.next()).a();
                }
            }
        }
        invalidate();
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void dispatchDraw(Canvas canvas) {
        TreeMap treeMap = new TreeMap(this.f3368e);
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            treeMap.put((MaterialButton) getChildAt(i3), Integer.valueOf(i3));
        }
        this.f = (Integer[]) treeMap.values().toArray(new Integer[0]);
        super.dispatchDraw(canvas);
    }

    public final void e() {
        e eVar;
        int childCount = getChildCount();
        int firstVisibleChildIndex = getFirstVisibleChildIndex();
        int lastVisibleChildIndex = getLastVisibleChildIndex();
        for (int i3 = 0; i3 < childCount; i3++) {
            MaterialButton materialButton = (MaterialButton) getChildAt(i3);
            if (materialButton.getVisibility() != 8) {
                l lVarE = materialButton.getShapeAppearanceModel().e();
                e eVar2 = (e) this.b.get(i3);
                if (firstVisibleChildIndex != lastVisibleChildIndex) {
                    boolean z2 = getOrientation() == 0;
                    Y0.a aVar = e.f1166e;
                    if (i3 == firstVisibleChildIndex) {
                        eVar = z2 ? t.d(this) ? new e(aVar, aVar, eVar2.b, eVar2.f1168c) : new e(eVar2.f1167a, eVar2.f1169d, aVar, aVar) : new e(eVar2.f1167a, aVar, eVar2.b, aVar);
                    } else if (i3 != lastVisibleChildIndex) {
                        eVar2 = null;
                    } else if (z2) {
                        eVar = t.d(this) ? new e(eVar2.f1167a, eVar2.f1169d, aVar, aVar) : new e(aVar, aVar, eVar2.b, eVar2.f1168c);
                    } else {
                        eVar = new e(aVar, eVar2.f1169d, aVar, eVar2.f1168c);
                    }
                    eVar2 = eVar;
                }
                if (eVar2 == null) {
                    lVarE.b(0.0f);
                } else {
                    lVarE.f2423e = eVar2.f1167a;
                    lVarE.f2424h = eVar2.f1169d;
                    lVarE.f = eVar2.b;
                    lVarE.g = eVar2.f1168c;
                }
                materialButton.setShapeAppearanceModel(lVarE.a());
            }
        }
    }

    public int getCheckedButtonId() {
        if (!this.f3369h || this.f3372k.isEmpty()) {
            return -1;
        }
        return ((Integer) this.f3372k.iterator().next()).intValue();
    }

    public List<Integer> getCheckedButtonIds() {
        ArrayList arrayList = new ArrayList();
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            int id = ((MaterialButton) getChildAt(i3)).getId();
            if (this.f3372k.contains(Integer.valueOf(id))) {
                arrayList.add(Integer.valueOf(id));
            }
        }
        return arrayList;
    }

    @Override // android.view.ViewGroup
    public final int getChildDrawingOrder(int i3, int i4) {
        Integer[] numArr = this.f;
        if (numArr != null && i4 < numArr.length) {
            return numArr[i4].intValue();
        }
        Log.w("MButtonToggleGroup", "Child order wasn't updated");
        return i4;
    }

    @Override // android.view.View
    public final void onFinishInflate() {
        super.onFinishInflate();
        int i3 = this.f3371j;
        if (i3 != -1) {
            d(Collections.singleton(Integer.valueOf(i3)));
        }
    }

    @Override // android.view.View
    public final void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        AccessibilityNodeInfoCompat.wrap(accessibilityNodeInfo).setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(1, getVisibleButtonCount(), false, this.f3369h ? 1 : 2));
    }

    @Override // android.widget.LinearLayout, android.view.View
    public final void onMeasure(int i3, int i4) {
        e();
        a();
        super.onMeasure(i3, i4);
    }

    @Override // android.view.ViewGroup
    public final void onViewRemoved(View view) {
        super.onViewRemoved(view);
        if (view instanceof MaterialButton) {
            ((MaterialButton) view).setOnPressedChangeListenerInternal(null);
        }
        int iIndexOfChild = indexOfChild(view);
        if (iIndexOfChild >= 0) {
            this.b.remove(iIndexOfChild);
        }
        e();
        a();
    }

    @Override // android.view.View
    public void setEnabled(boolean z2) {
        super.setEnabled(z2);
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            ((MaterialButton) getChildAt(i3)).setEnabled(z2);
        }
    }

    public void setSelectionRequired(boolean z2) {
        this.f3370i = z2;
    }

    public void setSingleSelection(boolean z2) {
        if (this.f3369h != z2) {
            this.f3369h = z2;
            d(new HashSet());
        }
        for (int i3 = 0; i3 < getChildCount(); i3++) {
            ((MaterialButton) getChildAt(i3)).setA11yClassName((this.f3369h ? RadioButton.class : ToggleButton.class).getName());
        }
    }

    public void setSingleSelection(int i3) {
        setSingleSelection(getResources().getBoolean(i3));
    }
}
