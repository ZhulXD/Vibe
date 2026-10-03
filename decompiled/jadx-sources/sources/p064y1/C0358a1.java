package p064y1;

import java.io.File;
import kotlin.jvm.internal.Intrinsics;
import p023i1.o;

/* JADX INFO: renamed from: y1.a1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0358a1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final File f6179a;
    public final String b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final o f6180c;

    public C0358a1(File file, String str, o root) {
        Intrinsics.checkNotNullParameter(file, "file");
        Intrinsics.checkNotNullParameter(root, "root");
        this.f6179a = file;
        this.b = str;
        this.f6180c = root;
    }
}
