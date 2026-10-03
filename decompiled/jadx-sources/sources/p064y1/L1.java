package p064y1;

import C1.ViewOnClickListenerC0122z;
import E.b;
import L1.e;
import S1.d;
import android.app.Activity;
import android.net.Uri;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebResourceResponse;
import android.widget.Button;
import androidx.core.view.MotionEventCompat;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.DataEncryptor;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.data.RenpyTagFixer;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.URI;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import java.util.zip.Inflater;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.UByte;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.IntIterator;
import kotlin.collections.MapsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.CharsKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONArray;
import org.json.JSONObject;
import p000a.a;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;
import p023i1.l;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class L1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final byte[] f6100a = {82, 80, 71, 77, 86, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0};
    public static volatile boolean b;

    public static void A(File gameDir) throws IOException {
        Intrinsics.checkNotNullParameter(gameDir, "gameDir");
        if (n(gameDir)) {
            return;
        }
        File file = new File(gameDir, "game.zip");
        if (!file.exists()) {
            b.x("game.zip not found in ", gameDir.getName(), "MinHub-RenpyExtract");
            return;
        }
        new File(gameDir, "__renpy_manifest__.json").delete();
        FilesKt.deleteRecursively(new File(gameDir, "__renpy_game__"));
        File file2 = new File(gameDir, "__renpy_game__");
        file2.mkdirs();
        File canonicalFile = file2.getCanonicalFile();
        ArrayList arrayList = new ArrayList();
        try {
            ZipInputStream zipInputStream = new ZipInputStream(new BufferedInputStream(new FileInputStream(file), 8192));
            try {
                for (ZipEntry nextEntry = zipInputStream.getNextEntry(); nextEntry != null; nextEntry = zipInputStream.getNextEntry()) {
                    String name = nextEntry.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    String strF = StringsKt.F(name, '\\', '/');
                    Intrinsics.checkNotNull(canonicalFile);
                    File fileH = a.H(canonicalFile, strF);
                    if (nextEntry.isDirectory()) {
                        fileH.mkdirs();
                    } else {
                        File parentFile = fileH.getParentFile();
                        if (parentFile != null) {
                            parentFile.mkdirs();
                        }
                        BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileH), 8192);
                        try {
                            ByteStreamsKt.copyTo$default(zipInputStream, bufferedOutputStream, 0, 2, null);
                            CloseableKt.closeFinally(bufferedOutputStream, null);
                            arrayList.add(MapsKt.mapOf(TuplesKt.to("path", strF), TuplesKt.to("size", Long.valueOf(fileH.length()))));
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(bufferedOutputStream, th);
                                throw th2;
                            }
                        }
                    }
                    zipInputStream.closeEntry();
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(zipInputStream, null);
                String strG = new l().g(MapsKt.mapOf(TuplesKt.to("files", arrayList)));
                File file3 = new File(gameDir, "__renpy_manifest__.json");
                Intrinsics.checkNotNull(strG);
                FilesKt.writeText(file3, strG, Charsets.UTF_8);
                Log.i("MinHub-RenpyExtract", "Prepared " + arrayList.size() + " files from " + file.getName() + " in " + gameDir.getName());
                try {
                    RenpyTagFixer.INSTANCE.fixTlFolder(file2);
                } catch (Exception unused) {
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    CloseableKt.closeFinally(zipInputStream, th3);
                    throw th4;
                }
            }
        } catch (Exception e2) {
            Log.e("MinHub-RenpyExtract", "Extraction failed for " + gameDir.getName(), e2);
            new File(gameDir, "__renpy_manifest__.json").delete();
            FilesKt.deleteRecursively(file2);
        }
    }

    public static final boolean B(boolean z2, I1 i3, String str) {
        if (z2 && i3 != null && str.length() > 0 && !Intrinsics.areEqual(str, "None") && !StringsKt.N(str, ".")) {
            for (int i4 = 0; i4 < str.length(); i4++) {
                char cCharAt = str.charAt(i4);
                if (cCharAt != '/' && cCharAt != '\\') {
                }
            }
            if (i3.b.contains(str) && !Intrinsics.areEqual(str, i3.f6088a)) {
                return true;
            }
        }
        return false;
    }

    public static P0 C(File pack) {
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(pack, "pack");
        try {
            Result.Companion companion = Result.INSTANCE;
            if (!StringsKt.equals(FilesKt.getExtension(pack), "pck", true)) {
                return null;
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(pack, "r");
            try {
                byte[] bArr = new byte[20];
                randomAccessFile.readFully(bArr);
                if (!Intrinsics.areEqual(new String(bArr, 0, 4, Charsets.US_ASCII), "GDPC")) {
                    CloseableKt.closeFinally(randomAccessFile, null);
                    return null;
                }
                P0 p0 = new P0(D(bArr, 8), D(bArr, 12), D(bArr, 16));
                CloseableKt.closeFinally(randomAccessFile, null);
                objM9constructorimpl = Result.m9constructorimpl(p0);
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    CloseableKt.closeFinally(randomAccessFile, th);
                    throw th2;
                }
            }
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        } catch (Throwable th3) {
            Result.Companion companion3 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th3));
        }
        return (P0) (Result.m15isFailureimpl(objM9constructorimpl) ? null : objM9constructorimpl);
    }

    public static final int D(byte[] bArr, int i3) {
        return ((bArr[i3 + 3] & UByte.MAX_VALUE) << 24) | (bArr[i3] & UByte.MAX_VALUE) | ((bArr[i3 + 1] & UByte.MAX_VALUE) << 8) | ((bArr[i3 + 2] & UByte.MAX_VALUE) << 16);
    }

    public static long E(RandomAccessFile randomAccessFile) throws IOException {
        byte[] bArr = new byte[8];
        randomAccessFile.readFully(bArr);
        return p(bArr, 0);
    }

    public static String F(String str, String str2, String str3) {
        String strSubstring = str.substring(0, str.length() - str2.length());
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        return kotlin.collections.unsigned.a.g(strSubstring, str3);
    }

    public static final T1 G(Game game, boolean z2) {
        Intrinsics.checkNotNullParameter(game, "game");
        Intrinsics.checkNotNullParameter(game, "game");
        String iconPath = game.getIconPath();
        String str = null;
        if (iconPath == null || StringsKt.isBlank(iconPath)) {
            iconPath = null;
        }
        if (iconPath != null && !z2) {
            str = iconPath;
        }
        return new T1(str, str == null);
    }

    public static final String H(int i3) {
        return StringsKt.trimIndent("\n        begin\n          vol = " + RangesKt.coerceIn(i3, 0, 100) + "\n          if defined?(Audio)\n            [:bgm_vol=, :bgs_vol=, :se_vol=, :me_vol=].each do |setter|\n              Audio.send(setter, vol) if Audio.respond_to?(setter)\n            end\n          end\n        rescue\n        end\n    ");
    }

    public static final WebResourceResponse a(C0375g0 c0375g0, String url) {
        File fileB;
        Intrinsics.checkNotNullParameter(c0375g0, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        if (StringsKt__StringsJVMKt.startsWith(url, "file://", true)) {
            try {
                File fileH = h(url);
                if (fileH != null && !fileH.exists() && (fileB = b(fileH, 4)) != null) {
                    Log.d("MinHub-CaseFix", fileH.getName() + " → " + fileB.getAbsolutePath());
                    String name = fileB.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    return new WebResourceResponse(k(name), null, new FileInputStream(fileB));
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static final File b(File target, int i3) {
        File parentFile;
        Intrinsics.checkNotNullParameter(target, "target");
        if (i3 <= 0 || (parentFile = target.getParentFile()) == null) {
            return null;
        }
        if (!parentFile.exists() && (parentFile = b(parentFile, i3 - 1)) == null) {
            return null;
        }
        String name = target.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        String lowerCase = name.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        File[] fileArrListFiles = parentFile.listFiles();
        if (fileArrListFiles == null) {
            return null;
        }
        for (File file : fileArrListFiles) {
            String name2 = file.getName();
            Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
            String lowerCase2 = name2.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
            if (Intrinsics.areEqual(lowerCase2, lowerCase)) {
                return file;
            }
        }
        return null;
    }

    public static void c(File file, File file2, ArrayList arrayList) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file3 : fileArrListFiles) {
                if (file3.isDirectory()) {
                    Intrinsics.checkNotNull(file3);
                    c(file3, file2, arrayList);
                } else if (file3.isFile()) {
                    Intrinsics.checkNotNull(file3);
                    String path = FilesKt.relativeTo(file3, file2).getPath();
                    Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
                    arrayList.add(StringsKt.F(path, '\\', '/'));
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:4:0x001a  */
    /* JADX WARN: Code duplicated, block: B:63:0x00c3  */
    public static boolean d(File file) {
        Integer numValueOf;
        Intrinsics.checkNotNullParameter(file, "file");
        byte[] data = FilesKt.readBytes(file);
        Intrinsics.checkNotNullParameter(data, "data");
        Intrinsics.checkNotNullParameter(data, "data");
        byte[] bArr = null;
        if (data.length < 2) {
            numValueOf = null;
        } else {
            int i3 = data[0] & UByte.MAX_VALUE;
            int i4 = data[1] & UByte.MAX_VALUE;
            if ((i3 == 255 && i4 == 254) || (i3 == 254 && i4 == 254)) {
                numValueOf = null;
            } else {
                int i5 = i3 ^ 255;
                if ((i4 ^ i5) != 254) {
                    numValueOf = null;
                } else {
                    numValueOf = Integer.valueOf(i5);
                }
            }
        }
        if (numValueOf != null) {
            int iIntValue = numValueOf.intValue();
            int length = data.length;
            byte[] decrypted = new byte[length];
            for (int i6 = 0; i6 < length; i6++) {
                decrypted[i6] = (byte) ((data[i6] & UByte.MAX_VALUE) ^ iIntValue);
            }
            Intrinsics.checkNotNullParameter(decrypted, "decrypted");
            if (length == 2) {
                bArr = decrypted;
            } else if (length % 2 == 0) {
                String str = new String(decrypted, 2, Math.min(length - 2, 2048), Charsets.UTF_16LE);
                if (str.length() == 0) {
                    bArr = decrypted;
                } else if (!StringsKt__StringsKt.contains$default((CharSequence) str, (char) 0, false, 2, (Object) null)) {
                    int i7 = 0;
                    for (int i8 = 0; i8 < str.length(); i8++) {
                        char cCharAt = str.charAt(i8);
                        if (cCharAt == '\n' || cCharAt == '\r' || cCharAt == '\t' || ((' ' <= cCharAt && cCharAt < 127) || ((12288 <= cCharAt && cCharAt < 12544) || ((19968 <= cCharAt && cCharAt < 40960) || (65280 <= cCharAt && cCharAt < 65520))))) {
                            i7++;
                        }
                    }
                    if (i7 * 10 >= str.length() * 9) {
                        bArr = decrypted;
                    }
                }
            }
        }
        if (bArr == null) {
            return false;
        }
        FilesKt.writeBytes(file, bArr);
        return true;
    }

    public static final WebResourceResponse e(C0375g0 c0375g0, String url) {
        File parentFile;
        ByteArrayInputStream byteArrayInputStreamDecryptFile;
        Intrinsics.checkNotNullParameter(c0375g0, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        if (!StringsKt__StringsJVMKt.startsWith(url, "file://", true)) {
            return null;
        }
        String strSubstringBefore$default = StringsKt__StringsKt.substringBefore$default(StringsKt__StringsKt.substringBefore$default(url, '?', (String) null, 2, (Object) null), '#', (String) null, 2, (Object) null);
        if (!StringsKt__StringsJVMKt.endsWith(strSubstringBefore$default, ".json", true)) {
            return null;
        }
        String lowerCase = strSubstringBefore$default.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
        if (!StringsKt__StringsKt.contains$default((CharSequence) lowerCase, (CharSequence) "/data/", false, 2, (Object) null)) {
            return null;
        }
        try {
            File fileH = h(strSubstringBefore$default);
            if (fileH != null && (parentFile = fileH.getParentFile()) != null) {
                File file = new File(parentFile, fileH.getName() + ".enc");
                if (file.exists() && (byteArrayInputStreamDecryptFile = DataEncryptor.INSTANCE.decryptFile(file)) != null) {
                    Log.d("MinHub-Enc", "Served decrypted: " + fileH.getName());
                    return new WebResourceResponse("application/json", "UTF-8", byteArrayInputStreamDecryptFile);
                }
                return null;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String f(File file) {
        byte[] bArr;
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
        try {
            ArrayList arrayListR = r(randomAccessFile);
            if (arrayListR == null) {
                CloseableKt.closeFinally(randomAccessFile, null);
                return null;
            }
            ArrayList arrayList = new ArrayList();
            int size = arrayListR.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayListR.get(i3);
                i3++;
                C0408r1 c0408r1 = (C0408r1) obj;
                if (!c0408r1.f6339c && c0408r1.f6341e >= 4) {
                    String lowerCase = c0408r1.f6338a.toLowerCase(Locale.ROOT);
                    Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                    if (StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".png", false, 2, null)) {
                        bArr = new byte[]{-119, 80, 78, 71};
                    } else if (StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".ogg", false, 2, null)) {
                        bArr = new byte[]{79, 103, 103, 83};
                    } else {
                        bArr = StringsKt__StringsJVMKt.endsWith$default(lowerCase, ".tlg", false, 2, null) ? new byte[]{84, 76, 71, 48} : null;
                    }
                    if (bArr != null) {
                        byte[] bArr2 = new byte[4];
                        randomAccessFile.seek(c0408r1.f6340d);
                        if (randomAccessFile.read(bArr2) == 4) {
                            int i4 = (bArr2[0] & UByte.MAX_VALUE) ^ (bArr[0] & UByte.MAX_VALUE);
                            int i5 = 1;
                            while (true) {
                                if (i5 >= 4) {
                                    arrayList.add(TuplesKt.to(Integer.valueOf(i4), Long.valueOf(c0408r1.b)));
                                    if (arrayList.size() < 8) {
                                        break;
                                    }
                                    break;
                                }
                                if (((bArr2[i5] & UByte.MAX_VALUE) ^ i4) != (bArr[i5] & UByte.MAX_VALUE)) {
                                    break;
                                }
                                i5++;
                            }
                        } else {
                            continue;
                        }
                    }
                }
            }
            if (arrayList.isEmpty()) {
                CloseableKt.closeFinally(randomAccessFile, null);
                return null;
            }
            if (!arrayList.isEmpty()) {
                int size2 = arrayList.size();
                int i6 = 0;
                while (i6 < size2) {
                    Object obj2 = arrayList.get(i6);
                    i6++;
                    if (((Number) ((Pair) obj2).getFirst()).intValue() != 0) {
                        if (!arrayList.isEmpty()) {
                            int size3 = arrayList.size();
                            int i7 = 0;
                            while (i7 < size3) {
                                Object obj3 = arrayList.get(i7);
                                i7++;
                                Pair pair = (Pair) obj3;
                                if (((Number) pair.getFirst()).intValue() != ((int) ((((Number) pair.getSecond()).longValue() >>> 3) & 255))) {
                                    if (!arrayList.isEmpty()) {
                                        int size4 = arrayList.size();
                                        int i8 = 0;
                                        while (i8 < size4) {
                                            Object obj4 = arrayList.get(i8);
                                            i8++;
                                            Pair pair2 = (Pair) obj4;
                                            if (((Number) pair2.getFirst()).intValue() != ((int) (((Number) pair2.getSecond()).longValue() & 255))) {
                                                int iIntValue = ((Number) ((Pair) arrayList.get(0)).getFirst()).intValue();
                                                if (!arrayList.isEmpty()) {
                                                    int size5 = arrayList.size();
                                                    int i9 = 0;
                                                    while (i9 < size5) {
                                                        Object obj5 = arrayList.get(i9);
                                                        i9++;
                                                        if (((Number) ((Pair) obj5).getFirst()).intValue() != iIntValue) {
                                                            CloseableKt.closeFinally(randomAccessFile, null);
                                                            return null;
                                                        }
                                                    }
                                                }
                                                if (!arrayList.isEmpty()) {
                                                    int size6 = arrayList.size();
                                                    int i10 = 0;
                                                    while (i10 < size6) {
                                                        Object obj6 = arrayList.get(i10);
                                                        i10++;
                                                        if (((Number) ((Pair) obj6).getSecond()).longValue() != ((Number) ((Pair) arrayList.get(0)).getSecond()).longValue()) {
                                                            String string = Integer.toString(iIntValue, CharsKt.checkRadix(16));
                                                            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                                                            String str = "0x" + string;
                                                            CloseableKt.closeFinally(randomAccessFile, null);
                                                            return str;
                                                        }
                                                    }
                                                }
                                                CloseableKt.closeFinally(randomAccessFile, null);
                                                return null;
                                            }
                                        }
                                    }
                                    CloseableKt.closeFinally(randomAccessFile, null);
                                    return "h";
                                }
                            }
                        }
                        CloseableKt.closeFinally(randomAccessFile, null);
                        return "h>>3";
                    }
                }
            }
            CloseableKt.closeFinally(randomAccessFile, null);
            return "PLAIN";
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                CloseableKt.closeFinally(randomAccessFile, th);
                throw th2;
            }
        }
    }

    public static boolean g(Activity activity, GameEngine gameEngine) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Set set = AbstractC0388k1.f6272a;
        EnumC0391l1 feature = EnumC0391l1.b;
        boolean zP = d.p(activity);
        Intrinsics.checkNotNullParameter(feature, "feature");
        if (!CollectionsKt.contains(AbstractC0388k1.f6272a, gameEngine)) {
            zP = true;
        }
        if (zP) {
            return true;
        }
        Intrinsics.checkNotNullParameter(activity, "activity");
        View viewInflate = activity.getLayoutInflater().inflate(R.layout.dialog_cheat_patreon, (ViewGroup) null);
        O0.b bVar = new O0.b(activity, 0);
        ((C0240b) bVar.f4145c).f4112t = viewInflate;
        DialogInterfaceC0245g dialogInterfaceC0245gC = bVar.c();
        Intrinsics.checkNotNullExpressionValue(dialogInterfaceC0245gC, "create(...)");
        Window window = dialogInterfaceC0245gC.getWindow();
        if (window != null) {
            window.setBackgroundDrawableResource(android.R.color.transparent);
        }
        ((Button) viewInflate.findViewById(R.id.btn_cheat_patreon_ok)).setOnClickListener(new ViewOnClickListenerC0122z(dialogInterfaceC0245gC, 8));
        dialogInterfaceC0245gC.show();
        return false;
    }

    public static final File h(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        try {
            URI uri = new URI(url);
            if (StringsKt.equals(uri.getScheme(), "file", true)) {
                return new File(uri);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static final String i(int i3) {
        if (i3 == 96) {
            return "KEYCODE_BUTTON_A";
        }
        if (i3 == 97) {
            return "KEYCODE_BUTTON_B";
        }
        if (i3 == 99) {
            return "KEYCODE_BUTTON_X";
        }
        if (i3 == 100) {
            return "KEYCODE_BUTTON_Y";
        }
        if (i3 == 102) {
            return "KEYCODE_BUTTON_L1";
        }
        if (i3 == 103) {
            return "KEYCODE_BUTTON_R1";
        }
        if (i3 == 108) {
            return "KEYCODE_BUTTON_START";
        }
        if (i3 == 109) {
            return "KEYCODE_BUTTON_SELECT";
        }
        switch (i3) {
            case 19:
                return "DPAD_UP";
            case MotionEventCompat.AXIS_RUDDER /* 20 */:
                return "DPAD_DOWN";
            case 21:
                return "DPAD_LEFT";
            case 22:
                return "DPAD_RIGHT";
            default:
                return null;
        }
    }

    public static void j(File file, File file2, String str) {
        if (file2.exists()) {
            return;
        }
        File file3 = new File(file, str);
        if (file3.exists() && file3.isDirectory()) {
            try {
                ArrayList arrayList = new ArrayList();
                c(file3, file, arrayList);
                if (arrayList.isEmpty()) {
                    return;
                }
                JSONArray jSONArray = new JSONArray();
                int size = arrayList.size();
                int i3 = 0;
                while (i3 < size) {
                    Object obj = arrayList.get(i3);
                    i3++;
                    jSONArray.put((String) obj);
                }
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("data", jSONArray);
                String string = jSONObject.toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                FilesKt__FileReadWriteKt.writeText$default(file2, string, null, 2, null);
                Log.d("MinHub-CaseMap", "wrote " + arrayList.size() + " entries → " + file2.getName());
            } catch (Exception e2) {
                Log.w("MinHub-CaseMap", "scan failed for " + str + ": " + e2);
            }
        }
    }

    public static final String k(String filename) {
        Intrinsics.checkNotNullParameter(filename, "filename");
        if (StringsKt__StringsJVMKt.endsWith(filename, ".png", true)) {
            return "image/png";
        }
        if (StringsKt__StringsJVMKt.endsWith(filename, ".jpg", true) || StringsKt__StringsJVMKt.endsWith(filename, ".jpeg", true)) {
            return "image/jpeg";
        }
        if (StringsKt__StringsJVMKt.endsWith(filename, ".webp", true)) {
            return "image/webp";
        }
        if (StringsKt__StringsJVMKt.endsWith(filename, ".svg", true)) {
            return "image/svg+xml";
        }
        if (StringsKt__StringsJVMKt.endsWith(filename, ".ogg", true)) {
            return "audio/ogg";
        }
        if (StringsKt__StringsJVMKt.endsWith(filename, ".mp3", true)) {
            return "audio/mpeg";
        }
        if (StringsKt__StringsJVMKt.endsWith(filename, ".m4a", true)) {
            return "audio/mp4";
        }
        if (StringsKt__StringsJVMKt.endsWith(filename, ".wav", true)) {
            return "audio/wav";
        }
        if (StringsKt__StringsJVMKt.endsWith(filename, ".mp4", true) || StringsKt__StringsJVMKt.endsWith(filename, ".m4v", true)) {
            return "video/mp4";
        }
        if (StringsKt__StringsJVMKt.endsWith(filename, ".webm", true)) {
            return "video/webm";
        }
        if (StringsKt__StringsJVMKt.endsWith(filename, ".json", true) || StringsKt__StringsJVMKt.endsWith(filename, ".tmj", true) || StringsKt__StringsJVMKt.endsWith(filename, ".tsj", true)) {
            return "application/json";
        }
        if (StringsKt__StringsJVMKt.endsWith(filename, ".csv", true)) {
            return "text/csv";
        }
        if (StringsKt__StringsJVMKt.endsWith(filename, ".md", true)) {
            return "text/plain";
        }
        if (StringsKt__StringsJVMKt.endsWith(filename, ".js", true)) {
            return "application/javascript";
        }
        if (StringsKt__StringsJVMKt.endsWith(filename, ".wasm", true)) {
            return "application/wasm";
        }
        if (StringsKt__StringsJVMKt.endsWith(filename, ".css", true)) {
            return "text/css";
        }
        if (StringsKt__StringsJVMKt.endsWith(filename, ".html", true)) {
            return "text/html";
        }
        return StringsKt__StringsJVMKt.endsWith(filename, ".txt", true) ? "text/plain" : "application/octet-stream";
    }

    public static byte[] l(byte[] bArr) {
        int iInflate;
        Inflater inflater = new Inflater();
        inflater.setInput(bArr);
        byte[] bArr2 = new byte[65536];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (!inflater.finished() && ((iInflate = inflater.inflate(bArr2)) != 0 || !inflater.needsInput())) {
            byteArrayOutputStream.write(bArr2, 0, iInflate);
        }
        inflater.end();
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        Intrinsics.checkNotNullExpressionValue(byteArray, "toByteArray(...)");
        return byteArray;
    }

    public static final WebResourceResponse m(C0375g0 c0375g0, String url) {
        String lowerCase;
        String path;
        Intrinsics.checkNotNullParameter(c0375g0, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        File file = c0375g0.f;
        if (file != null && StringsKt__StringsJVMKt.startsWith(url, "file://", true)) {
            if (StringsKt__StringsKt.contains(url, (CharSequence) "_mfsuplub.json", true)) {
                Log.d("MinHub-RenpyWebload", "returning empty manifest: " + StringsKt.takeLast(url, 60));
                byte[] bytes = "[]".getBytes(Charsets.UTF_8);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                return new WebResourceResponse("application/json", "UTF-8", new ByteArrayInputStream(bytes));
            }
            Uri uri = Uri.parse(url);
            String scheme = uri.getScheme();
            if (scheme != null) {
                lowerCase = scheme.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            } else {
                lowerCase = null;
            }
            if (Intrinsics.areEqual(lowerCase, "file") && (path = uri.getPath()) != null) {
                if (path.length() <= 0) {
                    path = null;
                }
                if (path != null) {
                    String host = uri.getHost();
                    if (host == null || host.length() <= 0) {
                        host = null;
                    }
                    if (host != null) {
                        String strConcat = host.concat(path);
                        File file2 = new File(file, strConcat);
                        if (!file2.exists() || !file2.isFile()) {
                            b.x("asset not found: ", strConcat, "MinHub-RenpyWebload");
                            return null;
                        }
                        Log.d("MinHub-RenpyWebload", "serving webloader asset: " + strConcat);
                        return new WebResourceResponse(k(url), null, new FileInputStream(file2));
                    }
                    try {
                        String absolutePath = file.getAbsolutePath();
                        Intrinsics.checkNotNullExpressionValue(absolutePath, "getAbsolutePath(...)");
                        String strTrimEnd = StringsKt.trimEnd(absolutePath, File.separatorChar);
                        if (StringsKt.N(path, strTrimEnd + "/")) {
                            String strRemovePrefix = StringsKt__StringsKt.removePrefix(path, (CharSequence) (strTrimEnd + "/"));
                            if (strRemovePrefix.length() != 0 && !StringsKt.N(strRemovePrefix, "game/") && !new File(file, strRemovePrefix).exists()) {
                                File file3 = new File(file, "game/".concat(strRemovePrefix));
                                if (file3.exists() && file3.isFile()) {
                                    Log.d("MinHub-RenpyWebload", "rerouting " + strRemovePrefix + " → game/" + strRemovePrefix);
                                    return new WebResourceResponse(k(url), null, new FileInputStream(file3));
                                }
                                Log.w("MinHub-RenpyWebload", "reroute miss: game/".concat(strRemovePrefix));
                            }
                        }
                    } catch (Exception unused) {
                    }
                }
            }
        }
        return null;
    }

    public static boolean n(File gameDir) {
        Intrinsics.checkNotNullParameter(gameDir, "gameDir");
        File file = new File(gameDir, "__renpy_manifest__.json");
        if (!file.exists()) {
            return false;
        }
        File file2 = new File(gameDir, "game.zip");
        if (!file2.exists() || file2.lastModified() <= file.lastModified()) {
            return true;
        }
        Log.i("MinHub-RenpyExtract", "game.zip newer than manifest in " + gameDir.getName() + " — cache stale, will re-extract");
        return false;
    }

    public static int o(byte[] bArr, int i3) {
        int i4 = 0;
        for (int i5 = 0; i5 < 2; i5++) {
            i4 |= (bArr[i3 + i5] & 255) << (i5 * 8);
        }
        return i4;
    }

    public static long p(byte[] bArr, int i3) {
        long j2 = 0;
        for (int i4 = 0; i4 < 8; i4++) {
            j2 |= (((long) bArr[i3 + i4]) & 255) << (i4 * 8);
        }
        return j2;
    }

    public static e q(ArrayList dirs) {
        e eVar;
        Intrinsics.checkNotNullParameter(dirs, "dirs");
        Iterator it = CollectionsKt.distinct(dirs).iterator();
        e eVar2 = null;
        int i3 = 0;
        while (it.hasNext()) {
            File[] fileArrListFiles = ((File) it.next()).listFiles(new com.minhub.gamehub.data.b(5));
            if (fileArrListFiles != null) {
                for (File save : fileArrListFiles) {
                    i3++;
                    if (i3 > 400) {
                        return eVar2;
                    }
                    Intrinsics.checkNotNull(save);
                    Intrinsics.checkNotNullParameter(save, "save");
                    try {
                        ZipFile zipFile = new ZipFile(save);
                        try {
                            ZipEntry entry = zipFile.getEntry("json");
                            if (entry != null && entry.getSize() <= 1048576) {
                                InputStream inputStream = zipFile.getInputStream(entry);
                                try {
                                    Intrinsics.checkNotNull(inputStream);
                                    String str = new String(ByteStreamsKt.readBytes(inputStream), Charsets.UTF_8);
                                    CloseableKt.closeFinally(inputStream, null);
                                    JSONArray jSONArrayOptJSONArray = new JSONObject(str).optJSONArray("_renpy_version");
                                    if (jSONArrayOptJSONArray == null) {
                                        CloseableKt.closeFinally(zipFile, null);
                                    } else {
                                        IntRange intRangeUntil = RangesKt.until(0, jSONArrayOptJSONArray.length());
                                        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRangeUntil, 10));
                                        Iterator<Integer> it2 = intRangeUntil.iterator();
                                        while (it2.hasNext()) {
                                            arrayList.add(Integer.valueOf(jSONArrayOptJSONArray.optInt(((IntIterator) it2).nextInt(), -1)));
                                        }
                                        if (arrayList.isEmpty()) {
                                            eVar = null;
                                        } else {
                                            if (!arrayList.isEmpty()) {
                                                int size = arrayList.size();
                                                int i4 = 0;
                                                while (true) {
                                                    if (i4 < size) {
                                                        Object obj = arrayList.get(i4);
                                                        i4++;
                                                        if (((Number) obj).intValue() < 0) {
                                                            eVar = null;
                                                        }
                                                    }
                                                }
                                            }
                                            eVar = new e(arrayList);
                                        }
                                        CloseableKt.closeFinally(zipFile, null);
                                    }
                                    if (eVar != null && (eVar2 == null || eVar.compareTo(eVar2) > 0)) {
                                        eVar2 = eVar;
                                    }
                                } catch (Throwable th) {
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        CloseableKt.closeFinally(inputStream, th);
                                        throw th2;
                                    }
                                }
                            } else {
                                CloseableKt.closeFinally(zipFile, null);
                            }
                        } catch (Throwable th3) {
                            try {
                                throw th3;
                            } catch (Throwable th4) {
                                CloseableKt.closeFinally(zipFile, th3);
                                throw th4;
                            }
                        }
                    } catch (Exception e2) {
                        Log.w("RenpySaveVersions", "Unreadable save " + save.getName() + ": " + e2.getMessage());
                    }
                    eVar = null;
                    if (eVar != null) {
                        eVar2 = eVar;
                    }
                }
            }
        }
        return eVar2;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0022  */
    public static ArrayList r(RandomAccessFile randomAccessFile) throws IOException {
        byte[] bArrL;
        if (randomAccessFile.length() >= 20) {
            randomAccessFile.seek(11L);
            long jE = E(randomAccessFile);
            randomAccessFile.seek(jE);
            int i3 = randomAccessFile.read();
            if (i3 < 0) {
                bArrL = null;
            } else if (i3 == 128) {
                randomAccessFile.seek(jE + 1 + ((long) 8));
                randomAccessFile.seek(E(randomAccessFile));
                int i4 = randomAccessFile.read();
                if (i4 == 0) {
                    bArrL = new byte[(int) E(randomAccessFile)];
                    randomAccessFile.readFully(bArrL);
                } else if (i4 == 1) {
                    long jE2 = E(randomAccessFile);
                    E(randomAccessFile);
                    byte[] bArr = new byte[(int) jE2];
                    randomAccessFile.readFully(bArr);
                    bArrL = l(bArr);
                } else {
                    bArrL = null;
                }
            } else if ((i3 & 1) != 0) {
                long jE3 = E(randomAccessFile);
                E(randomAccessFile);
                byte[] bArr2 = new byte[(int) jE3];
                randomAccessFile.seek(jE + ((long) 17));
                randomAccessFile.readFully(bArr2);
                bArrL = l(bArr2);
            } else {
                bArrL = new byte[(int) E(randomAccessFile)];
                randomAccessFile.seek(jE + ((long) 9));
                randomAccessFile.readFully(bArrL);
            }
            if (bArrL != null) {
                ArrayList arrayList = new ArrayList();
                int iP = 0;
                do {
                    int i5 = iP + 12;
                    try {
                        if (i5 > bArrL.length) {
                            break;
                        }
                        int i6 = 4;
                        String str = new String(bArrL, iP, 4, Charsets.US_ASCII);
                        iP = (int) (((long) i5) + p(bArrL, iP + 4));
                        if (Intrinsics.areEqual(str, "File") && i5 <= iP && iP <= bArrL.length) {
                            boolean z2 = false;
                            long jO = 0;
                            long j2 = 0;
                            long jP = 0;
                            String strF = "";
                            boolean z3 = false;
                            while (true) {
                                int i7 = i5 + 12;
                                if (i7 > iP) {
                                    break;
                                }
                                String str2 = new String(bArrL, i5, i6, Charsets.US_ASCII);
                                int i8 = i5;
                                long jP2 = p(bArrL, i5 + 4);
                                int iHashCode = str2.hashCode();
                                if (iHashCode != 2989289) {
                                    if (iHashCode != 3237038) {
                                        if (iHashCode == 3526328 && str2.equals("segm") && !z3 && jP2 >= 28 && i8 + 40 <= bArrL.length) {
                                            z2 = (((int) p(bArrL, i7)) & 7) != 0;
                                            long jP3 = p(bArrL, i8 + 16);
                                            jP = p(bArrL, i8 + 32);
                                            z3 = true;
                                            j2 = jP3;
                                        }
                                    } else if (str2.equals("info")) {
                                        int i9 = i8 + 34;
                                        strF = StringsKt.F(new String(bArrL, i9, Math.min(o(bArrL, i8 + 32), RangesKt.coerceAtLeast((bArrL.length - i9) / 2, 0)) * 2, Charsets.UTF_16LE), '\\', '/');
                                    }
                                } else if (str2.equals("adlr") && jP2 >= 4 && i8 + 16 <= bArrL.length) {
                                    jO = ((long) o(bArrL, i7)) | (((long) o(bArrL, i8 + 14)) << 16);
                                }
                                i5 = i7 + ((int) jP2);
                                i6 = 4;
                            }
                            if (z3 && strF.length() > 0) {
                                arrayList.add(new C0408r1(strF, jO, z2, j2, jP));
                            }
                        }
                        if (iP <= 0) {
                            break;
                        }
                    } catch (IndexOutOfBoundsException e2) {
                        Log.i("KiriKiriXp3Filter", "index parse stopped at tail (" + arrayList.size() + " entries): " + e2.getMessage());
                    }
                } while (iP <= bArrL.length);
                if (arrayList.isEmpty()) {
                    return null;
                }
                return arrayList;
            }
        }
        return null;
    }

    public static I1 s(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        while (true) {
            String str = null;
            for (String str2 : StringsKt.lineSequence(text)) {
                Intrinsics.checkNotNullExpressionValue(str2, "next(...)");
                String string = StringsKt.trim((CharSequence) str2).toString();
                if (!StringsKt.N(string, "#")) {
                    String strSubstringBefore = StringsKt__StringsKt.substringBefore(string, '=', "");
                    String strSubstringAfter = StringsKt__StringsKt.substringAfter(string, '=', "");
                    if (Intrinsics.areEqual(strSubstringBefore, "language")) {
                        if (strSubstringAfter.length() != 0) {
                            str = strSubstringAfter;
                        }
                    } else if (Intrinsics.areEqual(strSubstringBefore, "parkable") && strSubstringAfter.length() > 0) {
                        linkedHashSet.add(strSubstringAfter);
                    }
                }
            }
            return new I1(str, linkedHashSet);
        }
    }

    public static final WebResourceResponse t(C0375g0 c0375g0, String url) {
        Intrinsics.checkNotNullParameter(c0375g0, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        String strSubstringBefore$default = StringsKt__StringsKt.substringBefore$default(StringsKt__StringsKt.substringBefore$default(url, '?', (String) null, 2, (Object) null), '#', (String) null, 2, (Object) null);
        if (!StringsKt__StringsJVMKt.endsWith(strSubstringBefore$default, "/CBR_imgFusion.js", true)) {
            return null;
        }
        try {
            File fileH = h(strSubstringBefore$default);
            if (fileH != null && fileH.exists()) {
                Charset charset = Charsets.UTF_8;
                String strReplace$default = StringsKt__StringsJVMKt.replace$default(FilesKt.readText(fileH, charset), "\r\n", "\n", false, 4, (Object) null);
                if (!StringsKt__StringsKt.contains$default((CharSequence) strReplace$default, (CharSequence) "\tvar ary = $gameSystem._CBR_imgFusion._fusionList;\n\tfor(var i=0,len=ary[key].add_ary.length; i<len; i++){\n\t\tvar bitmap2 = ImageManager.loadBitmap('img/pictures/', ary[key].add_ary[i].slice(0,-4), undefined, true);\n\t\tthis.context.drawImage(bitmap2._image, 0, 0);\n\t}", false, 2, (Object) null)) {
                    return null;
                }
                String strReplace$default2 = StringsKt__StringsJVMKt.replace$default(strReplace$default, "\tvar ary = $gameSystem._CBR_imgFusion._fusionList;\n\tfor(var i=0,len=ary[key].add_ary.length; i<len; i++){\n\t\tvar bitmap2 = ImageManager.loadBitmap('img/pictures/', ary[key].add_ary[i].slice(0,-4), undefined, true);\n\t\tthis.context.drawImage(bitmap2._image, 0, 0);\n\t}", "\tvar ary = $gameSystem._CBR_imgFusion._fusionList;\n\tvar __mhctx = this._context;\n\t__mhctx.drawImage(this._image, 0, 0);\n\tfor(var i=0,len=ary[key].add_ary.length; i<len; i++){\n\t\tvar bitmap2 = ImageManager.loadBitmap('img/pictures/', ary[key].add_ary[i].slice(0,-4), undefined, true);\n\t\tif(bitmap2 && bitmap2._image){ __mhctx.drawImage(bitmap2._image, 0, 0); }\n\t}\n\ttry{ if(this._baseTexture){ if(this._baseTexture.dispose) this._baseTexture.dispose(); this._baseTexture.update(); } }catch(__mhe){}", false, 4, (Object) null);
                if (Intrinsics.areEqual(strReplace$default2, strReplace$default)) {
                    return null;
                }
                Log.d("MinHub-MZPatch", "CBR_imgFusion.js patched (single-context composite + texture update)");
                byte[] bytes = strReplace$default2.getBytes(charset);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(bytes));
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static final WebResourceResponse u(C0375g0 c0375g0, String url) {
        Intrinsics.checkNotNullParameter(c0375g0, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        String strSubstringBefore$default = StringsKt__StringsKt.substringBefore$default(StringsKt__StringsKt.substringBefore$default(url, '?', (String) null, 2, (Object) null), '#', (String) null, 2, (Object) null);
        if (!StringsKt__StringsJVMKt.endsWith(strSubstringBefore$default, "/CityWalkingSystemt.js", true)) {
            return null;
        }
        try {
            File fileH = h(strSubstringBefore$default);
            if (fileH != null && fileH.exists()) {
                Charset charset = Charsets.UTF_8;
                String text = FilesKt.readText(fileH, charset);
                if (!StringsKt__StringsKt.contains$default((CharSequence) text, (CharSequence) "function CSVToArray(str, delimiter = ',') {\n        const rows = str.split('\\n');", false, 2, (Object) null)) {
                    return null;
                }
                String strReplace$default = StringsKt__StringsJVMKt.replace$default(text, "function CSVToArray(str, delimiter = ',') {\n        const rows = str.split('\\n');", "function CSVToArray(str, delimiter = ',') {\n        if (str == null) return [[]];\n        const rows = str.split('\\n');", false, 4, (Object) null);
                if (Intrinsics.areEqual(strReplace$default, text)) {
                    return null;
                }
                Log.d("MinHub-MZPatch", "CityWalkingSystemt.js patched (CSVToArray null guard)");
                byte[] bytes = strReplace$default.getBytes(charset);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(bytes));
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static final String v(String str) {
        return StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(StringsKt__StringsJVMKt.replace$default(str, "\\", "\\\\", false, 4, (Object) null), "\"", "\\\"", false, 4, (Object) null), "\r", "\\r", false, 4, (Object) null), "\n", "\\n", false, 4, (Object) null), "\t", "\\t", false, 4, (Object) null);
    }

    public static final WebResourceResponse w(C0375g0 c0375g0, String url) {
        Intrinsics.checkNotNullParameter(c0375g0, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        String strSubstringBefore$default = StringsKt__StringsKt.substringBefore$default(StringsKt__StringsKt.substringBefore$default(url, '?', (String) null, 2, (Object) null), '#', (String) null, 2, (Object) null);
        if (!StringsKt__StringsJVMKt.endsWith(strSubstringBefore$default, "/FOSSIL.js", true)) {
            return null;
        }
        try {
            File fileH = h(strSubstringBefore$default);
            if (fileH != null && fileH.exists()) {
                Charset charset = Charsets.UTF_8;
                String text = FilesKt.readText(fileH, charset);
                String strReplaceFirst = new Regex("[ \\t]*var fs = require\\(\"fs\"\\);\\r?\\n[ \\t]*var path = require\\('path'\\);\\r?\\n[ \\t]*var base = path\\.dirname\\(process\\.mainModule\\.filename\\);\\r?\\n[ \\t]*var filePath = path\\.join\\(base, 'FOSSILindex\\.html'\\);\\r?\\n[ \\t]*//var data = createWrapperObject\\(, orderedResult, unknownPlugins\\);\\r?\\n[ \\t]*fs\\.writeFileSync\\(filePath, rawIndexHtml\\);\\r?\\n[ \\t]*//synchronous writing means that we can guarantee this is in place[ \\t]*\\r?\\n[ \\t]*//for when we ridirect to the new html\\.").replaceFirst(text, "\t\t/* MinHub: NW.js file write removed — FOSSILindex.html served on-the-fly */");
                if (Intrinsics.areEqual(strReplaceFirst, text)) {
                    return null;
                }
                Log.d("MinHub-MZPatch", "FOSSIL.js patched (NW.js write block removed)");
                byte[] bytes = strReplaceFirst.getBytes(charset);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(bytes));
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static final WebResourceResponse x(C0375g0 c0375g0, String url) {
        Intrinsics.checkNotNullParameter(c0375g0, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        byte[] bArr = c0375g0.f6231d;
        if (bArr == null) {
            return null;
        }
        String strSubstringAfterLast$default = StringsKt__StringsKt.substringAfterLast$default(StringsKt__StringsKt.substringBefore$default(StringsKt__StringsKt.substringBefore$default(url, '?', (String) null, 2, (Object) null), '#', (String) null, 2, (Object) null), '/', (String) null, 2, (Object) null);
        if (!StringsKt__StringsJVMKt.startsWith(strSubstringAfterLast$default, "live2dcubismcore", true) || !StringsKt__StringsJVMKt.endsWith(strSubstringAfterLast$default, ".js", true)) {
            return null;
        }
        Log.i("MinHub-Live2D", "Cubism Core override -> 4.2.4 for " + strSubstringAfterLast$default);
        return new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(bArr));
    }

    public static final WebResourceResponse y(C0375g0 c0375g0, String url) {
        File fileH;
        Intrinsics.checkNotNullParameter(c0375g0, "<this>");
        Intrinsics.checkNotNullParameter(url, "url");
        String strSubstringBefore$default = StringsKt__StringsKt.substringBefore$default(StringsKt__StringsKt.substringBefore$default(url, '?', (String) null, 2, (Object) null), '#', (String) null, 2, (Object) null);
        if (StringsKt__StringsJVMKt.endsWith(strSubstringBefore$default, ".moc3", true) && (fileH = h(strSubstringBefore$default)) != null && ((fileH.exists() || (fileH = b(fileH, 5)) != null) && fileH.isFile())) {
            try {
                byte[] bArr = new byte[8];
                FileInputStream fileInputStream = new FileInputStream(fileH);
                try {
                    int i3 = fileInputStream.read(bArr);
                    CloseableKt.closeFinally(fileInputStream, null);
                    if (i3 >= 8 && bArr[0] == 77 && bArr[1] == 79 && bArr[2] == 67 && bArr[3] == 51 && bArr[4] == 5) {
                        byte[] bytes = FilesKt.readBytes(fileH);
                        bytes[4] = 4;
                        Log.i("MinHub-Live2D", "moc3 v5->v4 patched: " + fileH.getName());
                        return new WebResourceResponse("application/octet-stream", null, new ByteArrayInputStream(bytes));
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(fileInputStream, th);
                        throw th2;
                    }
                }
            } catch (Exception unused) {
            }
        }
        return null;
    }

    public static H1 z(File root, boolean z2) {
        Object objM9constructorimpl;
        String text$default;
        Intrinsics.checkNotNullParameter(root, "root");
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List listListOf = CollectionsKt.listOf((Object[]) new File[]{new File(root, "game"), root});
        ArrayList arrayList3 = new ArrayList();
        for (Object obj : listListOf) {
            if (((File) obj).isDirectory()) {
                arrayList3.add(obj);
            }
        }
        int size = arrayList3.size();
        int i3 = 0;
        int i4 = 0;
        while (i4 < size) {
            i4++;
            File file = (File) arrayList3.get(i4);
            File file2 = new File(file, ".minhub_tl_parked");
            if (file2.isDirectory()) {
                File file3 = new File(file, "tl");
                try {
                    Result.Companion companion = Result.INSTANCE;
                    File file4 = new File(file2, "state.txt");
                    if (!file4.isFile()) {
                        file4 = null;
                    }
                    objM9constructorimpl = Result.m9constructorimpl((file4 == null || (text$default = FilesKt__FileReadWriteKt.readText$default(file4, null, 1, null)) == null) ? null : s(text$default));
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                I1 i5 = (I1) (Result.m15isFailureimpl(objM9constructorimpl) ? null : objM9constructorimpl);
                File[] fileArrListFiles = file2.listFiles();
                if (fileArrListFiles == null) {
                    fileArrListFiles = new File[i3];
                }
                ArrayList arrayList4 = new ArrayList();
                int length = fileArrListFiles.length;
                for (int i6 = i3; i6 < length; i6++) {
                    File file5 = fileArrListFiles[i6];
                    if (file5.isDirectory()) {
                        arrayList4.add(file5);
                    }
                }
                for (File file6 : CollectionsKt.sortedWith(arrayList4, new M(7))) {
                    String name = file6.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    if (!B(z2, i5, name)) {
                        File file7 = new File(file3, file6.getName());
                        if (file7.exists()) {
                            Log.w("RenpyTranslations", "tl/" + file6.getName() + " exists and a moved copy too; leaving both");
                        } else {
                            file3.mkdirs();
                            if (file6.renameTo(file7)) {
                                arrayList2.add(file6.getName());
                            } else {
                                b.x("could not restore tl/", file6.getName(), "RenpyTranslations");
                            }
                        }
                    }
                }
                if (z2 && i5 != null) {
                    File[] fileArrListFiles2 = file3.listFiles();
                    if (fileArrListFiles2 == null) {
                        fileArrListFiles2 = new File[i3];
                    }
                    ArrayList arrayList5 = new ArrayList();
                    int length2 = fileArrListFiles2.length;
                    for (int i7 = i3; i7 < length2; i7++) {
                        File file8 = fileArrListFiles2[i7];
                        if (file8.isDirectory()) {
                            String name2 = file8.getName();
                            Intrinsics.checkNotNullExpressionValue(name2, "getName(...)");
                            if (B(z2, i5, name2)) {
                                arrayList5.add(file8);
                            }
                        }
                    }
                    for (File file9 : CollectionsKt.sortedWith(arrayList5, new M(8))) {
                        File file10 = new File(file2, file9.getName());
                        if (!file10.exists()) {
                            if (file9.renameTo(file10)) {
                                arrayList.add(file9.getName());
                            } else {
                                Log.w("RenpyTranslations", "could not move tl/" + file9.getName() + " aside");
                            }
                        }
                    }
                    i3 = 0;
                }
            }
        }
        if (!arrayList.isEmpty() || !arrayList2.isEmpty()) {
            Log.i("RenpyTranslations", "not loading translations " + arrayList + "; restored " + arrayList2);
        }
        return new H1(arrayList, arrayList2);
    }
}
