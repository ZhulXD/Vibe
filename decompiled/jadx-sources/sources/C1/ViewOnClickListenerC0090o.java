package C1;

import android.content.Intent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.hub.AddGameActivity;
import com.minhub.gamehub.hub.KiriKiriInstallActivity;
import java.io.File;
import java.io.Serializable;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import p011e.DialogInterfaceC0245g;
import p064y1.C0402p0;
import p064y1.C0425x0;

/* JADX INFO: renamed from: C1.o, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0090o implements View.OnClickListener {
    public final /* synthetic */ int b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f659c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Serializable f660d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f661e;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Object g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f662h;

    public /* synthetic */ ViewOnClickListenerC0090o(P.H0 h2, LinearLayout linearLayout, LinkedHashMap linkedHashMap, List list, Ref.ObjectRef objectRef, C0425x0 c0425x0) {
        this.f661e = c0425x0;
        this.f = list;
        this.f659c = h2;
        this.g = linkedHashMap;
        this.f662h = linearLayout;
        this.f660d = objectRef;
    }

    /* JADX WARN: Type inference failed for: r5v0, types: [T, java.lang.Object] */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i3 = this.b;
        Serializable serializable = this.f660d;
        Object obj = this.f662h;
        Object obj2 = this.g;
        Object obj3 = this.f659c;
        Object obj4 = this.f;
        ?? r5 = this.f661e;
        switch (i3) {
            case 0:
                int i4 = AddGameActivity.f3740y;
                ((Ref.ObjectRef) serializable).element = r5;
                ((Function1) obj4).invoke(r5);
                ((AddGameActivity) obj3).p((TextView) obj2, (NestedScrollView) obj);
                break;
            case 1:
                AddGameActivity addGameActivity = (AddGameActivity) obj3;
                String str = (String) r5;
                File file = (File) obj4;
                DialogInterfaceC0245g dialogInterfaceC0245g = (DialogInterfaceC0245g) obj2;
                D1.b bVar = (D1.b) obj;
                if (((AtomicBoolean) serializable).compareAndSet(false, true)) {
                    bVar.b();
                    addGameActivity.r(bVar);
                    addGameActivity.startActivity(new Intent(addGameActivity, (Class<?>) KiriKiriInstallActivity.class).putExtra("kirikiri_source_dir", file.getAbsolutePath()).putExtra("kirikiri_game_name", str));
                    addGameActivity.finish();
                }
                dialogInterfaceC0245g.dismiss();
                break;
            default:
                C0425x0 c0425x0 = (C0425x0) r5;
                List list = (List) obj4;
                P.H0 h2 = (P.H0) obj3;
                String string = c0425x0.f6399a.getString(R.string.godot_cheat_browse);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                c0425x0.i(string, null, list, CollectionsKt.toList(CollectionsKt.getIndices(list)), true, h2, new C0402p0(c0425x0, list, (LinkedHashMap) obj2, (LinearLayout) obj, (Ref.ObjectRef) serializable, h2, 0));
                break;
        }
    }

    public /* synthetic */ ViewOnClickListenerC0090o(AtomicBoolean atomicBoolean, AddGameActivity addGameActivity, String str, File file, DialogInterfaceC0245g dialogInterfaceC0245g, D1.b bVar) {
        this.f660d = atomicBoolean;
        this.f659c = addGameActivity;
        this.f661e = str;
        this.f = file;
        this.g = dialogInterfaceC0245g;
        this.f662h = bVar;
    }

    public /* synthetic */ ViewOnClickListenerC0090o(Ref.ObjectRef objectRef, Object obj, Function1 function1, AddGameActivity addGameActivity, TextView textView, NestedScrollView nestedScrollView) {
        this.f660d = objectRef;
        this.f661e = obj;
        this.f = function1;
        this.f659c = addGameActivity;
        this.g = textView;
        this.f662h = nestedScrollView;
    }
}
