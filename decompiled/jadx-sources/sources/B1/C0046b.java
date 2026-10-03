package B1;

import android.os.Bundle;
import android.view.View;
import android.widget.AutoCompleteTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityManagerCompat;
import androidx.core.view.inputmethod.InputConnectionCompat;
import androidx.core.view.inputmethod.InputContentInfoCompat;
import com.minhub.gamehub.gamepad.ButtonCatalogActivity;
import com.minhub.gamehub.hub.ImageViewerActivity;
import com.minhub.gamehub.hub.LoginActivity;
import com.minhub.gamehub.hub.OnlineDownloadsActivity;
import com.minhub.gamehub.hub.OnlineGameDetailActivity;
import com.minhub.gamehub.hub.SettingsActivity;
import com.minhub.gamehub.keyboard.KeyboardActivity;
import k.m1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: B1.b, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0046b implements OnApplyWindowInsetsListener, ActivityResultCallback, InputConnectionCompat.OnCommitContentListener, AccessibilityManagerCompat.TouchExplorationStateChangeListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f306c;

    public /* synthetic */ C0046b(int i3, Object obj) {
        this.b = i3;
        this.f306c = obj;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        LoginActivity loginActivity = (LoginActivity) this.f306c;
        ActivityResult result = (ActivityResult) obj;
        int i3 = LoginActivity.f3793l;
        Intrinsics.checkNotNullParameter(result, "result");
        if (result.getResultCode() == -1) {
            loginActivity.p();
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View v2, WindowInsetsCompat insets) {
        int i3 = this.b;
        I1.j jVar = null;
        m1 m1Var = null;
        I1.j jVar2 = null;
        p058w1.f fVar = null;
        I1.j jVar3 = null;
        Object obj = this.f306c;
        switch (i3) {
            case 0:
                int i4 = ButtonCatalogActivity.f3734h;
                Intrinsics.checkNotNullParameter(v2, "<unused var>");
                Intrinsics.checkNotNullParameter(insets, "insets");
                Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
                Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
                I1.j jVar4 = ((ButtonCatalogActivity) obj).f3735e;
                if (jVar4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                } else {
                    jVar = jVar4;
                }
                LinearLayout layoutHeader = (LinearLayout) jVar.f1190e;
                Intrinsics.checkNotNullExpressionValue(layoutHeader, "layoutHeader");
                layoutHeader.setPadding(layoutHeader.getPaddingLeft(), insets2.top, layoutHeader.getPaddingRight(), layoutHeader.getPaddingBottom());
                break;
            case 1:
                int i5 = ImageViewerActivity.f3783e;
                Intrinsics.checkNotNullParameter(v2, "v");
                Intrinsics.checkNotNullParameter(insets, "insets");
                Insets insets3 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
                Intrinsics.checkNotNullExpressionValue(insets3, "getInsets(...)");
                v2.setPadding(v2.getPaddingLeft(), ((int) (8 * ((ImageViewerActivity) obj).getResources().getDisplayMetrics().density)) + insets3.top, v2.getPaddingRight(), v2.getPaddingBottom());
                break;
            case 2:
            default:
                int i6 = KeyboardActivity.f;
                Intrinsics.checkNotNullParameter(v2, "<unused var>");
                Intrinsics.checkNotNullParameter(insets, "insets");
                Insets insets4 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
                Intrinsics.checkNotNullExpressionValue(insets4, "getInsets(...)");
                m1 m1Var2 = ((KeyboardActivity) obj).f3832e;
                if (m1Var2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                } else {
                    m1Var = m1Var2;
                }
                LinearLayout layoutHeader2 = (LinearLayout) m1Var.f;
                Intrinsics.checkNotNullExpressionValue(layoutHeader2, "layoutHeader");
                layoutHeader2.setPadding(layoutHeader2.getPaddingLeft(), insets4.top, layoutHeader2.getPaddingRight(), layoutHeader2.getPaddingBottom());
                break;
            case 3:
                int i7 = OnlineDownloadsActivity.f3799h;
                Intrinsics.checkNotNullParameter(v2, "<unused var>");
                Intrinsics.checkNotNullParameter(insets, "insets");
                Insets insets5 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
                Intrinsics.checkNotNullExpressionValue(insets5, "getInsets(...)");
                I1.j jVar5 = ((OnlineDownloadsActivity) obj).f3800e;
                if (jVar5 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                } else {
                    jVar3 = jVar5;
                }
                LinearLayout layoutHeader3 = (LinearLayout) jVar3.f1189d;
                Intrinsics.checkNotNullExpressionValue(layoutHeader3, "layoutHeader");
                layoutHeader3.setPadding(layoutHeader3.getPaddingLeft(), insets5.top, layoutHeader3.getPaddingRight(), layoutHeader3.getPaddingBottom());
                break;
            case 4:
                int i8 = OnlineGameDetailActivity.f3801i;
                Intrinsics.checkNotNullParameter(v2, "<unused var>");
                Intrinsics.checkNotNullParameter(insets, "insets");
                Insets insets6 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
                Intrinsics.checkNotNullExpressionValue(insets6, "getInsets(...)");
                p058w1.f fVar2 = ((OnlineGameDetailActivity) obj).f3802e;
                if (fVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                } else {
                    fVar = fVar2;
                }
                FrameLayout heroFrame = fVar.f5766i;
                Intrinsics.checkNotNullExpressionValue(heroFrame, "heroFrame");
                heroFrame.setPadding(heroFrame.getPaddingLeft(), insets6.top, heroFrame.getPaddingRight(), heroFrame.getPaddingBottom());
                break;
            case 5:
                int i9 = SettingsActivity.f;
                Intrinsics.checkNotNullParameter(v2, "<unused var>");
                Intrinsics.checkNotNullParameter(insets, "insets");
                Insets insets7 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
                Intrinsics.checkNotNullExpressionValue(insets7, "getInsets(...)");
                I1.j jVar6 = ((SettingsActivity) obj).f3804e;
                if (jVar6 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("b");
                } else {
                    jVar2 = jVar6;
                }
                LinearLayout layoutHeader4 = (LinearLayout) jVar2.f1189d;
                Intrinsics.checkNotNullExpressionValue(layoutHeader4, "layoutHeader");
                layoutHeader4.setPadding(layoutHeader4.getPaddingLeft(), insets7.top, layoutHeader4.getPaddingRight(), layoutHeader4.getPaddingBottom());
                break;
        }
        return insets;
    }

    @Override // androidx.core.view.inputmethod.InputConnectionCompat.OnCommitContentListener
    public boolean onCommitContent(InputContentInfoCompat inputContentInfoCompat, int i3, Bundle bundle) {
        return InputConnectionCompat.lambda$createOnCommitContentListenerUsingPerformReceiveContent$0((View) this.f306c, inputContentInfoCompat, i3, bundle);
    }

    @Override // androidx.core.view.accessibility.AccessibilityManagerCompat.TouchExplorationStateChangeListener
    public void onTouchExplorationStateChanged(boolean z2) {
        p010d1.i iVar = (p010d1.i) this.f306c;
        AutoCompleteTextView autoCompleteTextView = iVar.f3892h;
        if (autoCompleteTextView == null || autoCompleteTextView.getInputType() != 0) {
            return;
        }
        ViewCompat.setImportantForAccessibility(iVar.f3929d, z2 ? 2 : 1);
    }
}
