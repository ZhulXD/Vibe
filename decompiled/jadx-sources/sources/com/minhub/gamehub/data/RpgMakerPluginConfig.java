package com.minhub.gamehub.data;

import androidx.core.app.NotificationCompat;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018\u00002\u00020\u0001Bi\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\"\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\bj\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\t\u0012$\b\u0002\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\bj\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\t¢\u0006\u0004\b\u000b\u0010\fJ\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0005HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J%\u0010\u0018\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\bj\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\tHÆ\u0003J%\u0010\u0019\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\bj\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\tHÆ\u0003Js\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00032$\b\u0002\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\bj\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\t2$\b\u0002\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\bj\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\tHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\u00052\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u001eHÖ\u0001J\t\u0010\u001f\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u000eR-\u0010\u0007\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\bj\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\t¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\u0013R-\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030\bj\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003`\t¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0013¨\u0006 "}, d2 = {"Lcom/minhub/gamehub/data/RpgMakerPluginConfig;", "", "name", "", NotificationCompat.CATEGORY_STATUS, "", "description", "parameters", "Ljava/util/LinkedHashMap;", "Lkotlin/collections/LinkedHashMap;", "extraFieldsJson", "<init>", "(Ljava/lang/String;ZLjava/lang/String;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;)V", "getName", "()Ljava/lang/String;", "getStatus", "()Z", "getDescription", "getParameters", "()Ljava/util/LinkedHashMap;", "getExtraFieldsJson", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class RpgMakerPluginConfig {
    private final String description;
    private final LinkedHashMap<String, String> extraFieldsJson;
    private final String name;
    private final LinkedHashMap<String, String> parameters;
    private final boolean status;

    public RpgMakerPluginConfig(String name, boolean z2, String description, LinkedHashMap<String, String> parameters, LinkedHashMap<String, String> extraFieldsJson) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(extraFieldsJson, "extraFieldsJson");
        this.name = name;
        this.status = z2;
        this.description = description;
        this.parameters = parameters;
        this.extraFieldsJson = extraFieldsJson;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ RpgMakerPluginConfig copy$default(RpgMakerPluginConfig rpgMakerPluginConfig, String str, boolean z2, String str2, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = rpgMakerPluginConfig.name;
        }
        if ((i3 & 2) != 0) {
            z2 = rpgMakerPluginConfig.status;
        }
        if ((i3 & 4) != 0) {
            str2 = rpgMakerPluginConfig.description;
        }
        if ((i3 & 8) != 0) {
            linkedHashMap = rpgMakerPluginConfig.parameters;
        }
        if ((i3 & 16) != 0) {
            linkedHashMap2 = rpgMakerPluginConfig.extraFieldsJson;
        }
        LinkedHashMap linkedHashMap3 = linkedHashMap2;
        String str3 = str2;
        return rpgMakerPluginConfig.copy(str, z2, str3, linkedHashMap, linkedHashMap3);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final boolean getStatus() {
        return this.status;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    public final LinkedHashMap<String, String> component4() {
        return this.parameters;
    }

    public final LinkedHashMap<String, String> component5() {
        return this.extraFieldsJson;
    }

    public final RpgMakerPluginConfig copy(String name, boolean status, String description, LinkedHashMap<String, String> parameters, LinkedHashMap<String, String> extraFieldsJson) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(parameters, "parameters");
        Intrinsics.checkNotNullParameter(extraFieldsJson, "extraFieldsJson");
        return new RpgMakerPluginConfig(name, status, description, parameters, extraFieldsJson);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof RpgMakerPluginConfig)) {
            return false;
        }
        RpgMakerPluginConfig rpgMakerPluginConfig = (RpgMakerPluginConfig) other;
        return Intrinsics.areEqual(this.name, rpgMakerPluginConfig.name) && this.status == rpgMakerPluginConfig.status && Intrinsics.areEqual(this.description, rpgMakerPluginConfig.description) && Intrinsics.areEqual(this.parameters, rpgMakerPluginConfig.parameters) && Intrinsics.areEqual(this.extraFieldsJson, rpgMakerPluginConfig.extraFieldsJson);
    }

    public final String getDescription() {
        return this.description;
    }

    public final LinkedHashMap<String, String> getExtraFieldsJson() {
        return this.extraFieldsJson;
    }

    public final String getName() {
        return this.name;
    }

    public final LinkedHashMap<String, String> getParameters() {
        return this.parameters;
    }

    public final boolean getStatus() {
        return this.status;
    }

    public int hashCode() {
        return this.extraFieldsJson.hashCode() + ((this.parameters.hashCode() + E.b.d(this.description, E.b.b(this.name.hashCode() * 31, 31, this.status), 31)) * 31);
    }

    public String toString() {
        return "RpgMakerPluginConfig(name=" + this.name + ", status=" + this.status + ", description=" + this.description + ", parameters=" + this.parameters + ", extraFieldsJson=" + this.extraFieldsJson + ")";
    }

    public /* synthetic */ RpgMakerPluginConfig(String str, boolean z2, String str2, LinkedHashMap linkedHashMap, LinkedHashMap linkedHashMap2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, z2, str2, linkedHashMap, (i3 & 16) != 0 ? new LinkedHashMap() : linkedHashMap2);
    }
}
