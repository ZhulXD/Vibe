package p064y1;

import P.H0;
import android.widget.LinearLayout;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;

/* JADX INFO: renamed from: y1.v0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0419v0 extends FunctionReferenceImpl implements Function0 {
    public final /* synthetic */ LinearLayout b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ LinkedHashMap f6375c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ C0425x0 f6376d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ List f6377e;
    public final /* synthetic */ Ref.ObjectRef f;
    public final /* synthetic */ H0 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0419v0(H0 h2, LinearLayout linearLayout, LinkedHashMap linkedHashMap, List list, Ref.ObjectRef objectRef, C0425x0 c0425x0) {
        super(0, Intrinsics.Kotlin.class, "refresh", "editor$refresh(Landroid/widget/LinearLayout;Ljava/util/LinkedHashMap;Lcom/minhub/gamehub/game/GodotCheatDialog;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/minhub/gamehub/game/GodotCheatDialog$Colors;)V", 0);
        this.b = linearLayout;
        this.f6375c = linkedHashMap;
        this.f6376d = c0425x0;
        this.f6377e = list;
        this.f = objectRef;
        this.g = h2;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        C0425x0.f(this.g, this.b, this.f6375c, this.f6377e, this.f, this.f6376d);
        return Unit.INSTANCE;
    }
}
