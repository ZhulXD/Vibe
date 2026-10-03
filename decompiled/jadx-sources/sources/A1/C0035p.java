package A1;

import C1.A1;
import C1.RunnableC0068g1;
import C1.RunnableC0078k;
import C1.V1;
import C1.d2;
import C1.i2;
import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.view.MotionEventCompat;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.Save;
import com.minhub.gamehub.data.SaveRepository;
import com.minhub.gamehub.game.VxAceGameActivity;
import com.minhub.gamehub.gamepad.GamepadOverlay;
import com.minhub.gamehub.hub.AppLockActivity;
import com.minhub.gamehub.hub.HubActivity;
import com.minhub.gamehub.hub.KiriKiriInstallActivity;
import com.minhub.gamehub.hub.OnlineDownloadsActivity;
import com.minhub.gamehub.hub.OnlineGameDetailActivity;
import com.minhub.gamehub.hub.SetupAppLockActivity;
import com.minhub.gamehub.hub.catalog.CatalogDownloadJob;
import com.minhub.gamehub.hub.catalog.CatalogDownloadQueue;
import com.minhub.gamehub.hub.catalog.DownloadForegroundService;
import java.io.File;
import java.security.MessageDigest;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.TypeReference;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KTypeProjection;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import p064y1.k2;

/* JADX INFO: renamed from: A1.p, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0035p implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f215c;

    public /* synthetic */ C0035p(int i3, Object obj) {
        this.b = i3;
        this.f215c = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        int length;
        int i3 = this.b;
        Object obj2 = this.f215c;
        switch (i3) {
            case 0:
                o0 o0Var = (o0) obj2;
                C0008a0 snapshot = (C0008a0) obj;
                Intrinsics.checkNotNullParameter(snapshot, "snapshot");
                o0 o0Var2 = snapshot.f166d;
                return Intrinsics.areEqual(o0Var2 != null ? o0Var2.f211a : null, o0Var.f211a) ? C0008a0.a(snapshot, 0L, null, null, null, 55) : snapshot;
            case 1:
                C0016e0 c0016e0 = (C0016e0) obj2;
                C0008a0 it = (C0008a0) obj;
                Intrinsics.checkNotNullParameter(it, "it");
                String str = c0016e0.f184a;
                int i4 = c0016e0.b;
                String str2 = c0016e0.f185c;
                String str3 = c0016e0.f186d;
                long j2 = c0016e0.f;
                o0 o0Var3 = it.f166d;
                return C0008a0.a(it, 0L, null, new o0(str, i4, str2, str3, j2, (o0Var3 != null ? o0Var3.f : 0) + 1, c0016e0.f187e), null, 55);
            case 2:
                B1.n dir = (B1.n) obj;
                int i5 = GamepadOverlay.f3736h;
                Intrinsics.checkNotNullParameter(dir, "dir");
                ((GamepadOverlay) obj2).c(dir);
                return Unit.INSTANCE;
            case 3:
                B1.B preset = (B1.B) obj;
                Intrinsics.checkNotNullParameter(preset, "preset");
                return E.b.n("{\"name\":\"", B1.z.b(preset.f301a), "\",\"mapping\":", CollectionsKt.o(preset.b.entrySet(), ",", "{", "}", new C0015e((B1.z) obj2), 24), "}");
            case 4:
                V1 v2 = null;
                AppLockActivity appLockActivity = (AppLockActivity) obj2;
                String it2 = (String) obj;
                int i6 = AppLockActivity.f3759i;
                Intrinsics.checkNotNullParameter(it2, "it");
                StringBuilder sb = appLockActivity.g;
                if (sb.length() < 4) {
                    sb.append(it2);
                    appLockActivity.o();
                    if (sb.length() == 4) {
                        String input = sb.toString();
                        Intrinsics.checkNotNullExpressionValue(input, "toString(...)");
                        Intrinsics.checkNotNullParameter(input, "input");
                        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                        byte[] bytes = input.getBytes(Charsets.UTF_8);
                        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                        byte[] bArrDigest = messageDigest.digest(bytes);
                        Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
                        String strJoinToString$default = ArraysKt___ArraysKt.joinToString$default(bArrDigest, (CharSequence) "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) new C0015e(15), 30, (Object) null);
                        Set set = S1.d.f2060a;
                        Context applicationContext = appLockActivity.getApplicationContext();
                        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                        if (Intrinsics.areEqual(strJoinToString$default, S1.d.b(applicationContext))) {
                            V1 v3 = appLockActivity.f;
                            if (v3 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("ui");
                            } else {
                                v2 = v3;
                            }
                            v2.g(new C1.W(appLockActivity, 2));
                        } else {
                            V1 v4 = appLockActivity.f;
                            if (v4 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("ui");
                            } else {
                                v2 = v4;
                            }
                            String string = appLockActivity.getString(R.string.app_lock_wrong_pin);
                            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                            v2.d(string, new C1.W(appLockActivity, 3));
                        }
                    }
                }
                return Unit.INSTANCE;
            case 5:
                HubActivity hubActivity = (HubActivity) obj2;
                R1.a aVar = (R1.a) obj;
                int i7 = HubActivity.f3779j;
                if (aVar != null && !hubActivity.isFinishing() && !hubActivity.isDestroyed()) {
                    p000a.a.M(hubActivity, aVar);
                }
                return Unit.INSTANCE;
            case 6:
                KiriKiriInstallActivity kiriKiriInstallActivity = (KiriKiriInstallActivity) obj2;
                D1.h snapshot2 = (D1.h) obj;
                int i8 = KiriKiriInstallActivity.f3784o;
                Intrinsics.checkNotNullParameter(snapshot2, "snapshot");
                kiriKiriInstallActivity.f3785e.post(new RunnableC0078k(2, kiriKiriInstallActivity, snapshot2));
                return Unit.INSTANCE;
            case 7:
                OnlineDownloadsActivity onlineDownloadsActivity = (OnlineDownloadsActivity) obj2;
                List jobs = (List) obj;
                int i9 = OnlineDownloadsActivity.f3799h;
                Intrinsics.checkNotNullParameter(jobs, "jobs");
                onlineDownloadsActivity.runOnUiThread(new RunnableC0078k(4, onlineDownloadsActivity, jobs));
                return Unit.INSTANCE;
            case 8:
                OnlineGameDetailActivity onlineGameDetailActivity = (OnlineGameDetailActivity) obj2;
                int i10 = OnlineGameDetailActivity.f3801i;
                Intrinsics.checkNotNullParameter((List) obj, "it");
                onlineGameDetailActivity.runOnUiThread(new RunnableC0068g1(2, onlineGameDetailActivity));
                return Unit.INSTANCE;
            case 9:
                d2 d2Var = (d2) obj2;
                List<Game> list = (List) obj;
                p058w1.h hVar = d2Var.b;
                Intrinsics.checkNotNull(hVar);
                hVar.f5803e.setText(String.valueOf(list.size()));
                Intrinsics.checkNotNull(list);
                Iterator it3 = list.iterator();
                int playtimeMinutes = 0;
                while (it3.hasNext()) {
                    playtimeMinutes += ((Game) it3.next()).getPlaytimeMinutes();
                }
                int i11 = playtimeMinutes / 60;
                int i12 = playtimeMinutes % 60;
                p058w1.h hVar2 = d2Var.b;
                Intrinsics.checkNotNull(hVar2);
                hVar2.f5802d.setText(i12 == 0 ? i11 + "h" : i11 + "h " + i12 + "m");
                p058w1.h hVar3 = d2Var.b;
                Intrinsics.checkNotNull(hVar3);
                TextView textView = hVar3.f5804h;
                Iterator it4 = list.iterator();
                int saveCount = 0;
                while (it4.hasNext()) {
                    saveCount += ((Game) it4.next()).getSaveCount();
                }
                textView.setText(String.valueOf(saveCount));
                int i13 = 0;
                for (Game game : list) {
                    if (StringsKt.isBlank(game.getPluginsJson()) || Intrinsics.areEqual(game.getPluginsJson(), "[]")) {
                        length = 0;
                    } else {
                        try {
                            length = ((Object[]) new p023i1.l().c(game.getPluginsJson(), String[].class)).length;
                        } catch (Exception unused) {
                            length = 0;
                        }
                    }
                    i13 += length;
                }
                p058w1.h hVar4 = d2Var.b;
                Intrinsics.checkNotNull(hVar4);
                hVar4.g.setText(String.valueOf(i13));
                return Unit.INSTANCE;
            case 10:
                SetupAppLockActivity setupAppLockActivity = (SetupAppLockActivity) obj2;
                String it5 = (String) obj;
                int i14 = SetupAppLockActivity.f3805j;
                Intrinsics.checkNotNullParameter(it5, "it");
                StringBuilder sb2 = setupAppLockActivity.g;
                if (sb2.length() < 4) {
                    sb2.append(it5);
                    setupAppLockActivity.n();
                    if (sb2.length() == 4) {
                        if (!setupAppLockActivity.f3808i) {
                            setupAppLockActivity.f3807h = sb2.toString();
                            setupAppLockActivity.f3808i = true;
                            V1 v5 = setupAppLockActivity.f;
                            if (v5 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("ui");
                                v5 = null;
                            }
                            String newTitle = setupAppLockActivity.m();
                            i2 apply = new i2(setupAppLockActivity, 2);
                            v5.getClass();
                            Intrinsics.checkNotNullParameter(newTitle, "newTitle");
                            Intrinsics.checkNotNullParameter(apply, "apply");
                            v5.f = true;
                            v5.b.postDelayed(new A1(apply, v5, newTitle, 2), 200L);
                        } else if (Intrinsics.areEqual(sb2.toString(), setupAppLockActivity.f3807h)) {
                            Set set2 = S1.d.f2060a;
                            Context applicationContext2 = setupAppLockActivity.getApplicationContext();
                            Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
                            String input2 = sb2.toString();
                            Intrinsics.checkNotNullExpressionValue(input2, "toString(...)");
                            Intrinsics.checkNotNullParameter(input2, "input");
                            MessageDigest messageDigest2 = MessageDigest.getInstance("SHA-256");
                            byte[] bytes2 = input2.getBytes(Charsets.UTF_8);
                            Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
                            byte[] bArrDigest2 = messageDigest2.digest(bytes2);
                            Intrinsics.checkNotNullExpressionValue(bArrDigest2, "digest(...)");
                            String v6 = ArraysKt___ArraysKt.joinToString$default(bArrDigest2, (CharSequence) "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) new C0015e(15), 30, (Object) null);
                            Intrinsics.checkNotNullParameter(applicationContext2, "<this>");
                            Intrinsics.checkNotNullParameter(v6, "v");
                            S1.d.s(applicationContext2).edit().putString("app_lock_pin_hash", v6).apply();
                            Context applicationContext3 = setupAppLockActivity.getApplicationContext();
                            Intrinsics.checkNotNullExpressionValue(applicationContext3, "getApplicationContext(...)");
                            S1.d.v(applicationContext3, true);
                            setupAppLockActivity.setResult(-1);
                            V1 v7 = setupAppLockActivity.f;
                            if (v7 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("ui");
                                v7 = null;
                            }
                            v7.g(new i2(setupAppLockActivity, 3));
                        } else {
                            V1 v8 = null;
                            setupAppLockActivity.f3807h = null;
                            setupAppLockActivity.f3808i = false;
                            V1 v9 = setupAppLockActivity.f;
                            if (v9 == null) {
                                Intrinsics.throwUninitializedPropertyAccessException("ui");
                            } else {
                                v8 = v9;
                            }
                            String string2 = setupAppLockActivity.getString(R.string.app_lock_setup_mismatch);
                            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                            v8.d(string2, new i2(setupAppLockActivity, 4));
                        }
                    }
                }
                return Unit.INSTANCE;
            case MotionEventCompat.AXIS_Z /* 11 */:
                E1.I i15 = (E1.I) obj2;
                R1.a info = (R1.a) obj;
                Intrinsics.checkNotNullParameter(info, "info");
                if (!i15.isAdded()) {
                    return Unit.INSTANCE;
                }
                if (!StringsKt.isBlank(info.f1945d)) {
                    p058w1.c cVar = i15.b;
                    Intrinsics.checkNotNull(cVar);
                    ((TextView) cVar.f5653j).setText("v" + info.b);
                    p058w1.c cVar2 = i15.b;
                    Intrinsics.checkNotNull(cVar2);
                    ((TextView) cVar2.f5652i).setText(info.f1945d);
                    p058w1.c cVar3 = i15.b;
                    Intrinsics.checkNotNull(cVar3);
                    ((LinearLayout) cVar3.g).setVisibility(0);
                }
                return Unit.INSTANCE;
            case 12:
                return Boolean.valueOf(SaveRepository.scanGodotSaves$lambda$13((Set) obj2, (File) obj));
            case 13:
                return CatalogDownloadQueue.enqueue$lambda$3((CatalogDownloadJob) obj2, (List) obj);
            case MotionEventCompat.AXIS_RZ /* 14 */:
                return CatalogDownloadQueue.runJob$lambda$17((Throwable) obj2, (CatalogDownloadJob) obj);
            case MotionEventCompat.AXIS_HAT_X /* 15 */:
                return DownloadForegroundService.onStartCommand$lambda$3((DownloadForegroundService) obj2, (List) obj);
            case 16:
                return TypeReference.asString$lambda$0((TypeReference) obj2, (KTypeProjection) obj);
            case 17:
                String relativePath = (String) obj;
                Intrinsics.checkNotNullParameter(relativePath, "relativePath");
                return ((Y.a) obj2).a(relativePath);
            case MotionEventCompat.AXIS_RTRIGGER /* 18 */:
                VxAceGameActivity vxAceGameActivity = (VxAceGameActivity) obj2;
                Save save = (Save) obj;
                Intrinsics.checkNotNullParameter(save, "save");
                k2.c(vxAceGameActivity);
                vxAceGameActivity.queueRuntimeScript$app_release(StringsKt.trimIndent("\n        begin\n          if DataManager.load_game(" + (RangesKt.coerceAtLeast(save.getSlotNumber(), 1) - 1) + ")\n            Sound.play_load rescue nil\n            $game_system.on_after_load rescue nil\n            SceneManager.goto(Scene_Map) rescue nil\n          else\n            Sound.play_buzzer rescue nil\n          end\n        rescue\n          Sound.play_buzzer rescue nil\n        end\n    "));
                Toast.makeText(vxAceGameActivity, vxAceGameActivity.getString(R.string.load_ok), 0).show();
                return Unit.INSTANCE;
            default:
                MatchResult m2 = (MatchResult) obj;
                Intrinsics.checkNotNullParameter(m2, "m");
                Regex regex = p066z1.h.f6442a;
                String value = p066z1.h.a(m2.getRange().getFirst(), (String) ((Ref.ObjectRef) obj2).element) ? m2.getGroupValues().get(1) : m2.getValue();
                Intrinsics.checkNotNull(value);
                return value;
        }
    }
}
