package org.godotengine.godot;

import org.godotengine.godot.variant.Callable;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public interface BuildProvider {
    void buildEnvCancel(int i3);

    void buildEnvCleanProject(String str, String str2, Callable callable);

    boolean buildEnvConnect(Callable callable);

    void buildEnvDisconnect();

    int buildEnvExecute(String str, String[] strArr, String str2, String str3, Callable callable, Callable callable2);
}
