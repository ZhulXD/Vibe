package p064y1;

import C1.RunnableC0078k;
import I1.e;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import p023i1.o;

/* JADX INFO: renamed from: y1.l0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0390l0 implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ C0425x0 f6276c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ File f6277d;

    public /* synthetic */ RunnableC0390l0(C0425x0 c0425x0, File file, int i3) {
        this.b = i3;
        this.f6276c = c0425x0;
        this.f6277d = file;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object objM9constructorimpl;
        Object objM9constructorimpl2;
        Object objM9constructorimpl3;
        int i3 = this.b;
        File file = this.f6277d;
        C0425x0 c0425x0 = this.f6276c;
        switch (i3) {
            case 0:
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(AbstractC0361b1.f(file));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                List listEmptyList = CollectionsKt.emptyList();
                if (Result.m15isFailureimpl(objM9constructorimpl)) {
                    objM9constructorimpl = listEmptyList;
                }
                c0425x0.f6399a.runOnUiThread(new RunnableC0078k(20, c0425x0, new e((List) objM9constructorimpl, c0425x0, file, 2)));
                break;
            default:
                Object obj = null;
                try {
                    Result.Companion companion3 = Result.INSTANCE;
                    File file2 = c0425x0.b;
                    List listD = file2 != null ? AbstractC0361b1.d(file2) : null;
                    if (listD == null) {
                        listD = CollectionsKt.emptyList();
                    }
                    objM9constructorimpl2 = Result.m9constructorimpl(AbstractC0361b1.g(file, listD));
                } catch (Throwable th2) {
                    Result.Companion companion4 = Result.INSTANCE;
                    objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th2));
                }
                if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                    objM9constructorimpl2 = null;
                }
                C0358a1 c0358a1 = (C0358a1) objM9constructorimpl2;
                if (c0358a1 != null) {
                    try {
                        Regex regex = AbstractC0361b1.f6196a;
                        o root = c0358a1.f6180c;
                        Intrinsics.checkNotNullParameter(root, "root");
                        ArrayList arrayList = new ArrayList();
                        AbstractC0361b1.c(arrayList, false, root, CollectionsKt.emptyList());
                        objM9constructorimpl3 = Result.m9constructorimpl(arrayList);
                    } catch (Throwable th3) {
                        Result.Companion companion5 = Result.INSTANCE;
                        objM9constructorimpl3 = Result.m9constructorimpl(ResultKt.createFailure(th3));
                    }
                    obj = (List) (Result.m15isFailureimpl(objM9constructorimpl3) ? null : objM9constructorimpl3);
                }
                c0425x0.f6399a.runOnUiThread(new RunnableC0078k(20, c0425x0, new e(c0358a1, obj, c0425x0, 3)));
                break;
        }
    }
}
