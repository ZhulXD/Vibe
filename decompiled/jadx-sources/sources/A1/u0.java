package A1;

import C1.N0;
import P.AbstractC0147g0;
import P.C0165x;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Rect;
import android.os.Process;
import android.util.Log;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.SearchView$SearchAutoComplete;
import androidx.appcompat.widget.Toolbar;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import com.minhub.gamehub.R;
import java.lang.ref.ReferenceQueue;
import k.C0300l;
import k.C0320v0;
import p014f0.C0253b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class u0 implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f236c;

    public /* synthetic */ u0(int i3, Object obj) {
        this.b = i3;
        this.f236c = obj;
    }

    /* JADX INFO: Infinite loop detected, blocks: 8, insns: 0 */
    /* JADX WARN: Code duplicated, block: B:60:0x012e  */
    @Override // java.lang.Runnable
    public final void run() {
        int iD;
        int height;
        C0300l c0300l;
        int i3 = this.b;
        int iD2 = 0;
        Object obj = this.f236c;
        switch (i3) {
            case 0:
                v0 v0Var = (v0) obj;
                if (v0Var.f261r && v0Var.f260q == L0.f86c) {
                    v0Var.a("com.minhub.gamehub.action.GAME_SESSION_HEARTBEAT", null);
                    v0Var.f259p.postDelayed(this, 1000L);
                    break;
                }
                break;
            case 1:
                ((D.e) obj).n(0);
                break;
            case 2:
                H0.i iVar = (H0.i) obj;
                iVar.f1066c = false;
                BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) iVar.f1068e;
                D.e eVar = bottomSheetBehavior.f3310M;
                if (eVar != null && eVar.f()) {
                    iVar.a(iVar.b);
                } else if (bottomSheetBehavior.f3309L == 2) {
                    bottomSheetBehavior.I(iVar.b);
                }
                break;
            case 3:
                C0165x c0165x = (C0165x) obj;
                ValueAnimator valueAnimator = c0165x.f1798z;
                int i4 = c0165x.f1774A;
                if (i4 == 1) {
                    valueAnimator.cancel();
                } else if (i4 != 2) {
                }
                c0165x.f1774A = 3;
                valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
                valueAnimator.setDuration(500);
                valueAnimator.start();
                break;
            case 4:
                P.G g = (P.G) obj;
                if (g.f1563c != null) {
                    long jCurrentTimeMillis = System.currentTimeMillis();
                    long j2 = g.f1561B;
                    long j3 = j2 == Long.MIN_VALUE ? 0L : jCurrentTimeMillis - j2;
                    AbstractC0147g0 layoutManager = g.f1576r.getLayoutManager();
                    if (g.f1560A == null) {
                        g.f1560A = new Rect();
                    }
                    View view = g.f1563c.f1807a;
                    Rect rect = g.f1560A;
                    RecyclerView recyclerView = layoutManager.b;
                    if (recyclerView == null) {
                        rect.set(0, 0, 0, 0);
                    } else {
                        rect.set(recyclerView.L(view));
                    }
                    if (layoutManager.d()) {
                        int i5 = (int) (g.f1568j + g.f1566h);
                        int paddingLeft = (i5 - g.f1560A.left) - g.f1576r.getPaddingLeft();
                        float f = g.f1566h;
                        if ((f >= 0.0f || paddingLeft >= 0) && (f <= 0.0f || (paddingLeft = ((g.f1563c.f1807a.getWidth() + i5) + g.f1560A.right) - (g.f1576r.getWidth() - g.f1576r.getPaddingRight())) <= 0)) {
                            iD = 0;
                        } else {
                            iD = paddingLeft;
                        }
                    } else {
                        iD = 0;
                    }
                    if (layoutManager.e()) {
                        int i6 = (int) (g.f1569k + g.f1567i);
                        int paddingTop = (i6 - g.f1560A.top) - g.f1576r.getPaddingTop();
                        float f3 = g.f1567i;
                        if (f3 < 0.0f && paddingTop < 0) {
                            iD2 = paddingTop;
                        } else if (f3 > 0.0f && (height = ((g.f1563c.f1807a.getHeight() + i6) + g.f1560A.bottom) - (g.f1576r.getHeight() - g.f1576r.getPaddingBottom())) > 0) {
                            iD2 = height;
                        }
                    }
                    if (iD != 0) {
                        N0 n0 = g.f1571m;
                        RecyclerView recyclerView2 = g.f1576r;
                        int width = g.f1563c.f1807a.getWidth();
                        g.f1576r.getWidth();
                        iD = n0.d(recyclerView2, width, iD, j3);
                    }
                    int i7 = iD;
                    if (iD2 != 0) {
                        N0 n2 = g.f1571m;
                        RecyclerView recyclerView3 = g.f1576r;
                        int height2 = g.f1563c.f1807a.getHeight();
                        g.f1576r.getHeight();
                        iD2 = n2.d(recyclerView3, height2, iD2, j3);
                    }
                    if (i7 == 0 && iD2 == 0) {
                        g.f1561B = Long.MIN_VALUE;
                    } else {
                        if (g.f1561B == Long.MIN_VALUE) {
                            g.f1561B = jCurrentTimeMillis;
                        }
                        g.f1576r.scrollBy(i7, iD2);
                        P.y0 y0Var = g.f1563c;
                        if (y0Var != null) {
                            g.p(y0Var);
                        }
                        g.f1576r.removeCallbacks(g.f1577s);
                        ViewCompat.postOnAnimation(g.f1576r, this);
                    }
                }
                break;
            case 5:
                ((StaggeredGridLayoutManager) obj).G0();
                break;
            case 6:
                androidx.biometric.E e2 = (androidx.biometric.E) obj;
                Context context = e2.getContext();
                if (context != null) {
                    e2.f2757d.d(1);
                    e2.f2757d.c(context.getString(R.string.fingerprint_dialog_touch_sensor));
                } else {
                    Log.w("FingerprintFragment", "Not resetting the dialog. Context is null.");
                }
                break;
            case 7:
                androidx.viewpager2.adapter.d dVar = (androidx.viewpager2.adapter.d) obj;
                dVar.f3056k = false;
                dVar.m();
                break;
            case 8:
                com.bumptech.glide.n nVar = (com.bumptech.glide.n) obj;
                nVar.f3275d.b(nVar);
                break;
            case 9:
                CheckableImageButton checkableImageButton = ((TextInputLayout) obj).f3586d.f3911h;
                checkableImageButton.performClick();
                checkableImageButton.jumpDrawablesToCurrentState();
                break;
            case 10:
                Process.setThreadPriority(10);
                ((Runnable) obj).run();
                break;
            case MotionEventCompat.AXIS_Z /* 11 */:
                F.b bVar = (F.b) obj;
                bVar.getClass();
                while (true) {
                    try {
                        bVar.e((C0253b) ((ReferenceQueue) bVar.f944d).remove());
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
                break;
            case 12:
                C0320v0 c0320v0 = (C0320v0) obj;
                c0320v0.f4933m = null;
                c0320v0.drawableStateChanged();
                break;
            case 13:
                SearchView$SearchAutoComplete searchView$SearchAutoComplete = (SearchView$SearchAutoComplete) obj;
                if (searchView$SearchAutoComplete.g) {
                    ((InputMethodManager) searchView$SearchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchView$SearchAutoComplete, 0);
                    searchView$SearchAutoComplete.g = false;
                }
                break;
            default:
                ActionMenuView actionMenuView = ((Toolbar) obj).b;
                if (actionMenuView != null && (c0300l = actionMenuView.f2699u) != null) {
                    c0300l.n();
                    break;
                }
                break;
        }
    }
}
