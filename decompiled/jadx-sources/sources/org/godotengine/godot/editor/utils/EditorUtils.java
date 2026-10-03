package org.godotengine.godot.editor.utils;

import kotlin.Metadata;
import kotlin.jvm.JvmStatic;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J$\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\tH\u0087 ¢\u0006\u0002\u0010\nJ\u0011\u0010\u000b\u001a\u00020\u00052\u0006\u0010\f\u001a\u00020\rH\u0087 ¨\u0006\u000e"}, d2 = {"Lorg/godotengine/godot/editor/utils/EditorUtils;", "", "<init>", "()V", "runScene", "", "scene", "", "sceneArgs", "", "(Ljava/lang/String;[Ljava/lang/String;)V", "toggleTitleBar", "visible", "", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class EditorUtils {
    public static final EditorUtils INSTANCE = new EditorUtils();

    private EditorUtils() {
    }

    @JvmStatic
    public static final native void runScene(String scene, String[] sceneArgs);

    @JvmStatic
    public static final native void toggleTitleBar(boolean visible);
}
