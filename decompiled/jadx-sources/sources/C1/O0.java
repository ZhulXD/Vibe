package C1;

import A1.C0043y;
import V1.InterfaceC0207x;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.view.KeyEvent;
import android.webkit.WebView;
import androidx.lifecycle.LifecycleOwnerKt;
import com.minhub.gamehub.data.GameInstallRepair;
import com.minhub.gamehub.data.GameStorageMaintenance;
import com.minhub.gamehub.hub.HubActivity;
import com.minhub.gamehub.hub.catalog.RemotePluginCatalogRepository;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import p011e.C0240b;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class O0 extends SuspendLambda implements Function2 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public /* synthetic */ Object f478c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f479d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ O0(KeyEvent.Callback callback, Object obj, Continuation continuation, int i3) {
        super(2, continuation);
        this.b = i3;
        this.f478c = callback;
        this.f479d = obj;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        switch (this.b) {
            case 0:
                O0 o2 = new O0((String) this.f479d, continuation, 0);
                o2.f478c = obj;
                return o2;
            case 1:
                return new O0((HubActivity) this.f478c, (C0043y) this.f479d, continuation, 1);
            case 2:
                O0 o3 = new O0((HubActivity) this.f479d, continuation, 2);
                o3.f478c = obj;
                return o3;
            case 3:
                return new O0((WebView) this.f478c, (String) this.f479d, continuation, 3);
            default:
                return new O0((Activity) this.f478c, (Intent) this.f479d, continuation, 4);
        }
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        InterfaceC0207x interfaceC0207x = (InterfaceC0207x) obj;
        Continuation continuation = (Continuation) obj2;
        switch (this.b) {
            case 0:
                break;
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
        }
        return ((O0) create(interfaceC0207x, continuation)).invokeSuspend(Unit.INSTANCE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [C1.h1] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objM9constructorimpl;
        int i3 = this.b;
        final int i4 = 0;
        Object obj2 = this.f479d;
        switch (i3) {
            case 0:
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ResultKt.throwOnFailure(obj);
                String str = (String) obj2;
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(new RemotePluginCatalogRepository(null, null, 3, null).fetch(str));
                    break;
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                return Result.m8boximpl(objM9constructorimpl);
            case 1:
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ResultKt.throwOnFailure(obj);
                final HubActivity hubActivity = (HubActivity) this.f478c;
                O0.b bVar = new O0.b(hubActivity, 0);
                C0240b c0240b = (C0240b) bVar.f4145c;
                c0240b.f4098d = "Resume game launch?";
                c0240b.f = "A previous game launch did not finish.";
                final C0043y c0043y = (C0043y) obj2;
                bVar.i("Retry", new DialogInterface.OnClickListener() { // from class: C1.h1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i5) {
                        switch (i4) {
                            case 0:
                                HubActivity hubActivity2 = hubActivity;
                                V1.A.c(LifecycleOwnerKt.getLifecycleScope(hubActivity2), null, new C0074i1(c0043y, hubActivity2, (Continuation) null, 0), 3);
                                break;
                            default:
                                HubActivity hubActivity3 = hubActivity;
                                V1.A.c(LifecycleOwnerKt.getLifecycleScope(hubActivity3), null, new C0114w0(c0043y, hubActivity3, (Continuation) null, 2), 3);
                                break;
                        }
                    }
                });
                final int i5 = 1;
                bVar.g("Cancel", new DialogInterface.OnClickListener() { // from class: C1.h1
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i6) {
                        switch (i5) {
                            case 0:
                                HubActivity hubActivity2 = hubActivity;
                                V1.A.c(LifecycleOwnerKt.getLifecycleScope(hubActivity2), null, new C0074i1(c0043y, hubActivity2, (Continuation) null, 0), 3);
                                break;
                            default:
                                HubActivity hubActivity3 = hubActivity;
                                V1.A.c(LifecycleOwnerKt.getLifecycleScope(hubActivity3), null, new C0114w0(c0043y, hubActivity3, (Continuation) null, 2), 3);
                                break;
                        }
                    }
                });
                bVar.e();
                return Unit.INSTANCE;
            case 2:
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ResultKt.throwOnFailure(obj);
                HubActivity hubActivity2 = (HubActivity) obj2;
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    GameStorageMaintenance gameStorageMaintenance = GameStorageMaintenance.INSTANCE;
                    Context applicationContext = hubActivity2.getApplicationContext();
                    Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                    gameStorageMaintenance.sweepEmptyGameFolders(applicationContext);
                    GameInstallRepair gameInstallRepair = GameInstallRepair.INSTANCE;
                    Context applicationContext2 = hubActivity2.getApplicationContext();
                    Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
                    gameInstallRepair.repairAll(applicationContext2);
                    List list = p064y1.B1.f6038a;
                    p064y1.B1.a(hubActivity2.getExternalFilesDir(null));
                    List listListOfNotNull = CollectionsKt.listOfNotNull((Object[]) new File[]{hubActivity2.getExternalFilesDir(null), hubActivity2.getFilesDir()});
                    ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listListOfNotNull, 10));
                    Iterator it = listListOfNotNull.iterator();
                    while (it.hasNext()) {
                        arrayList.add(new File((File) it.next(), "games"));
                    }
                    int size = arrayList.size();
                    while (i4 < size) {
                        Object obj3 = arrayList.get(i4);
                        i4++;
                        p064y1.X.b((File) obj3);
                    }
                    Result.m9constructorimpl(Unit.INSTANCE);
                    break;
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    Result.m9constructorimpl(ResultKt.createFailure(th2));
                }
                return Unit.INSTANCE;
            case 3:
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ResultKt.throwOnFailure(obj);
                ((WebView) this.f478c).loadUrl((String) obj2);
                return Unit.INSTANCE;
            default:
                IntrinsicsKt.getCOROUTINE_SUSPENDED();
                ResultKt.throwOnFailure(obj);
                Activity activity = (Activity) this.f478c;
                activity.startActivity((Intent) obj2);
                activity.finish();
                return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ O0(Object obj, Continuation continuation, int i3) {
        super(2, continuation);
        this.b = i3;
        this.f479d = obj;
    }
}
