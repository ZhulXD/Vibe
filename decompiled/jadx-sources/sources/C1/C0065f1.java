package C1;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.activity.result.ActivityResult;
import androidx.activity.result.ActivityResultCallback;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.minhub.gamehub.hub.HubActivity;
import com.minhub.gamehub.hub.LoginActivity;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: C1.f1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0065f1 implements OnApplyWindowInsetsListener, T0.j, ActivityResultCallback {
    public final /* synthetic */ HubActivity b;

    public /* synthetic */ C0065f1(HubActivity hubActivity) {
        this.b = hubActivity;
    }

    @Override // androidx.activity.result.ActivityResultCallback
    public void onActivityResult(Object obj) {
        ActivityResult result = (ActivityResult) obj;
        int i3 = HubActivity.f3779j;
        Intrinsics.checkNotNullParameter(result, "result");
        HubActivity hubActivity = this.b;
        hubActivity.g = false;
        if (result.getResultCode() != -1) {
            Set set = S1.d.f2060a;
            Context applicationContext = hubActivity.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            S1.d.a(applicationContext);
            Intent intent = new Intent(hubActivity, (Class<?>) LoginActivity.class);
            intent.setFlags(268468224);
            hubActivity.startActivity(intent);
        }
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat insets) {
        int i3 = HubActivity.f3779j;
        Intrinsics.checkNotNullParameter(view, "<unused var>");
        Intrinsics.checkNotNullParameter(insets, "insets");
        Insets insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
        Insets insets3 = insets.getInsets(WindowInsetsCompat.Type.mandatorySystemGestures());
        Intrinsics.checkNotNullExpressionValue(insets3, "getInsets(...)");
        HubActivity hubActivity = this.b;
        F.b bVar = hubActivity.f3780e;
        F.b bVar2 = null;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
            bVar = null;
        }
        FrameLayout fragmentContainer = (FrameLayout) bVar.f945e;
        Intrinsics.checkNotNullExpressionValue(fragmentContainer, "fragmentContainer");
        fragmentContainer.setPadding(fragmentContainer.getPaddingLeft(), insets2.top, fragmentContainer.getPaddingRight(), fragmentContainer.getPaddingBottom());
        F.b bVar3 = hubActivity.f3780e;
        if (bVar3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("b");
        } else {
            bVar2 = bVar3;
        }
        BottomNavigationView bottomNav = (BottomNavigationView) bVar2.f944d;
        Intrinsics.checkNotNullExpressionValue(bottomNav, "bottomNav");
        bottomNav.setPadding(bottomNav.getPaddingLeft(), bottomNav.getPaddingTop(), bottomNav.getPaddingRight(), Math.max(insets2.bottom, insets3.bottom));
        return insets;
    }
}
