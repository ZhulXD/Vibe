package com.minhub.gamehub.data;

import java.io.File;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
public final /* synthetic */ class EngineDetector$SIGNALS$3 extends FunctionReferenceImpl implements Function1<File, String> {
    public EngineDetector$SIGNALS$3(Object obj) {
        super(1, obj, EngineDetector.class, "kiriEvidence", "kiriEvidence(Ljava/io/File;)Ljava/lang/String;", 0);
    }

    @Override // kotlin.jvm.functions.Function1
    public final String invoke(File p0) {
        Intrinsics.checkNotNullParameter(p0, "p0");
        return ((EngineDetector) this.receiver).kiriEvidence(p0);
    }
}
