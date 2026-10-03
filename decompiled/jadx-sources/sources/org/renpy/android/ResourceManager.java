package org.renpy.android;

import android.content.Context;
import android.content.res.Resources;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class ResourceManager {
    private String packageName;
    private Resources resources;

    public ResourceManager(Context context) {
        this.resources = context.getResources();
        this.packageName = context.getPackageName();
    }

    public boolean getBoolean(String str) {
        int identifier = this.resources.getIdentifier(str, "bool", this.packageName);
        if (identifier == 0) {
            return false;
        }
        return this.resources.getBoolean(identifier);
    }

    public int getInteger(String str) {
        return this.resources.getIdentifier(str, "integer", this.packageName);
    }

    public String getString(String str) {
        int identifier = this.resources.getIdentifier(str, "string", this.packageName);
        if (identifier == 0) {
            return null;
        }
        return this.resources.getString(identifier);
    }
}
