package C1;

import android.util.Log;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.hub.AddGameActivity;
import java.io.File;
import java.io.IOException;
import java.net.URI;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import p064y1.C0406q1;

/* JADX INFO: renamed from: C1.q, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0096q extends FunctionReferenceImpl implements Function1 {
    public final /* synthetic */ int b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0096q(int i3, Object obj) {
        super(1, obj, AddGameActivity.class, "engineFilterLabel", "engineFilterLabel(Lcom/minhub/gamehub/hub/CatalogEngineFilter;)Ljava/lang/String;", 0);
        this.b = i3;
        switch (i3) {
            case 1:
                super(1, obj, AddGameActivity.class, "languageFilterLabel", "languageFilterLabel(Lcom/minhub/gamehub/hub/CatalogLanguageFilter;)Ljava/lang/String;", 0);
                break;
            default:
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:39:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:61:0x0104  */
    /* JADX WARN: Code duplicated, block: B:76:0x0148  */
    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) throws IOException {
        Object objM9constructorimpl;
        Object objM9constructorimpl2;
        File file;
        Object objM9constructorimpl3;
        String logicalPath;
        Object objM9constructorimpl4;
        String strReplace;
        C0406q1 c0406q1;
        String str;
        String str2;
        GameEngine gameEngine;
        List listListOf;
        p064y1.J1 j2;
        String str3;
        int i3;
        switch (this.b) {
            case 0:
                Y p0 = (Y) obj;
                Intrinsics.checkNotNullParameter(p0, "p0");
                AddGameActivity addGameActivity = (AddGameActivity) this.receiver;
                int i4 = AddGameActivity.f3740y;
                return addGameActivity.s(p0);
            case 1:
                EnumC0055c0 p2 = (EnumC0055c0) obj;
                Intrinsics.checkNotNullParameter(p2, "p0");
                AddGameActivity addGameActivity2 = (AddGameActivity) this.receiver;
                int i5 = AddGameActivity.f3740y;
                addGameActivity2.getClass();
                String str4 = p2.b;
                if (str4 != null) {
                    return str4;
                }
                String string = addGameActivity2.getString(R.string.catalog_language_all);
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                return string;
            case 2:
                String requestUrl = (String) obj;
                Intrinsics.checkNotNullParameter(requestUrl, "p0");
                p064y1.V v2 = (p064y1.V) this.receiver;
                File rootDir = v2.f6144a;
                GameEngine engine = v2.b;
                Intrinsics.checkNotNullParameter(requestUrl, "requestUrl");
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(new URI(requestUrl));
                    break;
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                if (Result.m15isFailureimpl(objM9constructorimpl)) {
                    objM9constructorimpl = null;
                }
                URI uri = (URI) objM9constructorimpl;
                if (uri != null && StringsKt.equals(uri.getScheme(), "file", true)) {
                    try {
                        objM9constructorimpl2 = Result.m9constructorimpl(new File(uri).getCanonicalFile());
                    } catch (Throwable th2) {
                        Result.Companion companion3 = Result.INSTANCE;
                        objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th2));
                    }
                    if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                        objM9constructorimpl2 = null;
                    }
                    file = (File) objM9constructorimpl2;
                    break;
                } else {
                    file = null;
                }
                if (file != null) {
                    try {
                        objM9constructorimpl3 = Result.m9constructorimpl(rootDir.getCanonicalFile());
                    } catch (Throwable th3) {
                        Result.Companion companion4 = Result.INSTANCE;
                        objM9constructorimpl3 = Result.m9constructorimpl(ResultKt.createFailure(th3));
                    }
                    if (Result.m15isFailureimpl(objM9constructorimpl3)) {
                        objM9constructorimpl3 = null;
                    }
                    File file2 = (File) objM9constructorimpl3;
                    if (file2 == null) {
                        logicalPath = null;
                    } else if (file.toPath().startsWith(file2.toPath())) {
                        logicalPath = FilesKt.getInvariantSeparatorsPath(FilesKt.relativeTo(file, file2));
                    } else {
                        logicalPath = null;
                    }
                    if (logicalPath != null) {
                        if ((engine == GameEngine.MV || engine == GameEngine.MZ) && StringsKt.equals(logicalPath, "data/System.json", true)) {
                            try {
                                objM9constructorimpl4 = Result.m9constructorimpl(FilesKt.readText(new File(rootDir, "data/System.json"), Charsets.UTF_8));
                                break;
                            } catch (Throwable th4) {
                                Result.Companion companion5 = Result.INSTANCE;
                                objM9constructorimpl4 = Result.m9constructorimpl(ResultKt.createFailure(th4));
                            }
                            if (Result.m15isFailureimpl(objM9constructorimpl4)) {
                                objM9constructorimpl4 = null;
                            }
                            String str5 = (String) objM9constructorimpl4;
                            if (str5 == null) {
                                c0406q1 = null;
                            } else {
                                Regex regex = p064y1.W.f6152a;
                                boolean zContainsMatchIn = regex.containsMatchIn(str5);
                                Regex regex2 = p064y1.W.b;
                                boolean zContainsMatchIn2 = regex2.containsMatchIn(str5);
                                if (zContainsMatchIn || zContainsMatchIn2) {
                                    if (zContainsMatchIn) {
                                        int i6 = p064y1.U.f6139a[engine.ordinal()];
                                        if (v2.a(i6 != 1 ? i6 != 2 ? CollectionsKt.emptyList() : CollectionsKt.listOf(".rpgmvp") : CollectionsKt.listOf(".png_"), "img")) {
                                            strReplace = str5;
                                        } else {
                                            strReplace = regex.replace(str5, new com.minhub.gamehub.hub.catalog.h(16));
                                        }
                                    } else {
                                        strReplace = str5;
                                    }
                                    if (zContainsMatchIn2) {
                                        int i7 = p064y1.U.f6139a[engine.ordinal()];
                                        if (!v2.a(i7 != 1 ? i7 != 2 ? CollectionsKt.emptyList() : CollectionsKt.listOf((Object[]) new String[]{".rpgmvo", ".rpgmvm"}) : CollectionsKt.listOf((Object[]) new String[]{".ogg_", ".m4a_"}), "audio")) {
                                            strReplace = regex2.replace(strReplace, new com.minhub.gamehub.hub.catalog.h(17));
                                        }
                                    }
                                    if (Intrinsics.areEqual(strReplace, str5)) {
                                        c0406q1 = null;
                                    } else {
                                        Log.i("MinHub-Enc", "System.json encryption flag(s) corrected -> false (no encrypted asset files found)");
                                        byte[] bytes = strReplace.getBytes(Charsets.UTF_8);
                                        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                                        c0406q1 = new C0406q1("application/json", bytes);
                                    }
                                } else {
                                    c0406q1 = null;
                                }
                            }
                            if (c0406q1 == null) {
                            }
                            return c0406q1;
                        }
                        Intrinsics.checkNotNullParameter(rootDir, "rootDir");
                        Intrinsics.checkNotNullParameter(engine, "engine");
                        Intrinsics.checkNotNullParameter(logicalPath, "logicalPath");
                        String logicalPath2 = StringsKt.F(logicalPath, '\\', '/');
                        File file3 = new File(rootDir, logicalPath2);
                        if (file3.exists()) {
                            File canonicalFile = file3.getCanonicalFile();
                            Intrinsics.checkNotNullExpressionValue(canonicalFile, "getCanonicalFile(...)");
                            j2 = new p064y1.J1(canonicalFile, false);
                            str = "logicalPath";
                            gameEngine = engine;
                            str2 = logicalPath;
                        } else {
                            Intrinsics.checkNotNullParameter(engine, "engine");
                            Intrinsics.checkNotNullParameter(logicalPath2, "logicalPath");
                            str = "logicalPath";
                            str2 = logicalPath;
                            String strF = StringsKt.F(logicalPath2, '\\', '/');
                            Locale ROOT = Locale.ROOT;
                            Intrinsics.checkNotNullExpressionValue(ROOT, "ROOT");
                            String lowerCase = strF.toLowerCase(ROOT);
                            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                            int i8 = p064y1.M1.f6104a[engine.ordinal()];
                            gameEngine = engine;
                            if (i8 != 1) {
                                if (i8 != 2) {
                                    listListOf = CollectionsKt.emptyList();
                                } else if (StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".png", false, 2, null)) {
                                    String strSubstring = strF.substring(0, strF.length() - 4);
                                    Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                                    listListOf = CollectionsKt.listOf(strSubstring + ".png_");
                                } else if (StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".ogg", false, 2, null)) {
                                    String strSubstring2 = strF.substring(0, strF.length() - 4);
                                    Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                                    listListOf = CollectionsKt.listOf(strSubstring2 + ".ogg_");
                                } else if (StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".m4a", false, 2, null)) {
                                    String strSubstring3 = strF.substring(0, strF.length() - 4);
                                    Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
                                    listListOf = CollectionsKt.listOf(strSubstring3 + ".m4a_");
                                } else {
                                    listListOf = CollectionsKt.emptyList();
                                }
                            } else if (StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".png", false, 2, null)) {
                                listListOf = CollectionsKt.listOf(p064y1.L1.F(strF, ".png", ".rpgmvp"));
                            } else if (StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".ogg", false, 2, null)) {
                                listListOf = CollectionsKt.listOf(p064y1.L1.F(strF, ".ogg", ".rpgmvo"));
                            } else {
                                listListOf = StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".m4a", false, 2, null) ? CollectionsKt.listOf(p064y1.L1.F(strF, ".m4a", ".rpgmvm")) : CollectionsKt.emptyList();
                            }
                            Iterator it = listListOf.iterator();
                            while (true) {
                                if (it.hasNext()) {
                                    Object next = it.next();
                                    Intrinsics.checkNotNullExpressionValue(next, "next(...)");
                                    File file4 = new File(rootDir, (String) next);
                                    if (file4.exists()) {
                                        File canonicalFile2 = file4.getCanonicalFile();
                                        Intrinsics.checkNotNullExpressionValue(canonicalFile2, "getCanonicalFile(...)");
                                        j2 = new p064y1.J1(canonicalFile2, true);
                                    }
                                } else {
                                    j2 = null;
                                }
                            }
                        }
                        if (j2 != null && j2.b) {
                            byte[] bytes2 = FilesKt.readBytes(j2.f6093a);
                            GameEngine engine2 = gameEngine;
                            Intrinsics.checkNotNullParameter(engine2, "engine");
                            String str6 = str2;
                            Intrinsics.checkNotNullParameter(str6, str);
                            Intrinsics.checkNotNullParameter(bytes2, "bytes");
                            if (bytes2.length >= 16 && (((i3 = p064y1.K1.f6096a[engine2.ordinal()]) == 1 || i3 == 2) && Arrays.equals(ArraysKt.copyOfRange(bytes2, 0, 16), p064y1.L1.f6100a))) {
                                bytes2 = ArraysKt.copyOfRange(bytes2, 16, bytes2.length);
                            }
                            if (StringsKt__StringsJVMKt.endsWith(str6, ".png", true)) {
                                str3 = "image/png";
                            } else if (StringsKt__StringsJVMKt.endsWith(str6, ".jpg", true) || StringsKt__StringsJVMKt.endsWith(str6, ".jpeg", true)) {
                                str3 = "image/jpeg";
                            } else if (StringsKt__StringsJVMKt.endsWith(str6, ".webp", true)) {
                                str3 = "image/webp";
                            } else if (StringsKt__StringsJVMKt.endsWith(str6, ".svg", true)) {
                                str3 = "image/svg+xml";
                            } else if (StringsKt__StringsJVMKt.endsWith(str6, ".ogg", true)) {
                                str3 = "audio/ogg";
                            } else if (StringsKt__StringsJVMKt.endsWith(str6, ".mp3", true)) {
                                str3 = "audio/mpeg";
                            } else if (StringsKt__StringsJVMKt.endsWith(str6, ".m4a", true)) {
                                str3 = "audio/mp4";
                            } else if (StringsKt__StringsJVMKt.endsWith(str6, ".wav", true)) {
                                str3 = "audio/wav";
                            } else if (StringsKt__StringsJVMKt.endsWith(str6, ".mp4", true) || StringsKt__StringsJVMKt.endsWith(str6, ".m4v", true)) {
                                str3 = "video/mp4";
                            } else {
                                str3 = StringsKt__StringsJVMKt.endsWith(str6, ".webm", true) ? "video/webm" : "application/octet-stream";
                            }
                            c0406q1 = new C0406q1(str3, bytes2);
                            return c0406q1;
                        }
                    }
                    break;
                }
                return null;
            default:
                ((GameActivity) this.receiver).runOnUiThread((Runnable) obj);
                return Unit.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0096q(int i3, Object obj, Class cls, String str, String str2, int i4, int i5) {
        super(i3, obj, cls, str, str2, i4);
        this.b = i5;
    }
}
