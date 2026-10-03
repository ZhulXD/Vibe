package com.minhub.gamehub.game;

import A1.v0;
import C1.RunnableC0062e1;
import C1.RunnableC0068g1;
import C1.V;
import E.b;
import S.F;
import S1.c;
import a2.e;
import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;
import com.bumptech.glide.d;
import com.minhub.gamehub.R;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.UByte;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.cocos2dx.lib.ResizeLayout;
import org.tvp.kirikiri2.KR2Activity;
import p000a.a;
import p064y1.AbstractC0369e0;
import p064y1.AbstractC0372f0;
import p064y1.C0373f1;
import p064y1.L1;
import p064y1.M;
import p066z1.f;
import p066z1.g;
import p066z1.h;
import p066z1.l;
import p066z1.m;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/minhub/gamehub/game/KiriKiriGameActivity;", "Lorg/tvp/kirikiri2/KR2Activity;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nKiriKiriGameActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KiriKiriGameActivity.kt\ncom/minhub/gamehub/game/KiriKiriGameActivity\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 5 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n*L\n1#1,927:1\n12637#2,2:928\n3829#2:930\n4344#2,2:931\n11228#2:937\n11563#2,3:938\n10135#2:959\n10557#2,2:960\n11228#2:962\n11563#2,3:963\n10559#2,3:966\n3829#2:969\n4344#2,2:970\n3829#2:982\n4344#2,2:983\n1056#3:933\n1869#3:934\n1870#3:936\n295#3,2:941\n295#3,2:943\n1999#3,14:945\n1869#3,2:972\n1869#3,2:985\n1#4:935\n1321#5,2:974\n1255#5,2:976\n1321#5,2:978\n1321#5,2:980\n*S KotlinDebug\n*F\n+ 1 KiriKiriGameActivity.kt\ncom/minhub/gamehub/game/KiriKiriGameActivity\n*L\n266#1:928,2\n268#1:930\n268#1:931,2\n285#1:937\n285#1:938,3\n353#1:959\n353#1:960,2\n355#1:962\n355#1:963,3\n353#1:966,3\n384#1:969\n384#1:970,2\n889#1:982\n889#1:983,2\n269#1:933\n270#1:934\n270#1:936\n286#1:941,2\n287#1:943,2\n288#1:945,14\n393#1:972,2\n890#1:985,2\n463#1:974,2\n532#1:976,2\n713#1:978,2\n767#1:980,2\n*E\n"})
public final class KiriKiriGameActivity extends KR2Activity {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ int f3720e = 0;
    public int b = -1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f3721c = System.currentTimeMillis();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public v0 f3722d;

    public static void k(KiriKiriGameActivity kiriKiriGameActivity) {
        ResizeLayout resizeLayout = kiriKiriGameActivity.mFrameLayout;
        if (resizeLayout != null && resizeLayout.findViewWithTag("minhub-kiri-menu") == null) {
            float f = kiriKiriGameActivity.getResources().getDisplayMetrics().density;
            int i3 = (int) (44 * f);
            ImageView imageView = new ImageView(kiriKiriGameActivity);
            imageView.setTag("minhub-kiri-menu");
            imageView.setImageResource(R.drawable.ic_menu_selector);
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            float f3 = 8 * f;
            imageView.setElevation(f3);
            imageView.setContentDescription(kiriKiriGameActivity.getString(R.string.arrange_menu_title));
            imageView.setOnClickListener(new V(10, kiriKiriGameActivity));
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i3);
            layoutParams.gravity = 8388659;
            int i4 = (int) f3;
            layoutParams.topMargin = i4;
            layoutParams.leftMargin = i4;
            Unit unit = Unit.INSTANCE;
            resizeLayout.addView(imageView, layoutParams);
            imageView.bringToFront();
        }
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0065 A[Catch: Exception -> 0x0063, TryCatch #0 {Exception -> 0x0063, blocks: (B:3:0x0004, B:5:0x000a, B:7:0x0014, B:9:0x001c, B:11:0x002c, B:13:0x003b, B:15:0x004a, B:17:0x0056, B:22:0x0065, B:23:0x0068, B:24:0x006b, B:26:0x0071, B:28:0x007f), top: B:33:0x0004 }] */
    public static void l(File file) {
        try {
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                ArrayList arrayList = new ArrayList();
                int i3 = 0;
                for (File file2 : fileArrListFiles) {
                    if (file2.isFile()) {
                        Intrinsics.checkNotNull(file2);
                        if (StringsKt.equals(FilesKt.getExtension(file2), "lock", true)) {
                            arrayList.add(file2);
                        } else {
                            String name = file2.getName();
                            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                            if (StringsKt.N(name, "_lock_")) {
                                arrayList.add(file2);
                            } else {
                                String name2 = file2.getName();
                                Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                                if (StringsKt.N(name2, ".lock") || Intrinsics.areEqual(file2.getName(), "krkr2.lock") || Intrinsics.areEqual(file2.getName(), "krkr.lock")) {
                                    arrayList.add(file2);
                                }
                            }
                        }
                    }
                }
                int size = arrayList.size();
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    File file3 = (File) obj;
                    if (file3.delete()) {
                        Log.i("KiriKiriGame", "Cleared stale lock: " + file3.getName());
                    }
                }
            }
        } catch (Exception e2) {
            b.x("Could not scan for lock files: ", e2.getMessage(), "KiriKiriGame");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r9v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.util.ArrayList] */
    public static void m(File file) {
        List listListOf;
        ?? EmptyList;
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        ArrayList entryNames = new ArrayList();
        int i3 = 0;
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                List listListOf2 = CollectionsKt.listOf(file2.getName());
                String[] list = file2.list();
                if (list != null) {
                    EmptyList = new ArrayList(list.length);
                    for (String str : list) {
                        EmptyList.add(file2.getName() + "/" + str);
                    }
                } else {
                    EmptyList = CollectionsKt.emptyList();
                }
                listListOf = CollectionsKt___CollectionsKt.plus((Collection) listListOf2, (Iterable) EmptyList);
            } else {
                listListOf = CollectionsKt.listOf(file2.getName());
            }
            CollectionsKt__MutableCollectionsKt.addAll(entryNames, listListOf);
        }
        Regex regex = f.f6440a;
        Intrinsics.checkNotNullParameter(entryNames, "entryNames");
        if (entryNames.isEmpty()) {
            return;
        }
        int size = entryNames.size();
        while (i3 < size) {
            Object obj = entryNames.get(i3);
            i3++;
            String str2 = (String) CollectionsKt.lastOrNull(StringsKt__StringsKt.split$default(StringsKt.trimEnd((String) obj, '/', '\\'), new char[]{'/', '\\'}, false, 0, 6, (Object) null));
            if (str2 != null && StringsKt.equals(str2, "k2compat", true)) {
                File file3 = new File(file, "system/Status.tjs");
                if (file3.isFile()) {
                    try {
                        F fG = a.G(FilesKt.readBytes(file3));
                        if (fG == null) {
                            return;
                        }
                        Regex regex2 = f.f6440a;
                        String strA = f.a((String) fG.b);
                        if (strA == null) {
                            return;
                        }
                        d.d0(file3, fG.b(strA));
                        Log.i("KiriKiriGame", "Declared kirikiriz flag for KirikiriZ build");
                        return;
                    } catch (Exception e2) {
                        b.x("Could not declare kirikiriz flag: ", e2.getMessage(), "KiriKiriGame");
                        return;
                    }
                }
                return;
            }
        }
    }

    public static File n(File file) {
        if (!file.isDirectory()) {
            return null;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isFile() && b.y(file2, file2, "xp3", true)) {
                    return file;
                }
            }
        }
        File[] fileArrListFiles2 = file.listFiles();
        if (fileArrListFiles2 == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (File file3 : fileArrListFiles2) {
            if (file3.isDirectory()) {
                arrayList.add(file3);
            }
        }
        List<File> listSortedWith = CollectionsKt.sortedWith(arrayList, new M(6));
        if (listSortedWith == null) {
            return null;
        }
        for (File file4 : listSortedWith) {
            Intrinsics.checkNotNull(file4);
            File fileN = n(file4);
            if (fileN != null) {
                return fileN;
            }
        }
        return null;
    }

    public static boolean o(File file) {
        Iterator it = SequencesKt.filterNot(SequencesKt___SequencesKt.filter(FilesKt.walkTopDown(file), new C0373f1(1)), new C0373f1(2)).iterator();
        while (it.hasNext()) {
            try {
                F fG = a.G(FilesKt.readBytes((File) it.next()));
                if (fG != null) {
                    String script = (String) fG.b;
                    Intrinsics.checkNotNullParameter(script, "script");
                    if (StringsKt__StringsKt.contains$default((CharSequence) script, (CharSequence) "GdiPlus", false, 2, (Object) null)) {
                        return true;
                    }
                } else {
                    continue;
                }
            } catch (Exception unused) {
            }
        }
        return false;
    }

    public static void r(File file) {
        File file2 = new File(file, "system/AfterInit.tjs");
        if (file2.exists() && file2.isFile()) {
            try {
                F fG = a.G(FilesKt.readBytes(file2));
                if (fG == null) {
                    return;
                }
                String strReplace = (String) fG.b;
                if (StringsKt__StringsKt.contains$default((CharSequence) strReplace, (CharSequence) "MinHub:afterinit", false, 2, (Object) null)) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                if (StringsKt__StringsKt.contains$default((CharSequence) strReplace, (CharSequence) "System.checkAppId", false, 2, (Object) null)) {
                    int iCount = SequencesKt.count(Regex.findAll$default(new Regex("System\\.checkAppId"), strReplace, 0, 2, null));
                    strReplace = StringsKt__StringsJVMKt.replace$default(strReplace, "System.checkAppId", "global.APP_ID", false, 4, (Object) null);
                    arrayList.add(iCount + " checkAppId DRM");
                }
                Regex regex = new Regex("(?<!try\\{)(Plugins\\.link\\(\"[^\"]+\\.dll\"\\);)");
                if (regex.containsMatchIn(strReplace)) {
                    int iCount2 = SequencesKt.count(Regex.findAll$default(regex, strReplace, 0, 2, null));
                    strReplace = regex.replace(strReplace, "try{$1}catch(e){}");
                    arrayList.add(iCount2 + " DLL Plugins.link");
                }
                if (arrayList.isEmpty()) {
                    return;
                }
                d.d0(file2, fG.b("// [MinHub:afterinit] " + CollectionsKt.o(arrayList, " + ", null, null, null, 62) + "\n" + strReplace));
                String strO = CollectionsKt.o(arrayList, ", ", null, null, null, 62);
                StringBuilder sb = new StringBuilder("Patched AfterInit.tjs: ");
                sb.append(strO);
                Log.i("KiriKiriGame", sb.toString());
            } catch (Exception e2) {
                b.x("Could not patch AfterInit.tjs: ", e2.getMessage(), "KiriKiriGame");
            }
        }
    }

    public static void s(File file) {
        File file2 = new File(file, "system/Boot.tjs");
        if (file2.exists() && file2.isFile()) {
            try {
                F fG = a.G(FilesKt.readBytes(file2));
                if (fG == null) {
                    return;
                }
                String strSubstringAfter$default = (String) fG.b;
                if (StringsKt__StringsKt.contains$default((CharSequence) strSubstringAfter$default, (CharSequence) "MinHub:applock-v3", false, 2, (Object) null)) {
                    return;
                }
                if (StringsKt__StringsKt.contains$default((CharSequence) strSubstringAfter$default, (CharSequence) "createAppLock", false, 2, (Object) null) || StringsKt__StringsKt.contains$default((CharSequence) strSubstringAfter$default, (CharSequence) "MinHub:applock", false, 2, (Object) null)) {
                    if (StringsKt.N(strSubstringAfter$default, "// [MinHub:applock-v2]") || StringsKt.N(strSubstringAfter$default, "// [MinHub:applock]")) {
                        strSubstringAfter$default = StringsKt__StringsKt.substringAfter$default(strSubstringAfter$default, "\n\n", (String) null, 2, (Object) null);
                    }
                    d.d0(file2, fG.b("// [MinHub:applock-v3]\nSystem.createAppLock = function(name) { return true; } incontextof null;\n\n" + strSubstringAfter$default));
                    Log.i("KiriKiriGame", "Patched Boot.tjs v3: createAppLock override");
                }
            } catch (Exception e2) {
                b.x("Could not patch Boot.tjs: ", e2.getMessage(), "KiriKiriGame");
            }
        }
    }

    public static void t(File file) {
        List patchDirs = g.b(file);
        if (patchDirs.isEmpty()) {
            return;
        }
        if (!g.a(file)) {
            Intrinsics.checkNotNullParameter(patchDirs, "patchDirs");
            b.x("Could not add patch autopath for ", CollectionsKt.o(patchDirs, ", ", null, null, new C0373f1(15), 30), "KiriKiriGame");
            return;
        }
        Intrinsics.checkNotNullParameter(patchDirs, "patchDirs");
        Log.i("KiriKiriGame", "Patched Boot.tjs: autopath " + CollectionsKt.o(patchDirs, ", ", null, null, new C0373f1(15), 30));
    }

    public static void u(File file) {
        int i3 = 0;
        for (File file2 : SequencesKt___SequencesKt.filter(FilesKt.walkTopDown(file), new C0373f1(5))) {
            try {
                byte[] bytes = FilesKt.readBytes(file2);
                if (bytes.length >= 2) {
                    int i4 = bytes[0] & UByte.MAX_VALUE;
                    int i5 = bytes[1] & UByte.MAX_VALUE;
                    if (i4 != 255 || i5 != 254) {
                        if (i4 != 47 && i4 != 91 && i4 != 123) {
                            int i6 = i4 ^ 47;
                            int length = bytes.length;
                            byte[] bArr = new byte[length];
                            for (int i7 = 0; i7 < length; i7++) {
                                bArr[i7] = (byte) ((bytes[i7] & UByte.MAX_VALUE) ^ i6);
                            }
                            if ((bArr[0] & UByte.MAX_VALUE) == 47) {
                                d.d0(file2, bArr);
                                i3++;
                            }
                        }
                    }
                }
            } catch (Exception unused) {
                b.x("Could not decode ", file2.getName(), "KiriKiriGame");
            }
        }
        if (i3 > 0) {
            Log.i("KiriKiriGame", "Decoded " + i3 + " encrypted json files");
        }
    }

    public static void v(File file) {
        File file2 = new File(file, "startup.tjs");
        if (file2.exists() && file2.isFile()) {
            try {
                F fG = a.G(FilesKt.readBytes(file2));
                if (fG == null) {
                    return;
                }
                String strReplace = (String) fG.b;
                if (StringsKt__StringsKt.contains$default((CharSequence) strReplace, (CharSequence) "MinHub:startup-v2", false, 2, (Object) null)) {
                    return;
                }
                if (StringsKt.N(strReplace, "// [MinHub:startup-v1]")) {
                    strReplace = StringsKt__StringsKt.substringAfter$default(strReplace, "\n\n", (String) null, 2, (Object) null);
                }
                Regex regex = new Regex("(Plugins\\.link\\(\"[^\"]+\\.dll\"\\);)");
                boolean zContainsMatchIn = regex.containsMatchIn(strReplace);
                if (zContainsMatchIn) {
                    strReplace = regex.replace(strReplace, "try{$1}catch(e){}");
                }
                d.d0(file2, fG.b("// [MinHub:startup-v2]\ntry{ System.createAppLock = function(name) { return true; } incontextof null; }catch(e){}\n\n" + strReplace));
                Log.i("KiriKiriGame", "Patched startup.tjs v2: createAppLock override" + (zContainsMatchIn ? " + DLL try-catch" : "") + (((l) fG.f1958c) == l.f6455d ? " (plain text)" : ""));
            } catch (Exception e2) {
                b.x("Could not patch startup.tjs: ", e2.getMessage(), "KiriKiriGame");
            }
        }
    }

    public static void x(File file) {
        for (File file2 : SequencesKt.filterNot(SequencesKt___SequencesKt.filter(FilesKt.walkTopDown(file), new C0373f1(3)), new C0373f1(4))) {
            try {
                F fG = a.G(FilesKt.readBytes(file2));
                if (fG != null) {
                    String str = (String) fG.b;
                    if (!StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "MinHub:trans-fallback", false, 2, (Object) null) && StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "super.beginTransition(method,", false, 2, (Object) null)) {
                        d.d0(file2, fG.b(StringsKt__StringsJVMKt.replace$default(str, "super.beginTransition(method,", "if(method!='universal'&&method!='crossfade'&&method!='scroll'&&method!='mosaic')method='crossfade'; // [MinHub:trans-fallback]\n\t\tsuper.beginTransition(method,", false, 4, (Object) null)));
                        Log.i("KiriKiriGame", "Patched " + file2.getName() + ": transition fallback (extrans -> crossfade)");
                    }
                }
            } catch (Exception e2) {
                Log.w("KiriKiriGame", "Could not patch transitions in " + file2.getName() + ": " + e2.getMessage());
            }
        }
    }

    public static String y(File file) {
        try {
            F fG = a.G(FilesKt.readBytes(file));
            if (fG != null) {
                return (String) fG.b;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static void z(File file) {
        File file2 = new File(file, "plugin");
        if (file2.isDirectory()) {
            byte[] bytes = "// MinHub: stub — Windows DLL replaced for Android compatibility\n".getBytes(Charsets.UTF_16LE);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            byte[] bArr = new byte[bytes.length + 2];
            bArr[0] = -1;
            bArr[1] = -2;
            System.arraycopy(bytes, 0, bArr, 2, bytes.length);
            File[] fileArrListFiles = file2.listFiles();
            if (fileArrListFiles != null) {
                ArrayList arrayList = new ArrayList();
                for (File file3 : fileArrListFiles) {
                    if (file3.isFile() && b.y(file3, file3, "dll", true)) {
                        arrayList.add(file3);
                    }
                }
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    File file4 = (File) obj;
                    try {
                        byte[] bArr2 = new byte[2];
                        Intrinsics.checkNotNull(file4);
                        FileInputStream fileInputStream = new FileInputStream(file4);
                        try {
                            int i4 = fileInputStream.read(bArr2);
                            CloseableKt.closeFinally(fileInputStream, null);
                            if (i4 == 2 && (bArr2[0] & UByte.MAX_VALUE) == 77 && (bArr2[1] & UByte.MAX_VALUE) == 90) {
                                FilesKt.writeBytes(file4, bArr);
                                Log.i("KiriKiriGame", "Stubbed Windows DLL: " + file4.getName());
                            }
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(fileInputStream, th);
                                throw th2;
                            }
                        }
                    } catch (Exception e2) {
                        Log.w("KiriKiriGame", "Could not stub " + file4.getName() + ": " + e2.getMessage());
                    }
                }
            }
        }
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    public final void attachBaseContext(Context base) {
        Intrinsics.checkNotNullParameter(base, "base");
        int i3 = c.f2058d;
        super.attachBaseContext(d.a(base, S1.d.d(base)));
    }

    @Override // org.tvp.kirikiri2.KR2Activity
    public final int get_res_sd_operate_step() {
        return R.drawable.sd_operate_step;
    }

    @Override // org.tvp.kirikiri2.KR2Activity
    public final boolean keepsHostOrientation() {
        return AbstractC0369e0.b(this, this.b);
    }

    /* JADX WARN: Code duplicated, block: B:27:0x0099  */
    /* JADX WARN: Code duplicated, block: B:78:0x0202  */
    /* JADX WARN: Code duplicated, block: B:81:0x0231  */
    @Override // org.tvp.kirikiri2.KR2Activity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        String absolutePath;
        File bootArchive;
        Set setEmptySet;
        Object next;
        Object next2;
        Object next3;
        String lowerCase;
        this.b = getIntent().getIntExtra("game_id", -1);
        String stringExtra = getIntent().getStringExtra("kiri_game_path");
        if (stringExtra == null || StringsKt.isBlank(stringExtra)) {
            KR2Activity.sIntentStartupPath = null;
            Log.w("KiriKiriGame", "No game path provided — KiriKiri will show file browser");
        } else {
            File file = new File(stringExtra);
            File gameDir = n(file);
            if (gameDir != null) {
                l(gameDir);
                if (new File(gameDir, "startup.tjs").exists()) {
                    w(gameDir);
                    v(gameDir);
                    m(gameDir);
                    s(gameDir);
                    t(gameDir);
                    r(gameDir);
                    x(gameDir);
                    z(gameDir);
                    u(gameDir);
                    q(gameDir);
                    p(gameDir);
                    absolutePath = gameDir.getAbsolutePath();
                    Intrinsics.checkNotNull(absolutePath);
                    if (!StringsKt__StringsJVMKt.endsWith$default(absolutePath, "/", false, 2, null)) {
                        absolutePath = kotlin.collections.unsigned.a.g(absolutePath, "/");
                    }
                } else {
                    File[] fileArrListFiles = gameDir.listFiles(new com.minhub.gamehub.data.b(3));
                    List list = fileArrListFiles != null ? ArraysKt.toList(fileArrListFiles) : null;
                    if (list == null || list.isEmpty()) {
                        bootArchive = null;
                    } else {
                        File[] fileArrListFiles2 = gameDir.listFiles(new com.minhub.gamehub.data.b(4));
                        if (fileArrListFiles2 != null) {
                            ArrayList arrayList = new ArrayList(fileArrListFiles2.length);
                            for (File file2 : fileArrListFiles2) {
                                Intrinsics.checkNotNull(file2);
                                String lowerCase2 = FilesKt.getNameWithoutExtension(file2).toLowerCase(Locale.ROOT);
                                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                                arrayList.add(lowerCase2);
                            }
                            setEmptySet = CollectionsKt.toSet(arrayList);
                            if (setEmptySet == null) {
                                setEmptySet = SetsKt.emptySet();
                            }
                        } else {
                            setEmptySet = SetsKt.emptySet();
                        }
                        Iterator it = list.iterator();
                        do {
                            if (!it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                            File file3 = (File) next;
                            Intrinsics.checkNotNull(file3);
                            lowerCase = FilesKt.getNameWithoutExtension(file3).toLowerCase(Locale.ROOT);
                            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                        } while (!setEmptySet.contains(lowerCase));
                        bootArchive = (File) next;
                        if (bootArchive == null) {
                            Iterator it2 = list.iterator();
                            do {
                                if (!it2.hasNext()) {
                                    next2 = null;
                                    break;
                                }
                                next2 = it2.next();
                            } while (!StringsKt.equals(((File) next2).getName(), "data.xp3", true));
                            bootArchive = (File) next2;
                            if (bootArchive == null) {
                                Iterator it3 = list.iterator();
                                if (it3.hasNext()) {
                                    next3 = it3.next();
                                    if (it3.hasNext()) {
                                        long length = ((File) next3).length();
                                        do {
                                            Object next4 = it3.next();
                                            long length2 = ((File) next4).length();
                                            if (length < length2) {
                                                next3 = next4;
                                                length = length2;
                                            }
                                        } while (it3.hasNext());
                                    }
                                } else {
                                    next3 = null;
                                }
                                bootArchive = (File) next3;
                            }
                        }
                    }
                    if (bootArchive != null) {
                        Intrinsics.checkNotNullParameter(gameDir, "gameDir");
                        Intrinsics.checkNotNullParameter(bootArchive, "bootArchive");
                        File file4 = new File(gameDir, "xp3filter.tjs");
                        if (!file4.exists()) {
                            try {
                                String strF = L1.f(bootArchive);
                                if (strF == null) {
                                    Log.i("KiriKiriXp3Filter", bootArchive.getName() + ": scheme not recognized — no filter written");
                                } else if (Intrinsics.areEqual(strF, "PLAIN")) {
                                    Log.i("KiriKiriXp3Filter", bootArchive.getName() + ": unencrypted — no filter needed");
                                } else {
                                    FilesKt__FileReadWriteKt.writeText$default(file4, "Storages.setXP3ArchiveExtractionFilter(function(h,o,b,l){b.xor(0,l," + strF + ");});", null, 2, null);
                                    Log.i("KiriKiriXp3Filter", "Wrote xp3filter.tjs for " + bootArchive.getName() + ": b.xor(0,l," + strF + ")");
                                }
                            } catch (Exception e2) {
                                Log.w("KiriKiriXp3Filter", "xp3filter detection failed for " + bootArchive.getName() + ": " + e2.getMessage());
                            }
                        }
                        Log.i("KiriKiriGame", "XP3-packed KiriKiri: startup via archive " + bootArchive.getName());
                        absolutePath = bootArchive.getAbsolutePath();
                        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                    } else {
                        w(gameDir);
                        v(gameDir);
                        m(gameDir);
                        s(gameDir);
                        t(gameDir);
                        r(gameDir);
                        x(gameDir);
                        z(gameDir);
                        u(gameDir);
                        q(gameDir);
                        p(gameDir);
                        absolutePath = gameDir.getAbsolutePath();
                        Intrinsics.checkNotNull(absolutePath);
                        if (!StringsKt__StringsJVMKt.endsWith$default(absolutePath, "/", false, 2, null)) {
                            absolutePath = kotlin.collections.unsigned.a.g(absolutePath, "/");
                        }
                    }
                }
            } else {
                l(file);
                File file5 = new File(file, ".cf");
                if (!file5.exists()) {
                    try {
                        file5.createNewFile();
                        Log.i("KiriKiriGame", "Created empty .cf sentinel");
                    } catch (Exception e3) {
                        b.x("Could not create .cf: ", e3.getMessage(), "KiriKiriGame");
                    }
                }
                w(file);
                v(file);
                m(file);
                s(file);
                t(file);
                r(file);
                x(file);
                z(file);
                u(file);
                q(file);
                p(file);
                absolutePath = file.getAbsolutePath();
                Intrinsics.checkNotNull(absolutePath);
                if (!StringsKt__StringsJVMKt.endsWith$default(absolutePath, "/", false, 2, null)) {
                    absolutePath = kotlin.collections.unsigned.a.g(absolutePath, "/");
                }
            }
            KR2Activity.sIntentStartupPath = absolutePath;
            Log.i("KiriKiriGame", b.n("KiriKiri game path (raw=", stringExtra, ", resolved=", absolutePath, ")"));
        }
        this.f3722d = a.r(this, "kirikiri", null, null);
        try {
            super.onCreate(bundle);
            getWindow().getDecorView().post(new RunnableC0068g1(19, this));
            getWindow().getDecorView().postDelayed(new RunnableC0062e1(3), 8000L);
        } catch (UnsatisfiedLinkError e4) {
            Log.e("KiriKiriGame", "KiriKiri library load failed: " + e4.getMessage());
            Toast.makeText(this, R.string.kiri_load_failed, 1).show();
            finish();
        }
    }

    @Override // org.tvp.kirikiri2.KR2Activity, org.cocos2dx.lib.Cocos2dxActivity, android.app.Activity
    public final void onDestroy() {
        e eVar = AbstractC0372f0.f6225a;
        AbstractC0372f0.a(this, this.b, this.f3721c);
        super.onDestroy();
        v0 v0Var = this.f3722d;
        if (v0Var != null) {
            v0Var.b();
        }
    }

    @Override // org.cocos2dx.lib.Cocos2dxActivity
    public final void onLoadNativeLibraries() {
        try {
            System.loadLibrary("krkr2yuri");
            Log.i("KiriKiriGame", "libkrkr2yuri.so loaded successfully");
        } catch (UnsatisfiedLinkError e2) {
            Log.e("KiriKiriGame", "Failed to load libkrkr2yuri.so: " + e2.getMessage());
            throw e2;
        }
    }

    public final void p(File file) {
        String strP;
        File file2 = new File(file, "startup.tjs");
        if (file2.isFile()) {
            try {
                if (o(file)) {
                    File file3 = new File(file, "MinHubGdiPlusPolyfill.tjs");
                    String strY = file3.isFile() ? y(file3) : null;
                    if (strY == null || !StringsKt__StringsKt.contains$default((CharSequence) strY, (CharSequence) "MinHub:gdiplus-polyfill", false, 2, (Object) null)) {
                        InputStream inputStreamOpen = getAssets().open("kiri/MinHubGdiPlusPolyfill.tjs");
                        try {
                            Intrinsics.checkNotNull(inputStreamOpen);
                            byte[] bytes = ByteStreamsKt.readBytes(inputStreamOpen);
                            CloseableKt.closeFinally(inputStreamOpen, null);
                            String str = new String(bytes, Charsets.UTF_8);
                            if (str.length() > 0 && str.charAt(0) == 65279) {
                                str = str.substring(1);
                                Intrinsics.checkNotNullExpressionValue(str, "substring(...)");
                            }
                            byte[] bytes2 = str.getBytes(Charsets.UTF_16LE);
                            Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
                            byte[] bArr = new byte[bytes2.length + 2];
                            bArr[0] = -1;
                            bArr[1] = -2;
                            System.arraycopy(bytes2, 0, bArr, 2, bytes2.length);
                            if (!d.d0(file3, bArr)) {
                                Log.w("KiriKiriGame", "Could not write MinHubGdiPlusPolyfill.tjs");
                                return;
                            }
                            Log.i("KiriKiriGame", "Installed MinHubGdiPlusPolyfill.tjs");
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(inputStreamOpen, th);
                                throw th2;
                            }
                        }
                    }
                    F fG = a.G(FilesKt.readBytes(file2));
                    if (fG == null || (strP = com.bumptech.glide.c.p((String) fG.b)) == null || !d.d0(file2, fG.b(strP))) {
                        return;
                    }
                    Log.i("KiriKiriGame", "Loaded the GdiPlus stand-in from startup.tjs");
                }
            } catch (Exception e2) {
                b.x("Could not install the GdiPlus stand-in: ", e2.getMessage(), "KiriKiriGame");
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0049  */
    /* JADX WARN: Code duplicated, block: B:23:0x0062  */
    public final void q(File file) {
        boolean z2;
        boolean z3;
        File file2 = new File(file, "system");
        File file3 = new File(file2, "PluginLoader.tjs");
        File file4 = new File(file2, "SystemAddon.tjs");
        File file5 = new File(file2, "Bootstrap.tjs");
        if (file5.isFile()) {
            if (file3.isFile()) {
                String strY = y(file3);
                if (strY == null) {
                    strY = "";
                }
                if (StringsKt__StringsKt.contains$default((CharSequence) strY, (CharSequence) "json.dll", false, 2, (Object) null)) {
                    z2 = true;
                } else {
                    z2 = false;
                }
            } else {
                z2 = false;
            }
            if (file4.isFile()) {
                String strY2 = y(file4);
                if (StringsKt__StringsKt.contains$default((CharSequence) (strY2 != null ? strY2 : ""), (CharSequence) "evalJSONStorage", false, 2, (Object) null)) {
                    z3 = true;
                } else {
                    z3 = false;
                }
            } else {
                z3 = false;
            }
            if (z2 || z3) {
                try {
                    File file6 = new File(file2, "MinHubJsonPolyfill.tjs");
                    String strY3 = file6.isFile() ? y(file6) : null;
                    if (strY3 == null || !StringsKt__StringsKt.contains$default((CharSequence) strY3, (CharSequence) "MinHub:json-polyfill-v1", false, 2, (Object) null)) {
                        InputStream inputStreamOpen = getAssets().open("kiri/MinHubJsonPolyfill.tjs");
                        try {
                            Intrinsics.checkNotNull(inputStreamOpen);
                            byte[] bytes = ByteStreamsKt.readBytes(inputStreamOpen);
                            CloseableKt.closeFinally(inputStreamOpen, null);
                            String str = new String(bytes, Charsets.UTF_8);
                            if (str.length() > 0 && str.charAt(0) == 65279) {
                                str = str.substring(1);
                                Intrinsics.checkNotNullExpressionValue(str, "substring(...)");
                            }
                            byte[] bytes2 = str.getBytes(Charsets.UTF_16LE);
                            Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
                            byte[] bArr = new byte[bytes2.length + 2];
                            bArr[0] = -1;
                            bArr[1] = -2;
                            System.arraycopy(bytes2, 0, bArr, 2, bytes2.length);
                            FilesKt.writeBytes(file6, bArr);
                            Log.i("KiriKiriGame", "Installed MinHubJsonPolyfill.tjs");
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(inputStreamOpen, th);
                                throw th2;
                            }
                        }
                    }
                    try {
                        F fG = a.G(FilesKt.readBytes(file5));
                        if (fG != null) {
                            String str2 = (String) fG.b;
                            if (!StringsKt__StringsKt.contains$default((CharSequence) str2, (CharSequence) "MinHub:json-polyfill", false, 2, (Object) null) && StringsKt__StringsKt.contains$default((CharSequence) str2, (CharSequence) "Scripts.execStorage(\"PluginLoader.tjs\");", false, 2, (Object) null)) {
                                d.d0(file5, fG.b(StringsKt__StringsJVMKt.replace$default(str2, "Scripts.execStorage(\"PluginLoader.tjs\");", "Scripts.execStorage(\"PluginLoader.tjs\");\r\nScripts.execStorage(\"MinHubJsonPolyfill.tjs\");", false, 4, (Object) null)));
                                Log.i("KiriKiriGame", "Patched Bootstrap.tjs for JSON polyfill");
                            }
                        }
                    } catch (Exception unused) {
                        Log.w("KiriKiriGame", "Could not patch Bootstrap.tjs for JSON");
                    }
                    try {
                        F fG2 = a.G(FilesKt.readBytes(file3));
                        if (fG2 != null) {
                            String str3 = (String) fG2.b;
                            if (StringsKt__StringsKt.contains$default((CharSequence) str3, (CharSequence) "MinHub:json-polyfill", false, 2, (Object) null) || !StringsKt__StringsKt.contains$default((CharSequence) str3, (CharSequence) "Plugins.link", false, 2, (Object) null)) {
                                return;
                            }
                            int i3 = 6;
                            List mutableList = CollectionsKt.toMutableList((Collection) StringsKt__StringsKt.split$default((CharSequence) str3, new String[]{"\n"}, false, 0, 6, (Object) null));
                            int size = mutableList.size();
                            int i4 = 0;
                            boolean z4 = false;
                            while (i4 < size) {
                                String str4 = (String) mutableList.get(i4);
                                if (StringsKt__StringsKt.contains$default((CharSequence) str4, (CharSequence) "Plugins.link", false, 2, (Object) null) && StringsKt__StringsKt.contains$default((CharSequence) str4, (CharSequence) ".dll", false, 2, (Object) null) && !StringsKt__StringsKt.contains$default((CharSequence) str4, (CharSequence) "try{", false, 2, (Object) null)) {
                                    int iIndexOf$default = StringsKt__StringsKt.indexOf$default(str4, "Plugins.link", 0, false, i3, (Object) null);
                                    int iIndexOf$default2 = StringsKt__StringsKt.indexOf$default(str4, ");", iIndexOf$default, false, 4, (Object) null);
                                    if (iIndexOf$default >= 0 && iIndexOf$default2 > iIndexOf$default) {
                                        String strSubstring = str4.substring(0, iIndexOf$default);
                                        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                                        int i5 = iIndexOf$default2 + 2;
                                        String strSubstring2 = str4.substring(iIndexOf$default, i5);
                                        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                                        String strSubstring3 = str4.substring(i5);
                                        Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
                                        mutableList.set(i4, strSubstring + "try{" + strSubstring2 + "}catch(e){}" + strSubstring3);
                                        z4 = true;
                                    }
                                }
                                i4++;
                                i3 = 6;
                            }
                            if (z4) {
                                d.d0(file3, fG2.b(CollectionsKt.o(mutableList, "\n", null, null, null, 62)));
                                Log.i("KiriKiriGame", "Patched PluginLoader.tjs for JSON");
                            }
                        }
                    } catch (Exception unused2) {
                        Log.w("KiriKiriGame", "Could not patch PluginLoader.tjs for JSON");
                    }
                } catch (Exception unused3) {
                    Log.w("KiriKiriGame", "Could not install JSON polyfill");
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:50:0x013f  */
    /* JADX WARN: Code duplicated, block: B:51:0x0142 A[Catch: Exception -> 0x00f7, TRY_LEAVE, TryCatch #3 {Exception -> 0x00f7, blocks: (B:31:0x00e1, B:40:0x0109, B:45:0x0117, B:48:0x0130, B:58:0x016b, B:68:0x01a5, B:78:0x01e3, B:71:0x01b3, B:61:0x017b, B:51:0x0142), top: B:133:0x00e1 }] */
    /* JADX WARN: Code duplicated, block: B:53:0x014a  */
    /* JADX WARN: Code duplicated, block: B:60:0x0178  */
    /* JADX WARN: Code duplicated, block: B:61:0x017b A[Catch: Exception -> 0x00f7, TRY_LEAVE, TryCatch #3 {Exception -> 0x00f7, blocks: (B:31:0x00e1, B:40:0x0109, B:45:0x0117, B:48:0x0130, B:58:0x016b, B:68:0x01a5, B:78:0x01e3, B:71:0x01b3, B:61:0x017b, B:51:0x0142), top: B:133:0x00e1 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0183  */
    /* JADX WARN: Code duplicated, block: B:68:0x01a5 A[Catch: Exception -> 0x00f7, PHI: r8 r11 r20
      0x01a5: PHI (r8v11 boolean) = (r8v10 boolean), (r8v17 boolean) binds: [B:62:0x0181, B:65:0x019b] A[DONT_GENERATE, DONT_INLINE]
      0x01a5: PHI (r11v13 'source' java.lang.String) = (r11v12 'source' java.lang.String), (r11v19 'source' java.lang.String) binds: [B:62:0x0181, B:65:0x019b] A[DONT_GENERATE, DONT_INLINE]
      0x01a5: PHI (r20v7 int) = (r20v1 int), (r20v9 int) binds: [B:62:0x0181, B:65:0x019b] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TryCatch #3 {Exception -> 0x00f7, blocks: (B:31:0x00e1, B:40:0x0109, B:45:0x0117, B:48:0x0130, B:58:0x016b, B:68:0x01a5, B:78:0x01e3, B:71:0x01b3, B:61:0x017b, B:51:0x0142), top: B:133:0x00e1 }] */
    /* JADX WARN: Code duplicated, block: B:70:0x01b2  */
    /* JADX WARN: Code duplicated, block: B:71:0x01b3 A[Catch: Exception -> 0x00f7, TRY_LEAVE, TryCatch #3 {Exception -> 0x00f7, blocks: (B:31:0x00e1, B:40:0x0109, B:45:0x0117, B:48:0x0130, B:58:0x016b, B:68:0x01a5, B:78:0x01e3, B:71:0x01b3, B:61:0x017b, B:51:0x0142), top: B:133:0x00e1 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x01c0  */
    /* JADX WARN: Code duplicated, block: B:80:0x01e9  */
    /* JADX WARN: Code duplicated, block: B:84:0x0207  */
    /* JADX WARN: Code duplicated, block: B:86:0x020b A[Catch: Exception -> 0x0204, TRY_LEAVE, TryCatch #11 {Exception -> 0x0204, blocks: (B:81:0x01eb, B:86:0x020b), top: B:149:0x01eb }] */
    public final void w(File file) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z2;
        Regex regex;
        String strReplace;
        String strReplace2;
        Regex regex2;
        String strReplace3;
        Regex regex3;
        String strA;
        int i8;
        int i9;
        F fG;
        String string = getString(R.string.confirm);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String strReplace$default = StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(string, "\\", "\\\\", false, 4, (Object) null), "\"", "\\\"", false, 4, (Object) null);
        String strN = b.n("\r\n\r\n// [MinHub:yesno-native-v2] KAG sub-window dialogs never receive input on Android;\r\n// route askYesNo/dispOK to the engine's native message box instead.\r\nfunction askYesNo(message, caption = \"", strReplace$default, "\") {\r\n\treturn !System.inform(message, caption, 2);\r\n}\r\nfunction dispOK(message, caption = \"", strReplace$default, "\") {\r\n\tSystem.inform(message, caption);\r\n}\r\n");
        Iterator it = SequencesKt.filterNot(SequencesKt___SequencesKt.filter(FilesKt.walkTopDown(file), new C0373f1(6)), new C0373f1(7)).iterator();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        int i15 = 0;
        int i16 = 0;
        while (true) {
            Iterator it2 = it;
            i3 = i16;
            i4 = i15;
            if (!it.hasNext()) {
                break;
            }
            int i17 = i14;
            File file2 = (File) it2.next();
            try {
                if (L1.d(file2)) {
                    int i18 = i10 + 1;
                    try {
                        String absolutePath = file2.getAbsolutePath();
                        i6 = i13;
                        try {
                            StringBuilder sb = new StringBuilder();
                            i5 = i12;
                            try {
                                sb.append("Decrypted obfuscated script: ");
                                sb.append(absolutePath);
                                Log.i("KiriKiriGame", sb.toString());
                                i10 = i18;
                            } catch (Exception e2) {
                                e = e2;
                                i10 = i18;
                                i16 = i3;
                                i13 = i6;
                                i12 = i5;
                                Log.w("KiriKiriGame", "Could not patch " + file2.getName() + ": " + e.getMessage());
                                i15 = i4;
                                i14 = i17;
                                it = it2;
                            }
                        } catch (Exception e3) {
                            e = e3;
                            i10 = i18;
                            i16 = i3;
                            i13 = i6;
                            Log.w("KiriKiriGame", "Could not patch " + file2.getName() + ": " + e.getMessage());
                            i15 = i4;
                            i14 = i17;
                            it = it2;
                        }
                    } catch (Exception e4) {
                        e = e4;
                        i10 = i18;
                        i16 = i3;
                        Log.w("KiriKiriGame", "Could not patch " + file2.getName() + ": " + e.getMessage());
                        i15 = i4;
                        i14 = i17;
                        it = it2;
                    }
                } else {
                    i5 = i12;
                    i6 = i13;
                }
                try {
                    F fG2 = a.G(FilesKt.readBytes(file2));
                    try {
                        if (fG2 != null) {
                            try {
                                String source = (String) fG2.b;
                                String strB = h.b(source);
                                if (strB != null) {
                                    i11++;
                                    i7 = i10;
                                    try {
                                        Log.i("KiriKiriGame", "Guarded Plugins.link in " + file2.getName());
                                        source = strB;
                                        z2 = true;
                                    } catch (Exception e5) {
                                        e = e5;
                                        i16 = i3;
                                        i13 = i6;
                                        i12 = i5;
                                        i10 = i7;
                                        Log.w("KiriKiriGame", "Could not patch " + file2.getName() + ": " + e.getMessage());
                                        i15 = i4;
                                        i14 = i17;
                                        it = it2;
                                    }
                                } else {
                                    i7 = i10;
                                    z2 = false;
                                }
                                String strQ = a.q(source);
                                if (strQ != null) {
                                    int i19 = i5 + 1;
                                    try {
                                        i5 = i19;
                                        Log.i("KiriKiriGame", "Neutralised createAppLock in " + file2.getName());
                                        source = strQ;
                                        z2 = true;
                                        Regex regex4 = p066z1.a.f6434a;
                                        Intrinsics.checkNotNullParameter(source, "source");
                                        regex = p066z1.a.f6434a;
                                        strReplace = null;
                                        if (regex.containsMatchIn(source)) {
                                            strReplace2 = regex.replace(source, "if(false)");
                                        } else {
                                            strReplace2 = null;
                                        }
                                        if (strReplace2 != null) {
                                            i13 = i6 + 1;
                                            try {
                                                Log.i("KiriKiriGame", "Bypassed boot-options window in " + file2.getName());
                                                i6 = i13;
                                                z2 = true;
                                                source = strReplace2;
                                            } catch (Exception e6) {
                                                e = e6;
                                                i16 = i3;
                                                i12 = i5;
                                                i10 = i7;
                                                Log.w("KiriKiriGame", "Could not patch " + file2.getName() + ": " + e.getMessage());
                                                i15 = i4;
                                                i14 = i17;
                                                it = it2;
                                            }
                                        }
                                        Regex regex5 = p066z1.b.f6435a;
                                        Intrinsics.checkNotNullParameter(source, "source");
                                        regex2 = p066z1.b.f6435a;
                                        if (regex2.containsMatchIn(source)) {
                                            strReplace3 = regex2.replace(source, "");
                                        } else {
                                            strReplace3 = null;
                                        }
                                        if (strReplace3 != null) {
                                            i9 = i17 + 1;
                                            try {
                                                Log.i("KiriKiriGame", "Skipped desktop-only k2compat shims in " + file2.getName());
                                                source = strReplace3;
                                                i17 = i9;
                                                z2 = true;
                                                Regex regex6 = p066z1.c.f6436a;
                                                Intrinsics.checkNotNullParameter(source, "source");
                                                regex3 = p066z1.c.f6436a;
                                                if (!regex3.containsMatchIn(source)) {
                                                    strReplace = regex3.replace(source, new C0373f1(11));
                                                }
                                                if (strReplace != null) {
                                                    i8 = i4 + 1;
                                                    try {
                                                        Log.i("KiriKiriGame", "Pointed autopaths at extracted files in " + file2.getName());
                                                        i4 = i8;
                                                        source = strReplace;
                                                        z2 = true;
                                                    } catch (Exception e7) {
                                                        e = e7;
                                                        i4 = i8;
                                                        i16 = i3;
                                                        i13 = i6;
                                                        i12 = i5;
                                                        i10 = i7;
                                                        Log.w("KiriKiriGame", "Could not patch " + file2.getName() + ": " + e.getMessage());
                                                        i15 = i4;
                                                        i14 = i17;
                                                        it = it2;
                                                    }
                                                }
                                                strA = m.a(source);
                                                if (strA != null) {
                                                    i16 = i3 + 1;
                                                    try {
                                                        Log.i("KiriKiriGame", "Guarded registerExEvent in " + file2.getName());
                                                        source = strA;
                                                        z2 = true;
                                                    } catch (Exception e8) {
                                                        e = e8;
                                                        i13 = i6;
                                                        i12 = i5;
                                                        i10 = i7;
                                                        Log.w("KiriKiriGame", "Could not patch " + file2.getName() + ": " + e.getMessage());
                                                        i15 = i4;
                                                        i14 = i17;
                                                        it = it2;
                                                    }
                                                } else {
                                                    i16 = i3;
                                                }
                                                if (z2) {
                                                    d.d0(file2, fG2.b(source));
                                                }
                                            } catch (Exception e9) {
                                                e = e9;
                                                i17 = i9;
                                                i16 = i3;
                                                i13 = i6;
                                                i12 = i5;
                                                i10 = i7;
                                                Log.w("KiriKiriGame", "Could not patch " + file2.getName() + ": " + e.getMessage());
                                                i15 = i4;
                                                i14 = i17;
                                                it = it2;
                                            }
                                        } else {
                                            Regex regex7 = p066z1.c.f6436a;
                                            Intrinsics.checkNotNullParameter(source, "source");
                                            regex3 = p066z1.c.f6436a;
                                            if (!regex3.containsMatchIn(source)) {
                                                strReplace = regex3.replace(source, new C0373f1(11));
                                            }
                                            if (strReplace != null) {
                                                i8 = i4 + 1;
                                                Log.i("KiriKiriGame", "Pointed autopaths at extracted files in " + file2.getName());
                                                i4 = i8;
                                                source = strReplace;
                                                z2 = true;
                                            }
                                            strA = m.a(source);
                                            if (strA != null) {
                                                i16 = i3 + 1;
                                                Log.i("KiriKiriGame", "Guarded registerExEvent in " + file2.getName());
                                                source = strA;
                                                z2 = true;
                                            } else {
                                                i16 = i3;
                                            }
                                            if (z2) {
                                                d.d0(file2, fG2.b(source));
                                            }
                                        }
                                    } catch (Exception e10) {
                                        e = e10;
                                        i5 = i19;
                                        i16 = i3;
                                        i13 = i6;
                                        i12 = i5;
                                        i10 = i7;
                                        Log.w("KiriKiriGame", "Could not patch " + file2.getName() + ": " + e.getMessage());
                                        i15 = i4;
                                        i14 = i17;
                                        it = it2;
                                    }
                                } else {
                                    Regex regex8 = p066z1.a.f6434a;
                                    Intrinsics.checkNotNullParameter(source, "source");
                                    regex = p066z1.a.f6434a;
                                    strReplace = null;
                                    if (regex.containsMatchIn(source)) {
                                        strReplace2 = null;
                                    } else {
                                        strReplace2 = regex.replace(source, "if(false)");
                                    }
                                    if (strReplace2 != null) {
                                        i13 = i6 + 1;
                                        Log.i("KiriKiriGame", "Bypassed boot-options window in " + file2.getName());
                                        i6 = i13;
                                        z2 = true;
                                        source = strReplace2;
                                    }
                                    Regex regex9 = p066z1.b.f6435a;
                                    Intrinsics.checkNotNullParameter(source, "source");
                                    regex2 = p066z1.b.f6435a;
                                    if (regex2.containsMatchIn(source)) {
                                        strReplace3 = null;
                                    } else {
                                        strReplace3 = regex2.replace(source, "");
                                    }
                                    if (strReplace3 != null) {
                                        i9 = i17 + 1;
                                        Log.i("KiriKiriGame", "Skipped desktop-only k2compat shims in " + file2.getName());
                                        source = strReplace3;
                                        i17 = i9;
                                        z2 = true;
                                        Regex regex10 = p066z1.c.f6436a;
                                        Intrinsics.checkNotNullParameter(source, "source");
                                        regex3 = p066z1.c.f6436a;
                                        if (!regex3.containsMatchIn(source)) {
                                            strReplace = regex3.replace(source, new C0373f1(11));
                                        }
                                        if (strReplace != null) {
                                            i8 = i4 + 1;
                                            Log.i("KiriKiriGame", "Pointed autopaths at extracted files in " + file2.getName());
                                            i4 = i8;
                                            source = strReplace;
                                            z2 = true;
                                        }
                                        strA = m.a(source);
                                        if (strA != null) {
                                            i16 = i3 + 1;
                                            Log.i("KiriKiriGame", "Guarded registerExEvent in " + file2.getName());
                                            source = strA;
                                            z2 = true;
                                        } else {
                                            i16 = i3;
                                        }
                                        if (z2) {
                                            d.d0(file2, fG2.b(source));
                                        }
                                    } else {
                                        Regex regex11 = p066z1.c.f6436a;
                                        Intrinsics.checkNotNullParameter(source, "source");
                                        regex3 = p066z1.c.f6436a;
                                        if (!regex3.containsMatchIn(source)) {
                                            strReplace = regex3.replace(source, new C0373f1(11));
                                        }
                                        if (strReplace != null) {
                                            i8 = i4 + 1;
                                            Log.i("KiriKiriGame", "Pointed autopaths at extracted files in " + file2.getName());
                                            i4 = i8;
                                            source = strReplace;
                                            z2 = true;
                                        }
                                        strA = m.a(source);
                                        if (strA != null) {
                                            i16 = i3 + 1;
                                            Log.i("KiriKiriGame", "Guarded registerExEvent in " + file2.getName());
                                            source = strA;
                                            z2 = true;
                                        } else {
                                            i16 = i3;
                                        }
                                        if (z2) {
                                            d.d0(file2, fG2.b(source));
                                        }
                                    }
                                }
                            } catch (Exception e11) {
                                e = e11;
                                i7 = i10;
                            }
                            i15 = i4;
                            i14 = i17;
                            it = it2;
                        } else {
                            i7 = i10;
                            i16 = i3;
                        }
                        if (StringsKt.equals(file2.getName(), "YesNoDialog.tjs", true) && (fG = a.G(FilesKt.readBytes(file2))) != null) {
                            String str = (String) fG.b;
                            if (!StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "MinHub:yesno-native-v2", false, 2, (Object) null) && StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "askYesNo", false, 2, (Object) null)) {
                                d.d0(file2, fG.b(StringsKt__StringsKt.trimEnd((CharSequence) StringsKt__StringsKt.substringBefore$default(str, "// [MinHub:yesno-native", (String) null, 2, (Object) null)).toString() + strN));
                                Log.i("KiriKiriGame", "Patched YesNoDialog.tjs: native yes/no override (" + file2.getAbsolutePath() + ")");
                            }
                        }
                        i10 = i7;
                    } catch (Exception e12) {
                        e = e12;
                        i10 = i7;
                        Log.w("KiriKiriGame", "Could not patch " + file2.getName() + ": " + e.getMessage());
                    }
                    i13 = i6;
                    i12 = i5;
                } catch (Exception e13) {
                    e = e13;
                    i16 = i3;
                    i13 = i6;
                    i12 = i5;
                    Log.w("KiriKiriGame", "Could not patch " + file2.getName() + ": " + e.getMessage());
                    i15 = i4;
                    i14 = i17;
                    it = it2;
                }
            } catch (Exception e14) {
                e = e14;
            }
            i15 = i4;
            i14 = i17;
            it = it2;
        }
        int i20 = i12;
        int i21 = i13;
        int i22 = i14;
        if (i10 > 0) {
            Log.i("KiriKiriGame", "Decrypted " + i10 + " obfuscated .tjs script(s)");
        }
        if (i11 > 0) {
            Log.i("KiriKiriGame", "Guarded Plugins.link in " + i11 + " script(s)");
        }
        if (i20 > 0) {
            Log.i("KiriKiriGame", "Neutralised createAppLock in " + i20 + " script(s)");
        }
        if (i21 > 0) {
            Log.i("KiriKiriGame", "Bypassed boot-options window in " + i21 + " script(s)");
        }
        if (i22 > 0) {
            Log.i("KiriKiriGame", "Skipped desktop-only k2compat shims in " + i22 + " script(s)");
        }
        if (i4 > 0) {
            Log.i("KiriKiriGame", "Pointed autopaths at extracted files in " + i4 + " script(s)");
        }
        if (i3 > 0) {
            Log.i("KiriKiriGame", "Guarded registerExEvent in " + i3 + " script(s)");
        }
    }
}
