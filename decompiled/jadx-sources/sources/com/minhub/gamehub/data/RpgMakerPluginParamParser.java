package com.minhub.gamehub.data;

import java.io.File;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0012B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00052\b\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u0006J\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00052\u0006\u0010\f\u001a\u00020\u0006J\u0012\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00020\u0006H\u0002J\u001e\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00102\u0006\u0010\u0011\u001a\u00020\u0006H\u0002¨\u0006\u0013"}, d2 = {"Lcom/minhub/gamehub/data/RpgMakerPluginParamParser;", "", "<init>", "()V", "specsForPlugin", "", "", "Lcom/minhub/gamehub/data/PluginParamSpec;", "pluginsFile", "Ljava/io/File;", "pluginName", "parse", "jsText", "extractAnnotationBlock", "js", "splitTag", "Lkotlin/Pair;", "line", "MutableParam", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRpgMakerPluginParamSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RpgMakerPluginParamSpec.kt\ncom/minhub/gamehub/data/RpgMakerPluginParamParser\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,119:1\n1#2:120\n*E\n"})
public final class RpgMakerPluginParamParser {
    public static final RpgMakerPluginParamParser INSTANCE = new RpgMakerPluginParamParser();

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0017\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\u0003J\u000e\u0010#\u001a\u00020!2\u0006\u0010$\u001a\u00020\u0003J\b\u0010%\u001a\u00020!H\u0002J\u0006\u0010&\u001a\u00020'R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\u0007\"\u0004\b\n\u0010\u0005R\u001a\u0010\u000b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\u0007\"\u0004\b\r\u0010\u0005R\u001a\u0010\u000e\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0007\"\u0004\b\u0010\u0010\u0005R\u001a\u0010\u0011\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0007\"\u0004\b\u0013\u0010\u0005R\u001a\u0010\u0014\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0007\"\u0004\b\u0016\u0010\u0005R\u001a\u0010\u0017\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0007\"\u0004\b\u0019\u0010\u0005R\u0017\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001b¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001eR\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006("}, d2 = {"Lcom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam;", "", "name", "", "<init>", "(Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "text", "getText", "setText", "type", "getType", "setType", "desc", "getDesc", "setDesc", "default", "getDefault", "setDefault", "on", "getOn", "setOn", "off", "getOff", "setOff", "options", "", "Lcom/minhub/gamehub/data/PluginParamOption;", "getOptions", "()Ljava/util/List;", "pendingLabel", "startOption", "", "label", "setOptionValue", "value", "flushPending", "toSpec", "Lcom/minhub/gamehub/data/PluginParamSpec;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nRpgMakerPluginParamSpec.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RpgMakerPluginParamSpec.kt\ncom/minhub/gamehub/data/RpgMakerPluginParamParser$MutableParam\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,119:1\n1#2:120\n*E\n"})
    public static final class MutableParam {
        private String default;
        private String desc;
        private final String name;
        private String off;
        private String on;
        private final List<PluginParamOption> options;
        private String pendingLabel;
        private String text;
        private String type;

        public MutableParam(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.name = name;
            this.text = "";
            this.type = "";
            this.desc = "";
            this.default = "";
            this.on = "";
            this.off = "";
            this.options = new ArrayList();
        }

        private final void flushPending() {
            String str = this.pendingLabel;
            if (str != null) {
                this.options.add(new PluginParamOption(str, str));
            }
            this.pendingLabel = null;
        }

        public final String getDefault() {
            return this.default;
        }

        public final String getDesc() {
            return this.desc;
        }

        public final String getName() {
            return this.name;
        }

        public final String getOff() {
            return this.off;
        }

        public final String getOn() {
            return this.on;
        }

        public final List<PluginParamOption> getOptions() {
            return this.options;
        }

        public final String getText() {
            return this.text;
        }

        public final String getType() {
            return this.type;
        }

        public final void setDefault(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.default = str;
        }

        public final void setDesc(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.desc = str;
        }

        public final void setOff(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.off = str;
        }

        public final void setOn(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.on = str;
        }

        public final void setOptionValue(String value) {
            Intrinsics.checkNotNullParameter(value, "value");
            String str = this.pendingLabel;
            if (str == null) {
                str = value;
            }
            this.options.add(new PluginParamOption(str, value));
            this.pendingLabel = null;
        }

        public final void setText(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.text = str;
        }

        public final void setType(String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.type = str;
        }

        public final void startOption(String label) {
            Intrinsics.checkNotNullParameter(label, "label");
            flushPending();
            this.pendingLabel = label;
        }

        public final PluginParamSpec toSpec() {
            flushPending();
            String str = this.name;
            String str2 = this.text;
            if (StringsKt.isBlank(str2)) {
                str2 = this.name;
            }
            String str3 = str2;
            String str4 = this.type;
            List list = CollectionsKt.toList(this.options);
            String str5 = this.default;
            String str6 = this.desc;
            String str7 = this.on;
            if (StringsKt.isBlank(str7)) {
                str7 = "ON";
            }
            String str8 = str7;
            String str9 = this.off;
            if (StringsKt.isBlank(str9)) {
                str9 = "OFF";
            }
            return new PluginParamSpec(str, str3, str4, list, str5, str6, str8, str9);
        }
    }

    private RpgMakerPluginParamParser() {
    }

    private final String extractAnnotationBlock(String js) {
        List<String> groupValues;
        MatchResult matchResultFind$default = Regex.find$default(new Regex("/\\*:[a-zA-Z-]*(.*?)\\*/", RegexOption.DOT_MATCHES_ALL), js, 0, 2, null);
        if (matchResultFind$default == null || (groupValues = matchResultFind$default.getGroupValues()) == null) {
            return null;
        }
        return (String) CollectionsKt.getOrNull(groupValues, 1);
    }

    private final Pair<String, String> splitTag(String line) {
        if (!StringsKt.N(line, "@")) {
            return null;
        }
        String strSubstring = line.substring(1);
        Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
        int iIndexOf$default = StringsKt__StringsKt.indexOf$default((CharSequence) strSubstring, ' ', 0, false, 6, (Object) null);
        if (iIndexOf$default < 0) {
            String lowerCase = strSubstring.toLowerCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
            return TuplesKt.to(lowerCase, "");
        }
        String strSubstring2 = strSubstring.substring(0, iIndexOf$default);
        Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
        String lowerCase2 = strSubstring2.toLowerCase(Locale.ROOT);
        Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
        String strSubstring3 = strSubstring.substring(iIndexOf$default + 1);
        Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
        return TuplesKt.to(lowerCase2, StringsKt.trim((CharSequence) strSubstring3).toString());
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final Map<String, PluginParamSpec> parse(String jsText) {
        Intrinsics.checkNotNullParameter(jsText, "jsText");
        String strExtractAnnotationBlock = extractAnnotationBlock(jsText);
        if (strExtractAnnotationBlock == null) {
            return MapsKt.emptyMap();
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        MutableParam mutableParam = null;
        for (String str : StringsKt.lineSequence(strExtractAnnotationBlock)) {
            Intrinsics.checkNotNullExpressionValue(str, "next(...)");
            Pair<String, String> pairSplitTag = splitTag(StringsKt.trim((CharSequence) StringsKt__StringsKt.removePrefix(StringsKt.trim((CharSequence) str).toString(), (CharSequence) "*")).toString());
            if (pairSplitTag != null) {
                String strComponent1 = pairSplitTag.component1();
                String strComponent2 = pairSplitTag.component2();
                switch (strComponent1.hashCode()) {
                    case -1010136971:
                        if (strComponent1.equals("option") && mutableParam != null) {
                            mutableParam.startOption(strComponent2);
                        }
                        break;
                    case 3551:
                        if (strComponent1.equals("on") && mutableParam != null) {
                            mutableParam.setOn(strComponent2);
                        }
                        break;
                    case 109935:
                        if (strComponent1.equals("off") && mutableParam != null) {
                            mutableParam.setOff(strComponent2);
                        }
                        break;
                    case 3079825:
                        if (strComponent1.equals("desc") && mutableParam != null) {
                            mutableParam.setDesc(strComponent2);
                        }
                        break;
                    case 3556653:
                        if (strComponent1.equals("text") && mutableParam != null) {
                            mutableParam.setText(strComponent2);
                        }
                        break;
                    case 3575610:
                        if (strComponent1.equals("type") && mutableParam != null) {
                            String lowerCase = strComponent2.toLowerCase(Locale.ROOT);
                            Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                            mutableParam.setType(StringsKt.trim((CharSequence) lowerCase).toString());
                        }
                        break;
                    case 106436749:
                        if (strComponent1.equals("param")) {
                            if (mutableParam != null) {
                                linkedHashMap.put(mutableParam.getName(), mutableParam.toSpec());
                            }
                            mutableParam = new MutableParam(StringsKt.trim((CharSequence) strComponent2).toString());
                        }
                        break;
                    case 111972721:
                        if (strComponent1.equals("value") && mutableParam != null) {
                            mutableParam.setOptionValue(strComponent2);
                        }
                        break;
                    case 1544803905:
                        if (strComponent1.equals("default") && mutableParam != null) {
                            mutableParam.setDefault(strComponent2);
                        }
                        break;
                }
            }
        }
        if (mutableParam != null) {
            linkedHashMap.put(mutableParam.getName(), mutableParam.toSpec());
        }
        return linkedHashMap;
    }

    public final Map<String, PluginParamSpec> specsForPlugin(File pluginsFile, String pluginName) {
        File parentFile;
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(pluginName, "pluginName");
        if (pluginsFile == null || (parentFile = pluginsFile.getParentFile()) == null) {
            return MapsKt.emptyMap();
        }
        File file = new File(parentFile, kotlin.collections.unsigned.a.g(pluginName, ".js"));
        if (!file.isFile()) {
            file = null;
        }
        if (file == null) {
            return MapsKt.emptyMap();
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(parse(FilesKt__FileReadWriteKt.readText$default(file, null, 1, null)));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        Map mapEmptyMap = MapsKt.emptyMap();
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = mapEmptyMap;
        }
        return (Map) objM9constructorimpl;
    }
}
