package org.godotengine.godot.plugin;

import android.text.TextUtils;
import java.util.Arrays;
import kotlin.collections.unsigned.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class SignalInfo {
    private final String name;
    private final Class<?>[] paramTypes;
    private final String[] paramTypesNames;

    public SignalInfo(String str, Class<?>... clsArr) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException(a.o("Invalid signal name: ", str));
        }
        this.name = str;
        int i3 = 0;
        clsArr = clsArr == null ? new Class[0] : clsArr;
        this.paramTypes = clsArr;
        this.paramTypesNames = new String[clsArr.length];
        while (true) {
            Class<?>[] clsArr2 = this.paramTypes;
            if (i3 >= clsArr2.length) {
                return;
            }
            this.paramTypesNames[i3] = clsArr2[i3].getName();
            i3++;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof SignalInfo) {
            return this.name.equals(((SignalInfo) obj).name);
        }
        return false;
    }

    public String getName() {
        return this.name;
    }

    public Class<?>[] getParamTypes() {
        return this.paramTypes;
    }

    public String[] getParamTypesNames() {
        return this.paramTypesNames;
    }

    public int hashCode() {
        return this.name.hashCode();
    }

    public String toString() {
        return "SignalInfo{name='" + this.name + "', paramsTypes=" + Arrays.toString(this.paramTypes) + '}';
    }
}
