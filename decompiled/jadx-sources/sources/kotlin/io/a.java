package kotlin.io;

import java.util.ArrayList;
import kotlin.jvm.functions.Function1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ArrayList f5000c;

    public /* synthetic */ a(ArrayList arrayList, int i3) {
        this.b = i3;
        this.f5000c = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                return FilesKt__FileReadWriteKt.readLines$lambda$9$FilesKt__FileReadWriteKt(this.f5000c, (String) obj);
            default:
                return TextStreamsKt.readLines$lambda$1(this.f5000c, (String) obj);
        }
    }
}
