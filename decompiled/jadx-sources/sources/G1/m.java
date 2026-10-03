package G1;

import A1.C0015e;
import A1.C0033n;
import N1.u;
import N1.y;
import N1.z;
import android.content.Context;
import android.util.Log;
import com.minhub.gamehub.NativeKeys;
import java.io.File;
import java.security.MessageDigest;
import java.util.Locale;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONObject;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Object f1012a = new Object();

    public static Pair a(File storeDir) {
        String strE;
        Intrinsics.checkNotNullParameter(storeDir, "storeDir");
        try {
            long j2 = 33554432;
            N1.i iVar = new N1.i(storeDir, 33554432L);
            N1.r rVar = iVar.q(new C0033n(8, iVar)).f1465a;
            String version = rVar.f1468a;
            if (version != null && !rVar.f1470d.contains(version)) {
                Intrinsics.checkNotNullParameter(version, "version");
                byte[] bArr = iVar.q(new N1.h(iVar, version, j2)).f1466c;
                if (bArr == null || (strE = e(bArr)) == null) {
                    return null;
                }
                return TuplesKt.to(version, strE);
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static int b(Context ctx) {
        Integer intOrNull;
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        try {
            N1.i iVar = new N1.i(new File(ctx.getFilesDir(), "runtime_patch_v2"), 33554432L);
            N1.r rVar = iVar.q(new C0033n(8, iVar)).f1465a;
            String str = rVar.f1468a;
            if (str == null) {
                return 0;
            }
            if (rVar.f1470d.contains(str)) {
                str = null;
            }
            if (str == null || (intOrNull = StringsKt.toIntOrNull(str)) == null) {
                return 0;
            }
            return intOrNull.intValue();
        } catch (Exception unused) {
            return 0;
        }
    }

    public static i c(Context ctx, int i3) {
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        try {
            k kVarD = d(ctx, i3);
            if (b(ctx) > 0) {
                try {
                    Intrinsics.checkNotNullParameter(ctx, "ctx");
                    try {
                        File file = new File(ctx.getFilesDir(), "runtime_patch");
                        file.mkdirs();
                        new File(file, "bundle.enc").delete();
                    } catch (Exception unused) {
                    }
                    ctx.getSharedPreferences("runtime_patch_ota", 0).edit().clear().apply();
                } catch (Exception unused2) {
                }
            }
            int iOrdinal = kVarD.f1005a.ordinal();
            if (iOrdinal == 0) {
                return i.b;
            }
            if (iOrdinal != 1) {
                return iOrdinal != 2 ? i.f1003e : i.f1002d;
            }
            return i.f1001c;
        } catch (Exception e2) {
            E.b.x("v2 update failed: ", e2.getMessage(), "MinHub-PatchOTA");
            return i.f1003e;
        }
    }

    public static k d(Context ctx, int i3) {
        k kVarK;
        Intrinsics.checkNotNullParameter(ctx, "ctx");
        synchronized (f1012a) {
            try {
                if (StringsKt.isBlank("https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Patch/patch_manifest_v2.json")) {
                    l lVar = l.f;
                    kVarK = new k(lVar, "v2 manifest URL not configured");
                    Log.i("MinHub-PatchOTAv2", "status=" + lVar + " v2 manifest URL not configured");
                } else {
                    kVarK = k(new File(ctx.getFilesDir(), "runtime_patch_v2"), "https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Patch/patch_manifest_v2.json", new N1.p("pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev", "/Patch"), i3);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return kVarK;
    }

    public static String e(byte[] enc) throws Throwable {
        byte[] bytes;
        Intrinsics.checkNotNullParameter(enc, "enc");
        byte[] bArr = null;
        if (enc.length > 28) {
            try {
                bytes = NativeKeys.patchKey().getBytes(Charsets.US_ASCII);
                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                try {
                    if (bytes.length != 32) {
                        ArraysKt___ArraysJvmKt.fill$default(bytes, (byte) 0, 0, 0, 6, (Object) null);
                        return null;
                    }
                    byte[] bArrCopyOfRange = ArraysKt.copyOfRange(enc, 0, 12);
                    byte[] bArrCopyOfRange2 = ArraysKt.copyOfRange(enc, 12, enc.length);
                    Cipher cipher = Cipher.getInstance("AES/GCM/NoPadding");
                    cipher.init(2, new SecretKeySpec(bytes, "AES"), new GCMParameterSpec(128, bArrCopyOfRange));
                    byte[] bArrDoFinal = cipher.doFinal(bArrCopyOfRange2);
                    Intrinsics.checkNotNullExpressionValue(bArrDoFinal, "doFinal(...)");
                    String str = new String(bArrDoFinal, Charsets.UTF_8);
                    ArraysKt___ArraysJvmKt.fill$default(bytes, (byte) 0, 0, 0, 6, (Object) null);
                    return str;
                } catch (Exception unused) {
                    if (bytes != null) {
                        ArraysKt___ArraysJvmKt.fill$default(bytes, (byte) 0, 0, 0, 6, (Object) null);
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    bArr = bytes;
                    if (bArr != null) {
                        ArraysKt___ArraysJvmKt.fill$default(bArr, (byte) 0, 0, 0, 6, (Object) null);
                    }
                    throw th;
                }
            } catch (Exception unused2) {
                bytes = null;
            } catch (Throwable th2) {
                th = th2;
            }
        }
        return null;
    }

    public static N1.n f(byte[] bArr) {
        N1.o oVar;
        N1.l lVar;
        String strI;
        String strI2;
        Long lH;
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr, Charsets.UTF_8));
            String strG = g(jSONObject, "revokeVersion");
            if (!jSONObject.has("revocation") || jSONObject.isNull("revocation")) {
                oVar = null;
            } else {
                Object objOpt = jSONObject.opt("revocation");
                if (!(objOpt instanceof JSONObject)) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                Object objOpt2 = ((JSONObject) objOpt).opt("version");
                Object objOpt3 = ((JSONObject) objOpt).opt("signature");
                Object objOpt4 = ((JSONObject) objOpt).opt("reason");
                if (!(objOpt2 instanceof String) || !(objOpt3 instanceof String) || (!Intrinsics.areEqual(objOpt4, JSONObject.NULL) && !(objOpt4 instanceof String))) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                String str = (String) objOpt2;
                String str2 = (String) objOpt3;
                String str3 = objOpt4 instanceof String ? (String) objOpt4 : null;
                if (str3 == null) {
                    str3 = "";
                }
                oVar = new N1.o(str, str2, str3);
            }
            if (!jSONObject.has("killSwitch") || jSONObject.isNull("killSwitch")) {
                lVar = null;
            } else {
                Object objOpt5 = jSONObject.opt("killSwitch");
                if (!(objOpt5 instanceof JSONObject)) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                Object objOpt6 = ((JSONObject) objOpt5).opt("enabled");
                Object objOpt7 = ((JSONObject) objOpt5).opt("signature");
                if (!(objOpt6 instanceof Boolean) || !(objOpt7 instanceof String)) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                lVar = new N1.l(((Boolean) objOpt6).booleanValue(), (String) objOpt7);
            }
            String strI3 = i(jSONObject, "url");
            if (strI3 != null && (strI = i(jSONObject, "version")) != null && (strI2 = i(jSONObject, "sha256")) != null) {
                String lowerCase = strI2.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                String strI4 = i(jSONObject, "signature");
                if (strI4 != null && (lH = h(jSONObject, "sequence")) != null) {
                    long jLongValue = lH.longValue();
                    Long lH2 = h(jSONObject, "issuedAt");
                    if (lH2 != null) {
                        long jLongValue2 = lH2.longValue();
                        Long lH3 = h(jSONObject, "expiresAt");
                        if (lH3 != null) {
                            long jLongValue3 = lH3.longValue();
                            Long lH4 = h(jSONObject, "manifestBytes");
                            if (lH4 != null) {
                                long jLongValue4 = lH4.longValue();
                                Long lH5 = h(jSONObject, "bundleBytes");
                                if (lH5 != null) {
                                    long jLongValue5 = lH5.longValue();
                                    Long lH6 = h(jSONObject, "plaintextBytes");
                                    if (lH6 != null) {
                                        N1.n nVar = new N1.n(strI3, strI, lowerCase, strI4, jLongValue, jLongValue2, jLongValue3, jLongValue4, jLongValue5, lH6.longValue(), strG, oVar, lVar, g(jSONObject, "rollbackMarker"), jSONObject.optInt("minAppVersion", 0));
                                        N1.o oVar2 = oVar;
                                        if (oVar2 == null || strG == null || Intrinsics.areEqual(oVar2.f1462a, strG)) {
                                            return nVar;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public static final String g(JSONObject jSONObject, String str) {
        if (!jSONObject.has(str) || jSONObject.isNull(str)) {
            return null;
        }
        String strI = i(jSONObject, str);
        if (strI != null) {
            return strI;
        }
        throw new IllegalArgumentException("invalid ".concat(str));
    }

    public static final Long h(JSONObject jSONObject, String str) {
        if (!jSONObject.has(str) || jSONObject.isNull(str)) {
            return null;
        }
        Object objOpt = jSONObject.opt(str);
        if (!(objOpt instanceof Number)) {
            return null;
        }
        Number number = (Number) objOpt;
        long jLongValue = number.longValue();
        Long lValueOf = Long.valueOf(jLongValue);
        if (number.doubleValue() == jLongValue) {
            return lValueOf;
        }
        return null;
    }

    public static final String i(JSONObject jSONObject, String str) {
        if (!jSONObject.has(str) || jSONObject.isNull(str) || !(jSONObject.opt(str) instanceof String)) {
            return null;
        }
        String strOptString = jSONObject.optString(str);
        Intrinsics.checkNotNull(strOptString);
        if (StringsKt.isBlank(strOptString)) {
            return null;
        }
        return strOptString;
    }

    public static String j(byte[] bArr) {
        byte[] bArrDigest = MessageDigest.getInstance("SHA-256").digest(bArr);
        Intrinsics.checkNotNullExpressionValue(bArrDigest, "digest(...)");
        return ArraysKt___ArraysKt.joinToString$default(bArrDigest, (CharSequence) "", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, (Function1) new C0015e(28), 30, (Object) null);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0221 A[Catch: all -> 0x008d, Exception -> 0x0090, TryCatch #0 {Exception -> 0x0090, blocks: (B:4:0x0038, B:6:0x0061, B:11:0x0093, B:13:0x0099, B:14:0x00c5, B:16:0x00d3, B:17:0x010c, B:19:0x0114, B:20:0x0147, B:22:0x014b, B:23:0x017d, B:25:0x018a, B:26:0x01b6, B:28:0x01d9, B:30:0x01e5, B:32:0x01fb, B:33:0x0221, B:37:0x0230, B:39:0x0251, B:40:0x027d, B:42:0x0285, B:45:0x0295, B:47:0x02a1, B:50:0x02ad, B:51:0x02d8, B:53:0x02de, B:54:0x030a, B:59:0x031e, B:64:0x0336, B:60:0x0326, B:63:0x0332, B:65:0x037e), top: B:76:0x0038, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:35:0x022b  */
    /* JADX WARN: Code duplicated, block: B:36:0x022e  */
    /* JADX WARN: Code duplicated, block: B:39:0x0251 A[Catch: all -> 0x008d, Exception -> 0x0090, TryCatch #0 {Exception -> 0x0090, blocks: (B:4:0x0038, B:6:0x0061, B:11:0x0093, B:13:0x0099, B:14:0x00c5, B:16:0x00d3, B:17:0x010c, B:19:0x0114, B:20:0x0147, B:22:0x014b, B:23:0x017d, B:25:0x018a, B:26:0x01b6, B:28:0x01d9, B:30:0x01e5, B:32:0x01fb, B:33:0x0221, B:37:0x0230, B:39:0x0251, B:40:0x027d, B:42:0x0285, B:45:0x0295, B:47:0x02a1, B:50:0x02ad, B:51:0x02d8, B:53:0x02de, B:54:0x030a, B:59:0x031e, B:64:0x0336, B:60:0x0326, B:63:0x0332, B:65:0x037e), top: B:76:0x0038, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:40:0x027d A[Catch: all -> 0x008d, Exception -> 0x0090, TryCatch #0 {Exception -> 0x0090, blocks: (B:4:0x0038, B:6:0x0061, B:11:0x0093, B:13:0x0099, B:14:0x00c5, B:16:0x00d3, B:17:0x010c, B:19:0x0114, B:20:0x0147, B:22:0x014b, B:23:0x017d, B:25:0x018a, B:26:0x01b6, B:28:0x01d9, B:30:0x01e5, B:32:0x01fb, B:33:0x0221, B:37:0x0230, B:39:0x0251, B:40:0x027d, B:42:0x0285, B:45:0x0295, B:47:0x02a1, B:50:0x02ad, B:51:0x02d8, B:53:0x02de, B:54:0x030a, B:59:0x031e, B:64:0x0336, B:60:0x0326, B:63:0x0332, B:65:0x037e), top: B:76:0x0038, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:44:0x0291  */
    /* JADX WARN: Instruction removed from duplicated block: B:39:0x0251, please report this as an issue */
    public static k k(File storeDir, String manifestUrl, N1.p p2, int i3) {
        k kVar;
        String str;
        String str2;
        byte[] bArrB;
        Intrinsics.checkNotNullParameter(storeDir, "storeDir");
        Intrinsics.checkNotNullParameter(manifestUrl, "manifestUrl");
        Intrinsics.checkNotNullParameter(p2, "p");
        synchronized (f1012a) {
            try {
                try {
                    a aVar = a.f992a;
                    byte[] bArrB2 = aVar.b(manifestUrl + "?t=" + System.currentTimeMillis(), 262144L);
                    if (bArrB2 == null) {
                        kVar = new k(l.f1009h, "manifest transport");
                        Log.w("MinHub-PatchOTAv2", "status=" + kVar.b() + " " + kVar.a());
                    } else {
                        N1.n nVarF = f(bArrB2);
                        if (nVarF == null) {
                            kVar = new k(l.g, "required v2 fields");
                            Log.w("MinHub-PatchOTAv2", "status=" + kVar.b() + " " + kVar.a());
                        } else {
                            u uVarA = nVarF.a(p2, System.currentTimeMillis());
                            if (!uVarA.b()) {
                                kVar = new k(l.g, CollectionsKt.o(uVarA.a(), ",", null, null, null, 62));
                                Log.w("MinHub-PatchOTAv2", "status=" + kVar.b() + " " + kVar.a());
                            } else if (nVarF.f1454h != bArrB2.length) {
                                kVar = new k(l.g, "manifest size");
                                Log.w("MinHub-PatchOTAv2", "status=" + kVar.b() + " expected=" + nVarF.f1454h + " got=" + bArrB2.length);
                            } else if (nVarF.f1461o > i3) {
                                kVar = new k(l.f1007d, "minimum app version");
                                Log.i("MinHub-PatchOTAv2", "status=" + kVar.b() + " needApp=" + nVarF.f1461o + " have=" + i3);
                            } else {
                                N1.b bVar = new N1.b();
                                if (StringsKt.isBlank("GyqoKzP180cOF6RMqbGfMIjDw/h+nxwC4UZkfoTUb2k=")) {
                                    kVar = new k(l.f1008e, "Ed25519 public key unavailable; update not activated");
                                    Log.w("MinHub-PatchOTAv2", "status=" + kVar.b() + " " + kVar.a());
                                } else {
                                    long j2 = 33554432;
                                    N1.i iVar = new N1.i(storeDir, 33554432L);
                                    N1.r rVarC = iVar.q(new C0033n(8, iVar)).c();
                                    if (!Intrinsics.areEqual(rVarC.b(), nVarF.b) || rVarC.c().contains(nVarF.b)) {
                                        str = nVarF.f1450a;
                                        if (StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "?", false, 2, (Object) null)) {
                                            str2 = "&";
                                        } else {
                                            str2 = "?";
                                        }
                                        bArrB = aVar.b(str + str2 + "t=" + System.currentTimeMillis(), 33554432L);
                                        if (bArrB == null) {
                                            kVar = new k(l.f1009h, "bundle transport");
                                            Log.w("MinHub-PatchOTAv2", "status=" + kVar.b() + " " + kVar.a());
                                        } else if (bArrB.length == nVarF.f1455i || !Intrinsics.areEqual(j(bArrB), nVarF.f1451c)) {
                                            kVar = new k(l.g, "bundle size/hash");
                                            Log.w("MinHub-PatchOTAv2", "status=" + kVar.b() + " size=" + bArrB.length + "/" + nVarF.f1455i);
                                        } else {
                                            y yVarA = bVar.a(nVarF, bArrB);
                                            if (yVarA.a() == z.g) {
                                                l lVar = l.f1008e;
                                                String str3 = yVarA.b;
                                                if (StringsKt.isBlank(str3)) {
                                                    str3 = "Ed25519 verifier unavailable; update not activated";
                                                }
                                                k kVar2 = new k(lVar, str3);
                                                Log.w("MinHub-PatchOTAv2", "status=" + kVar2.b() + " " + kVar2.a());
                                                kVar = kVar2;
                                            } else if (yVarA.b()) {
                                                N1.q qVarH = iVar.h(nVarF, bArrB, p2, System.currentTimeMillis());
                                                if (qVarH.f1467d == null) {
                                                    kVar = new k(l.b);
                                                } else {
                                                    l lVar2 = l.g;
                                                    String strB = qVarH.b();
                                                    if (strB == null) {
                                                        strB = "";
                                                    }
                                                    kVar = new k(lVar2, strB);
                                                }
                                                Log.i("MinHub-PatchOTAv2", "status=" + kVar.b() + " version=" + nVarF.b + " sequence=" + nVarF.f1453e + " sha=" + StringsKt.take(nVarF.f1451c, 12) + " diag=" + kVar.a());
                                            } else {
                                                kVar = new k(l.g, "signature");
                                                Log.w("MinHub-PatchOTAv2", "status=" + kVar.b() + " diag=" + yVarA.b);
                                            }
                                        }
                                    } else {
                                        String version = nVarF.b;
                                        Intrinsics.checkNotNullParameter(version, "version");
                                        if (iVar.q(new N1.h(iVar, version, j2)).a() != null) {
                                            kVar = new k(l.f1006c);
                                            Log.i("MinHub-PatchOTAv2", "status=UP_TO_DATE version=" + nVarF.b + " sequence=" + nVarF.f1453e);
                                        } else {
                                            str = nVarF.f1450a;
                                            if (StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) "?", false, 2, (Object) null)) {
                                                str2 = "&";
                                            } else {
                                                str2 = "?";
                                            }
                                            bArrB = aVar.b(str + str2 + "t=" + System.currentTimeMillis(), 33554432L);
                                            if (bArrB == null) {
                                                kVar = new k(l.f1009h, "bundle transport");
                                                Log.w("MinHub-PatchOTAv2", "status=" + kVar.b() + " " + kVar.a());
                                            } else if (bArrB.length == nVarF.f1455i) {
                                                kVar = new k(l.g, "bundle size/hash");
                                                Log.w("MinHub-PatchOTAv2", "status=" + kVar.b() + " size=" + bArrB.length + "/" + nVarF.f1455i);
                                            } else {
                                                kVar = new k(l.g, "bundle size/hash");
                                                Log.w("MinHub-PatchOTAv2", "status=" + kVar.b() + " size=" + bArrB.length + "/" + nVarF.f1455i);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                } catch (Exception e2) {
                    l lVar3 = l.f1009h;
                    String message = e2.getMessage();
                    if (message == null) {
                        message = "";
                    }
                    k kVar3 = new k(lVar3, message);
                    Log.w("MinHub-PatchOTAv2", "status=" + kVar3.b() + " " + kVar3.a(), e2);
                    kVar = kVar3;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return kVar;
    }
}
