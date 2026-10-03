package D;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.view.accessibility.AccessibilityNodeProviderCompat;
import androidx.core.view.accessibility.AccessibilityRecordCompat;
import java.util.ArrayList;
import java.util.Collections;
import kotlin.jvm.internal.IntCompanionObject;
import p041q.k;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class b extends AccessibilityDelegateCompat {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final Rect f724k = new Rect(IntCompanionObject.MAX_VALUE, IntCompanionObject.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final Y0.e f725l = new Y0.e(3);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final Y0.e f726m = new Y0.e(4);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final AccessibilityManager f730e;
    public final View f;
    public a g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Rect f727a = new Rect();
    public final Rect b = new Rect();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Rect f728c = new Rect();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f729d = new int[2];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f731h = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f732i = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f733j = Integer.MIN_VALUE;

    public b(View view) {
        this.f = view;
        this.f730e = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        if (ViewCompat.getImportantForAccessibility(view) == 0) {
            ViewCompat.setImportantForAccessibility(view, 1);
        }
    }

    public final boolean a(int i3) {
        if (this.f732i != i3) {
            return false;
        }
        this.f732i = Integer.MIN_VALUE;
        m(i3, false);
        o(i3, 8);
        return true;
    }

    public final AccessibilityEvent b(int i3, int i4) {
        View view = this.f;
        if (i3 == -1) {
            AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i4);
            view.onInitializeAccessibilityEvent(accessibilityEventObtain);
            return accessibilityEventObtain;
        }
        AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain(i4);
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatI = i(i3);
        accessibilityEventObtain2.getText().add(accessibilityNodeInfoCompatI.getText());
        accessibilityEventObtain2.setContentDescription(accessibilityNodeInfoCompatI.getContentDescription());
        accessibilityEventObtain2.setScrollable(accessibilityNodeInfoCompatI.isScrollable());
        accessibilityEventObtain2.setPassword(accessibilityNodeInfoCompatI.isPassword());
        accessibilityEventObtain2.setEnabled(accessibilityNodeInfoCompatI.isEnabled());
        accessibilityEventObtain2.setChecked(accessibilityNodeInfoCompatI.isChecked());
        if (accessibilityEventObtain2.getText().isEmpty() && accessibilityEventObtain2.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        accessibilityEventObtain2.setClassName(accessibilityNodeInfoCompatI.getClassName());
        AccessibilityRecordCompat.setSource(accessibilityEventObtain2, view, i3);
        accessibilityEventObtain2.setPackageName(view.getContext().getPackageName());
        return accessibilityEventObtain2;
    }

    public final AccessibilityNodeInfoCompat c(int i3) {
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain = AccessibilityNodeInfoCompat.obtain();
        accessibilityNodeInfoCompatObtain.setEnabled(true);
        accessibilityNodeInfoCompatObtain.setFocusable(true);
        accessibilityNodeInfoCompatObtain.setClassName("android.view.View");
        Rect rect = f724k;
        accessibilityNodeInfoCompatObtain.setBoundsInParent(rect);
        accessibilityNodeInfoCompatObtain.setBoundsInScreen(rect);
        View view = this.f;
        accessibilityNodeInfoCompatObtain.setParent(view);
        l(i3, accessibilityNodeInfoCompatObtain);
        if (accessibilityNodeInfoCompatObtain.getText() == null && accessibilityNodeInfoCompatObtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        Rect rect2 = this.b;
        accessibilityNodeInfoCompatObtain.getBoundsInParent(rect2);
        if (rect2.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int actions = accessibilityNodeInfoCompatObtain.getActions();
        if ((actions & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((actions & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        accessibilityNodeInfoCompatObtain.setPackageName(view.getContext().getPackageName());
        accessibilityNodeInfoCompatObtain.setSource(view, i3);
        if (this.f731h == i3) {
            accessibilityNodeInfoCompatObtain.setAccessibilityFocused(true);
            accessibilityNodeInfoCompatObtain.addAction(128);
        } else {
            accessibilityNodeInfoCompatObtain.setAccessibilityFocused(false);
            accessibilityNodeInfoCompatObtain.addAction(64);
        }
        boolean z2 = this.f732i == i3;
        if (z2) {
            accessibilityNodeInfoCompatObtain.addAction(2);
        } else if (accessibilityNodeInfoCompatObtain.isFocusable()) {
            accessibilityNodeInfoCompatObtain.addAction(1);
        }
        accessibilityNodeInfoCompatObtain.setFocused(z2);
        int[] iArr = this.f729d;
        view.getLocationOnScreen(iArr);
        Rect rect3 = this.f727a;
        accessibilityNodeInfoCompatObtain.getBoundsInScreen(rect3);
        if (rect3.equals(rect)) {
            accessibilityNodeInfoCompatObtain.getBoundsInParent(rect3);
            if (accessibilityNodeInfoCompatObtain.mParentVirtualDescendantId != -1) {
                AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain2 = AccessibilityNodeInfoCompat.obtain();
                for (int i4 = accessibilityNodeInfoCompatObtain.mParentVirtualDescendantId; i4 != -1; i4 = accessibilityNodeInfoCompatObtain2.mParentVirtualDescendantId) {
                    accessibilityNodeInfoCompatObtain2.setParent(view, -1);
                    accessibilityNodeInfoCompatObtain2.setBoundsInParent(rect);
                    l(i4, accessibilityNodeInfoCompatObtain2);
                    accessibilityNodeInfoCompatObtain2.getBoundsInParent(rect2);
                    rect3.offset(rect2.left, rect2.top);
                }
                accessibilityNodeInfoCompatObtain2.recycle();
            }
            rect3.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
        }
        Rect rect4 = this.f728c;
        if (view.getLocalVisibleRect(rect4)) {
            rect4.offset(iArr[0] - view.getScrollX(), iArr[1] - view.getScrollY());
            if (rect3.intersect(rect4)) {
                accessibilityNodeInfoCompatObtain.setBoundsInScreen(rect3);
                if (!rect3.isEmpty() && view.getWindowVisibility() == 0) {
                    Object parent = view.getParent();
                    while (parent instanceof View) {
                        View view2 = (View) parent;
                        if (view2.getAlpha() > 0.0f && view2.getVisibility() == 0) {
                            parent = view2.getParent();
                        }
                    }
                    if (parent != null) {
                        accessibilityNodeInfoCompatObtain.setVisibleToUser(true);
                    }
                }
            }
        }
        return accessibilityNodeInfoCompatObtain;
    }

    public final boolean d(MotionEvent motionEvent) {
        int i3;
        AccessibilityManager accessibilityManager = this.f730e;
        if (!accessibilityManager.isEnabled() || !accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int iE = e(motionEvent.getX(), motionEvent.getY());
            int i4 = this.f733j;
            if (i4 != iE) {
                this.f733j = iE;
                o(iE, 128);
                o(i4, 256);
            }
            if (iE == Integer.MIN_VALUE) {
                return false;
            }
        } else {
            if (action != 10 || (i3 = this.f733j) == Integer.MIN_VALUE) {
                return false;
            }
            if (i3 != Integer.MIN_VALUE) {
                this.f733j = Integer.MIN_VALUE;
                o(Integer.MIN_VALUE, 128);
                o(i3, 256);
                return true;
            }
        }
        return true;
    }

    public abstract int e(float f, float f3);

    public abstract void f(ArrayList arrayList);

    public final void g(int i3) {
        View view;
        ViewParent parent;
        if (i3 == Integer.MIN_VALUE || !this.f730e.isEnabled() || (parent = (view = this.f).getParent()) == null) {
            return;
        }
        AccessibilityEvent accessibilityEventB = b(i3, 2048);
        AccessibilityEventCompat.setContentChangeTypes(accessibilityEventB, 0);
        parent.requestSendAccessibilityEvent(view, accessibilityEventB);
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view) {
        if (this.g == null) {
            this.g = new a(this);
        }
        return this.g;
    }

    /* JADX WARN: Code duplicated, block: B:115:0x0151 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:116:0x0151 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:117:0x0151 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:118:0x0151 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x00bb A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:41:0x00bd A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:42:0x00bf A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:43:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:44:0x00cd  */
    /* JADX WARN: Code duplicated, block: B:46:0x00d3  */
    /* JADX WARN: Code duplicated, block: B:47:0x00df  */
    /* JADX WARN: Code duplicated, block: B:48:0x00ea  */
    /* JADX WARN: Code duplicated, block: B:51:0x0103  */
    /* JADX WARN: Code duplicated, block: B:54:0x010c  */
    /* JADX WARN: Code duplicated, block: B:57:0x0119  */
    /* JADX WARN: Code duplicated, block: B:66:0x012e  */
    /* JADX WARN: Code duplicated, block: B:68:0x014c  */
    /* JADX WARN: Code duplicated, block: B:89:0x01a2  */
    public final boolean h(int i3, Rect rect) {
        int i4;
        int i5;
        Object obj;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat;
        int i6;
        int i7;
        int i8;
        Rect rect2;
        int i9;
        Rect rect3;
        int i10;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat2;
        int i11;
        int iO;
        int iP;
        ArrayList arrayList = new ArrayList();
        f(arrayList);
        k kVar = new k();
        for (int i12 = 0; i12 < arrayList.size(); i12++) {
            kVar.c(((Integer) arrayList.get(i12)).intValue(), c(((Integer) arrayList.get(i12)).intValue()));
        }
        int i13 = this.f732i;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat3 = i13 == Integer.MIN_VALUE ? null : (AccessibilityNodeInfoCompat) kVar.b(i13);
        Y0.e eVar = f725l;
        Y0.e eVar2 = f726m;
        View view = this.f;
        if (i3 == 1 || i3 == 2) {
            i4 = -1;
            i5 = 0;
            boolean z2 = ViewCompat.getLayoutDirection(view) == 1;
            eVar2.getClass();
            int i14 = kVar.f5260d;
            ArrayList arrayList2 = new ArrayList(i14);
            for (int i15 = 0; i15 < i14; i15++) {
                arrayList2.add((AccessibilityNodeInfoCompat) kVar.f5259c[i15]);
            }
            Collections.sort(arrayList2, new c(z2, eVar));
            if (i3 == 1) {
                int size = arrayList2.size();
                if (accessibilityNodeInfoCompat3 != null) {
                    size = arrayList2.indexOf(accessibilityNodeInfoCompat3);
                }
                int i16 = size - 1;
                if (i16 >= 0) {
                    obj = arrayList2.get(i16);
                } else {
                    obj = null;
                }
            } else {
                if (i3 != 2) {
                    throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD}.");
                }
                int size2 = arrayList2.size();
                int iLastIndexOf = (accessibilityNodeInfoCompat3 == null ? -1 : arrayList2.lastIndexOf(accessibilityNodeInfoCompat3)) + 1;
                if (iLastIndexOf < size2) {
                    obj = arrayList2.get(iLastIndexOf);
                } else {
                    obj = null;
                }
            }
            accessibilityNodeInfoCompat = (AccessibilityNodeInfoCompat) obj;
        } else {
            if (i3 != 17 && i3 != 33 && i3 != 66 && i3 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            Rect rect4 = new Rect();
            int i17 = this.f732i;
            if (i17 != Integer.MIN_VALUE) {
                i(i17).getBoundsInParent(rect4);
            } else {
                if (rect != null) {
                    rect4.set(rect);
                } else {
                    int width = view.getWidth();
                    int height = view.getHeight();
                    if (i3 == 17) {
                        i8 = -1;
                        rect4.set(width, 0, width, height);
                    } else if (i3 == 33) {
                        i8 = -1;
                        rect4.set(0, height, width, height);
                    } else if (i3 == 66) {
                        i8 = -1;
                        rect4.set(-1, 0, -1, height);
                    } else {
                        if (i3 != 130) {
                            throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                        }
                        i8 = -1;
                        rect4.set(0, -1, width, -1);
                    }
                }
                rect2 = new Rect(rect4);
                if (i3 != 17) {
                    i5 = 0;
                    rect2.offset(rect4.width() + 1, 0);
                } else if (i3 != 33) {
                    i5 = 0;
                    rect2.offset(0, rect4.height() + 1);
                } else if (i3 != 66) {
                    i5 = 0;
                    rect2.offset(-(rect4.width() + 1), 0);
                } else {
                    if (i3 == 130) {
                        throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                    }
                    i5 = 0;
                    rect2.offset(0, -(rect4.height() + 1));
                }
                eVar2.getClass();
                i9 = kVar.f5260d;
                rect3 = new Rect();
                accessibilityNodeInfoCompat = null;
                for (i10 = i5; i10 < i9; i10++) {
                    accessibilityNodeInfoCompat2 = (AccessibilityNodeInfoCompat) kVar.f5259c[i10];
                    if (accessibilityNodeInfoCompat2 == accessibilityNodeInfoCompat3) {
                        eVar.getClass();
                        accessibilityNodeInfoCompat2.getBoundsInParent(rect3);
                        if (com.bumptech.glide.d.I(i3, rect4, rect3)) {
                            if (com.bumptech.glide.d.I(i3, rect4, rect2) || com.bumptech.glide.d.b(i3, rect4, rect3, rect2)) {
                                rect2.set(rect3);
                                accessibilityNodeInfoCompat = accessibilityNodeInfoCompat2;
                            } else if (com.bumptech.glide.d.b(i3, rect4, rect2, rect3)) {
                                int iO2 = com.bumptech.glide.d.O(i3, rect4, rect3);
                                int iP2 = com.bumptech.glide.d.P(i3, rect4, rect3);
                                i11 = (iP2 * iP2) + (iO2 * 13 * iO2);
                                iO = com.bumptech.glide.d.O(i3, rect4, rect2);
                                iP = com.bumptech.glide.d.P(i3, rect4, rect2);
                                if (i11 < (iP * iP) + (iO * 13 * iO)) {
                                    rect2.set(rect3);
                                    accessibilityNodeInfoCompat = accessibilityNodeInfoCompat2;
                                }
                            }
                        }
                    }
                }
                i4 = i8;
            }
            i8 = -1;
            rect2 = new Rect(rect4);
            if (i3 != 17) {
                i5 = 0;
                rect2.offset(rect4.width() + 1, 0);
            } else if (i3 != 33) {
                i5 = 0;
                rect2.offset(0, rect4.height() + 1);
            } else if (i3 != 66) {
                i5 = 0;
                rect2.offset(-(rect4.width() + 1), 0);
            } else {
                if (i3 == 130) {
                    throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
                }
                i5 = 0;
                rect2.offset(0, -(rect4.height() + 1));
            }
            eVar2.getClass();
            i9 = kVar.f5260d;
            rect3 = new Rect();
            accessibilityNodeInfoCompat = null;
            while (i10 < i9) {
                accessibilityNodeInfoCompat2 = (AccessibilityNodeInfoCompat) kVar.f5259c[i10];
                if (accessibilityNodeInfoCompat2 == accessibilityNodeInfoCompat3) {
                    eVar.getClass();
                    accessibilityNodeInfoCompat2.getBoundsInParent(rect3);
                    if (com.bumptech.glide.d.I(i3, rect4, rect3)) {
                        if (com.bumptech.glide.d.I(i3, rect4, rect2)) {
                            rect2.set(rect3);
                            accessibilityNodeInfoCompat = accessibilityNodeInfoCompat2;
                        } else if (com.bumptech.glide.d.b(i3, rect4, rect2, rect3)) {
                            int iO3 = com.bumptech.glide.d.O(i3, rect4, rect3);
                            int iP3 = com.bumptech.glide.d.P(i3, rect4, rect3);
                            i11 = (iP3 * iP3) + (iO3 * 13 * iO3);
                            iO = com.bumptech.glide.d.O(i3, rect4, rect2);
                            iP = com.bumptech.glide.d.P(i3, rect4, rect2);
                            if (i11 < (iP * iP) + (iO * 13 * iO)) {
                                rect2.set(rect3);
                                accessibilityNodeInfoCompat = accessibilityNodeInfoCompat2;
                            }
                        }
                    }
                }
            }
            i4 = i8;
        }
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompat4 = accessibilityNodeInfoCompat;
        if (accessibilityNodeInfoCompat4 == null) {
            i7 = Integer.MIN_VALUE;
        } else {
            int i18 = kVar.f5260d;
            int i19 = i5;
            while (true) {
                if (i19 >= i18) {
                    i6 = i4;
                    break;
                }
                if (kVar.f5259c[i19] == accessibilityNodeInfoCompat4) {
                    i6 = i19;
                    break;
                }
                i19++;
            }
            i7 = kVar.b[i6];
        }
        return n(i7);
    }

    public final AccessibilityNodeInfoCompat i(int i3) {
        if (i3 != -1) {
            return c(i3);
        }
        View view = this.f;
        AccessibilityNodeInfoCompat accessibilityNodeInfoCompatObtain = AccessibilityNodeInfoCompat.obtain(view);
        ViewCompat.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompatObtain);
        ArrayList arrayList = new ArrayList();
        f(arrayList);
        if (accessibilityNodeInfoCompatObtain.getChildCount() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i4 = 0; i4 < size; i4++) {
            accessibilityNodeInfoCompatObtain.addChild(view, ((Integer) arrayList.get(i4)).intValue());
        }
        return accessibilityNodeInfoCompatObtain;
    }

    public abstract boolean j(int i3, int i4, Bundle bundle);

    public abstract void l(int i3, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat);

    public final boolean n(int i3) {
        int i4;
        View view = this.f;
        if ((!view.isFocused() && !view.requestFocus()) || (i4 = this.f732i) == i3) {
            return false;
        }
        if (i4 != Integer.MIN_VALUE) {
            a(i4);
        }
        if (i3 == Integer.MIN_VALUE) {
            return false;
        }
        this.f732i = i3;
        m(i3, true);
        o(i3, 8);
        return true;
    }

    public final void o(int i3, int i4) {
        View view;
        ViewParent parent;
        if (i3 == Integer.MIN_VALUE || !this.f730e.isEnabled() || (parent = (view = this.f).getParent()) == null) {
            return;
        }
        parent.requestSendAccessibilityEvent(view, b(i3, i4));
    }

    @Override // androidx.core.view.AccessibilityDelegateCompat
    public final void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
        super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
        k(accessibilityNodeInfoCompat);
    }

    public void k(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    public void m(int i3, boolean z2) {
    }
}
