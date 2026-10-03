package A1;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class t0 extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f232a;
    public final /* synthetic */ Object b;

    public /* synthetic */ t0(int i3, Object obj) {
        this.f232a = i3;
        this.b = obj;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:105:0x021e  */
    /* JADX WARN: Code duplicated, block: B:109:0x0228  */
    /* JADX WARN: Code duplicated, block: B:111:0x022e  */
    /* JADX WARN: Code duplicated, block: B:157:0x02d7  */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v24, types: [boolean] */
    /* JADX WARN: Type inference failed for: r2v25 */
    /* JADX WARN: Type inference failed for: r2v26 */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context c3, Intent intent) throws Throwable {
        C c4;
        String requestId;
        String sessionId;
        String strB;
        String strB2;
        String strB3;
        String requestId2;
        Object objM9constructorimpl;
        EnumC0025j enumC0025j;
        Object objM9constructorimpl2;
        boolean z2;
        boolean zAdd;
        switch (this.f232a) {
            case 0:
                Intrinsics.checkNotNullParameter(c3, "c");
                Intrinsics.checkNotNullParameter(intent, "intent");
                v0 v0Var = (v0) this.b;
                String expectedSessionId = v0Var.b;
                String expectedToken = v0Var.f248c;
                String expectedEngine = v0Var.f249d;
                String expectedProcessName = v0Var.f250e;
                int i3 = v0Var.f;
                C0009b replay = v0Var.f257n;
                L0 l2 = v0Var.f260q;
                long jCurrentTimeMillis = System.currentTimeMillis();
                y0 requestIds = y0.b;
                Intrinsics.checkNotNullParameter(intent, "intent");
                Intrinsics.checkNotNullParameter(expectedSessionId, "expectedSessionId");
                Intrinsics.checkNotNullParameter(expectedToken, "expectedToken");
                Intrinsics.checkNotNullParameter(expectedEngine, "expectedEngine");
                Intrinsics.checkNotNullParameter(expectedProcessName, "expectedProcessName");
                Intrinsics.checkNotNullParameter(replay, "replay");
                Intrinsics.checkNotNullParameter(requestIds, "requestIds");
                Bundle extras = intent.getExtras();
                if (extras != null) {
                    Set<String> setKeySet = extras.keySet();
                    Intrinsics.checkNotNullExpressionValue(setKeySet, "keySet(...)");
                    LinkedHashMap extras2 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(setKeySet, 10)), 16));
                    for (Object obj : setKeySet) {
                        extras2.put(obj, extras.get((String) obj));
                    }
                    String action = intent.getAction();
                    Intrinsics.checkNotNullParameter(extras2, "extras");
                    Intrinsics.checkNotNullParameter(expectedSessionId, "expectedSessionId");
                    Intrinsics.checkNotNullParameter(expectedToken, "expectedToken");
                    Intrinsics.checkNotNullParameter(expectedEngine, "expectedEngine");
                    Intrinsics.checkNotNullParameter(expectedProcessName, "expectedProcessName");
                    Intrinsics.checkNotNullParameter(replay, "replay");
                    Intrinsics.checkNotNullParameter(requestIds, "requestIds");
                    if (!CollectionsKt.contains(SetsKt.setOf((Object[]) new String[]{"com.minhub.gamehub.action.REQUEST_CLOSE_GAME", "com.minhub.gamehub.action.REQUEST_FORCE_CLOSE_GAME", "com.minhub.gamehub.action.GAME_SESSION_STATUS", "com.minhub.gamehub.action.GAME_SESSION_HEARTBEAT"}), action) || (sessionId = D.b("sessionId", extras2)) == null || (strB = D.b("sessionToken", extras2)) == null || (strB2 = D.b("engine", extras2)) == null || (strB3 = D.b("processName", extras2)) == null || (requestId2 = D.b("requestId", extras2)) == null) {
                        c4 = null;
                    } else {
                        Object obj2 = extras2.get("issuedAt");
                        Long l3 = obj2 instanceof Long ? (Long) obj2 : null;
                        if (l3 != null) {
                            long jLongValue = l3.longValue();
                            Object obj3 = extras2.get("messageTimestamp");
                            Long l4 = obj3 instanceof Long ? (Long) obj3 : null;
                            if (l4 != null) {
                                long jLongValue2 = l4.longValue();
                                Object obj4 = extras2.get("pid");
                                Integer num = obj4 instanceof Integer ? (Integer) obj4 : null;
                                if (num != null) {
                                    int iIntValue = num.intValue();
                                    String strB4 = D.b("closeResult", extras2);
                                    if (strB4 == null) {
                                        enumC0025j = null;
                                    } else {
                                        try {
                                            Result.Companion companion = Result.INSTANCE;
                                            objM9constructorimpl = Result.m9constructorimpl(EnumC0025j.valueOf(strB4));
                                        } catch (Throwable th) {
                                            Result.Companion companion2 = Result.INSTANCE;
                                            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                                        }
                                        if (Result.m15isFailureimpl(objM9constructorimpl)) {
                                            objM9constructorimpl = null;
                                        }
                                        EnumC0025j enumC0025j2 = (EnumC0025j) objM9constructorimpl;
                                        if (enumC0025j2 == null) {
                                            c4 = null;
                                        } else {
                                            enumC0025j = enumC0025j2;
                                        }
                                    }
                                    if (action == null || (SetsKt.setOf((Object[]) new String[]{"com.minhub.gamehub.action.REQUEST_CLOSE_GAME", "com.minhub.gamehub.action.REQUEST_FORCE_CLOSE_GAME", "com.minhub.gamehub.action.GAME_SESSION_STATUS", "com.minhub.gamehub.action.GAME_SESSION_HEARTBEAT"}).contains(action) && l2 == null)) {
                                        c4 = null;
                                    } else {
                                        try {
                                            Result.Companion companion3 = Result.INSTANCE;
                                            String strB5 = D.b("state", extras2);
                                            if (strB5 != null) {
                                                objM9constructorimpl2 = Result.m9constructorimpl(L0.valueOf(strB5));
                                                if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                                                    objM9constructorimpl2 = null;
                                                }
                                                L0 l5 = (L0) objM9constructorimpl2;
                                                if (l5 != null) {
                                                    switch (action.hashCode()) {
                                                        case -1717660839:
                                                            if (action.equals("com.minhub.gamehub.action.GAME_SESSION_STATUS")) {
                                                                if (l2 == null && (l2 == l5 || com.bumptech.glide.c.f(l2, l5))) {
                                                                    if (!Intrinsics.areEqual(sessionId, expectedSessionId) && Intrinsics.areEqual(strB, expectedToken) && Intrinsics.areEqual(strB2, expectedEngine) && Intrinsics.areEqual(strB3, expectedProcessName) && iIntValue == i3 && D.a(jLongValue, jCurrentTimeMillis) && (A = D.a(jLongValue2, jCurrentTimeMillis)) != 0) {
                                                                        synchronized (requestIds) {
                                                                            try {
                                                                                try {
                                                                                    Intrinsics.checkNotNullParameter(sessionId, "sessionId");
                                                                                    Intrinsics.checkNotNullParameter(requestId2, "requestId");
                                                                                    z2 = false;
                                                                                    zAdd = (StringsKt.isBlank(sessionId) || StringsKt.isBlank(requestId2)) ? false : requestIds.f281a.add(requestId2);
                                                                                } catch (Throwable th2) {
                                                                                    th = th2;
                                                                                    throw th;
                                                                                }
                                                                            } catch (Throwable th3) {
                                                                                th = th3;
                                                                                ?? A2 = requestIds;
                                                                                throw th;
                                                                            }
                                                                        }
                                                                        if (zAdd) {
                                                                            LinkedHashSet linkedHashSet = (LinkedHashSet) replay.b;
                                                                            Intrinsics.checkNotNullParameter(requestId2, "requestId");
                                                                            if (!StringsKt.isBlank(requestId2) && linkedHashSet.add(requestId2)) {
                                                                                while (linkedHashSet.size() > 256) {
                                                                                    Iterator it = linkedHashSet.iterator();
                                                                                    it.next();
                                                                                    it.remove();
                                                                                }
                                                                                z2 = true;
                                                                            }
                                                                            if (z2) {
                                                                                c4 = new C(sessionId, strB, requestId2, jLongValue, jLongValue2, l5, enumC0025j, strB2, strB3, iIntValue);
                                                                                break;
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            break;
                                                        case -1314046772:
                                                            if (action.equals("com.minhub.gamehub.action.REQUEST_FORCE_CLOSE_GAME") && l2 == L0.f87d && l5 == L0.f88e) {
                                                                if (!Intrinsics.areEqual(sessionId, expectedSessionId)) {
                                                                }
                                                            }
                                                            break;
                                                        case 1574922776:
                                                            if (action.equals("com.minhub.gamehub.action.REQUEST_CLOSE_GAME") && l2 != null && SetsKt.setOf((Object[]) new L0[]{L0.b, L0.f86c}).contains(l2) && l5 == L0.f87d) {
                                                                if (!Intrinsics.areEqual(sessionId, expectedSessionId)) {
                                                                }
                                                            }
                                                            break;
                                                        case 1677468693:
                                                            if (action.equals("com.minhub.gamehub.action.GAME_SESSION_HEARTBEAT")) {
                                                                if (l2 == null) {
                                                                }
                                                            }
                                                            break;
                                                    }
                                                }
                                            }
                                        } catch (Throwable th4) {
                                            Result.Companion companion4 = Result.INSTANCE;
                                            objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th4));
                                        }
                                        c4 = null;
                                    }
                                } else {
                                    c4 = null;
                                }
                            } else {
                                c4 = null;
                            }
                        } else {
                            c4 = null;
                        }
                    }
                    break;
                } else {
                    c4 = null;
                }
                if (c4 == null || (requestId = c4.f48c) == null) {
                    return;
                }
                final v0 v0Var2 = (v0) this.b;
                final boolean zAreEqual = Intrinsics.areEqual(intent.getAction(), "com.minhub.gamehub.action.REQUEST_FORCE_CLOSE_GAME");
                if (v0Var2.f261r) {
                    if (v0Var2.f260q != (zAreEqual ? L0.f87d : L0.f86c)) {
                        return;
                    }
                    final long j2 = v0Var2.f263t + 1;
                    v0Var2.f263t = j2;
                    v0Var2.f260q = zAreEqual ? L0.f88e : L0.f87d;
                    C0013d c0013d = v0Var2.f258o;
                    String sessionId2 = v0Var2.b;
                    EnumC0025j result = EnumC0025j.b;
                    c0013d.getClass();
                    Intrinsics.checkNotNullParameter(sessionId2, "sessionId");
                    Intrinsics.checkNotNullParameter(requestId, "requestId");
                    Intrinsics.checkNotNullParameter(result, "result");
                    if (StringsKt.isBlank(sessionId2) || StringsKt.isBlank(requestId)) {
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                    ((LinkedHashMap) c0013d.f177c).put(new C0023i(sessionId2, requestId), result);
                    ((LinkedHashMap) c0013d.f178d).put(sessionId2, requestId);
                    u0 u0Var = v0Var2.f262s;
                    if (u0Var != null) {
                        v0Var2.f259p.removeCallbacks(u0Var);
                    }
                    v0Var2.a("com.minhub.gamehub.action.GAME_SESSION_STATUS", result);
                    v0Var2.g.invoke(new Function0() { // from class: A1.q0
                        @Override // kotlin.jvm.functions.Function0
                        public final Object invoke() {
                            v0 v0Var3 = v0Var2;
                            if (v0Var3.f261r) {
                                if (j2 == v0Var3.f263t) {
                                    (zAreEqual ? v0Var3.f253j : v0Var3.f252i).invoke();
                                }
                            }
                            return Unit.INSTANCE;
                        }
                    });
                    return;
                }
                return;
            default:
                ((p011e.y) this.b).d();
                return;
        }
    }
}
