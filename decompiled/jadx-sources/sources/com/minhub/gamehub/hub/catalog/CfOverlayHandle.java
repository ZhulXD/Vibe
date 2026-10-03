package com.minhub.gamehub.hub.catalog;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B#\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u000f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J)\u0010\r\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u00032\u000e\b\u0002\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001J\t\u0010\u0013\u001a\u00020\u0014HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0017\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\t¨\u0006\u0015"}, d2 = {"Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;", "", "detach", "Lkotlin/Function0;", "", "show", "<init>", "(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "getDetach", "()Lkotlin/jvm/functions/Function0;", "getShow", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class CfOverlayHandle {
    private final Function0<Unit> detach;
    private final Function0<Unit> show;

    public CfOverlayHandle(Function0<Unit> detach, Function0<Unit> show) {
        Intrinsics.checkNotNullParameter(detach, "detach");
        Intrinsics.checkNotNullParameter(show, "show");
        this.detach = detach;
        this.show = show;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ CfOverlayHandle copy$default(CfOverlayHandle cfOverlayHandle, Function0 function0, Function0 function1, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            function0 = cfOverlayHandle.detach;
        }
        if ((i3 & 2) != 0) {
            function1 = cfOverlayHandle.show;
        }
        return cfOverlayHandle.copy(function0, function1);
    }

    public final Function0<Unit> component1() {
        return this.detach;
    }

    public final Function0<Unit> component2() {
        return this.show;
    }

    public final CfOverlayHandle copy(Function0<Unit> detach, Function0<Unit> show) {
        Intrinsics.checkNotNullParameter(detach, "detach");
        Intrinsics.checkNotNullParameter(show, "show");
        return new CfOverlayHandle(detach, show);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof CfOverlayHandle)) {
            return false;
        }
        CfOverlayHandle cfOverlayHandle = (CfOverlayHandle) other;
        return Intrinsics.areEqual(this.detach, cfOverlayHandle.detach) && Intrinsics.areEqual(this.show, cfOverlayHandle.show);
    }

    public final Function0<Unit> getDetach() {
        return this.detach;
    }

    public final Function0<Unit> getShow() {
        return this.show;
    }

    public int hashCode() {
        return this.show.hashCode() + (this.detach.hashCode() * 31);
    }

    public String toString() {
        return "CfOverlayHandle(detach=" + this.detach + ", show=" + this.show + ")";
    }
}
