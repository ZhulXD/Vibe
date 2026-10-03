package I1;

import A1.H;
import C1.DialogInterfaceOnClickListenerC0091o0;
import android.view.WindowManager;
import android.webkit.WebView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.game.GodotGameActivity;
import com.minhub.gamehub.hub.catalog.CfWebViewRenderHost;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.StringReader;
import java.nio.ByteBuffer;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CodingErrorAction;
import java.nio.file.Files;
import java.nio.file.LinkOption;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt;
import kotlin.collections.SetsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import p011e.C0240b;
import p023i1.l;
import p023i1.m;
import p064y1.C0358a1;
import p064y1.C0425x0;
import p064y1.DialogInterfaceOnDismissListenerC0393m0;
import p064y1.RunnableC0390l0;
import p064y1.V0;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e implements Function0 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f1176c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f1177d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f1178e;

    public /* synthetic */ e(Object obj, Object obj2, Object obj3, int i3) {
        this.b = i3;
        this.f1176c = obj;
        this.f1177d = obj2;
        this.f1178e = obj3;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() throws IOException {
        boolean z2;
        V0 v2;
        V0 v3;
        V0 v4;
        V0 v5;
        int i3 = this.b;
        int i4 = 4;
        int i5 = 9;
        int i6 = 1;
        Object obj = this.f1178e;
        Object obj2 = this.f1177d;
        Object obj3 = this.f1176c;
        switch (i3) {
            case 0:
                h hVar = (h) obj3;
                c identity = (c) obj2;
                String str = (String) obj;
                String strA = identity.a();
                String str2 = identity.b;
                String str3 = identity.f1175a;
                File fileA = hVar.a(strA + ".json");
                String str4 = "profile";
                String str5 = "core";
                if (!Files.exists(fileA.toPath(), LinkOption.NOFOLLOW_LINKS)) {
                    if (!Files.notExists(fileA.toPath(), LinkOption.NOFOLLOW_LINKS)) {
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                    i iVar = i.b;
                    j selection = new j(iVar, str, (String) null, (b) null, (b) null, CollectionsKt.emptyList());
                    Intrinsics.checkNotNullParameter(identity, "identity");
                    Intrinsics.checkNotNullParameter(selection, "selection");
                    File file = hVar.b;
                    m mVar = new m();
                    mVar.g = true;
                    l lVarA = mVar.a();
                    Pair pair = TuplesKt.to("schema", 1);
                    Pair pair2 = TuplesKt.to("gameId", str3);
                    Pair pair3 = TuplesKt.to("canonicalContentPath", str2);
                    Pair pair4 = TuplesKt.to("mode", iVar.name());
                    Pair pair5 = TuplesKt.to("engine", str);
                    Pair pair6 = TuplesKt.to("detectedEngineVersion", null);
                    Pair pair7 = TuplesKt.to("core", h.c(null));
                    Pair pair8 = TuplesKt.to("profile", h.c(null));
                    List list = (List) selection.f;
                    ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        arrayList.add(h.c((b) it.next()));
                    }
                    String strG = lVarA.g(MapsKt.mapOf(pair, pair2, pair3, pair4, pair5, pair6, pair7, pair8, TuplesKt.to("patches", arrayList), TuplesKt.to("lastKnownGood", Boolean.FALSE)));
                    Intrinsics.checkNotNullExpressionValue(strG, "toJson(...)");
                    byte[] bytes = strG.getBytes(Charsets.UTF_8);
                    Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                    if (bytes.length > 65536) {
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                    File fileA2 = hVar.a(identity.a() + ".json");
                    File fileCreateTempFile = File.createTempFile("lock-", ".tmp", file);
                    try {
                        if (!Intrinsics.areEqual(fileCreateTempFile.getCanonicalFile().getParentFile(), file)) {
                            throw new IllegalArgumentException("Failed requirement.");
                        }
                        FileOutputStream fileOutputStream = new FileOutputStream(fileCreateTempFile);
                        try {
                            fileOutputStream.write(bytes);
                            fileOutputStream.getFD().sync();
                            Unit unit = Unit.INSTANCE;
                            CloseableKt.closeFinally(fileOutputStream, null);
                            String name = fileA2.getName();
                            Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                            hVar.a(name);
                            d dVar = hVar.f1183a;
                            Intrinsics.checkNotNull(fileCreateTempFile);
                            dVar.invoke(fileCreateTempFile, fileA2);
                            fileCreateTempFile.delete();
                            return a.b;
                        } catch (Throwable th) {
                            try {
                                throw th;
                            } catch (Throwable th2) {
                                CloseableKt.closeFinally(fileOutputStream, th);
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        fileCreateTempFile.delete();
                        throw th3;
                    }
                }
                if (!fileA.isFile()) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                if (fileA.length() > 65536) {
                    throw new IllegalArgumentException("Failed requirement.");
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                FileInputStream fileInputStream = new FileInputStream(fileA);
                try {
                    byte[] bArr = new byte[4096];
                    while (true) {
                        int i7 = fileInputStream.read(bArr);
                        if (i7 < 0) {
                            String str6 = str5;
                            String str7 = str4;
                            Unit unit2 = Unit.INSTANCE;
                            CloseableKt.closeFinally(fileInputStream, null);
                            CharsetDecoder charsetDecoderNewDecoder = Charsets.UTF_8.newDecoder();
                            CodingErrorAction codingErrorAction = CodingErrorAction.REPORT;
                            String string = charsetDecoderNewDecoder.onMalformedInput(codingErrorAction).onUnmappableCharacter(codingErrorAction).decode(ByteBuffer.wrap(byteArrayOutputStream.toByteArray())).toString();
                            Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                            int i8 = 0;
                            while (i8 < string.length()) {
                                char cCharAt = string.charAt(i8);
                                if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\r') {
                                    int i9 = 32;
                                    if (cCharAt != ' ') {
                                        if (cCharAt == '\"') {
                                            i8++;
                                            while (true) {
                                                if (i8 < string.length()) {
                                                    int i10 = i8 + 1;
                                                    char cCharAt2 = string.charAt(i8);
                                                    if (Intrinsics.compare((int) cCharAt2, i9) < 0) {
                                                        throw new IllegalArgumentException("Failed requirement.");
                                                    }
                                                    if (cCharAt2 == '\"') {
                                                        i8 = i10;
                                                        z2 = true;
                                                    } else {
                                                        if (cCharAt2 != '\\') {
                                                            i8 = i10;
                                                        } else {
                                                            if (i10 >= string.length()) {
                                                                throw new IllegalArgumentException("Failed requirement.");
                                                            }
                                                            i8 += 2;
                                                            char cCharAt3 = string.charAt(i10);
                                                            if (cCharAt3 != '\"' && cCharAt3 != '/' && cCharAt3 != '\\' && cCharAt3 != 'b' && cCharAt3 != 'f' && cCharAt3 != 'n' && cCharAt3 != 'r' && cCharAt3 != 't') {
                                                                if (cCharAt3 != 'u') {
                                                                    throw new IllegalStateException("Invalid JSON escape");
                                                                }
                                                                for (int i11 = 0; i11 < 4; i11++) {
                                                                    if (i8 >= string.length() || !StringsKt__StringsKt.contains$default("0123456789abcdefABCDEF", string.charAt(i8), false, 2, (Object) null)) {
                                                                        throw new IllegalArgumentException("Failed requirement.");
                                                                    }
                                                                    i8++;
                                                                }
                                                            }
                                                        }
                                                        i9 = 32;
                                                    }
                                                } else {
                                                    z2 = false;
                                                }
                                            }
                                            if (!z2) {
                                                throw new IllegalArgumentException("Failed requirement.");
                                            }
                                        } else if (cCharAt != ',' && cCharAt != ':' && cCharAt != '[' && cCharAt != ']' && cCharAt != '{' && cCharAt != '}') {
                                            int i12 = i8;
                                            while (i12 < string.length() && !StringsKt__StringsKt.contains$default(" \t\r\n{}[]:,\"", string.charAt(i12), false, 2, (Object) null)) {
                                                i12++;
                                            }
                                            String strSubstring = string.substring(i8, i12);
                                            Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                                            if (!CollectionsKt.listOf((Object[]) new String[]{"true", "false", "null"}).contains(strSubstring) && !h.f1181c.matches(strSubstring)) {
                                                throw new IllegalArgumentException("Failed requirement.");
                                            }
                                            i8 = i12;
                                        }
                                    }
                                }
                                i8++;
                            }
                            p1.a aVar = new p1.a(new StringReader(string));
                            try {
                                aVar.f5220c = false;
                                Object objD = h.d(aVar, 0);
                                if (aVar.v() != 10) {
                                    throw new IllegalArgumentException("Failed requirement.");
                                }
                                Map map = objD instanceof Map ? (Map) objD : null;
                                if (map == null) {
                                    throw new IllegalStateException("Expected object");
                                }
                                CloseableKt.closeFinally(aVar, null);
                                if (!Intrinsics.areEqual(map.keySet(), SetsKt.setOf((Object[]) new String[]{"schema", "gameId", "canonicalContentPath", "mode", "engine", "detectedEngineVersion", "core", "profile", "patches", "lastKnownGood"}))) {
                                    throw new IllegalArgumentException("Failed requirement.");
                                }
                                if (!Intrinsics.areEqual(map.get("schema"), new f("1"))) {
                                    throw new IllegalArgumentException("Failed requirement.");
                                }
                                if (!Intrinsics.areEqual(map.get("gameId"), str3)) {
                                    throw new IllegalArgumentException("Failed requirement.");
                                }
                                if (!Intrinsics.areEqual(map.get("canonicalContentPath"), str2)) {
                                    throw new IllegalArgumentException("Failed requirement.");
                                }
                                Object obj4 = map.get("patches");
                                List list2 = obj4 instanceof List ? (List) obj4 : null;
                                if (list2 == null) {
                                    throw new IllegalStateException("Expected patches");
                                }
                                Object obj5 = map.get("mode");
                                Intrinsics.checkNotNull(obj5, "null cannot be cast to non-null type kotlin.String");
                                i iVarValueOf = i.valueOf((String) obj5);
                                Object obj6 = map.get("engine");
                                if (obj6 != null && !(obj6 instanceof String)) {
                                    throw new IllegalArgumentException("Failed requirement.");
                                }
                                String str8 = (String) obj6;
                                Object obj7 = map.get("detectedEngineVersion");
                                if (obj7 != null && !(obj7 instanceof String)) {
                                    throw new IllegalArgumentException("Failed requirement.");
                                }
                                String str9 = (String) obj7;
                                b bVarB = h.b(map.get(str6));
                                b bVarB2 = h.b(map.get(str7));
                                ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10));
                                Iterator it2 = list2.iterator();
                                while (it2.hasNext()) {
                                    b bVarB3 = h.b(it2.next());
                                    if (bVarB3 == null) {
                                        throw new IllegalArgumentException("Required value was null.");
                                    }
                                    arrayList2.add(bVarB3);
                                }
                                j selection2 = new j(iVarValueOf, str8, str9, bVarB, bVarB2, arrayList2);
                                Object obj8 = map.get("lastKnownGood");
                                Intrinsics.checkNotNull(obj8, "null cannot be cast to non-null type kotlin.Boolean");
                                ((Boolean) obj8).getClass();
                                Intrinsics.checkNotNullParameter(identity, "identity");
                                Intrinsics.checkNotNullParameter(selection2, "selection");
                                int iOrdinal = iVarValueOf.ordinal();
                                if (iOrdinal == 0) {
                                    return a.f1170c;
                                }
                                if (iOrdinal == 1) {
                                    return a.f1171d;
                                }
                                throw new NoWhenBranchMatchedException();
                            } catch (Throwable th4) {
                                try {
                                    throw th4;
                                } catch (Throwable th5) {
                                    CloseableKt.closeFinally(aVar, th4);
                                    throw th5;
                                }
                            }
                        }
                        String str10 = str4;
                        String str11 = str5;
                        if (byteArrayOutputStream.size() + i7 > 65536) {
                            throw new IllegalArgumentException("Failed requirement.");
                        }
                        byteArrayOutputStream.write(bArr, 0, i7);
                        str4 = str10;
                        str5 = str11;
                    }
                } catch (Throwable th6) {
                    try {
                        throw th6;
                    } catch (Throwable th7) {
                        CloseableKt.closeFinally(fileInputStream, th6);
                        throw th7;
                    }
                }
                break;
            case 1:
                return CfWebViewRenderHost.attach$lambda$6((Ref.BooleanRef) obj3, (WindowManager) obj2, (WebView) obj);
            case 2:
                List<File> list3 = (List) obj3;
                C0425x0 c0425x0 = (C0425x0) obj2;
                File file2 = (File) obj;
                int size = list3.size();
                if (size == 0) {
                    c0425x0.g(R.string.godot_cheat_no_save);
                } else if (size != 1) {
                    DateFormat dateTimeInstance = DateFormat.getDateTimeInstance(3, 3);
                    ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10));
                    for (File file3 : list3) {
                        arrayList3.add(FilesKt.relativeTo(file3, file2).getPath() + "\n" + dateTimeInstance.format(new Date(file3.lastModified())));
                    }
                    String[] strArr = (String[]) arrayList3.toArray(new String[0]);
                    O0.b bVar = new O0.b(c0425x0.f6399a, 0);
                    C0240b c0240b = (C0240b) bVar.f4145c;
                    bVar.j(R.string.godot_cheat_pick_save);
                    DialogInterfaceOnClickListenerC0091o0 dialogInterfaceOnClickListenerC0091o0 = new DialogInterfaceOnClickListenerC0091o0(i4, c0425x0, list3);
                    c0240b.f4109q = strArr;
                    c0240b.f4111s = dialogInterfaceOnClickListenerC0091o0;
                    bVar.f(android.R.string.cancel, null);
                    c0240b.f4107o = new DialogInterfaceOnDismissListenerC0393m0(c0425x0, 0);
                    bVar.e();
                } else {
                    new Thread(new RunnableC0390l0(c0425x0, (File) list3.get(0), i6)).start();
                }
                return Unit.INSTANCE;
            case 3:
                C0358a1 c0358a1 = (C0358a1) obj3;
                List list4 = (List) obj2;
                C0425x0 c0425x1 = (C0425x0) obj;
                if (c0358a1 == null || list4 == null) {
                    c0425x1.g(R.string.godot_cheat_unreadable);
                } else if (list4.isEmpty()) {
                    c0425x1.g(R.string.godot_cheat_no_fields);
                } else {
                    String string2 = c0425x1.f6399a.getString(R.string.godot_cheat_title, c0358a1.f6179a.getName());
                    Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                    c0425x1.d(string2, list4, null, new H(i5, c0425x1, c0358a1));
                }
                return Unit.INSTANCE;
            default:
                Pair pair9 = (Pair) obj3;
                GodotGameActivity godotGameActivity = (GodotGameActivity) obj2;
                Pair pair10 = (Pair) obj;
                int i13 = GodotGameActivity.f3707q;
                if (((Number) pair9.getFirst()).intValue() != 0 && (v5 = godotGameActivity.b) != null) {
                    Object first = pair9.getFirst();
                    Boolean bool = Boolean.FALSE;
                    v5.b("key", first, 0, 0, bool, bool);
                }
                if (((Number) pair9.getSecond()).intValue() != 0 && (v4 = godotGameActivity.b) != null) {
                    Object second = pair9.getSecond();
                    Boolean bool2 = Boolean.FALSE;
                    v4.b("key", second, 0, 0, bool2, bool2);
                }
                if (((Number) pair10.getFirst()).intValue() != 0 && (v3 = godotGameActivity.b) != null) {
                    v3.b("key", pair10.getFirst(), 0, 0, Boolean.TRUE, Boolean.FALSE);
                }
                if (((Number) pair10.getSecond()).intValue() != 0 && (v2 = godotGameActivity.b) != null) {
                    v2.b("key", pair10.getSecond(), 0, 0, Boolean.TRUE, Boolean.FALSE);
                }
                return Unit.INSTANCE;
        }
    }
}
