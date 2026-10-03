package C1;

import A1.C0035p;
import androidx.lifecycle.Observer;
import java.io.IOException;
import kotlin.Function;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionAdapter;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: C1.x0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0117x0 implements Observer, FunctionAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f710a = 0;
    public final /* synthetic */ Function1 b;

    public C0117x0(C0035p function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.b = function;
    }

    public final boolean equals(Object obj) {
        switch (this.f710a) {
            case 0:
                if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                    return Intrinsics.areEqual((A1.F) this.b, ((FunctionAdapter) obj).getFunctionDelegate());
                }
                return false;
            case 1:
                if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                    return Intrinsics.areEqual((C0050a1) this.b, ((FunctionAdapter) obj).getFunctionDelegate());
                }
                return false;
            case 2:
                if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                    return Intrinsics.areEqual((C0035p) this.b, ((FunctionAdapter) obj).getFunctionDelegate());
                }
                return false;
            case 3:
                if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                    return Intrinsics.areEqual((A1.F) this.b, ((FunctionAdapter) obj).getFunctionDelegate());
                }
                return false;
            default:
                if ((obj instanceof Observer) && (obj instanceof FunctionAdapter)) {
                    return Intrinsics.areEqual((A1.F) this.b, ((FunctionAdapter) obj).getFunctionDelegate());
                }
                return false;
        }
    }

    @Override // kotlin.jvm.internal.FunctionAdapter
    public final Function getFunctionDelegate() {
        switch (this.f710a) {
            case 0:
                return (A1.F) this.b;
            case 1:
                return (C0050a1) this.b;
            case 2:
                return (C0035p) this.b;
            case 3:
                return (A1.F) this.b;
            default:
                return (A1.F) this.b;
        }
    }

    public final int hashCode() {
        switch (this.f710a) {
            case 0:
                return ((A1.F) this.b).hashCode();
            case 1:
                return ((C0050a1) this.b).hashCode();
            case 2:
                return ((C0035p) this.b).hashCode();
            case 3:
                return ((A1.F) this.b).hashCode();
            default:
                return ((A1.F) this.b).hashCode();
        }
    }

    @Override // androidx.lifecycle.Observer
    public final /* synthetic */ void onChanged(Object obj) throws IOException {
        switch (this.f710a) {
            case 0:
                ((A1.F) this.b).invoke(obj);
                break;
            case 1:
                ((C0050a1) this.b).invoke(obj);
                break;
            case 2:
                ((C0035p) this.b).invoke(obj);
                break;
            case 3:
                ((A1.F) this.b).invoke(obj);
                break;
            default:
                ((A1.F) this.b).invoke(obj);
                break;
        }
    }

    public C0117x0(A1.F function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.b = function;
    }

    public C0117x0(A1.F function, byte b) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.b = function;
    }

    public C0117x0(A1.F function, char c3) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.b = function;
    }

    public C0117x0(C0050a1 function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.b = function;
    }
}
