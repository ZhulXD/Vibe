package com.minhub.gamehub.hub.catalog;

import androidx.core.view.MotionEventCompat;
import com.minhub.gamehub.data.Save;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.game.GodotGameActivity;
import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.MatchResult;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.time.InstantKt;
import p064y1.AbstractC0361b1;
import p064y1.L1;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class h implements Function1 {
    public final /* synthetic */ int b;

    public /* synthetic */ h(int i3) {
        this.b = i3;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws IOException {
        File file;
        boolean z2 = false;
        switch (this.b) {
            case 0:
                return OnlineCatalogParser.decodeHtmlEntities$lambda$11((MatchResult) obj);
            case 1:
                return OnlineCatalogRepository._init_$lambda$0((String) obj);
            case 2:
                return RemoteZipImporter.downloadZip$lambda$2(((Integer) obj).intValue());
            case 3:
                return RemoteZipImporterExtractKt.extractZip$lambda$0(((Integer) obj).intValue());
            case 4:
                return RemoteZipImporterExtractKt.extractZipStream$lambda$14(((Integer) obj).intValue());
            case 5:
                return RemoteZipImporterExtractKt.extractZipStreamWithFallback$lambda$9(((Integer) obj).intValue());
            case 6:
                return Boolean.valueOf(InstantKt.parseIso$lambda$0(((Character) obj).charValue()));
            case 7:
                return Boolean.valueOf(InstantKt.parseIso$lambda$2(((Character) obj).charValue()));
            case 8:
                return Boolean.valueOf(InstantKt.parseIso$lambda$4(((Character) obj).charValue()));
            case 9:
                return Boolean.valueOf(InstantKt.parseIso$lambda$6(((Character) obj).charValue()));
            case 10:
                return Boolean.valueOf(InstantKt.parseIso$lambda$8(((Character) obj).charValue()));
            case MotionEventCompat.AXIS_Z /* 11 */:
                return Boolean.valueOf(InstantKt.parseIso$lambda$10(((Character) obj).charValue()));
            case 12:
                Save it = (Save) obj;
                int i3 = GameActivity.f3676L;
                Intrinsics.checkNotNullParameter(it, "it");
                return Unit.INSTANCE;
            case 13:
                Save it2 = (Save) obj;
                int i4 = GameActivity.f3676L;
                Intrinsics.checkNotNullParameter(it2, "it");
                return Unit.INSTANCE;
            case MotionEventCompat.AXIS_RZ /* 14 */:
                if (obj != null) {
                    throw new ClassCastException();
                }
                int i5 = GameActivity.f3676L;
                Intrinsics.checkNotNullParameter(null, "<unused var>");
                return null;
            case MotionEventCompat.AXIS_HAT_X /* 15 */:
                S1.b bVarK = com.bumptech.glide.c.K((File) obj);
                if (bVarK == null || (file = bVarK.f2056a) == null) {
                    throw new IOException("No local entry");
                }
                return file;
            case 16:
                MatchResult it3 = (MatchResult) obj;
                Intrinsics.checkNotNullParameter(it3, "it");
                return ((Object) it3.getGroupValues().get(1)) + "false";
            case 17:
                MatchResult it4 = (MatchResult) obj;
                Intrinsics.checkNotNullParameter(it4, "it");
                return ((Object) it4.getGroupValues().get(1)) + "false";
            case MotionEventCompat.AXIS_RTRIGGER /* 18 */:
                File it5 = (File) obj;
                Intrinsics.checkNotNullParameter(it5, "it");
                if (it5.isFile() && Intrinsics.areEqual(it5.getName(), "_minhub_boot.html")) {
                    z2 = true;
                }
                return Boolean.valueOf(z2);
            case 19:
                Map.Entry entry = (Map.Entry) obj;
                Intrinsics.checkNotNullParameter(entry, "<destruct>");
                return E.b.n("\"", L1.v((String) entry.getKey()), "\":[", CollectionsKt.o((List) entry.getValue(), ",", null, null, new h(21), 30), "]");
            case MotionEventCompat.AXIS_RUDDER /* 20 */:
                String it6 = (String) obj;
                Intrinsics.checkNotNullParameter(it6, "it");
                return E.b.m("\"", L1.v(it6), "\"");
            case 21:
                String it7 = (String) obj;
                Intrinsics.checkNotNullParameter(it7, "it");
                return E.b.m("\"", L1.v(it7), "\"");
            case 22:
                p061x1.a it8 = (p061x1.a) obj;
                int i6 = GodotGameActivity.f3707q;
                Intrinsics.checkNotNullParameter(it8, "it");
                return p061x1.a.a(it8, null, 0.0f, 0.0f, 0, 0, "RECT", null, 0.0f, false, 1919);
            case 23:
                p061x1.a it9 = (p061x1.a) obj;
                int i7 = GodotGameActivity.f3707q;
                Intrinsics.checkNotNullParameter(it9, "it");
                return p061x1.a.a(it9, null, 0.0f, 0.0f, 0, 0, "CIRCLE", null, 0.0f, false, 1919);
            case 24:
                p061x1.a it10 = (p061x1.a) obj;
                int i8 = GodotGameActivity.f3707q;
                Intrinsics.checkNotNullParameter(it10, "it");
                return p061x1.a.a(it10, null, 0.0f, 0.0f, 0, 0, "ROUNDED", null, 0.0f, false, 1919);
            case 25:
                File it11 = (File) obj;
                Intrinsics.checkNotNullParameter(it11, "it");
                if (it11.isFile()) {
                    String name = it11.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    if (!StringsKt.N(name, ".")) {
                        String name2 = it11.getName();
                        Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                        if (!StringsKt__StringsJVMKt.endsWith$default(name2, ".minhub.bak", false, 2, null)) {
                            long length = it11.length();
                            if (1 <= length && length < 8388609) {
                                Set set = AbstractC0361b1.f6197c;
                                String lowerCase = FilesKt.getExtension(it11).toLowerCase(Locale.ROOT);
                                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                                if (!set.contains(lowerCase)) {
                                    z2 = true;
                                }
                            }
                        }
                    }
                }
                return Boolean.valueOf(z2);
            case 26:
                Byte b = (Byte) obj;
                b.byteValue();
                String str = String.format("%02x", Arrays.copyOf(new Object[]{b}, 1));
                Intrinsics.checkNotNullExpressionValue(str, "format(...)");
                return str;
            case 27:
                File it12 = (File) obj;
                Intrinsics.checkNotNullParameter(it12, "it");
                return Boolean.valueOf(it12.isFile());
            case MotionEventCompat.AXIS_RELATIVE_Y /* 28 */:
                p061x1.a it13 = (p061x1.a) obj;
                Intrinsics.checkNotNullParameter(it13, "it");
                return p061x1.a.a(it13, null, 0.0f, 0.0f, 0, 0, "ROUNDED", null, 0.0f, false, 1919);
            default:
                p061x1.a it14 = (p061x1.a) obj;
                Intrinsics.checkNotNullParameter(it14, "it");
                return p061x1.a.a(it14, null, 0.0f, 0.0f, 0, 0, "RECT", null, 0.0f, false, 1919);
        }
    }
}
