package p064y1;

import android.util.Log;
import com.minhub.gamehub.hub.catalog.h;
import java.io.File;
import java.util.HashMap;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.Charsets;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class X {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final HashMap f6155a = new HashMap();

    public static String a(File file) {
        Object objM9constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(file.getCanonicalPath());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m12exceptionOrNullimpl(objM9constructorimpl) != null) {
            objM9constructorimpl = file.getAbsolutePath();
        }
        Intrinsics.checkNotNullExpressionValue(objM9constructorimpl, "getOrElse(...)");
        return (String) objM9constructorimpl;
    }

    /* JADX WARN: Code duplicated, block: B:42:0x009d  */
    /* JADX WARN: Code duplicated, block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:42:0x009d, please report this as an issue */
    public static void b(File gamesRoot) {
        int i3;
        boolean zBooleanValue;
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(gamesRoot, "gamesRoot");
        if (gamesRoot.isDirectory()) {
            int i4 = 0;
            try {
                Result.Companion companion = Result.INSTANCE;
                i3 = 0;
                for (File file : SequencesKt___SequencesKt.filter(FilesKt.walkTopDown(gamesRoot).maxDepth(6), new h(18))) {
                    try {
                        File parentFile = file.getParentFile();
                        HashMap map = f6155a;
                        synchronized (map) {
                            try {
                                if (parentFile != null) {
                                    Integer num = (Integer) map.get(a(parentFile));
                                    if ((num != null ? num.intValue() : 0) > 0) {
                                        zBooleanValue = false;
                                    }
                                }
                                Result.Companion companion2 = Result.INSTANCE;
                                objM9constructorimpl = Result.m9constructorimpl(Boolean.valueOf(file.delete()));
                            } catch (Throwable th) {
                                Result.Companion companion3 = Result.INSTANCE;
                                objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                            }
                            Boolean bool = Boolean.FALSE;
                            if (Result.m15isFailureimpl(objM9constructorimpl)) {
                                objM9constructorimpl = bool;
                            }
                            zBooleanValue = ((Boolean) objM9constructorimpl).booleanValue();
                        }
                        if (zBooleanValue) {
                            i3++;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        i4 = i3;
                        Result.Companion companion4 = Result.INSTANCE;
                        Result.m9constructorimpl(ResultKt.createFailure(th));
                        i3 = i4;
                        if (i3 > 0) {
                            Log.i("MinHub-Launch", "Removed " + i3 + " leftover boot page(s)");
                        }
                    }
                }
                Result.m9constructorimpl(Unit.INSTANCE);
            } catch (Throwable th3) {
                th = th3;
            }
            if (i3 > 0) {
                Log.i("MinHub-Launch", "Removed " + i3 + " leftover boot page(s)");
            }
        }
    }

    public static File c(File gameRoot, String html) {
        Intrinsics.checkNotNullParameter(gameRoot, "gameRoot");
        Intrinsics.checkNotNullParameter(html, "html");
        File file = new File(gameRoot, "_minhub_boot.html");
        FilesKt.writeText(file, html, Charsets.UTF_8);
        String strA = a(gameRoot);
        HashMap map = f6155a;
        synchronized (map) {
            try {
                Integer num = (Integer) map.get(strA);
                map.put(strA, Integer.valueOf((num != null ? num.intValue() : 0) + 1));
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
        return file;
    }
}
