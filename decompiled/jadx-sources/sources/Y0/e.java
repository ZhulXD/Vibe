package Y0;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.Selection;
import android.util.Log;
import android.view.View;
import androidx.core.text.PrecomputedTextCompat;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.google.android.material.tabs.TabLayout;
import com.minhub.gamehub.hub.ImageViewerActivity;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class e implements R0.r, N.d, com.bumptech.glide.manager.h, com.bumptech.glide.manager.g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static e f2381c;
    public final /* synthetic */ int b;

    public /* synthetic */ e(int i3) {
        this.b = i3;
    }

    public static RectF g(TabLayout tabLayout, View view) {
        if (view == null) {
            return new RectF();
        }
        if (tabLayout.f3521E || !(view instanceof p007c1.h)) {
            return new RectF(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        p007c1.h hVar = (p007c1.h) view;
        int contentWidth = hVar.getContentWidth();
        int contentHeight = hVar.getContentHeight();
        int iB = (int) R0.t.b(hVar.getContext(), 24);
        if (contentWidth < iB) {
            contentWidth = iB;
        }
        int right = (hVar.getRight() + hVar.getLeft()) / 2;
        int bottom = (hVar.getBottom() + hVar.getTop()) / 2;
        int i3 = contentWidth / 2;
        return new RectF(right - i3, bottom - (contentHeight / 2), i3 + right, (right / 2) + bottom);
    }

    public static Path k(float f, float f3, float f4, float f5) {
        Path path = new Path();
        path.moveTo(f, f3);
        path.lineTo(f4, f5);
        return path;
    }

    public static boolean m(H.b bVar, Editable editable, int i3, int i4, boolean z2) {
        int iMin;
        if (editable != null && i3 >= 0 && i4 >= 0) {
            int selectionStart = Selection.getSelectionStart(editable);
            int selectionEnd = Selection.getSelectionEnd(editable);
            if (selectionStart != -1 && selectionEnd != -1 && selectionStart == selectionEnd) {
                if (z2) {
                    int iMax = Math.max(i3, 0);
                    int length = editable.length();
                    if (selectionStart >= 0 && length >= selectionStart && iMax >= 0) {
                        loop0: while (true) {
                            boolean z3 = false;
                            while (true) {
                                if (iMax == 0) {
                                    break loop0;
                                }
                                selectionStart--;
                                if (selectionStart < 0) {
                                    if (!z3) {
                                        selectionStart = 0;
                                        break loop0;
                                    }
                                    break loop0;
                                }
                                char cCharAt = editable.charAt(selectionStart);
                                if (z3) {
                                    if (Character.isHighSurrogate(cCharAt)) {
                                        iMax--;
                                    }
                                } else if (!Character.isSurrogate(cCharAt)) {
                                    iMax--;
                                } else if (!Character.isHighSurrogate(cCharAt)) {
                                    z3 = true;
                                }
                                selectionStart = -1;
                                break loop0;
                            }
                        }
                    }
                    selectionStart = -1;
                    break loop0;
                    int iMax2 = Math.max(i4, 0);
                    iMin = editable.length();
                    if (selectionEnd >= 0 && iMin >= selectionEnd && iMax2 >= 0) {
                        loop2: while (true) {
                            boolean z4 = false;
                            while (true) {
                                if (iMax2 != 0) {
                                    if (selectionEnd >= iMin) {
                                        if (!z4) {
                                            break loop2;
                                        }
                                        break loop2;
                                    }
                                    char cCharAt2 = editable.charAt(selectionEnd);
                                    if (z4) {
                                        if (Character.isLowSurrogate(cCharAt2)) {
                                            iMax2--;
                                            selectionEnd++;
                                        }
                                    } else if (!Character.isSurrogate(cCharAt2)) {
                                        iMax2--;
                                        selectionEnd++;
                                    } else if (!Character.isLowSurrogate(cCharAt2)) {
                                        selectionEnd++;
                                        z4 = true;
                                    }
                                    iMin = -1;
                                    break loop2;
                                }
                                iMin = selectionEnd;
                                break loop2;
                            }
                        }
                    }
                    iMin = -1;
                    break loop2;
                    if (selectionStart != -1 && iMin != -1) {
                    }
                } else {
                    selectionStart = Math.max(selectionStart - i3, 0);
                    iMin = Math.min(selectionEnd + i4, editable.length());
                }
                androidx.emoji2.text.w[] wVarArr = (androidx.emoji2.text.w[]) editable.getSpans(selectionStart, iMin, androidx.emoji2.text.w.class);
                if (wVarArr != null && wVarArr.length > 0) {
                    for (androidx.emoji2.text.w wVar : wVarArr) {
                        int spanStart = editable.getSpanStart(wVar);
                        int spanEnd = editable.getSpanEnd(wVar);
                        selectionStart = Math.min(spanStart, selectionStart);
                        iMin = Math.max(spanEnd, iMin);
                    }
                    int iMax3 = Math.max(selectionStart, 0);
                    int iMin2 = Math.min(iMin, editable.length());
                    bVar.beginBatchEdit();
                    editable.delete(iMax3, iMin2);
                    bVar.endBatchEdit();
                    return true;
                }
            }
        }
        return false;
    }

    public static void o(Context context, List urls, int i3, String title, int i4) {
        int i5 = ImageViewerActivity.f3783e;
        if ((i4 & 4) != 0) {
            i3 = 0;
        }
        boolean z2 = (i4 & 16) == 0;
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(urls, "urls");
        Intrinsics.checkNotNullParameter(title, "title");
        if (urls.isEmpty()) {
            return;
        }
        context.startActivity(new Intent(context, (Class<?>) ImageViewerActivity.class).putStringArrayListExtra("image_urls", new ArrayList<>(urls)).putExtra("start_index", RangesKt.coerceIn(i3, 0, CollectionsKt.getLastIndex(urls))).putExtra("viewer_title", title).putExtra("is_local", z2));
    }

    @Override // R0.r
    public WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat, R0.s sVar) {
        sVar.f1942d = windowInsetsCompat.getSystemWindowInsetBottom() + sVar.f1942d;
        boolean z2 = ViewCompat.getLayoutDirection(view) == 1;
        int systemWindowInsetLeft = windowInsetsCompat.getSystemWindowInsetLeft();
        int systemWindowInsetRight = windowInsetsCompat.getSystemWindowInsetRight();
        int i3 = sVar.f1940a + (z2 ? systemWindowInsetRight : systemWindowInsetLeft);
        sVar.f1940a = i3;
        int i4 = sVar.f1941c;
        if (!z2) {
            systemWindowInsetLeft = systemWindowInsetRight;
        }
        int i5 = i4 + systemWindowInsetLeft;
        sVar.f1941c = i5;
        ViewCompat.setPaddingRelative(view, i3, sVar.b, i5, sVar.f1942d);
        return windowInsetsCompat;
    }

    @Override // com.bumptech.glide.manager.h
    public void b(com.bumptech.glide.manager.i iVar) {
        iVar.onStart();
    }

    @Override // N.d
    public void d() {
        switch (this.b) {
            case 9:
                break;
            default:
                Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
                break;
        }
    }

    @Override // N.d
    public void e(int i3, Object obj) {
        String str;
        switch (this.b) {
            case 9:
                break;
            default:
                switch (i3) {
                    case 1:
                        str = "RESULT_INSTALL_SUCCESS";
                        break;
                    case 2:
                        str = "RESULT_ALREADY_INSTALLED";
                        break;
                    case 3:
                        str = "RESULT_UNSUPPORTED_ART_VERSION";
                        break;
                    case 4:
                        str = "RESULT_NOT_WRITABLE";
                        break;
                    case 5:
                        str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                        break;
                    case 6:
                        str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                        break;
                    case 7:
                        str = "RESULT_IO_EXCEPTION";
                        break;
                    case 8:
                        str = "RESULT_PARSE_EXCEPTION";
                        break;
                    case 9:
                    default:
                        str = "";
                        break;
                    case 10:
                        str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                        break;
                    case MotionEventCompat.AXIS_Z /* 11 */:
                        str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                        break;
                }
                if (i3 == 6 || i3 == 7 || i3 == 8) {
                    Log.e("ProfileInstaller", str, (Throwable) obj);
                } else {
                    Log.d("ProfileInstaller", str);
                }
                break;
        }
    }

    public float h(float f, float f3) {
        return 1.0f;
    }

    public boolean i() {
        return this instanceof f;
    }

    public void j(float f, float f3, float f4, w wVar) {
        wVar.c(f, 0.0f);
    }

    public Signature[] l(PackageManager packageManager, String str) {
        return packageManager.getPackageInfo(str, 64).signatures;
    }

    public boolean n(CharSequence charSequence) {
        return charSequence instanceof PrecomputedTextCompat;
    }

    public void r(TabLayout tabLayout, View view, View view2, float f, Drawable drawable) {
        RectF rectFG = g(tabLayout, view);
        RectF rectFG2 = g(tabLayout, view2);
        drawable.setBounds(B0.a.c((int) rectFG.left, f, (int) rectFG2.left), drawable.getBounds().top, B0.a.c((int) rectFG.right, f, (int) rectFG2.right), drawable.getBounds().bottom);
    }

    public String toString() {
        switch (this.b) {
            case MotionEventCompat.AXIS_HAT_X /* 15 */:
                return "Failed";
            default:
                return super.toString();
        }
    }

    public e(com.bumptech.glide.manager.k kVar, FragmentManager fragmentManager) {
        this.b = 28;
    }

    private final void p() {
    }

    @Override // com.bumptech.glide.manager.g
    public void c(FragmentActivity fragmentActivity) {
    }

    @Override // com.bumptech.glide.manager.h
    public void f(com.bumptech.glide.manager.i iVar) {
    }

    private final void q(int i3, Object obj) {
    }
}
