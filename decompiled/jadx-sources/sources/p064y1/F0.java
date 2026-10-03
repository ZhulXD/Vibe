package p064y1;

import B1.i;
import B1.k;
import B1.t;
import B1.u;
import B1.x;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.minhub.gamehub.game.GodotGameActivity;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import p061x1.a;
import p061x1.e;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class F0 implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GodotGameActivity f6064c;

    public /* synthetic */ F0(GodotGameActivity godotGameActivity, int i3) {
        this.b = i3;
        this.f6064c = godotGameActivity;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        a aVar;
        int i3 = this.b;
        GodotGameActivity godotGameActivity = this.f6064c;
        switch (i3) {
            case 0:
                String id = (String) obj;
                int i4 = GodotGameActivity.f3707q;
                Intrinsics.checkNotNullParameter(id, "id");
                List mutableList = CollectionsKt.toMutableList((Collection) godotGameActivity.p());
                Iterator it = mutableList.iterator();
                boolean z2 = false;
                int i5 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i5 = -1;
                    } else if (!Intrinsics.areEqual(((a) it.next()).f5994a, id)) {
                        i5++;
                    }
                }
                if (i5 >= 0) {
                    mutableList.set(i5, a.a((a) mutableList.get(i5), null, 0.0f, 0.0f, 0, 0, null, null, 0.0f, !((a) mutableList.get(i5)).f6001k, 1023));
                } else {
                    Pair pairB = k.b(mutableList, id);
                    float fFloatValue = ((Number) pairB.getFirst()).floatValue();
                    float fFloatValue2 = ((Number) pairB.getSecond()).floatValue();
                    u uVarB = t.b(id);
                    if (uVarB != null) {
                        aVar = new a(id, uVarB.b, "", fFloatValue, fFloatValue2, uVarB.f357i, uVarB.f358j, uVarB.f360l, uVarB.f359k, uVarB.f361m, true);
                    } else {
                        List list = i.f318a;
                        x xVarA = i.a(id);
                        if (xVarA != null) {
                            String str = xVarA.f376h;
                            String str2 = xVarA.b;
                            String str3 = xVarA.f375e;
                            int i6 = xVarA.f;
                            int i7 = xVarA.g;
                            if (!Intrinsics.areEqual(str, "ROUNDED") && !Intrinsics.areEqual(str, "RECT")) {
                                str = "ROUNDED";
                            }
                            aVar = new a(id, str2, str3, fFloatValue, fFloatValue2, i6, i7, str, xVarA.f377i, 0.75f, true);
                        } else {
                            String upperCase = StringsKt__StringsKt.removePrefix(id, (CharSequence) "key_").toUpperCase(Locale.ROOT);
                            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
                            aVar = new a(id, upperCase, StringsKt__StringsKt.removePrefix(id, (CharSequence) "key_"), fFloatValue, fFloatValue2, 40, 32, "ROUNDED", "#3A4250", 0.75f, true);
                        }
                    }
                    mutableList.add(aVar);
                }
                e.b(godotGameActivity, Integer.MIN_VALUE, mutableList);
                List listP = godotGameActivity.p();
                if (!listP.isEmpty()) {
                    Iterator it2 = listP.iterator();
                    while (it2.hasNext()) {
                        if (((a) it2.next()).f6001k) {
                            z2 = true;
                        }
                    }
                }
                View decorView = godotGameActivity.getWindow().getDecorView();
                Intrinsics.checkNotNull(decorView, "null cannot be cast to non-null type android.view.ViewGroup");
                ViewGroup viewGroup = (ViewGroup) decorView;
                if (z2) {
                    FrameLayout frameLayout = godotGameActivity.f3713j;
                    if (frameLayout != null) {
                        viewGroup.removeView(frameLayout);
                    }
                    FrameLayout frameLayoutK = godotGameActivity.k();
                    viewGroup.addView(frameLayoutK);
                    godotGameActivity.f3713j = frameLayoutK;
                } else {
                    FrameLayout frameLayout2 = godotGameActivity.f3713j;
                    if (frameLayout2 != null) {
                        viewGroup.removeView(frameLayout2);
                    }
                    godotGameActivity.f3713j = null;
                }
                break;
            case 1:
                int i8 = GodotGameActivity.f3707q;
                godotGameActivity.r();
                break;
            default:
                List it3 = (List) obj;
                int i9 = GodotGameActivity.f3707q;
                Intrinsics.checkNotNullParameter(it3, "it");
                godotGameActivity.r();
                break;
        }
        return Unit.INSTANCE;
    }
}
