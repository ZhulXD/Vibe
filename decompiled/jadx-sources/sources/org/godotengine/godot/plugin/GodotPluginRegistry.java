package org.godotengine.godot.plugin;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import java.util.Collection;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import org.godotengine.godot.Godot;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class GodotPluginRegistry {
    private static final String GODOT_PLUGIN_V1_NAME_PREFIX = "org.godotengine.plugin.v1.";
    private static final String GODOT_PLUGIN_V2_NAME_PREFIX = "org.godotengine.plugin.v2.";
    private static final String TAG = "GodotPluginRegistry";
    private static GodotPluginRegistry instance;
    private final ConcurrentHashMap<String, GodotPlugin> registry = new ConcurrentHashMap<>();

    private GodotPluginRegistry() {
    }

    public static GodotPluginRegistry getPluginRegistry() {
        GodotPluginRegistry godotPluginRegistry = instance;
        if (godotPluginRegistry != null) {
            return godotPluginRegistry;
        }
        throw new IllegalStateException("Plugin registry hasn't been initialized.");
    }

    public static GodotPluginRegistry initializePluginRegistry(Godot godot, Set<GodotPlugin> set) {
        if (instance == null) {
            GodotPluginRegistry godotPluginRegistry = new GodotPluginRegistry();
            instance = godotPluginRegistry;
            godotPluginRegistry.loadPlugins(godot, set);
        }
        return instance;
    }

    private void loadPlugins(Godot godot, Set<GodotPlugin> set) {
        String strTrim;
        if (set != null && !set.isEmpty()) {
            for (GodotPlugin godotPlugin : set) {
                Log.i(TAG, "Registering runtime plugin " + godotPlugin.getPluginName());
                this.registry.put(godotPlugin.getPluginName(), godotPlugin);
            }
        }
        try {
            Context context = godot.getContext();
            Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
            if (bundle != null && !bundle.isEmpty()) {
                for (String str : bundle.keySet()) {
                    if (str.startsWith(GODOT_PLUGIN_V2_NAME_PREFIX)) {
                        strTrim = str.substring(26).trim();
                    } else if (str.startsWith(GODOT_PLUGIN_V1_NAME_PREFIX)) {
                        strTrim = str.substring(26).trim();
                        Log.w(TAG, "Godot v1 plugin are deprecated in Godot 4.2 and higher: " + strTrim);
                    } else {
                        strTrim = null;
                    }
                    if (!TextUtils.isEmpty(strTrim)) {
                        String str2 = TAG;
                        Log.i(str2, "Initializing Godot plugin " + strTrim);
                        String string = bundle.getString(str);
                        if (TextUtils.isEmpty(string)) {
                            Log.w(str2, "Invalid plugin loader class for " + strTrim);
                        } else {
                            try {
                                GodotPlugin godotPlugin2 = (GodotPlugin) Class.forName(string).getConstructor(Godot.class).newInstance(godot);
                                if (!strTrim.equals(godotPlugin2.getPluginName())) {
                                    Log.w(str2, "Meta-data plugin name does not match the value returned by the plugin handle: " + strTrim + " =/= " + godotPlugin2.getPluginName());
                                }
                                this.registry.put(strTrim, godotPlugin2);
                                Log.i(str2, "Completed initialization for Godot plugin " + godotPlugin2.getPluginName());
                            } catch (Exception e2) {
                                Log.w(TAG, "Unable to load Godot plugin " + strTrim, e2);
                            }
                        }
                    }
                }
            }
        } catch (Exception e3) {
            Log.e(TAG, "Unable load Godot Android plugins from the manifest file.", e3);
        }
    }

    public Collection<GodotPlugin> getAllPlugins() {
        return this.registry.isEmpty() ? Collections.EMPTY_LIST : this.registry.values();
    }

    public GodotPlugin getPlugin(String str) {
        return this.registry.get(str);
    }
}
