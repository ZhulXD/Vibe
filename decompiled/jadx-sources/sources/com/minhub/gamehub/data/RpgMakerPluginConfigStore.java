package com.minhub.gamehub.data;

import androidx.core.app.NotificationCompat;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.ExceptionsKt;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.SetsKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import p023i1.l;
import p023i1.n;
import p023i1.o;
import p023i1.r;
import p023i1.s;
import p028k1.k;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\bÆ\u0002\u0018\u00002\u00020\u0001:\u0003=>?B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J1\u0010\b\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`\u0007*\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J%\u0010\u0015\u001a\u0004\u0018\u00010\u0006*\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001b\u0010\u0017\u001a\u00020\u0013*\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0013\u0010\u0019\u001a\u00020\u0004*\u00020\u0004H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ/\u0010\u001b\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\u0005j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006`\u0007*\u00020\u0004H\u0002¢\u0006\u0004\b\u001b\u0010\tJ\u001f\u0010\u001e\u001a\n \u001d*\u0004\u0018\u00010\r0\r2\u0006\u0010\u001c\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010#\u001a\u00020\"2\u0006\u0010!\u001a\u00020 H\u0002¢\u0006\u0004\b#\u0010$J\u001d\u0010'\u001a\u00020\"2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u000f0%H\u0002¢\u0006\u0004\b'\u0010(J\u001b\u0010)\u001a\b\u0012\u0004\u0012\u00020\u000f0%2\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b)\u0010*J\u001b\u0010+\u001a\u00020\u00062\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u000f0%¢\u0006\u0004\b+\u0010,J!\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00060%2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u000f0%¢\u0006\u0004\b-\u0010.J\u0017\u00100\u001a\u0004\u0018\u00010 2\u0006\u0010/\u001a\u00020 ¢\u0006\u0004\b0\u00101J\u0015\u00102\u001a\u00020 2\u0006\u0010!\u001a\u00020 ¢\u0006\u0004\b2\u00101J-\u00105\u001a\u00020\"2\u0006\u0010!\u001a\u00020 2\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u000f0%2\b\b\u0002\u00104\u001a\u000203¢\u0006\u0004\b5\u00106R\u0014\u00108\u001a\u0002078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R\u0014\u0010;\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<¨\u0006@"}, d2 = {"Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore;", "", "<init>", "()V", "Li1/r;", "Ljava/util/LinkedHashMap;", "", "Lkotlin/collections/LinkedHashMap;", "toLinkedHashMap", "(Li1/r;)Ljava/util/LinkedHashMap;", "raw", "extractPluginsArrayJson", "(Ljava/lang/String;)Ljava/lang/String;", "Li1/o;", "element", "Lcom/minhub/gamehub/data/RpgMakerPluginConfig;", "parsePluginEntry", "(Li1/o;)Lcom/minhub/gamehub/data/RpgMakerPluginConfig;", "key", "", "required", "requireString", "(Li1/r;Ljava/lang/String;Z)Ljava/lang/String;", "requireBoolean", "(Li1/r;Ljava/lang/String;)Z", "requireParametersObject", "(Li1/r;)Li1/r;", "extractExtraFields", "rawJson", "kotlin.jvm.PlatformType", "parseJsonValue", "(Ljava/lang/String;)Li1/o;", "Ljava/io/File;", "pluginsFile", "", "validatePluginsFileTarget", "(Ljava/io/File;)V", "", "configs", "validateConfigs", "(Ljava/util/List;)V", "parse", "(Ljava/lang/String;)Ljava/util/List;", "serialize", "(Ljava/util/List;)Ljava/lang/String;", "enabledPluginNames", "(Ljava/util/List;)Ljava/util/List;", "rootDir", "resolvePluginFile", "(Ljava/io/File;)Ljava/io/File;", "backupFileFor", "Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore$FileWriter;", "writer", "save", "(Ljava/io/File;Ljava/util/List;Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore$FileWriter;)V", "Li1/l;", "gson", "Li1/l;", "Lkotlin/text/Regex;", "pluginsAssignmentPrefixRegex", "Lkotlin/text/Regex;", "BackupRestoreFailedException", "FileWriter", "DefaultFileWriter", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRpgMakerPluginConfigStore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RpgMakerPluginConfigStore.kt\ncom/minhub/gamehub/data/RpgMakerPluginConfigStore\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,239:1\n1563#2:240\n1634#2,3:241\n1563#2:244\n1634#2,2:245\n1636#2:251\n774#2:252\n865#2,2:253\n1563#2:255\n1634#2,3:256\n1869#2,2:259\n1869#2,2:262\n1869#2:264\n1869#2,2:265\n1869#2,2:267\n1869#2,2:269\n1870#2:271\n216#3,2:247\n216#3,2:249\n1#4:261\n*S KotlinDebug\n*F\n+ 1 RpgMakerPluginConfigStore.kt\ncom/minhub/gamehub/data/RpgMakerPluginConfigStore\n*L\n27#1:240\n27#1:241,3\n33#1:244\n33#1:245,2\n33#1:251\n50#1:252\n50#1:253,2\n50#1:255\n50#1:256,3\n96#1:259,2\n193#1:262,2\n221#1:264\n225#1:265,2\n230#1:267,2\n235#1:269,2\n221#1:271\n39#1:247,2\n41#1:249,2\n*E\n"})
public final class RpgMakerPluginConfigStore {
    public static final RpgMakerPluginConfigStore INSTANCE = new RpgMakerPluginConfigStore();
    private static final l gson = new l();
    private static final Regex pluginsAssignmentPrefixRegex = new Regex("var\\s+\\$plugins\\s*=\\s*");

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0003\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore$BackupRestoreFailedException;", "Ljava/lang/IllegalStateException;", "Lkotlin/IllegalStateException;", "message", "", "cause", "", "<init>", "(Ljava/lang/String;Ljava/lang/Throwable;)V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class BackupRestoreFailedException extends IllegalStateException {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BackupRestoreFailedException(String message, Throwable cause) {
            super(message, cause);
            Intrinsics.checkNotNullParameter(message, "message");
            Intrinsics.checkNotNullParameter(cause, "cause");
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bÂ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\n"}, d2 = {"Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore$DefaultFileWriter;", "Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore$FileWriter;", "<init>", "()V", "write", "", "target", "Ljava/io/File;", "text", "", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class DefaultFileWriter implements FileWriter {
        public static final DefaultFileWriter INSTANCE = new DefaultFileWriter();

        private DefaultFileWriter() {
        }

        @Override // com.minhub.gamehub.data.RpgMakerPluginConfigStore.FileWriter
        public void write(File target, String text) {
            Intrinsics.checkNotNullParameter(target, "target");
            Intrinsics.checkNotNullParameter(text, "text");
            FilesKt__FileReadWriteKt.writeText$default(target, text, null, 2, null);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H&¨\u0006\bÀ\u0006\u0003"}, d2 = {"Lcom/minhub/gamehub/data/RpgMakerPluginConfigStore$FileWriter;", "", "write", "", "target", "Ljava/io/File;", "text", "", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public interface FileWriter {
        void write(File target, String text);
    }

    private RpgMakerPluginConfigStore() {
    }

    private final LinkedHashMap<String, String> extractExtraFields(r rVar) {
        LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<>();
        Set setEntrySet = rVar.b.entrySet();
        Intrinsics.checkNotNullExpressionValue(setEntrySet, "entrySet(...)");
        for (Map.Entry entry : (k) setEntrySet) {
            Intrinsics.checkNotNull(entry);
            String str = (String) entry.getKey();
            o oVar = (o) entry.getValue();
            if (!SetsKt.setOf((Object[]) new String[]{"name", NotificationCompat.CATEGORY_STATUS, "description", "parameters"}).contains(str)) {
                linkedHashMap.put(str, gson.f(oVar));
            }
        }
        return linkedHashMap;
    }

    private final String extractPluginsArrayJson(String raw) {
        MatchResult matchResultFind$default = Regex.find$default(pluginsAssignmentPrefixRegex, raw, 0, 2, null);
        if (matchResultFind$default == null) {
            throw new IllegalArgumentException("Unsupported plugins.js format");
        }
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) raw, '[', matchResultFind$default.getRange().getLast() + 1, false, 4, (Object) null);
        if (iIndexOf$default == -1) {
            throw new IllegalArgumentException("Unsupported plugins.js format");
        }
        int length = raw.length();
        boolean z2 = false;
        boolean z3 = false;
        int i3 = 0;
        for (int i4 = iIndexOf$default; i4 < length; i4++) {
            char cCharAt = raw.charAt(i4);
            if (z2) {
                if (z3) {
                    z3 = false;
                } else if (cCharAt == '\\') {
                    z3 = true;
                } else if (cCharAt == '\"') {
                    z2 = false;
                }
            } else if (cCharAt == '\"') {
                z2 = true;
            } else if (cCharAt == '[') {
                i3++;
            } else if (cCharAt == ']' && (i3 = i3 - 1) == 0) {
                String strSubstring = raw.substring(iIndexOf$default, i4 + 1);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                return strSubstring;
            }
        }
        throw new IllegalArgumentException("Unsupported plugins.js format");
    }

    private final o parseJsonValue(String rawJson) {
        Object objM9constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(p000a.a.E(rawJson));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(objM9constructorimpl);
        if (thM12exceptionOrNullimpl == null) {
            return (o) objM9constructorimpl;
        }
        throw new IllegalArgumentException("Unsupported plugins.js format", thM12exceptionOrNullimpl);
    }

    private final RpgMakerPluginConfig parsePluginEntry(o element) {
        String string;
        element.getClass();
        if (!(element instanceof r)) {
            element = null;
        }
        if (element == null) {
            throw new IllegalArgumentException("Unsupported plugins.js format");
        }
        r rVarD = element.d();
        String strRequireString = requireString(rVarD, "name", true);
        if (strRequireString == null || (string = StringsKt.trim((CharSequence) strRequireString).toString()) == null) {
            throw new IllegalArgumentException("Plugin entry missing name");
        }
        if (string.length() == 0) {
            throw new IllegalArgumentException("Plugin entry missing name");
        }
        boolean zRequireBoolean = requireBoolean(rVarD, NotificationCompat.CATEGORY_STATUS);
        String strRequireString2 = requireString(rVarD, "description", false);
        if (strRequireString2 == null) {
            strRequireString2 = "";
        }
        return new RpgMakerPluginConfig(string, zRequireBoolean, strRequireString2, toLinkedHashMap(requireParametersObject(rVarD)), extractExtraFields(rVarD));
    }

    private final boolean requireBoolean(r rVar, String str) {
        o oVarK = rVar.k(str);
        if (oVarK == null) {
            throw new IllegalArgumentException("Plugin entry missing status");
        }
        if ((oVarK instanceof s) && (oVarK.e().b instanceof Boolean)) {
            return oVarK.b();
        }
        throw new IllegalArgumentException("Unsupported plugins.js format");
    }

    private final r requireParametersObject(r rVar) {
        o oVarK = rVar.k("parameters");
        if (oVarK == null) {
            return new r();
        }
        if (!(oVarK instanceof r)) {
            throw new IllegalArgumentException("Unsupported plugins.js format");
        }
        r rVarD = oVarK.d();
        Intrinsics.checkNotNullExpressionValue(rVarD, "getAsJsonObject(...)");
        return rVarD;
    }

    private final String requireString(r rVar, String str, boolean z2) {
        o oVarK = rVar.k(str);
        if (oVarK == null) {
            if (z2) {
                throw new IllegalArgumentException("Unsupported plugins.js format");
            }
            return null;
        }
        if ((oVarK instanceof s) && (oVarK.e().b instanceof String)) {
            return oVarK.f();
        }
        throw new IllegalArgumentException("Unsupported plugins.js format");
    }

    public static /* synthetic */ void save$default(RpgMakerPluginConfigStore rpgMakerPluginConfigStore, File file, List list, FileWriter fileWriter, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            fileWriter = DefaultFileWriter.INSTANCE;
        }
        rpgMakerPluginConfigStore.save(file, list, fileWriter);
    }

    private final LinkedHashMap<String, String> toLinkedHashMap(r rVar) {
        LinkedHashMap<String, String> linkedHashMap = new LinkedHashMap<>();
        if (rVar != null) {
            for (Map.Entry entry : (k) rVar.b.entrySet()) {
                Intrinsics.checkNotNull(entry);
                String str = (String) entry.getKey();
                o oVar = (o) entry.getValue();
                oVar.getClass();
                boolean z2 = oVar instanceof s;
                linkedHashMap.put(str, (z2 && (oVar.e().b instanceof String)) ? oVar.f() : z2 ? oVar.e().f() : gson.f(oVar));
            }
        }
        return linkedHashMap;
    }

    private final void validateConfigs(List<RpgMakerPluginConfig> configs) {
        for (RpgMakerPluginConfig rpgMakerPluginConfig : configs) {
            if (StringsKt.isBlank(rpgMakerPluginConfig.getName())) {
                throw new IllegalArgumentException("Plugin entry missing name");
            }
            Set<String> setKeySet = rpgMakerPluginConfig.getParameters().keySet();
            Intrinsics.checkNotNullExpressionValue(setKeySet, "<get-keys>(...)");
            for (String str : setKeySet) {
                Intrinsics.checkNotNull(str);
                if (StringsKt.isBlank(str)) {
                    throw new IllegalArgumentException("Plugin parameter key is invalid");
                }
            }
            Set<String> setKeySet2 = rpgMakerPluginConfig.getExtraFieldsJson().keySet();
            Intrinsics.checkNotNullExpressionValue(setKeySet2, "<get-keys>(...)");
            for (String str2 : setKeySet2) {
                Intrinsics.checkNotNull(str2);
                if (StringsKt.isBlank(str2) || SetsKt.setOf((Object[]) new String[]{"name", NotificationCompat.CATEGORY_STATUS, "description", "parameters"}).contains(str2)) {
                    throw new IllegalArgumentException("Plugin extra field key is invalid");
                }
            }
            Collection<String> collectionValues = rpgMakerPluginConfig.getExtraFieldsJson().values();
            Intrinsics.checkNotNullExpressionValue(collectionValues, "<get-values>(...)");
            RpgMakerPluginConfigStore rpgMakerPluginConfigStore = INSTANCE;
            Iterator<T> it = collectionValues.iterator();
            while (it.hasNext()) {
                rpgMakerPluginConfigStore.parseJsonValue((String) it.next());
            }
        }
    }

    private final void validatePluginsFileTarget(File pluginsFile) {
        String path;
        String strF;
        File parentFile = pluginsFile.getParentFile();
        String strTrimEnd = (parentFile == null || (path = parentFile.getPath()) == null || (strF = StringsKt.F(path, '\\', '/')) == null) ? null : StringsKt.trimEnd(strF, '/');
        boolean z2 = strTrimEnd != null && StringsKt__StringsJVMKt.endsWith$default(strTrimEnd, "/js", false, 2, null);
        if (!Intrinsics.areEqual(pluginsFile.getName(), "plugins.js") || !z2) {
            throw new IllegalArgumentException("Invalid plugins.js target");
        }
        if (!pluginsFile.exists() || !pluginsFile.isFile() || !pluginsFile.canWrite()) {
            throw new IllegalArgumentException("plugins.js target is not writable");
        }
    }

    public final File backupFileFor(File pluginsFile) {
        Intrinsics.checkNotNullParameter(pluginsFile, "pluginsFile");
        return new File(pluginsFile.getParentFile(), kotlin.collections.unsigned.a.g(pluginsFile.getName(), ".bak"));
    }

    public final List<String> enabledPluginNames(List<RpgMakerPluginConfig> configs) {
        Intrinsics.checkNotNullParameter(configs, "configs");
        ArrayList arrayList = new ArrayList();
        for (Object obj : configs) {
            if (((RpgMakerPluginConfig) obj).getStatus()) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10));
        int size = arrayList.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj2 = arrayList.get(i3);
            i3++;
            arrayList2.add(((RpgMakerPluginConfig) obj2).getName());
        }
        return arrayList2;
    }

    public final List<RpgMakerPluginConfig> parse(String raw) {
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(raw, "raw");
        String strExtractPluginsArrayJson = extractPluginsArrayJson(raw);
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(p000a.a.E(strExtractPluginsArrayJson).c());
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(objM9constructorimpl);
        if (thM12exceptionOrNullimpl != null) {
            throw new IllegalArgumentException("Unsupported plugins.js format", thM12exceptionOrNullimpl);
        }
        n nVar = (n) objM9constructorimpl;
        Intrinsics.checkNotNull(nVar);
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(nVar, 10));
        ArrayList arrayList2 = nVar.b;
        int size = arrayList2.size();
        int i3 = 0;
        while (i3 < size) {
            Object obj = arrayList2.get(i3);
            i3++;
            o oVar = (o) obj;
            RpgMakerPluginConfigStore rpgMakerPluginConfigStore = INSTANCE;
            Intrinsics.checkNotNull(oVar);
            arrayList.add(rpgMakerPluginConfigStore.parsePluginEntry(oVar));
        }
        return arrayList;
    }

    public final File resolvePluginFile(File rootDir) {
        Intrinsics.checkNotNullParameter(rootDir, "rootDir");
        return GamePluginScanner.INSTANCE.resolvePluginsFile(rootDir);
    }

    public final void save(File pluginsFile, List<RpgMakerPluginConfig> configs, FileWriter writer) {
        Intrinsics.checkNotNullParameter(pluginsFile, "pluginsFile");
        Intrinsics.checkNotNullParameter(configs, "configs");
        Intrinsics.checkNotNullParameter(writer, "writer");
        validatePluginsFileTarget(pluginsFile);
        validateConfigs(configs);
        File fileBackupFileFor = backupFileFor(pluginsFile);
        FilesKt__FileReadWriteKt.writeText$default(fileBackupFileFor, FilesKt__FileReadWriteKt.readText$default(pluginsFile, null, 1, null), null, 2, null);
        try {
            writer.write(pluginsFile, serialize(configs));
        } catch (Throwable th) {
            try {
                FilesKt__FileReadWriteKt.writeText$default(pluginsFile, FilesKt__FileReadWriteKt.readText$default(fileBackupFileFor, null, 1, null), null, 2, null);
                throw th;
            } catch (Throwable th2) {
                BackupRestoreFailedException backupRestoreFailedException = new BackupRestoreFailedException("Failed to restore plugins.js from backup", th2);
                ExceptionsKt.addSuppressed(backupRestoreFailedException, th);
                throw backupRestoreFailedException;
            }
        }
    }

    public final String serialize(List<RpgMakerPluginConfig> configs) {
        Intrinsics.checkNotNullParameter(configs, "configs");
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(configs, 10));
        for (RpgMakerPluginConfig rpgMakerPluginConfig : configs) {
            r rVar = new r();
            rVar.j("name", rpgMakerPluginConfig.getName());
            rVar.h(NotificationCompat.CATEGORY_STATUS, Boolean.valueOf(rpgMakerPluginConfig.getStatus()));
            rVar.j("description", rpgMakerPluginConfig.getDescription());
            r rVar2 = new r();
            for (Map.Entry<String, String> entry : rpgMakerPluginConfig.getParameters().entrySet()) {
                rVar2.j(entry.getKey(), entry.getValue());
            }
            Unit unit = Unit.INSTANCE;
            rVar.g("parameters", rVar2);
            for (Map.Entry<String, String> entry2 : rpgMakerPluginConfig.getExtraFieldsJson().entrySet()) {
                rVar.g(entry2.getKey(), INSTANCE.parseJsonValue(entry2.getValue()));
            }
            arrayList.add(rVar);
        }
        return E.b.m("var $plugins = ", gson.g(arrayList), ";");
    }
}
