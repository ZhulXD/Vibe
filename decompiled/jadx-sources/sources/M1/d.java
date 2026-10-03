package M1;

import java.io.File;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import p064y1.AbstractC0367d1;
import p064y1.AbstractC0432z1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ File f1357c;

    public /* synthetic */ d(File file, int i3) {
        this.b = i3;
        this.f1357c = file;
    }

    /* JADX WARN: Code duplicated, block: B:14:0x004d  */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        boolean z2;
        switch (this.b) {
            case 0:
                File file = (File) obj;
                Intrinsics.checkNotNullParameter(file, "file");
                return kotlin.collections.unsigned.a.h(FilesKt.getInvariantSeparatorsPath(FilesKt.relativeTo(file, this.f1357c)), "=", e.b(file));
            case 1:
                File it = (File) obj;
                Intrinsics.checkNotNullParameter(it, "it");
                if (!Intrinsics.areEqual(it, this.f1357c)) {
                    if (!AbstractC0367d1.f6211c.contains(it.getName())) {
                        String name = it.getName();
                        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                        z2 = StringsKt.N(name, ".") ? false : true;
                    }
                }
                return Boolean.valueOf(z2);
            default:
                String it2 = (String) obj;
                Intrinsics.checkNotNullParameter(it2, "it");
                return kotlin.collections.unsigned.a.h(it2, "=", AbstractC0432z1.a(new File(this.f1357c, it2)));
        }
    }
}
