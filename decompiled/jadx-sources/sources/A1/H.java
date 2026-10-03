package A1;

import C1.A1;
import C1.X0;
import C1.X1;
import android.webkit.WebView;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.RpgMakerPluginConfig;
import com.minhub.gamehub.data.Save;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.game.GodotGameActivity;
import com.minhub.gamehub.hub.GameDetailActivity;
import com.minhub.gamehub.hub.catalog.CatalogDownloadQueue;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.StringsKt;
import p064y1.C0358a1;
import p064y1.C0425x0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class H implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f64c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f65d;

    public /* synthetic */ H(int i3, Object obj, Object obj2) {
        this.b = i3;
        this.f64c = obj;
        this.f65d = obj2;
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Pair pair;
        Pair pair2;
        int i3 = this.b;
        Object obj2 = this.f65d;
        Object obj3 = this.f64c;
        switch (i3) {
            case 0:
                C0008a0 it = (C0008a0) obj;
                Intrinsics.checkNotNullParameter(it, "it");
                return C0008a0.a(it, 0L, (Z) obj3, (o0) obj2, null, 51);
            case 1:
                String str = (String) obj3;
                String str2 = (String) obj2;
                C0008a0 snap = (C0008a0) obj;
                Intrinsics.checkNotNullParameter(snap, "snap");
                Z z2 = snap.f165c;
                return (Intrinsics.areEqual(z2 != null ? z2.f152a : null, str) && Intrinsics.areEqual(z2.f157i, str2) && z2.f == L0.b) ? C0008a0.a(snap, 0L, null, null, null, 59) : snap;
            case 2:
                C0008a0 it2 = (C0008a0) obj;
                Intrinsics.checkNotNullParameter(it2, "it");
                return C0008a0.a(it2, 0L, Z.a((Z) obj3, 0, (L0) obj2, 0L, 2015), null, null, 59);
            case 3:
                String pluginName = (String) obj2;
                X1 state = (X1) obj;
                Intrinsics.checkNotNullParameter(state, "state");
                boolean zP = S1.d.p((GameDetailActivity) obj3);
                List<RpgMakerPluginConfig> draft = state.f529d;
                p023i1.l lVar = X0.f526a;
                Intrinsics.checkNotNullParameter(draft, "draft");
                Intrinsics.checkNotNullParameter(pluginName, "pluginName");
                if (zP) {
                    Intrinsics.checkNotNullParameter(draft, "draft");
                    Intrinsics.checkNotNullParameter(pluginName, "pluginName");
                    ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(draft, 10));
                    for (RpgMakerPluginConfig rpgMakerPluginConfigCopy$default : draft) {
                        if (Intrinsics.areEqual(rpgMakerPluginConfigCopy$default.getName(), pluginName)) {
                            rpgMakerPluginConfigCopy$default = RpgMakerPluginConfig.copy$default(rpgMakerPluginConfigCopy$default, null, !rpgMakerPluginConfigCopy$default.getStatus(), null, null, null, 29, null);
                        }
                        arrayList.add(rpgMakerPluginConfigCopy$default);
                    }
                    draft = arrayList;
                }
                return X1.a(state, draft, null, 23);
            case 4:
                return CatalogDownloadQueue.runJob$lambda$13((CatalogDownloadQueue) obj3, (String) obj2, ((Integer) obj).intValue());
            case 5:
                return CatalogDownloadQueue.updateJob$lambda$19((String) obj3, (Function1) obj2, (List) obj);
            case 6:
                return Boolean.valueOf(SequencesKt___SequencesKt.C03421.iterator$lambda$0((Ref.BooleanRef) obj3, obj2, obj));
            case 7:
                WebView webView = (WebView) obj3;
                u1.a aVar = (u1.a) obj2;
                Map edits = (Map) obj;
                Intrinsics.checkNotNullParameter(edits, "edits");
                p023i1.l lVar2 = u1.b.f5424a;
                Intrinsics.checkNotNullParameter(edits, "edits");
                p023i1.n nVar = new p023i1.n();
                for (Map.Entry entry : edits.entrySet()) {
                    p064y1.X0 x2 = (p064y1.X0) entry.getKey();
                    p023i1.s sVar = (p023i1.s) entry.getValue();
                    p023i1.n nVar2 = new p023i1.n();
                    for (String str3 : x2.f6156a) {
                        nVar2.b.add(str3 == null ? p023i1.q.b : new p023i1.s(str3));
                    }
                    p023i1.n nVar3 = new p023i1.n();
                    nVar3.g(nVar2);
                    nVar3.g(sVar);
                    nVar.g(nVar3);
                }
                webView.evaluateJavascript(StringsKt.trimIndent("\n            (function(E){\n              try {\n                var k = window.TYRANO && window.TYRANO.kag;\n                if (!k || !k.stat) return -1;\n                var roots = { f: k.stat.f, sf: k.variable && k.variable.sf };\n                function key(s) { var m = /^\\[(\\d+)\\]$/.exec(s); return m ? Number(m[1]) : s; }\n                var n = 0, sys = false;\n                E.forEach(function(e) {\n                  var p = e[0], o = roots[p[0]];\n                  for (var i = 1; i < p.length - 1 && o; i++) o = o[key(p[i])];\n                  if (o && typeof o === 'object') { o[key(p[p.length - 1])] = e[1]; n++; if (p[0] === 'sf') sys = true; }\n                });\n                if (sys) { try { k.saveSystemVariable(); } catch (x) {} }\n                return n;\n              } catch (e) { return -1; }\n            })(" + u1.b.f5424a.f(nVar) + ");\n        "), new p047s1.b(1, aVar));
                return Unit.INSTANCE;
            case 8:
                final GameActivity gameActivity = (GameActivity) obj3;
                final Save save = (Save) obj2;
                final boolean zBooleanValue = ((Boolean) obj).booleanValue();
                int i4 = GameActivity.f3676L;
                gameActivity.runOnUiThread(new Runnable() { // from class: y1.C
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i5 = GameActivity.f3676L;
                        boolean z3 = zBooleanValue;
                        GameActivity gameActivity2 = gameActivity;
                        if (!z3) {
                            Toast.makeText(gameActivity2, gameActivity2.getString(R.string.load_fail_slot, save.getDisplaySlotLabel()), 0).show();
                        } else {
                            gameActivity2.u().f5668O.setVisibility(8);
                            Toast.makeText(gameActivity2, gameActivity2.getString(R.string.load_ok), 0).show();
                        }
                    }
                });
                return Unit.INSTANCE;
            case 9:
                Map it3 = (Map) obj;
                Intrinsics.checkNotNullParameter(it3, "it");
                new Thread(new A1((C0425x0) obj3, (C0358a1) obj2, it3, 13)).start();
                return Unit.INSTANCE;
            default:
                final GodotGameActivity godotGameActivity = (GodotGameActivity) obj3;
                B1.u uVar = (B1.u) obj2;
                B1.n dir = (B1.n) obj;
                int i5 = GodotGameActivity.f3707q;
                Intrinsics.checkNotNullParameter(dir, "dir");
                final int i6 = uVar.f355e;
                final int i7 = uVar.f;
                Float fValueOf = Float.valueOf(-1.0f);
                Float fValueOf2 = Float.valueOf(1.0f);
                Float fValueOf3 = Float.valueOf(-0.71f);
                Float fValueOf4 = Float.valueOf(0.71f);
                Float fValueOf5 = Float.valueOf(0.0f);
                if (!godotGameActivity.g && godotGameActivity.m() != null) {
                    godotGameActivity.g = true;
                    godotGameActivity.q(new p064y1.D0(godotGameActivity, 3));
                }
                switch (dir.ordinal()) {
                    case 0:
                        pair = TuplesKt.to(fValueOf5, fValueOf5);
                        break;
                    case 1:
                        pair = TuplesKt.to(fValueOf5, fValueOf);
                        break;
                    case 2:
                        pair = TuplesKt.to(fValueOf5, fValueOf2);
                        break;
                    case 3:
                        pair = TuplesKt.to(fValueOf, fValueOf5);
                        break;
                    case 4:
                        pair = TuplesKt.to(fValueOf2, fValueOf5);
                        break;
                    case 5:
                        pair = TuplesKt.to(fValueOf3, fValueOf3);
                        break;
                    case 6:
                        pair = TuplesKt.to(fValueOf4, fValueOf3);
                        break;
                    case 7:
                        pair = TuplesKt.to(fValueOf3, fValueOf4);
                        break;
                    case 8:
                        pair = TuplesKt.to(fValueOf4, fValueOf4);
                        break;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
                final float fFloatValue = ((Number) pair.component1()).floatValue();
                final float fFloatValue2 = ((Number) pair.component2()).floatValue();
                godotGameActivity.q(new Function0() { // from class: y1.G0
                    @Override // kotlin.jvm.functions.Function0
                    public final Object invoke() {
                        GodotGameActivity godotGameActivity2 = godotGameActivity;
                        V0 v2 = godotGameActivity2.b;
                        if (v2 != null) {
                            v2.b("joyaxis", 0, Integer.valueOf(i6), Float.valueOf(fFloatValue));
                        }
                        V0 v3 = godotGameActivity2.b;
                        if (v3 != null) {
                            v3.b("joyaxis", 0, Integer.valueOf(i7), Float.valueOf(fFloatValue2));
                        }
                        return Unit.INSTANCE;
                    }
                });
                switch (dir.ordinal()) {
                    case 0:
                        pair2 = TuplesKt.to(0, 0);
                        break;
                    case 1:
                        pair2 = TuplesKt.to(19, 0);
                        break;
                    case 2:
                        pair2 = TuplesKt.to(20, 0);
                        break;
                    case 3:
                        pair2 = TuplesKt.to(21, 0);
                        break;
                    case 4:
                        pair2 = TuplesKt.to(22, 0);
                        break;
                    case 5:
                        pair2 = TuplesKt.to(19, 21);
                        break;
                    case 6:
                        pair2 = TuplesKt.to(19, 22);
                        break;
                    case 7:
                        pair2 = TuplesKt.to(20, 21);
                        break;
                    case 8:
                        pair2 = TuplesKt.to(20, 22);
                        break;
                    default:
                        throw new NoWhenBranchMatchedException();
                }
                if (!Intrinsics.areEqual(pair2, godotGameActivity.f3711h)) {
                    Pair pair3 = godotGameActivity.f3711h;
                    godotGameActivity.f3711h = pair2;
                    godotGameActivity.q(new I1.e(pair3, godotGameActivity, pair2, 4));
                }
                return Unit.INSTANCE;
        }
    }
}
