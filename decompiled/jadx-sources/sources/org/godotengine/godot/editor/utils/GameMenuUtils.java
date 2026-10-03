package org.godotengine.godot.editor.utils;

import android.util.Log;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.GodotLib;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001!B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0087 J\t\u0010\u000b\u001a\u00020\bH\u0087 J\u0011\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u000eH\u0087 J\u0011\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000eH\u0087 J\u0011\u0010\u0011\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\nH\u0087 J\u0011\u0010\u0013\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0087 J\u0011\u0010\u0014\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\u000eH\u0087 J\t\u0010\u0015\u001a\u00020\bH\u0087 J\t\u0010\u0016\u001a\u00020\bH\u0087 J\t\u0010\u0017\u001a\u00020\bH\u0087 J\u0011\u0010\u0018\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0087 J\t\u0010\u0019\u001a\u00020\bH\u0087 J\u0011\u0010\u001a\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u001cH\u0087 J\u0006\u0010\u001d\u001a\u00020\u001eJ\u000e\u0010\u001f\u001a\u00020\b2\u0006\u0010 \u001a\u00020\u001eR\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lorg/godotengine/godot/editor/utils/GameMenuUtils;", "", "<init>", "()V", "TAG", "", "kotlin.jvm.PlatformType", "setSuspend", "", "enabled", "", "nextFrame", "setNodeType", "type", "", "setSelectMode", "mode", "setSelectionVisible", "visible", "setCameraOverride", "setCameraManipulateMode", "resetCamera2DPosition", "resetCamera3DPosition", "playMainScene", "setDebugMuteAudio", "resetTimeScale", "setTimeScale", "scale", "", "fetchGameEmbedMode", "Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;", "saveGameEmbedMode", "gameEmbedMode", "GameEmbedMode", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GameMenuUtils {
    public static final GameMenuUtils INSTANCE = new GameMenuUtils();
    private static final String TAG = "GameMenuUtils";

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\t\b\u0086\u0081\u0002\u0018\u0000 \u000b2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u000bB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\f"}, d2 = {"Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;", "", "nativeValue", "", "<init>", "(Ljava/lang/String;II)V", "getNativeValue$lib_templateRelease", "()I", "DISABLED", "AUTO", "ENABLED", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum GameEmbedMode {
        DISABLED(-1),
        AUTO(0),
        ENABLED(1);

        public static final String SETTING_KEY = "run/window_placement/game_embed_mode";
        private final int nativeValue;
        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
        @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\b\u001a\u00020\tH\u0001¢\u0006\u0002\b\nR\u000e\u0010\u0004\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode$Companion;", "", "<init>", "()V", "SETTING_KEY", "", "fromNativeValue", "Lorg/godotengine/godot/editor/utils/GameMenuUtils$GameEmbedMode;", "nativeValue", "", "fromNativeValue$lib_templateRelease", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @JvmStatic
            public final GameEmbedMode fromNativeValue$lib_templateRelease(int nativeValue) {
                for (GameEmbedMode gameEmbedMode : GameEmbedMode.getEntries()) {
                    if (gameEmbedMode.getNativeValue() == nativeValue) {
                        return gameEmbedMode;
                    }
                }
                return null;
            }

            private Companion() {
            }
        }

        GameEmbedMode(int i3) {
            this.nativeValue = i3;
        }

        public static EnumEntries<GameEmbedMode> getEntries() {
            return $ENTRIES;
        }

        /* JADX INFO: renamed from: getNativeValue$lib_templateRelease, reason: from getter */
        public final int getNativeValue() {
            return this.nativeValue;
        }
    }

    private GameMenuUtils() {
    }

    @JvmStatic
    public static final native void nextFrame();

    @JvmStatic
    public static final native void playMainScene();

    @JvmStatic
    public static final native void resetCamera2DPosition();

    @JvmStatic
    public static final native void resetCamera3DPosition();

    @JvmStatic
    public static final native void resetTimeScale();

    @JvmStatic
    public static final native void setCameraManipulateMode(int mode);

    @JvmStatic
    public static final native void setCameraOverride(boolean enabled);

    @JvmStatic
    public static final native void setDebugMuteAudio(boolean enabled);

    @JvmStatic
    public static final native void setNodeType(int type);

    @JvmStatic
    public static final native void setSelectMode(int mode);

    @JvmStatic
    public static final native void setSelectionVisible(boolean visible);

    @JvmStatic
    public static final native void setSuspend(boolean enabled);

    @JvmStatic
    public static final native void setTimeScale(double scale);

    public final GameEmbedMode fetchGameEmbedMode() {
        try {
            GameEmbedMode gameEmbedModeFromNativeValue$lib_templateRelease = GameEmbedMode.INSTANCE.fromNativeValue$lib_templateRelease(Integer.parseInt(GodotLib.getEditorSetting(GameEmbedMode.SETTING_KEY)));
            return gameEmbedModeFromNativeValue$lib_templateRelease == null ? GameEmbedMode.AUTO : gameEmbedModeFromNativeValue$lib_templateRelease;
        } catch (Exception e2) {
            Log.w(TAG, "Unable to retrieve game embed mode", e2);
            return GameEmbedMode.AUTO;
        }
    }

    public final void saveGameEmbedMode(GameEmbedMode gameEmbedMode) {
        Intrinsics.checkNotNullParameter(gameEmbedMode, "gameEmbedMode");
        GodotLib.setEditorSetting(GameEmbedMode.SETTING_KEY, Integer.valueOf(gameEmbedMode.getNativeValue()));
    }
}
