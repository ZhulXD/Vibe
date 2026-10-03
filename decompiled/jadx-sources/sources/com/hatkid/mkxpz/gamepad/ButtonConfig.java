package com.hatkid.mkxpz.gamepad;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u001c\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\b\u0018\u00002\u00020\u0001BW\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n\u0012\b\b\u0002\u0010\u000b\u001a\u00020\f\u0012\b\b\u0002\u0010\r\u001a\u00020\f\u0012\b\b\u0002\u0010\u000e\u001a\u00020\f¢\u0006\u0004\b\u000f\u0010\u0010J\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\bHÆ\u0003J\t\u0010#\u001a\u00020\nHÆ\u0003J\t\u0010$\u001a\u00020\fHÆ\u0003J\t\u0010%\u001a\u00020\fHÆ\u0003J\t\u0010&\u001a\u00020\fHÆ\u0003Jc\u0010'\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\f2\b\b\u0002\u0010\r\u001a\u00020\f2\b\b\u0002\u0010\u000e\u001a\u00020\fHÆ\u0001J\u0013\u0010(\u001a\u00020)2\b\u0010*\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010+\u001a\u00020\bHÖ\u0001J\t\u0010,\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010\u0012R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0013\u0010\u0012R\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\u0012R\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\u0012R\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017R\u0011\u0010\t\u001a\u00020\n¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\u0019R\u0011\u0010\u000b\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\u001bR\u0011\u0010\r\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u001bR\u0011\u0010\u000e\u001a\u00020\f¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u001b¨\u0006-"}, d2 = {"Lcom/hatkid/mkxpz/gamepad/ButtonConfig;", "", "name", "", "displayText", "description", "category", "sdlKeycode", "", "defaultShape", "Lcom/hatkid/mkxpz/gamepad/ButtonShape;", "defaultSize", "", "defaultX", "defaultY", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/hatkid/mkxpz/gamepad/ButtonShape;FFF)V", "getName", "()Ljava/lang/String;", "getDisplayText", "getDescription", "getCategory", "getSdlKeycode", "()I", "getDefaultShape", "()Lcom/hatkid/mkxpz/gamepad/ButtonShape;", "getDefaultSize", "()F", "getDefaultX", "getDefaultY", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "copy", "equals", "", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class ButtonConfig {
    private final String category;
    private final ButtonShape defaultShape;
    private final float defaultSize;
    private final float defaultX;
    private final float defaultY;
    private final String description;
    private final String displayText;
    private final String name;
    private final int sdlKeycode;

    public ButtonConfig(String name, String displayText, String description, String category, int i3, ButtonShape defaultShape, float f, float f3, float f4) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(displayText, "displayText");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(defaultShape, "defaultShape");
        this.name = name;
        this.displayText = displayText;
        this.description = description;
        this.category = category;
        this.sdlKeycode = i3;
        this.defaultShape = defaultShape;
        this.defaultSize = f;
        this.defaultX = f3;
        this.defaultY = f4;
    }

    public static /* synthetic */ ButtonConfig copy$default(ButtonConfig buttonConfig, String str, String str2, String str3, String str4, int i3, ButtonShape buttonShape, float f, float f3, float f4, int i4, Object obj) {
        if ((i4 & 1) != 0) {
            str = buttonConfig.name;
        }
        if ((i4 & 2) != 0) {
            str2 = buttonConfig.displayText;
        }
        if ((i4 & 4) != 0) {
            str3 = buttonConfig.description;
        }
        if ((i4 & 8) != 0) {
            str4 = buttonConfig.category;
        }
        if ((i4 & 16) != 0) {
            i3 = buttonConfig.sdlKeycode;
        }
        if ((i4 & 32) != 0) {
            buttonShape = buttonConfig.defaultShape;
        }
        if ((i4 & 64) != 0) {
            f = buttonConfig.defaultSize;
        }
        if ((i4 & 128) != 0) {
            f3 = buttonConfig.defaultX;
        }
        if ((i4 & 256) != 0) {
            f4 = buttonConfig.defaultY;
        }
        float f5 = f3;
        float f6 = f4;
        ButtonShape buttonShape2 = buttonShape;
        float f7 = f;
        int i5 = i3;
        String str5 = str3;
        return buttonConfig.copy(str, str2, str5, str4, i5, buttonShape2, f7, f5, f6);
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getName() {
        return this.name;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final String getDisplayText() {
        return this.displayText;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final String getDescription() {
        return this.description;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getCategory() {
        return this.category;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final int getSdlKeycode() {
        return this.sdlKeycode;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final ButtonShape getDefaultShape() {
        return this.defaultShape;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final float getDefaultSize() {
        return this.defaultSize;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final float getDefaultX() {
        return this.defaultX;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final float getDefaultY() {
        return this.defaultY;
    }

    public final ButtonConfig copy(String name, String displayText, String description, String category, int sdlKeycode, ButtonShape defaultShape, float defaultSize, float defaultX, float defaultY) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(displayText, "displayText");
        Intrinsics.checkNotNullParameter(description, "description");
        Intrinsics.checkNotNullParameter(category, "category");
        Intrinsics.checkNotNullParameter(defaultShape, "defaultShape");
        return new ButtonConfig(name, displayText, description, category, sdlKeycode, defaultShape, defaultSize, defaultX, defaultY);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof ButtonConfig)) {
            return false;
        }
        ButtonConfig buttonConfig = (ButtonConfig) other;
        return Intrinsics.areEqual(this.name, buttonConfig.name) && Intrinsics.areEqual(this.displayText, buttonConfig.displayText) && Intrinsics.areEqual(this.description, buttonConfig.description) && Intrinsics.areEqual(this.category, buttonConfig.category) && this.sdlKeycode == buttonConfig.sdlKeycode && this.defaultShape == buttonConfig.defaultShape && Float.compare(this.defaultSize, buttonConfig.defaultSize) == 0 && Float.compare(this.defaultX, buttonConfig.defaultX) == 0 && Float.compare(this.defaultY, buttonConfig.defaultY) == 0;
    }

    public final String getCategory() {
        return this.category;
    }

    public final ButtonShape getDefaultShape() {
        return this.defaultShape;
    }

    public final float getDefaultSize() {
        return this.defaultSize;
    }

    public final float getDefaultX() {
        return this.defaultX;
    }

    public final float getDefaultY() {
        return this.defaultY;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getDisplayText() {
        return this.displayText;
    }

    public final String getName() {
        return this.name;
    }

    public final int getSdlKeycode() {
        return this.sdlKeycode;
    }

    public int hashCode() {
        return Float.hashCode(this.defaultY) + ((Float.hashCode(this.defaultX) + ((Float.hashCode(this.defaultSize) + ((this.defaultShape.hashCode() + E.b.a(this.sdlKeycode, E.b.d(this.category, E.b.d(this.description, E.b.d(this.displayText, this.name.hashCode() * 31, 31), 31), 31), 31)) * 31)) * 31)) * 31);
    }

    public String toString() {
        String str = this.name;
        String str2 = this.displayText;
        String str3 = this.description;
        String str4 = this.category;
        int i3 = this.sdlKeycode;
        ButtonShape buttonShape = this.defaultShape;
        float f = this.defaultSize;
        float f3 = this.defaultX;
        float f4 = this.defaultY;
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("ButtonConfig(name=", str, ", displayText=", str2, ", description=");
        kotlin.collections.unsigned.a.n(sbJ, str3, ", category=", str4, ", sdlKeycode=");
        sbJ.append(i3);
        sbJ.append(", defaultShape=");
        sbJ.append(buttonShape);
        sbJ.append(", defaultSize=");
        sbJ.append(f);
        sbJ.append(", defaultX=");
        sbJ.append(f3);
        sbJ.append(", defaultY=");
        sbJ.append(f4);
        sbJ.append(")");
        return sbJ.toString();
    }

    public /* synthetic */ ButtonConfig(String str, String str2, String str3, String str4, int i3, ButtonShape buttonShape, float f, float f3, float f4, int i4, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, str4, i3, (i4 & 32) != 0 ? ButtonShape.CIRCLE : buttonShape, (i4 & 64) != 0 ? 1.0f : f, (i4 & 128) != 0 ? 0.5f : f3, (i4 & 256) != 0 ? 0.5f : f4);
    }
}
