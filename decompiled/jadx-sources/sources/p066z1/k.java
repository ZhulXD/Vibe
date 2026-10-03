package p066z1;

import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f6452a = new k();
    public static final ArrayList b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static long f6453c;

    public final synchronized ArrayList a() {
        ArrayList arrayList;
        Object obj;
        try {
            j[] jVarArrValues = j.values();
            arrayList = new ArrayList();
            for (j jVar : jVarArrValues) {
                ArrayList arrayList2 = b;
                if (arrayList2 == null || !arrayList2.isEmpty()) {
                    int size = arrayList2.size();
                    int i3 = 0;
                    do {
                        if (i3 < size) {
                            obj = arrayList2.get(i3);
                            i3++;
                        }
                    } while (((i) obj).f6443a != jVar);
                }
                arrayList.add(jVar);
            }
        } catch (Throwable th) {
            throw th;
        }
        return arrayList;
    }

    public final synchronized boolean b(j step) {
        boolean z2;
        try {
            Intrinsics.checkNotNullParameter(step, "step");
            ArrayList arrayList = b;
            z2 = false;
            if (arrayList == null || !arrayList.isEmpty()) {
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    if (((i) obj).f6443a == step) {
                        z2 = true;
                        break;
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
        return z2;
    }

    public final synchronized void c(j step, String thread, long j2) {
        try {
            Intrinsics.checkNotNullParameter(step, "step");
            Intrinsics.checkNotNullParameter(thread, "thread");
            ArrayList arrayList = b;
            if (arrayList.isEmpty()) {
                f6453c = j2;
            }
            arrayList.add(new i(step, thread, j2 - f6453c));
        } catch (Throwable th) {
            throw th;
        }
    }
}
