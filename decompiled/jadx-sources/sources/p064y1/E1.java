package p064y1;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.Log;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.SetsKt;
import kotlin.collections.unsigned.a;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class E1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Set f6058a = SetsKt.setOf((Object[]) new String[]{"minhub_cache", "saves", "cache", "tl", ".minhub_tl_parked", "0x52-URM", "python-packages"});

    public static final void a(ArrayList arrayList, File file, int i3) {
        File[] fileArrListFiles;
        if (i3 <= 10 && (fileArrListFiles = file.listFiles()) != null) {
            for (File file2 : fileArrListFiles) {
                if (!file2.isDirectory()) {
                    String name = file2.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    if (StringsKt__StringsJVMKt.endsWith(name, ".model3.json", true)) {
                        arrayList.add(file2);
                    }
                } else if (i3 != 0 || !f6058a.contains(file2.getName())) {
                    Intrinsics.checkNotNull(file2);
                    a(arrayList, file2, i3 + 1);
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:107:0x027e A[Catch: all -> 0x027a, TRY_ENTER, TRY_LEAVE, TryCatch #6 {all -> 0x027a, blocks: (B:94:0x025f, B:96:0x0269, B:107:0x027e), top: B:165:0x025f, outer: #4 }] */
    /* JADX WARN: Code duplicated, block: B:117:0x02a0 A[Catch: all -> 0x0274, TRY_LEAVE, TryCatch #1 {all -> 0x0274, blocks: (B:128:0x0307, B:99:0x026f, B:110:0x0284, B:112:0x028d, B:114:0x0293, B:116:0x0299, B:117:0x02a0, B:125:0x02ff, B:126:0x0302), top: B:155:0x0307 }] */
    /* JADX WARN: Code duplicated, block: B:135:0x0348  */
    /* JADX WARN: Code duplicated, block: B:137:0x034b  */
    /* JADX WARN: Code duplicated, block: B:139:0x034e  */
    /* JADX WARN: Code duplicated, block: B:141:0x0351  */
    /* JADX WARN: Code duplicated, block: B:145:0x0365  */
    /* JADX WARN: Code duplicated, block: B:146:0x0368  */
    /* JADX WARN: Code duplicated, block: B:177:0x035f A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:181:0x0353 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:184:0x01c5 A[EDGE_INSN: B:184:0x01c5->B:74:0x01c5 BREAK  A[LOOP:2: B:163:0x01b0->B:73:0x01be], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:69:0x01a0 A[Catch: all -> 0x0156, TRY_LEAVE, TryCatch #2 {all -> 0x0156, blocks: (B:41:0x0131, B:44:0x013d, B:46:0x0145, B:48:0x014b, B:53:0x015f, B:55:0x0167, B:57:0x0175, B:62:0x0183, B:64:0x0189, B:66:0x0193, B:68:0x019d, B:69:0x01a0), top: B:157:0x0131 }] */
    /* JADX WARN: Code duplicated, block: B:73:0x01be A[Catch: all -> 0x01d8, LOOP:2: B:163:0x01b0->B:73:0x01be, LOOP_END, TryCatch #5 {all -> 0x01d8, blocks: (B:71:0x01b0, B:73:0x01be, B:74:0x01c5, B:76:0x01d5, B:79:0x01db, B:81:0x01f7), top: B:163:0x01b0 }] */
    /* JADX WARN: Code duplicated, block: B:76:0x01d5 A[Catch: all -> 0x01d8, TryCatch #5 {all -> 0x01d8, blocks: (B:71:0x01b0, B:73:0x01be, B:74:0x01c5, B:76:0x01d5, B:79:0x01db, B:81:0x01f7), top: B:163:0x01b0 }] */
    /* JADX WARN: Code duplicated, block: B:79:0x01db A[Catch: all -> 0x01d8, TryCatch #5 {all -> 0x01d8, blocks: (B:71:0x01b0, B:73:0x01be, B:74:0x01c5, B:76:0x01d5, B:79:0x01db, B:81:0x01f7), top: B:163:0x01b0 }] */
    /* JADX WARN: Code duplicated, block: B:81:0x01f7 A[Catch: all -> 0x01d8, TRY_LEAVE, TryCatch #5 {all -> 0x01d8, blocks: (B:71:0x01b0, B:73:0x01be, B:74:0x01c5, B:76:0x01d5, B:79:0x01db, B:81:0x01f7), top: B:163:0x01b0 }] */
    /* JADX WARN: Code duplicated, block: B:86:0x022d  */
    /* JADX WARN: Code duplicated, block: B:89:0x0236 A[Catch: all -> 0x022a, TryCatch #7 {all -> 0x022a, blocks: (B:83:0x021d, B:87:0x0230, B:89:0x0236, B:90:0x0239), top: B:167:0x021d }] */
    /* JADX WARN: Code duplicated, block: B:96:0x0269 A[Catch: all -> 0x027a, TRY_LEAVE, TryCatch #6 {all -> 0x027a, blocks: (B:94:0x025f, B:96:0x0269, B:107:0x027e), top: B:165:0x025f, outer: #4 }] */
    /* JADX WARN: Instruction removed from duplicated block: B:117:0x02a0, please report this as an issue */
    public static D1 b(File root) throws IOException {
        Object objM9constructorimpl;
        Iterator it;
        int i3;
        ArrayList arrayList;
        String str;
        File file;
        C1 c3;
        int iOrdinal;
        long jCurrentTimeMillis;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        Bitmap bitmapDecodeFile;
        int iMax;
        Bitmap bitmapCreateScaledBitmap;
        File parentFile;
        File file2;
        BufferedOutputStream bufferedOutputStream;
        String text$default;
        String invariantSeparatorsPath;
        Intrinsics.checkNotNullParameter(root, "root");
        long jCurrentTimeMillis2 = System.currentTimeMillis();
        File gameDir = c(root);
        String str2 = "gameDir";
        Intrinsics.checkNotNullParameter(gameDir, "gameDir");
        ArrayList arrayList2 = new ArrayList();
        int i9 = 0;
        a(arrayList2, gameDir, 0);
        int size = arrayList2.size();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i9 < size) {
            int i13 = i9 + 1;
            File file3 = (File) arrayList2.get(i9);
            try {
                Result.Companion companion = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(f(FilesKt.readText(file3, Charsets.UTF_8)));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
            }
            Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(objM9constructorimpl);
            if (thM12exceptionOrNullimpl != null) {
                Log.w("RenpyLive2DTextures", "Unreadable model " + file3.getName() + ": " + thM12exceptionOrNullimpl.getMessage());
                objM9constructorimpl = CollectionsKt.emptyList();
            }
            Iterator it2 = ((List) objM9constructorimpl).iterator();
            while (it2.hasNext()) {
                Object next = it2.next();
                Intrinsics.checkNotNullExpressionValue(next, "next(...)");
                File source = new File(file3.getParentFile(), (String) next);
                if (source.isFile()) {
                    String canonicalPath = source.getCanonicalPath();
                    Intrinsics.checkNotNullExpressionValue(canonicalPath, "getCanonicalPath(...)");
                    it = it2;
                    if (StringsKt.N(canonicalPath, gameDir.getCanonicalPath() + File.separator)) {
                        Intrinsics.checkNotNullParameter(gameDir, str2);
                        Intrinsics.checkNotNullParameter(source, "source");
                        File canonicalFile = gameDir.getCanonicalFile();
                        File canonicalFile2 = source.getCanonicalFile();
                        Intrinsics.checkNotNull(canonicalFile2);
                        Intrinsics.checkNotNull(canonicalFile);
                        File fileRelativeToOrNull = FilesKt.relativeToOrNull(canonicalFile2, canonicalFile);
                        File target = (fileRelativeToOrNull == null || (invariantSeparatorsPath = FilesKt.getInvariantSeparatorsPath(fileRelativeToOrNull)) == null || StringsKt.N(invariantSeparatorsPath, "..") || StringsKt.N(invariantSeparatorsPath, "minhub_cache/live2d")) ? null : new File(canonicalFile, "minhub_cache/live2d/".concat(invariantSeparatorsPath));
                        if (target != null) {
                            try {
                                BitmapFactory.Options options = new BitmapFactory.Options();
                                options.inJustDecodeBounds = true;
                                BitmapFactory.decodeFile(source.getPath(), options);
                                int i14 = options.outWidth;
                                try {
                                    if (i14 > 0) {
                                        str = str2;
                                        try {
                                            int i15 = options.outHeight;
                                            if (i15 > 0) {
                                                if (Math.max(i14, i15) <= 4096) {
                                                    if (target.exists()) {
                                                        target.delete();
                                                        d(target).delete();
                                                    }
                                                    c3 = C1.f6044d;
                                                } else {
                                                    Intrinsics.checkNotNullParameter(source, "source");
                                                    Intrinsics.checkNotNullParameter(target, "target");
                                                    if (target.isFile()) {
                                                        File fileD = d(target);
                                                        if (!fileD.isFile()) {
                                                            fileD = null;
                                                        }
                                                        if (Intrinsics.areEqual((fileD == null || (text$default = FilesKt__FileReadWriteKt.readText$default(fileD, null, 1, null)) == null) ? null : StringsKt.trim((CharSequence) text$default).toString(), e(source))) {
                                                            c3 = C1.f6043c;
                                                        } else {
                                                            jCurrentTimeMillis = System.currentTimeMillis();
                                                            BitmapFactory.Options options2 = new BitmapFactory.Options();
                                                            i4 = options.outWidth;
                                                            i5 = options.outHeight;
                                                            file = source;
                                                            i6 = 1;
                                                            while (true) {
                                                                try {
                                                                    i7 = i4;
                                                                    i8 = i5;
                                                                    if (Math.max(i4, i5) / i6 > 4096) {
                                                                        break;
                                                                    }
                                                                    i6 *= 2;
                                                                    i5 = i8;
                                                                    i4 = i7;
                                                                } catch (Throwable th2) {
                                                                    th = th2;
                                                                    arrayList = arrayList2;
                                                                    i3 = size;
                                                                    Log.w("RenpyLive2DTextures", "Could not prepare " + file.getName() + ": " + th.getMessage());
                                                                    new File(a.g(target.getPath(), ".tmp")).delete();
                                                                    c3 = C1.f6045e;
                                                                    iOrdinal = c3.ordinal();
                                                                    if (iOrdinal == 0) {
                                                                        i10++;
                                                                    } else if (iOrdinal == 1) {
                                                                        i11++;
                                                                    } else if (iOrdinal == 2) {
                                                                        continue;
                                                                    } else {
                                                                        if (iOrdinal != 3) {
                                                                            throw new NoWhenBranchMatchedException();
                                                                        }
                                                                        i12++;
                                                                    }
                                                                    it2 = it;
                                                                    gameDir = gameDir;
                                                                    str2 = str;
                                                                    arrayList2 = arrayList;
                                                                    size = i3;
                                                                }
                                                            }
                                                            options2.inSampleSize = i6;
                                                            options2.inPreferredConfig = Bitmap.Config.ARGB_8888;
                                                            bitmapDecodeFile = BitmapFactory.decodeFile(file.getPath(), options2);
                                                            if (bitmapDecodeFile == null) {
                                                                c3 = C1.f6045e;
                                                            } else {
                                                                iMax = Math.max(bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight());
                                                                if (Math.max(bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight()) > 4096) {
                                                                    float fMax = 4096 / Math.max(bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight());
                                                                    arrayList = arrayList2;
                                                                    try {
                                                                        bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeFile, (int) (bitmapDecodeFile.getWidth() * fMax), (int) (bitmapDecodeFile.getHeight() * fMax), true);
                                                                        Intrinsics.checkNotNullExpressionValue(bitmapCreateScaledBitmap, "createScaledBitmap(...)");
                                                                        bitmapDecodeFile.recycle();
                                                                    } catch (Throwable th3) {
                                                                        th = th3;
                                                                        i3 = size;
                                                                        Log.w("RenpyLive2DTextures", "Could not prepare " + file.getName() + ": " + th.getMessage());
                                                                        new File(a.g(target.getPath(), ".tmp")).delete();
                                                                        c3 = C1.f6045e;
                                                                    }
                                                                } else {
                                                                    arrayList = arrayList2;
                                                                    bitmapCreateScaledBitmap = bitmapDecodeFile;
                                                                }
                                                                parentFile = target.getParentFile();
                                                                if (parentFile != null) {
                                                                    parentFile.mkdirs();
                                                                }
                                                                file2 = new File(target.getPath() + ".tmp");
                                                                try {
                                                                    i3 = size;
                                                                    try {
                                                                        bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2), 8192);
                                                                        try {
                                                                            if (bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.PNG, 100, bufferedOutputStream)) {
                                                                                Unit unit = Unit.INSTANCE;
                                                                                CloseableKt.closeFinally(bufferedOutputStream, null);
                                                                                bitmapCreateScaledBitmap.recycle();
                                                                                if (!file2.renameTo(target) || (target.delete() && file2.renameTo(target))) {
                                                                                    FilesKt__FileReadWriteKt.writeText$default(d(target), e(file), null, 2, null);
                                                                                    Log.i("RenpyLive2DTextures", file.getName() + " " + options.outWidth + "x" + options.outHeight + " -> " + Math.min(iMax, 4096) + "px copy in " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
                                                                                    c3 = C1.b;
                                                                                } else {
                                                                                    file2.delete();
                                                                                    c3 = C1.f6045e;
                                                                                }
                                                                            } else {
                                                                                c3 = C1.f6045e;
                                                                                CloseableKt.closeFinally(bufferedOutputStream, null);
                                                                                bitmapCreateScaledBitmap.recycle();
                                                                            }
                                                                        } catch (Throwable th4) {
                                                                            try {
                                                                                throw th4;
                                                                            } catch (Throwable th5) {
                                                                                CloseableKt.closeFinally(bufferedOutputStream, th4);
                                                                                throw th5;
                                                                            }
                                                                        }
                                                                    } catch (Throwable th6) {
                                                                        th = th6;
                                                                        bitmapCreateScaledBitmap.recycle();
                                                                        throw th;
                                                                    }
                                                                } catch (Throwable th7) {
                                                                    th = th7;
                                                                    i3 = size;
                                                                }
                                                            }
                                                        }
                                                    } else {
                                                        jCurrentTimeMillis = System.currentTimeMillis();
                                                        BitmapFactory.Options options3 = new BitmapFactory.Options();
                                                        i4 = options.outWidth;
                                                        i5 = options.outHeight;
                                                        file = source;
                                                        i6 = 1;
                                                        while (true) {
                                                            i7 = i4;
                                                            i8 = i5;
                                                            if (Math.max(i4, i5) / i6 > 4096) {
                                                                break;
                                                                break;
                                                            }
                                                            i6 *= 2;
                                                            i5 = i8;
                                                            i4 = i7;
                                                        }
                                                        options3.inSampleSize = i6;
                                                        options3.inPreferredConfig = Bitmap.Config.ARGB_8888;
                                                        bitmapDecodeFile = BitmapFactory.decodeFile(file.getPath(), options3);
                                                        if (bitmapDecodeFile == null) {
                                                            c3 = C1.f6045e;
                                                        } else {
                                                            iMax = Math.max(bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight());
                                                            if (Math.max(bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight()) > 4096) {
                                                                float fMax2 = 4096 / Math.max(bitmapDecodeFile.getWidth(), bitmapDecodeFile.getHeight());
                                                                arrayList = arrayList2;
                                                                bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmapDecodeFile, (int) (bitmapDecodeFile.getWidth() * fMax2), (int) (bitmapDecodeFile.getHeight() * fMax2), true);
                                                                Intrinsics.checkNotNullExpressionValue(bitmapCreateScaledBitmap, "createScaledBitmap(...)");
                                                                bitmapDecodeFile.recycle();
                                                            } else {
                                                                arrayList = arrayList2;
                                                                bitmapCreateScaledBitmap = bitmapDecodeFile;
                                                            }
                                                            parentFile = target.getParentFile();
                                                            if (parentFile != null) {
                                                                parentFile.mkdirs();
                                                            }
                                                            file2 = new File(target.getPath() + ".tmp");
                                                            i3 = size;
                                                            bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(file2), 8192);
                                                            if (bitmapCreateScaledBitmap.compress(Bitmap.CompressFormat.PNG, 100, bufferedOutputStream)) {
                                                                c3 = C1.f6045e;
                                                                CloseableKt.closeFinally(bufferedOutputStream, null);
                                                                bitmapCreateScaledBitmap.recycle();
                                                            } else {
                                                                Unit unit2 = Unit.INSTANCE;
                                                                CloseableKt.closeFinally(bufferedOutputStream, null);
                                                                bitmapCreateScaledBitmap.recycle();
                                                                if (file2.renameTo(target)) {
                                                                    FilesKt__FileReadWriteKt.writeText$default(d(target), e(file), null, 2, null);
                                                                    Log.i("RenpyLive2DTextures", file.getName() + " " + options.outWidth + "x" + options.outHeight + " -> " + Math.min(iMax, 4096) + "px copy in " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
                                                                    c3 = C1.b;
                                                                } else {
                                                                    FilesKt__FileReadWriteKt.writeText$default(d(target), e(file), null, 2, null);
                                                                    Log.i("RenpyLive2DTextures", file.getName() + " " + options.outWidth + "x" + options.outHeight + " -> " + Math.min(iMax, 4096) + "px copy in " + (System.currentTimeMillis() - jCurrentTimeMillis) + " ms");
                                                                    c3 = C1.b;
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                arrayList = arrayList2;
                                                i3 = size;
                                            }
                                        } catch (Throwable th8) {
                                            th = th8;
                                            file = source;
                                        }
                                        iOrdinal = c3.ordinal();
                                        if (iOrdinal == 0) {
                                            i10++;
                                        } else if (iOrdinal == 1) {
                                            i11++;
                                        } else if (iOrdinal == 2) {
                                            continue;
                                        } else {
                                            if (iOrdinal != 3) {
                                                throw new NoWhenBranchMatchedException();
                                            }
                                            i12++;
                                        }
                                    } else {
                                        str = str2;
                                    }
                                    c3 = C1.f6045e;
                                } catch (Throwable th9) {
                                    th = th9;
                                    Log.w("RenpyLive2DTextures", "Could not prepare " + file.getName() + ": " + th.getMessage());
                                    new File(a.g(target.getPath(), ".tmp")).delete();
                                    c3 = C1.f6045e;
                                }
                                file = source;
                                arrayList = arrayList2;
                                i3 = size;
                            } catch (Throwable th10) {
                                th = th10;
                                file = source;
                                str = str2;
                            }
                            iOrdinal = c3.ordinal();
                            if (iOrdinal == 0) {
                                i10++;
                            } else if (iOrdinal == 1) {
                                i11++;
                            } else if (iOrdinal == 2) {
                                continue;
                            } else {
                                if (iOrdinal != 3) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                i12++;
                            }
                        }
                        it2 = it;
                        gameDir = gameDir;
                        str2 = str;
                        arrayList2 = arrayList;
                        size = i3;
                    }
                    str = str2;
                    arrayList = arrayList2;
                    i3 = size;
                    it2 = it;
                    gameDir = gameDir;
                    str2 = str;
                    arrayList2 = arrayList;
                    size = i3;
                } else {
                    it = it2;
                }
                gameDir = gameDir;
                str = str2;
                arrayList = arrayList2;
                i3 = size;
                it2 = it;
                gameDir = gameDir;
                str2 = str;
                arrayList2 = arrayList;
                size = i3;
            }
            i9 = i13;
            jCurrentTimeMillis2 = jCurrentTimeMillis2;
        }
        D1 d3 = new D1(i10, i11, i12, System.currentTimeMillis() - jCurrentTimeMillis2);
        if (i10 + i12 > 0) {
            Log.i("RenpyLive2DTextures", "Live2D textures for " + root.getName() + ": " + d3);
        }
        return d3;
    }

    public static File c(File root) {
        Intrinsics.checkNotNullParameter(root, "root");
        File file = new File(root, "game");
        return (file.isDirectory() && new File(file, "start.rpyc").exists()) ? file : root;
    }

    public static File d(File target) {
        Intrinsics.checkNotNullParameter(target, "target");
        return new File(a.g(target.getPath(), ".minhub-source"));
    }

    public static String e(File source) {
        Intrinsics.checkNotNullParameter(source, "source");
        return source.length() + ":" + source.lastModified();
    }

    public static List f(String modelJson) {
        JSONArray jSONArrayOptJSONArray;
        Intrinsics.checkNotNullParameter(modelJson, "modelJson");
        JSONObject jSONObjectOptJSONObject = new JSONObject(modelJson).optJSONObject("FileReferences");
        if (jSONObjectOptJSONObject == null || (jSONArrayOptJSONArray = jSONObjectOptJSONObject.optJSONArray("Textures")) == null) {
            return CollectionsKt.emptyList();
        }
        IntRange intRangeUntil = RangesKt.until(0, jSONArrayOptJSONArray.length());
        ArrayList arrayList = new ArrayList();
        Iterator<Integer> it = intRangeUntil.iterator();
        while (it.hasNext()) {
            String strOptString = jSONArrayOptJSONArray.optString(((IntIterator) it).nextInt());
            if (StringsKt.isBlank(strOptString)) {
                strOptString = null;
            }
            if (strOptString != null) {
                arrayList.add(strOptString);
            }
        }
        return arrayList;
    }
}
