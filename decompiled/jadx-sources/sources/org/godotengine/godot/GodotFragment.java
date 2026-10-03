package org.godotengine.godot;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import org.godotengine.godot.error.Error;
import org.godotengine.godot.plugin.GodotPlugin;
import org.godotengine.godot.utils.BenchmarkUtils;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class GodotFragment extends Fragment implements GodotHost {
    private static final String TAG = "GodotFragment";
    private Godot godot;
    private FrameLayout godotContainerLayout;
    private GodotHost parentHost;

    private void performEngineInitialization() {
        try {
            if (!this.godot.initEngine(this, getCommandLine(), getHostPlugins(this.godot))) {
                throw new IllegalStateException("Unable to initialize Godot engine");
            }
            FrameLayout frameLayoutOnInitRenderView = this.godot.onInitRenderView(this);
            this.godotContainerLayout = frameLayoutOnInitRenderView;
            if (frameLayoutOnInitRenderView == null) {
                throw new IllegalStateException("Unable to initialize engine render view");
            }
        } catch (Exception e2) {
            Log.e(TAG, "Engine initialization failed", e2);
            String string = TextUtils.isEmpty(e2.getMessage()) ? getString(R.string.error_engine_setup_message) : e2.getMessage();
            Godot godot = this.godot;
            String string2 = getString(R.string.text_error_title);
            Godot godot2 = this.godot;
            Objects.requireNonNull(godot2);
            godot.alert(string, string2, new c(godot2, 4));
        }
    }

    @Override // org.godotengine.godot.GodotHost
    public /* bridge */ /* synthetic */ Activity getActivity() {
        return getActivity();
    }

    @Override // org.godotengine.godot.GodotHost
    public BuildProvider getBuildProvider() {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            return godotHost.getBuildProvider();
        }
        return null;
    }

    @Override // org.godotengine.godot.GodotHost
    public List<String> getCommandLine() {
        GodotHost godotHost = this.parentHost;
        return godotHost != null ? godotHost.getCommandLine() : Collections.EMPTY_LIST;
    }

    @Override // org.godotengine.godot.GodotHost
    public Godot getGodot() {
        return this.godot;
    }

    @Override // org.godotengine.godot.GodotHost
    public Set<GodotPlugin> getHostPlugins(Godot godot) {
        GodotHost godotHost = this.parentHost;
        return godotHost != null ? godotHost.getHostPlugins(godot) : Collections.EMPTY_SET;
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int i3, int i4, Intent intent) {
        super.onActivityResult(i3, i4, intent);
        this.godot.onActivityResult(i3, i4, intent);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        if (getParentFragment() instanceof GodotHost) {
            this.parentHost = (GodotHost) getParentFragment();
        } else if (getActivity() instanceof GodotHost) {
            this.parentHost = (GodotHost) getActivity();
        }
    }

    public void onBackPressed() {
        this.godot.onBackPressed();
    }

    @Override // androidx.fragment.app.Fragment, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.godot.onConfigurationChanged(configuration);
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        BenchmarkUtils.beginBenchmarkMeasure("Startup", "GodotFragment::onCreate");
        super.onCreate(bundle);
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            this.godot = godotHost.getGodot();
        }
        if (this.godot == null) {
            this.godot = Godot.getInstance(requireContext());
        }
        performEngineInitialization();
        BenchmarkUtils.endBenchmarkMeasure("Startup", "GodotFragment::onCreate");
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = this.godotContainerLayout;
        if (frameLayout != null && frameLayout.getParent() != null) {
            Log.w(TAG, "Godot container layout already has a parent, removing it.");
            ((ViewGroup) this.godotContainerLayout.getParent()).removeView(this.godotContainerLayout);
        }
        return this.godotContainerLayout;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        FrameLayout frameLayout = this.godotContainerLayout;
        if (frameLayout != null && frameLayout.getParent() != null) {
            Log.w(TAG, "Removing Godot container layout from parent during destruction.");
            ((ViewGroup) this.godotContainerLayout.getParent()).removeView(this.godotContainerLayout);
        }
        this.godot.onDestroy(this);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        FrameLayout frameLayout = this.godotContainerLayout;
        if (frameLayout != null && frameLayout.getParent() != null) {
            Log.d(TAG, "Cleaning up Godot container layout during detach.");
            ((ViewGroup) this.godotContainerLayout.getParent()).removeView(this.godotContainerLayout);
        }
        super.onDetach();
        this.parentHost = null;
    }

    @Override // org.godotengine.godot.GodotHost
    public void onDistractionFreeModeChanged(Boolean bool) {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            godotHost.onDistractionFreeModeChanged(bool);
        }
    }

    @Override // org.godotengine.godot.GodotHost
    public void onEditorWorkspaceSelected(String str) {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            godotHost.onEditorWorkspaceSelected(str);
        }
    }

    @Override // org.godotengine.godot.GodotHost
    public void onGodotForceQuit(Godot godot) {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            godotHost.onGodotForceQuit(godot);
        }
    }

    @Override // org.godotengine.godot.GodotHost
    public void onGodotMainLoopStarted() {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            godotHost.onGodotMainLoopStarted();
        }
    }

    @Override // org.godotengine.godot.GodotHost
    public void onGodotRestartRequested(Godot godot) {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            godotHost.onGodotRestartRequested(godot);
        }
    }

    @Override // org.godotengine.godot.GodotHost
    public void onGodotSetupCompleted() {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            godotHost.onGodotSetupCompleted();
        }
    }

    @Override // org.godotengine.godot.GodotHost
    public int onNewGodotInstanceRequested(String[] strArr) {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            return godotHost.onNewGodotInstanceRequested(strArr);
        }
        return -1;
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        this.godot.onPause(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onRequestPermissionsResult(int i3, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i3, strArr, iArr);
        this.godot.onRequestPermissionsResult(i3, strArr, iArr);
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        this.godot.onResume(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.godot.onStart(this);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.godot.onStop(this);
    }

    @Override // org.godotengine.godot.GodotHost
    public Error signApk(String str, String str2, String str3, String str4, String str5) {
        GodotHost godotHost = this.parentHost;
        return godotHost != null ? godotHost.signApk(str, str2, str3, str4, str5) : Error.ERR_UNAVAILABLE;
    }

    @Override // org.godotengine.godot.GodotHost
    public boolean supportsFeature(String str) {
        GodotHost godotHost = this.parentHost;
        if (godotHost != null) {
            return godotHost.supportsFeature(str);
        }
        return false;
    }

    @Override // org.godotengine.godot.GodotHost
    public Error verifyApk(String str) {
        GodotHost godotHost = this.parentHost;
        return godotHost != null ? godotHost.verifyApk(str) : Error.ERR_UNAVAILABLE;
    }

    @Override // org.godotengine.godot.GodotHost
    public boolean onGodotForceQuit(int i3) {
        GodotHost godotHost = this.parentHost;
        return godotHost != null && godotHost.onGodotForceQuit(i3);
    }
}
