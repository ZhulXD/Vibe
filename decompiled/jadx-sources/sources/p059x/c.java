package p059x;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.Arrays;
import java.util.HashMap;
import p053v.d;
import p053v.i;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class c extends View {
    public int[] b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f5834c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Context f5835d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public i f5836e;
    public String f;
    public HashMap g;

    /* JADX WARN: Code duplicated, block: B:29:0x005a  */
    public final void a(String str) {
        int identifier;
        HashMap map;
        Context context = this.f5835d;
        if (str == null || str.length() == 0 || context == null) {
            return;
        }
        String strTrim = str.trim();
        if (getParent() instanceof ConstraintLayout) {
        }
        ConstraintLayout constraintLayout = getParent() instanceof ConstraintLayout ? (ConstraintLayout) getParent() : null;
        if (!isInEditMode() || constraintLayout == null) {
            identifier = 0;
        } else {
            Object obj = (strTrim == null || (map = constraintLayout.f2806n) == null || !map.containsKey(strTrim)) ? null : constraintLayout.f2806n.get(strTrim);
            if (obj instanceof Integer) {
                identifier = ((Integer) obj).intValue();
            } else {
                identifier = 0;
            }
        }
        if (identifier == 0 && constraintLayout != null) {
            identifier = d(constraintLayout, strTrim);
        }
        if (identifier == 0) {
            try {
                identifier = p.class.getField(strTrim).getInt(null);
            } catch (Exception unused) {
            }
        }
        if (identifier == 0) {
            identifier = context.getResources().getIdentifier(strTrim, "id", context.getPackageName());
        }
        if (identifier != 0) {
            this.g.put(Integer.valueOf(identifier), strTrim);
            b(identifier);
        } else {
            Log.w("ConstraintHelper", "Could not find id of \"" + strTrim + "\"");
        }
    }

    public final void b(int i3) {
        if (i3 == getId()) {
            return;
        }
        int i4 = this.f5834c + 1;
        int[] iArr = this.b;
        if (i4 > iArr.length) {
            this.b = Arrays.copyOf(iArr, iArr.length * 2);
        }
        int[] iArr2 = this.b;
        int i5 = this.f5834c;
        iArr2[i5] = i3;
        this.f5834c = i5 + 1;
    }

    public final void c() {
        ViewParent parent = getParent();
        if (parent == null || !(parent instanceof ConstraintLayout)) {
            return;
        }
        ConstraintLayout constraintLayout = (ConstraintLayout) parent;
        int visibility = getVisibility();
        float elevation = getElevation();
        for (int i3 = 0; i3 < this.f5834c; i3++) {
            View view = (View) constraintLayout.b.get(this.b[i3]);
            if (view != null) {
                view.setVisibility(visibility);
                if (elevation > 0.0f) {
                    view.setTranslationZ(view.getTranslationZ() + elevation);
                }
            }
        }
    }

    public final int d(ConstraintLayout constraintLayout, String str) {
        Resources resources;
        String resourceEntryName;
        if (str != null && (resources = this.f5835d.getResources()) != null) {
            int childCount = constraintLayout.getChildCount();
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = constraintLayout.getChildAt(i3);
                if (childAt.getId() != -1) {
                    try {
                        resourceEntryName = resources.getResourceEntryName(childAt.getId());
                    } catch (Resources.NotFoundException unused) {
                        resourceEntryName = null;
                    }
                    if (str.equals(resourceEntryName)) {
                        return childAt.getId();
                    }
                }
            }
        }
        return 0;
    }

    public void e(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, q.b);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i3);
                if (index == 19) {
                    String string = typedArrayObtainStyledAttributes.getString(index);
                    this.f = string;
                    setIds(string);
                }
            }
        }
    }

    public abstract void f(d dVar, boolean z2);

    public final void g() {
        if (this.f5836e == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof e) {
            ((e) layoutParams).f5880k0 = this.f5836e;
        }
    }

    public int[] getReferencedIds() {
        return Arrays.copyOf(this.b, this.f5834c);
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        String str = this.f;
        if (str != null) {
            setIds(str);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i3, int i4) {
        setMeasuredDimension(0, 0);
    }

    public void setIds(String str) {
        this.f = str;
        if (str == null) {
            return;
        }
        int i3 = 0;
        this.f5834c = 0;
        while (true) {
            int iIndexOf = str.indexOf(44, i3);
            if (iIndexOf == -1) {
                a(str.substring(i3));
                return;
            } else {
                a(str.substring(i3, iIndexOf));
                i3 = iIndexOf + 1;
            }
        }
    }

    public void setReferencedIds(int[] iArr) {
        this.f = null;
        this.f5834c = 0;
        for (int i3 : iArr) {
            b(i3);
        }
    }

    @Override // android.view.View
    public final void onDraw(Canvas canvas) {
    }
}
