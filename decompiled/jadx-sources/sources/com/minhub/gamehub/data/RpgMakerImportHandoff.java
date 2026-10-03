package com.minhub.gamehub.data;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\"\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nJ\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\nH\u0002J\u001e\u0010\u000e\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010J\u001e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0010J\u001c\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00100\u00142\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u0015\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/minhub/gamehub/data/RpgMakerImportHandoff;", "", "<init>", "()V", "MARKER_NAME", "", "KEY_SLOTS", "appliesTo", "", "engine", "Lcom/minhub/gamehub/data/GameEngine;", "markerFile", "Ljava/io/File;", "saveDir", "markPending", "slot", "", "removePending", "", "readPending", "", "clear", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRpgMakerImportHandoff.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RpgMakerImportHandoff.kt\ncom/minhub/gamehub/data/RpgMakerImportHandoff\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,101:1\n1617#2,9:102\n1869#2:111\n1870#2:113\n1626#2:114\n774#2:115\n865#2,2:116\n1#3:112\n1#3:118\n*S KotlinDebug\n*F\n+ 1 RpgMakerImportHandoff.kt\ncom/minhub/gamehub/data/RpgMakerImportHandoff\n*L\n87#1:102,9\n87#1:111\n87#1:113\n87#1:114\n88#1:115\n88#1:116,2\n87#1:112\n*E\n"})
public final class RpgMakerImportHandoff {
    public static final RpgMakerImportHandoff INSTANCE = new RpgMakerImportHandoff();
    private static final String KEY_SLOTS = "slots";
    public static final String MARKER_NAME = "minhub_pending_import";

    private RpgMakerImportHandoff() {
    }

    private final File markerFile(File saveDir, GameEngine engine) {
        return new File(saveDir, kotlin.collections.unsigned.a.o(MARKER_NAME, RpgMakerSaveStore.INSTANCE.extension(engine)));
    }

    public final boolean appliesTo(GameEngine engine) {
        Intrinsics.checkNotNullParameter(engine, "engine");
        return engine == GameEngine.MV || engine == GameEngine.MZ;
    }

    public final void clear(File saveDir, GameEngine engine) {
        Intrinsics.checkNotNullParameter(saveDir, "saveDir");
        Intrinsics.checkNotNullParameter(engine, "engine");
        if (appliesTo(engine)) {
            try {
                Result.Companion companion = Result.INSTANCE;
                Result.m9constructorimpl(Boolean.valueOf(markerFile(saveDir, engine).delete()));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                Result.m9constructorimpl(ResultKt.createFailure(th));
            }
        }
    }

    public final boolean markPending(File saveDir, GameEngine engine, int slot) {
        Intrinsics.checkNotNullParameter(saveDir, "saveDir");
        Intrinsics.checkNotNullParameter(engine, "engine");
        if (!appliesTo(engine)) {
            return false;
        }
        try {
            Set mutableSet = CollectionsKt___CollectionsKt.toMutableSet(readPending(saveDir, engine));
            mutableSet.add(Integer.valueOf(slot));
            JSONObject jSONObjectPut = new JSONObject().put(KEY_SLOTS, CollectionsKt.o(CollectionsKt___CollectionsKt.sorted(mutableSet), ",", null, null, null, 62));
            File fileMarkerFile = markerFile(saveDir, engine);
            String string = jSONObjectPut.toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            FilesKt.writeText(fileMarkerFile, string, Charsets.UTF_8);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public final Set<Integer> readPending(File saveDir, GameEngine engine) {
        Intrinsics.checkNotNullParameter(saveDir, "saveDir");
        Intrinsics.checkNotNullParameter(engine, "engine");
        if (!appliesTo(engine)) {
            return SetsKt.emptySet();
        }
        try {
            File fileMarkerFile = markerFile(saveDir, engine);
            if (!fileMarkerFile.isFile()) {
                return SetsKt.emptySet();
            }
            String strOptString = new JSONObject(FilesKt.readText(fileMarkerFile, Charsets.UTF_8)).optString(KEY_SLOTS, "");
            Intrinsics.checkNotNullExpressionValue(strOptString, "optString(...)");
            int i3 = 0;
            List listSplit$default = StringsKt__StringsKt.split$default(strOptString, new char[]{','}, false, 0, 6, (Object) null);
            ArrayList arrayList = new ArrayList();
            Iterator it = listSplit$default.iterator();
            while (it.hasNext()) {
                Integer intOrNull = StringsKt.toIntOrNull(StringsKt.trim((CharSequence) it.next()).toString());
                if (intOrNull != null) {
                    arrayList.add(intOrNull);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            int size = arrayList.size();
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                if (((Number) obj).intValue() >= 0) {
                    arrayList2.add(obj);
                }
            }
            return CollectionsKt.toSet(arrayList2);
        } catch (Exception unused) {
            return SetsKt.emptySet();
        }
    }

    public final void removePending(File saveDir, GameEngine engine, int slot) {
        Intrinsics.checkNotNullParameter(saveDir, "saveDir");
        Intrinsics.checkNotNullParameter(engine, "engine");
        if (appliesTo(engine)) {
            Set setMinus = SetsKt___SetsKt.minus((Set<? extends Integer>) readPending(saveDir, engine), Integer.valueOf(slot));
            if (setMinus.isEmpty()) {
                clear(saveDir, engine);
                return;
            }
            File file = new File(saveDir, kotlin.collections.unsigned.a.o(MARKER_NAME, RpgMakerSaveStore.INSTANCE.extension(engine)));
            String string = new JSONObject().put(KEY_SLOTS, CollectionsKt.o(CollectionsKt___CollectionsKt.sorted(setMinus), ",", null, null, null, 62)).toString();
            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
            FilesKt.writeText(file, string, Charsets.UTF_8);
        }
    }
}
