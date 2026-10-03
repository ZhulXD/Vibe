package p064y1;

import L1.a;
import L1.d;
import L1.e;
import S1.b;
import android.content.Context;
import android.util.Log;
import com.bumptech.glide.c;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.data.RenpySaveIsolation;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.SequencesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class G1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Regex f6072a = new Regex("^renpy7(-\\d+(\\.\\d+)*)?$");
    public static final List b;

    static {
        EnumC0420v1 enumC0420v1 = EnumC0420v1.RENPY7;
        String str = enumC0420v1.b;
        Regex regex = e.f1287c;
        b = CollectionsKt.listOf((Object[]) new a[]{new a(str, p000a.a.v(7, 8, 7), "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Renpy7/7.8.7/PluginRenpy7.zip", enumC0420v1.f6385e, null, null, null, enumC0420v1.b, 112), new a(enumC0420v1.b, p000a.a.v(7, 6, 3), "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Plugin/Renpy7/7.6.3/PluginRenpy7.zip", 0, null, null, null, null, 248)});
    }

    public static File a(File gamePath) {
        Object objM9constructorimpl;
        File file;
        File file2;
        Intrinsics.checkNotNullParameter(gamePath, "gamePath");
        try {
            Result.Companion companion = Result.INSTANCE;
            b bVarK = c.K(gamePath);
            if (bVarK == null) {
                file = gamePath;
            } else {
                file2 = bVarK.f2056a;
                if (file2 == null) {
                    file = file2;
                    file = gamePath;
                }
            }
            file = file2;
            objM9constructorimpl = Result.m9constructorimpl(file);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        Object obj = gamePath;
        if (!Result.m15isFailureimpl(objM9constructorimpl)) {
            obj = objM9constructorimpl;
        }
        return (File) obj;
    }

    public static String b(a build) {
        Intrinsics.checkNotNullParameter(build, "build");
        return "Ren'Py " + build.b + " Runtime";
    }

    public static final a c(String str) {
        Object obj = null;
        if (str == null || !f6072a.matches(str)) {
            return null;
        }
        for (Object obj2 : b) {
            if (Intrinsics.areEqual(((a) obj2).a(), str)) {
                obj = obj2;
                break;
            }
        }
        return (a) obj;
    }

    public static final String d(String installKey) {
        Intrinsics.checkNotNullParameter(installKey, "installKey");
        return Intrinsics.areEqual(installKey, EnumC0420v1.RENPY7.b) ? "renpy7-priv" : kotlin.collections.unsigned.a.g(installKey, "-priv");
    }

    public static final String e(String installKey) {
        Intrinsics.checkNotNullParameter(installKey, "installKey");
        return Intrinsics.areEqual(installKey, EnumC0420v1.RENPY7.b) ? "renpy7_priv.version" : kotlin.collections.unsigned.a.g(installKey, "_priv.version");
    }

    public static ArrayList f(Context context, String str, int i3) {
        Intrinsics.checkNotNullParameter(context, "context");
        ArrayList arrayList = new ArrayList();
        File externalFilesDir = context.getExternalFilesDir(null);
        if (externalFilesDir != null) {
            arrayList.add(new File(RenpySaveIsolation.INSTANCE.publicDirFor(externalFilesDir, i3), "saves"));
        }
        if (str != null) {
            if (StringsKt.isBlank(str)) {
                str = null;
            }
            if (str != null) {
                Set set = E1.f6058a;
                arrayList.add(new File(E1.c(new File(str)), "saves"));
            }
        }
        return arrayList;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0066  */
    /* JADX WARN: Code duplicated, block: B:43:0x0081  */
    /* JADX WARN: Code duplicated, block: B:58:0x00cc  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v6, types: [L1.e] */
    /* JADX WARN: Type inference failed for: r8v9, types: [java.lang.String] */
    public static L1.c g(GameEngine engine, String str, ArrayList saveDirs) {
        String str2;
        Object objM9constructorimpl;
        e eVar;
        Object next;
        Object objM9constructorimpl2;
        Object objM9constructorimpl3;
        Intrinsics.checkNotNullParameter(engine, "engine");
        Intrinsics.checkNotNullParameter(saveDirs, "saveDirs");
        if (engine == GameEngine.RENPY7) {
            if (str == null) {
                str2 = null;
            } else {
                if (StringsKt.isBlank(str)) {
                    str = null;
                }
                if (str != null) {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        File gamePath = new File(str);
                        Intrinsics.checkNotNullParameter(gamePath, "gamePath");
                        String strB = B1.b(gamePath);
                        if (strB == null) {
                            try {
                                b bVarK = c.K(gamePath);
                                objM9constructorimpl3 = Result.m9constructorimpl(bVarK != null ? bVarK.f2056a : null);
                            } catch (Throwable th) {
                                Result.Companion companion2 = Result.INSTANCE;
                                objM9constructorimpl3 = Result.m9constructorimpl(ResultKt.createFailure(th));
                            }
                            if (Result.m15isFailureimpl(objM9constructorimpl3)) {
                                objM9constructorimpl3 = null;
                            }
                            File file = (File) objM9constructorimpl3;
                            if (file == null) {
                                strB = null;
                            } else {
                                if (Intrinsics.areEqual(file, gamePath)) {
                                    file = null;
                                }
                                if (file != null) {
                                    strB = B1.b(file);
                                } else {
                                    strB = null;
                                }
                            }
                        }
                        objM9constructorimpl2 = Result.m9constructorimpl(strB);
                    } catch (Throwable th2) {
                        Result.Companion companion3 = Result.INSTANCE;
                        objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th2));
                    }
                    if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                        objM9constructorimpl2 = null;
                    }
                    str2 = (String) objM9constructorimpl2;
                } else {
                    str2 = null;
                }
            }
            try {
                Result.Companion companion4 = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(L1.q(saveDirs));
            } catch (Throwable th3) {
                Result.Companion companion5 = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th3));
            }
            if (Result.m15isFailureimpl(objM9constructorimpl)) {
                objM9constructorimpl = null;
            }
            Object obj = (e) objM9constructorimpl;
            Regex regex = e.f1287c;
            if (str2 == null || StringsKt.isBlank(str2)) {
                eVar = null;
            } else {
                List list = SequencesKt.toList(SequencesKt.take(SequencesKt.mapNotNull(Regex.findAll$default(e.f1287c, str2, 0, 2, null), new d(0)), 4));
                if (list.isEmpty()) {
                    eVar = null;
                } else {
                    eVar = new e(list);
                }
            }
            List builds = b;
            Intrinsics.checkNotNullParameter(builds, "builds");
            L1.c cVarW = com.bumptech.glide.d.W(builds, eVar);
            if (cVarW == null) {
                cVarW = null;
            } else if (obj != 0) {
                e eVar2 = new e(CollectionsKt.take(obj.b, 3));
                if (cVarW.f1286a.b.compareTo(eVar2) < 0) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : builds) {
                        if (((a) obj2).b.compareTo(eVar2) >= 0) {
                            arrayList.add(obj2);
                        }
                    }
                    Iterator it = arrayList.iterator();
                    if (it.hasNext()) {
                        next = it.next();
                        if (it.hasNext()) {
                            e eVar3 = ((a) next).b;
                            do {
                                Object next2 = it.next();
                                e eVar4 = ((a) next2).b;
                                eVar3.getClass();
                                if (eVar3.compareTo(eVar4) > 0) {
                                    next = next2;
                                    eVar3 = eVar4;
                                }
                            } while (it.hasNext());
                        }
                    } else {
                        next = null;
                    }
                    a aVar = (a) next;
                    if (aVar != null) {
                        cVarW = new L1.c(aVar, L1.b.f);
                    }
                }
            }
            if (cVarW != null) {
                if (str2 == null) {
                    str2 = "no version";
                }
                if (obj == 0) {
                    obj = "none";
                }
                a aVar2 = cVarW.f1286a;
                Log.i("RenpyRuntimes", "game declares " + str2 + ", saves written by " + obj + " -> Ren'Py " + aVar2.b + " (" + cVarW.b + ", folder " + aVar2.a() + ")");
                return cVarW;
            }
        }
        return null;
    }
}
