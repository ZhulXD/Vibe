package com.minhub.gamehub.data;

import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u000b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003¢\u0006\u0004\b\r\u0010\u000eJ\t\u0010\u0019\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001a\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001b\u001a\u00020\u0003HÆ\u0003J\u000f\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\b0\u0007HÆ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J_\u0010!\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\u000e\b\u0002\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u00032\b\b\u0002\u0010\u000b\u001a\u00020\u00032\b\b\u0002\u0010\f\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\"\u001a\u00020#2\b\u0010$\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010%\u001a\u00020&HÖ\u0001J\t\u0010'\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0010R\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0014R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0010R\u0011\u0010\n\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0010R\u0011\u0010\u000b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0010R\u0011\u0010\f\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0010¨\u0006("}, d2 = {"Lcom/minhub/gamehub/data/PluginParamSpec;", "", "name", "", "text", "type", "options", "", "Lcom/minhub/gamehub/data/PluginParamOption;", "defaultValue", "desc", "onText", "offText", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "getText", "getType", "getOptions", "()Ljava/util/List;", "getDefaultValue", "getDesc", "getOnText", "getOffText", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "copy", "equals", "", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class PluginParamSpec {
    private final String defaultValue;
    private final String desc;
    private final String name;
    private final String offText;
    private final String onText;
    private final List<PluginParamOption> options;
    private final String text;
    private final String type;

    public PluginParamSpec(String name, String text, String type, List<PluginParamOption> options, String defaultValue, String desc, String onText, String offText) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        Intrinsics.checkNotNullParameter(desc, "desc");
        Intrinsics.checkNotNullParameter(onText, "onText");
        Intrinsics.checkNotNullParameter(offText, "offText");
        this.name = name;
        this.text = text;
        this.type = type;
        this.options = options;
        this.defaultValue = defaultValue;
        this.desc = desc;
        this.onText = onText;
        this.offText = offText;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ PluginParamSpec copy$default(PluginParamSpec pluginParamSpec, String str, String str2, String str3, List list, String str4, String str5, String str6, String str7, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = pluginParamSpec.name;
        }
        if ((i3 & 2) != 0) {
            str2 = pluginParamSpec.text;
        }
        if ((i3 & 4) != 0) {
            str3 = pluginParamSpec.type;
        }
        if ((i3 & 8) != 0) {
            list = pluginParamSpec.options;
        }
        if ((i3 & 16) != 0) {
            str4 = pluginParamSpec.defaultValue;
        }
        if ((i3 & 32) != 0) {
            str5 = pluginParamSpec.desc;
        }
        if ((i3 & 64) != 0) {
            str6 = pluginParamSpec.onText;
        }
        if ((i3 & 128) != 0) {
            str7 = pluginParamSpec.offText;
        }
        String str8 = str6;
        String str9 = str7;
        String str10 = str4;
        String str11 = str5;
        return pluginParamSpec.copy(str, str2, str3, list, str10, str11, str8, str9);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getText() {
        return this.text;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getType() {
        return this.type;
    }

    public final List<PluginParamOption> component4() {
        return this.options;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getDefaultValue() {
        return this.defaultValue;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getDesc() {
        return this.desc;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final String getOnText() {
        return this.onText;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final String getOffText() {
        return this.offText;
    }

    public final PluginParamSpec copy(String name, String text, String type, List<PluginParamOption> options, String defaultValue, String desc, String onText, String offText) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(options, "options");
        Intrinsics.checkNotNullParameter(defaultValue, "defaultValue");
        Intrinsics.checkNotNullParameter(desc, "desc");
        Intrinsics.checkNotNullParameter(onText, "onText");
        Intrinsics.checkNotNullParameter(offText, "offText");
        return new PluginParamSpec(name, text, type, options, defaultValue, desc, onText, offText);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof PluginParamSpec)) {
            return false;
        }
        PluginParamSpec pluginParamSpec = (PluginParamSpec) other;
        return Intrinsics.areEqual(this.name, pluginParamSpec.name) && Intrinsics.areEqual(this.text, pluginParamSpec.text) && Intrinsics.areEqual(this.type, pluginParamSpec.type) && Intrinsics.areEqual(this.options, pluginParamSpec.options) && Intrinsics.areEqual(this.defaultValue, pluginParamSpec.defaultValue) && Intrinsics.areEqual(this.desc, pluginParamSpec.desc) && Intrinsics.areEqual(this.onText, pluginParamSpec.onText) && Intrinsics.areEqual(this.offText, pluginParamSpec.offText);
    }

    public final String getDefaultValue() {
        return this.defaultValue;
    }

    public final String getDesc() {
        return this.desc;
    }

    public final String getName() {
        return this.name;
    }

    public final String getOffText() {
        return this.offText;
    }

    public final String getOnText() {
        return this.onText;
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

    public int hashCode() {
        return this.offText.hashCode() + E.b.d(this.onText, E.b.d(this.desc, E.b.d(this.defaultValue, (this.options.hashCode() + E.b.d(this.type, E.b.d(this.text, this.name.hashCode() * 31, 31), 31)) * 31, 31), 31), 31);
    }

    public String toString() {
        String str = this.name;
        String str2 = this.text;
        String str3 = this.type;
        List<PluginParamOption> list = this.options;
        String str4 = this.defaultValue;
        String str5 = this.desc;
        String str6 = this.onText;
        String str7 = this.offText;
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("PluginParamSpec(name=", str, ", text=", str2, ", type=");
        sbJ.append(str3);
        sbJ.append(", options=");
        sbJ.append(list);
        sbJ.append(", defaultValue=");
        kotlin.collections.unsigned.a.n(sbJ, str4, ", desc=", str5, ", onText=");
        sbJ.append(str6);
        sbJ.append(", offText=");
        sbJ.append(str7);
        sbJ.append(")");
        return sbJ.toString();
    }

    public /* synthetic */ PluginParamSpec(String str, String str2, String str3, List list, String str4, String str5, String str6, String str7, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, (i3 & 8) != 0 ? CollectionsKt.emptyList() : list, (i3 & 16) != 0 ? "" : str4, (i3 & 32) != 0 ? "" : str5, (i3 & 64) != 0 ? "ON" : str6, (i3 & 128) != 0 ? "OFF" : str7);
    }
}
