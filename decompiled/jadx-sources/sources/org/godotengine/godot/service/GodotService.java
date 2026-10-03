package org.godotengine.godot.service;

import A1.C0033n;
import C1.RunnableC0068g1;
import android.app.Activity;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.SurfaceControlViewHost;
import android.widget.FrameLayout;
import androidx.core.app.NotificationCompat;
import androidx.core.os.BundleKt;
import androidx.core.view.o;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.Godot;
import org.godotengine.godot.GodotHost;
import org.godotengine.godot.R;
import org.godotengine.godot.plugin.GodotPlugin;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u000b\b\u0016\u0018\u0000 /2\u00020\u0001:\u0006/01234B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0016\u001a\u00020\u0017H\u0016J\"\u0010\u0018\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u0019H\u0016J\u0016\u0010\u001e\u001a\u00020\u00172\f\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u00060 H\u0015J\b\u0010!\u001a\u00020\"H\u0002J\b\u0010#\u001a\u00020\u0017H\u0016J\b\u0010$\u001a\u00020\u0017H\u0002J\u0014\u0010%\u001a\u0004\u0018\u00010&2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u0012\u0010'\u001a\u00020\"2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001bH\u0016J\u001f\u0010(\u001a\u0004\u0018\u00010)2\u000e\u0010\u001f\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010*H\u0002¢\u0006\u0002\u0010+J\b\u0010,\u001a\u00020\u0017H\u0002J\b\u0010-\u001a\u00020\u0017H\u0002J\b\u0010.\u001a\u00020\u0017H\u0002R\u001e\u0010\u0004\u001a\u0012\u0012\u0004\u0012\u00020\u00060\u0005j\b\u0012\u0004\u0012\u00020\u0006`\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0012\u0010\f\u001a\u00060\rR\u00020\u0000X\u0082\u0004¢\u0006\u0002\n\u0000R\u001b\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0010\u0010\u0011R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00065"}, d2 = {"Lorg/godotengine/godot/service/GodotService;", "Landroid/app/Service;", "<init>", "()V", "commandLineParams", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "handler", "Lorg/godotengine/godot/service/GodotService$IncomingHandler;", "messenger", "Landroid/os/Messenger;", "godotHost", "Lorg/godotengine/godot/service/GodotService$GodotServiceHost;", "godot", "Lorg/godotengine/godot/Godot;", "getGodot", "()Lorg/godotengine/godot/Godot;", "godot$delegate", "Lkotlin/Lazy;", "listener", "Lorg/godotengine/godot/service/GodotService$RemoteListener;", "onCreate", "", "onStartCommand", "", "intent", "Landroid/content/Intent;", "flags", "startId", "updateCommandLineParams", "args", "", "performEngineInitialization", "", "onDestroy", "forceQuitService", "onBind", "Landroid/os/IBinder;", "onUnbind", "initEngine", "Landroid/widget/FrameLayout;", "", "([Ljava/lang/String;)Landroid/widget/FrameLayout;", "startEngine", "stopEngine", "destroyEngine", "Companion", "EngineStatus", "EngineError", "RemoteListener", "IncomingHandler", "GodotServiceHost", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class GodotService extends Service {
    public static final String EXTRA_MSG_PAYLOAD = "extraMsgPayload";
    public static final String KEY_COMMAND_LINE_PARAMETERS = "commandLineParameters";
    public static final String KEY_DISPLAY_ID = "displayId";
    public static final String KEY_ENGINE_ERROR = "engineError";
    public static final String KEY_ENGINE_STATUS = "engineStatus";
    public static final String KEY_HEIGHT = "height";
    public static final String KEY_HOST_TOKEN = "hostToken";
    public static final String KEY_SURFACE_PACKAGE = "surfacePackage";
    public static final String KEY_WIDTH = "width";
    public static final int MSG_DESTROY_ENGINE = 3;
    public static final int MSG_ENGINE_ERROR = 100;
    public static final int MSG_ENGINE_RESTART_REQUESTED = 102;
    public static final int MSG_ENGINE_STATUS_UPDATE = 101;
    public static final int MSG_INIT_ENGINE = 0;
    public static final int MSG_START_ENGINE = 1;
    public static final int MSG_STOP_ENGINE = 2;
    public static final int MSG_WRAP_ENGINE_WITH_SCVH = 4;
    private final ArrayList<String> commandLineParams = new ArrayList<>();

    /* JADX INFO: renamed from: godot$delegate, reason: from kotlin metadata */
    private final Lazy godot;
    private final GodotServiceHost godotHost;
    private final IncomingHandler handler;
    private RemoteListener listener;
    private final Messenger messenger;
    private static final String TAG = "GodotService";

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lorg/godotengine/godot/service/GodotService$EngineError;", "", "<init>", "(Ljava/lang/String;I)V", "ALREADY_BOUND", "INIT_FAILED", "SCVH_CREATION_FAILED", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum EngineError {
        ALREADY_BOUND,
        INIT_FAILED,
        SCVH_CREATION_FAILED;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<EngineError> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, d2 = {"Lorg/godotengine/godot/service/GodotService$EngineStatus;", "", "<init>", "(Ljava/lang/String;I)V", "INITIALIZED", "SCVH_CREATED", "STARTED", "STOPPED", "DESTROYED", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum EngineStatus {
        INITIALIZED,
        SCVH_CREATED,
        STARTED,
        STOPPED,
        DESTROYED;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<EngineStatus> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\n\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0007H\u0016J\u0018\u0010\b\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\b\u0012\u0004\u0012\u00020\n`\u000bH\u0016J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0010\u0010\u0010\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0007H\u0016J\u0010\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0011\u001a\u00020\u0007H\u0016¨\u0006\u0013"}, d2 = {"Lorg/godotengine/godot/service/GodotService$GodotServiceHost;", "Lorg/godotengine/godot/GodotHost;", "<init>", "(Lorg/godotengine/godot/service/GodotService;)V", "getActivity", "", "getGodot", "Lorg/godotengine/godot/Godot;", "getCommandLine", "Ljava/util/ArrayList;", "", "Lkotlin/collections/ArrayList;", "runOnHostThread", "", "action", "Ljava/lang/Runnable;", "onGodotForceQuit", "instance", "onGodotRestartRequested", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class GodotServiceHost implements GodotHost {
        public GodotServiceHost() {
        }

        /* JADX INFO: renamed from: getActivity, reason: collision with other method in class */
        public Void m1472getActivity() {
            return null;
        }

        @Override // org.godotengine.godot.GodotHost
        public Godot getGodot() {
            return GodotService.this.getGodot();
        }

        @Override // org.godotengine.godot.GodotHost
        public void onGodotForceQuit(Godot instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            if (instance == getGodot()) {
                Log.d(GodotService.TAG, "Force quitting Godot service");
                GodotService.this.forceQuitService();
            }
        }

        @Override // org.godotengine.godot.GodotHost
        public void onGodotRestartRequested(Godot instance) {
            Intrinsics.checkNotNullParameter(instance, "instance");
            if (instance == getGodot()) {
                Log.d(GodotService.TAG, "Restarting Godot service");
                RemoteListener remoteListener = GodotService.this.listener;
                if (remoteListener != null) {
                    remoteListener.onEngineRestartRequested();
                }
            }
        }

        @Override // org.godotengine.godot.GodotHost
        public void runOnHostThread(Runnable action) {
            Intrinsics.checkNotNullParameter(action, "action");
            if (Intrinsics.areEqual(Thread.currentThread(), GodotService.this.handler.getLooper().getThread())) {
                action.run();
            } else {
                GodotService.this.handler.post(action);
            }
        }

        @Override // org.godotengine.godot.GodotHost
        public /* bridge */ /* synthetic */ Activity getActivity() {
            return (Activity) m1472getActivity();
        }

        @Override // org.godotengine.godot.GodotHost
        public ArrayList<String> getCommandLine() {
            return GodotService.this.commandLineParams;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"Lorg/godotengine/godot/service/GodotService$IncomingHandler;", "Landroid/os/Handler;", "serviceRef", "Ljava/lang/ref/WeakReference;", "Lorg/godotengine/godot/service/GodotService;", "<init>", "(Ljava/lang/ref/WeakReference;)V", "viewHost", "Landroid/view/SurfaceControlViewHost;", "getViewHost", "()Landroid/view/SurfaceControlViewHost;", "setViewHost", "(Landroid/view/SurfaceControlViewHost;)V", "handleMessage", "", NotificationCompat.CATEGORY_MESSAGE, "Landroid/os/Message;", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class IncomingHandler extends Handler {
        private final WeakReference<GodotService> serviceRef;
        private SurfaceControlViewHost viewHost;

        public IncomingHandler(WeakReference<GodotService> serviceRef) {
            Intrinsics.checkNotNullParameter(serviceRef, "serviceRef");
            this.serviceRef = serviceRef;
        }

        public final SurfaceControlViewHost getViewHost() {
            return this.viewHost;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Intrinsics.checkNotNullParameter(msg, "msg");
            GodotService godotService = this.serviceRef.get();
            if (godotService == null) {
                return;
            }
            Log.d(GodotService.TAG, "HandleMessage: " + msg);
            if (msg.replyTo == null) {
                super.handleMessage(msg);
                return;
            }
            try {
                RemoteListener remoteListener = godotService.listener;
                if (remoteListener == null) {
                    WeakReference weakReference = new WeakReference(this);
                    Messenger replyTo = msg.replyTo;
                    Intrinsics.checkNotNullExpressionValue(replyTo, "replyTo");
                    godotService.listener = new RemoteListener(weakReference, replyTo);
                } else if (!Intrinsics.areEqual(remoteListener.getReplyTo(), msg.replyTo)) {
                    Log.e(GodotService.TAG, "Engine is already bound to another client");
                    Messenger messenger = msg.replyTo;
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 100;
                    messageObtain.getData().putString(GodotService.KEY_ENGINE_ERROR, "ALREADY_BOUND");
                    messenger.send(messageObtain);
                    return;
                }
                int i3 = msg.what;
                if (i3 == 0) {
                    godotService.initEngine(msg.getData().getStringArray(GodotService.KEY_COMMAND_LINE_PARAMETERS));
                    return;
                }
                if (i3 == 1) {
                    godotService.startEngine();
                    return;
                }
                if (i3 == 2) {
                    godotService.stopEngine();
                    return;
                }
                if (i3 == 3) {
                    godotService.destroyEngine();
                    return;
                }
                if (i3 != 4) {
                    super.handleMessage(msg);
                    return;
                }
                if (Build.VERSION.SDK_INT < 30) {
                    Log.e(GodotService.TAG, "SDK version is less than the minimum required (30)");
                    RemoteListener remoteListener2 = godotService.listener;
                    if (remoteListener2 != null) {
                        RemoteListener.onEngineError$default(remoteListener2, EngineError.SCVH_CREATION_FAILED, null, 2, null);
                        return;
                    }
                    return;
                }
                SurfaceControlViewHost surfaceControlViewHost = this.viewHost;
                if (surfaceControlViewHost != null) {
                    Log.i(GodotService.TAG, "Attached Godot engine to SurfaceControlViewHost");
                    RemoteListener remoteListener3 = godotService.listener;
                    if (remoteListener3 != null) {
                        remoteListener3.onEngineStatusUpdate(EngineStatus.SCVH_CREATED, BundleKt.bundleOf(TuplesKt.to(GodotService.KEY_SURFACE_PACKAGE, surfaceControlViewHost.getSurfacePackage())));
                        return;
                    }
                    return;
                }
                Bundle data = msg.getData();
                if (data.isEmpty()) {
                    Log.e(GodotService.TAG, "Invalid message data from binding client.. Aborting");
                    RemoteListener remoteListener4 = godotService.listener;
                    if (remoteListener4 != null) {
                        RemoteListener.onEngineError$default(remoteListener4, EngineError.SCVH_CREATION_FAILED, null, 2, null);
                        return;
                    }
                    return;
                }
                FrameLayout containerLayout = godotService.getGodot().getContainerLayout();
                if (containerLayout == null) {
                    Log.e(GodotService.TAG, "Invalid godot layout.. Aborting");
                    RemoteListener remoteListener5 = godotService.listener;
                    if (remoteListener5 != null) {
                        RemoteListener.onEngineError$default(remoteListener5, EngineError.SCVH_CREATION_FAILED, null, 2, null);
                        return;
                    }
                    return;
                }
                IBinder binder = data.getBinder(GodotService.KEY_HOST_TOKEN);
                int i4 = data.getInt(GodotService.KEY_WIDTH);
                int i5 = data.getInt(GodotService.KEY_HEIGHT);
                Display display = ((DisplayManager) godotService.getSystemService(DisplayManager.class)).getDisplay(data.getInt(GodotService.KEY_DISPLAY_ID));
                Log.d(GodotService.TAG, "Setting up SurfaceControlViewHost");
                o.i();
                SurfaceControlViewHost surfaceControlViewHostF = o.f(godotService, display, binder);
                surfaceControlViewHostF.setView(containerLayout, i4, i5);
                Log.i(GodotService.TAG, "Attached Godot engine to SurfaceControlViewHost");
                RemoteListener remoteListener6 = godotService.listener;
                if (remoteListener6 != null) {
                    remoteListener6.onEngineStatusUpdate(EngineStatus.SCVH_CREATED, BundleKt.bundleOf(TuplesKt.to(GodotService.KEY_SURFACE_PACKAGE, surfaceControlViewHostF.getSurfacePackage())));
                }
                this.viewHost = surfaceControlViewHostF;
            } catch (RemoteException e2) {
                Log.e(GodotService.TAG, "Unable to handle message", e2);
            }
        }

        public final void setViewHost(SurfaceControlViewHost surfaceControlViewHost) {
            this.viewHost = surfaceControlViewHost;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u001a\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0012J\u0006\u0010\u0016\u001a\u00020\u000eR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\f¨\u0006\u0017"}, d2 = {"Lorg/godotengine/godot/service/GodotService$RemoteListener;", "", "handlerRef", "Ljava/lang/ref/WeakReference;", "Lorg/godotengine/godot/service/GodotService$IncomingHandler;", "replyTo", "Landroid/os/Messenger;", "<init>", "(Ljava/lang/ref/WeakReference;Landroid/os/Messenger;)V", "getHandlerRef", "()Ljava/lang/ref/WeakReference;", "getReplyTo", "()Landroid/os/Messenger;", "onEngineError", "", "error", "Lorg/godotengine/godot/service/GodotService$EngineError;", "extras", "Landroid/os/Bundle;", "onEngineStatusUpdate", NotificationCompat.CATEGORY_STATUS, "Lorg/godotengine/godot/service/GodotService$EngineStatus;", "onEngineRestartRequested", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class RemoteListener {
        private final WeakReference<IncomingHandler> handlerRef;
        private final Messenger replyTo;

        public RemoteListener(WeakReference<IncomingHandler> handlerRef, Messenger replyTo) {
            Intrinsics.checkNotNullParameter(handlerRef, "handlerRef");
            Intrinsics.checkNotNullParameter(replyTo, "replyTo");
            this.handlerRef = handlerRef;
            this.replyTo = replyTo;
        }

        public static /* synthetic */ void onEngineError$default(RemoteListener remoteListener, EngineError engineError, Bundle bundle, int i3, Object obj) {
            if ((i3 & 2) != 0) {
                bundle = null;
            }
            remoteListener.onEngineError(engineError, bundle);
        }

        public static /* synthetic */ void onEngineStatusUpdate$default(RemoteListener remoteListener, EngineStatus engineStatus, Bundle bundle, int i3, Object obj) {
            if ((i3 & 2) != 0) {
                bundle = null;
            }
            remoteListener.onEngineStatusUpdate(engineStatus, bundle);
        }

        public final WeakReference<IncomingHandler> getHandlerRef() {
            return this.handlerRef;
        }

        public final Messenger getReplyTo() {
            return this.replyTo;
        }

        public final void onEngineError(EngineError error, Bundle extras) {
            Intrinsics.checkNotNullParameter(error, "error");
            try {
                Messenger messenger = this.replyTo;
                Message messageObtain = Message.obtain();
                messageObtain.what = 100;
                messageObtain.getData().putString(GodotService.KEY_ENGINE_ERROR, error.name());
                if (extras != null && !extras.isEmpty()) {
                    messageObtain.getData().putAll(extras);
                }
                messenger.send(messageObtain);
            } catch (RemoteException e2) {
                Log.e(GodotService.TAG, "Unable to send engine error", e2);
            }
        }

        public final void onEngineRestartRequested() {
            try {
                this.replyTo.send(Message.obtain((Handler) null, 102));
            } catch (RemoteException e2) {
                Log.w(GodotService.TAG, "Unable to send restart request", e2);
            }
        }

        public final void onEngineStatusUpdate(EngineStatus status, Bundle extras) {
            IncomingHandler incomingHandler;
            Intrinsics.checkNotNullParameter(status, "status");
            try {
                Messenger messenger = this.replyTo;
                Message messageObtain = Message.obtain();
                messageObtain.what = GodotService.MSG_ENGINE_STATUS_UPDATE;
                messageObtain.getData().putString(GodotService.KEY_ENGINE_STATUS, status.name());
                if (extras != null && !extras.isEmpty()) {
                    messageObtain.getData().putAll(extras);
                }
                messenger.send(messageObtain);
            } catch (RemoteException e2) {
                Log.e(GodotService.TAG, "Unable to send engine status update", e2);
            }
            if (status != EngineStatus.DESTROYED || (incomingHandler = this.handlerRef.get()) == null || Build.VERSION.SDK_INT < 30 || incomingHandler.getViewHost() == null) {
                return;
            }
            Log.d(GodotService.TAG, "Releasing SurfaceControlViewHost");
            SurfaceControlViewHost viewHost = incomingHandler.getViewHost();
            if (viewHost != null) {
                viewHost.release();
            }
            incomingHandler.setViewHost(null);
        }
    }

    public GodotService() {
        IncomingHandler incomingHandler = new IncomingHandler(new WeakReference(this));
        this.handler = incomingHandler;
        this.messenger = new Messenger(incomingHandler);
        this.godotHost = new GodotServiceHost();
        this.godot = LazyKt.lazy(new C0033n(13, this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void destroyEngine() {
        if (getGodot().isInitialized()) {
            getGodot().onDestroy(this.godotHost);
            RemoteListener remoteListener = this.listener;
            if (remoteListener != null) {
                RemoteListener.onEngineStatusUpdate$default(remoteListener, EngineStatus.DESTROYED, null, 2, null);
            }
            this.listener = null;
            forceQuitService();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void forceQuitService() {
        Log.d(TAG, "Force quitting service");
        stopSelf();
        Process.killProcess(Process.myPid());
        Runtime.getRuntime().exit(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Godot getGodot() {
        return (Godot) this.godot.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Godot godot_delegate$lambda$0(GodotService godotService) {
        Godot.Companion companion = Godot.INSTANCE;
        Context applicationContext = godotService.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
        return companion.getInstance(applicationContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final FrameLayout initEngine(String[] args) {
        if (!getGodot().isInitialized()) {
            if (args != null && args.length != 0) {
                updateCommandLineParams(ArraysKt.asList(args));
            }
            if (!performEngineInitialization()) {
                Log.e(TAG, "Unable to initialize Godot engine");
                return null;
            }
            Log.i(TAG, "Engine initialization complete!");
        }
        FrameLayout containerLayout = getGodot().getContainerLayout();
        if (containerLayout == null) {
            RemoteListener remoteListener = this.listener;
            if (remoteListener != null) {
                RemoteListener.onEngineError$default(remoteListener, EngineError.INIT_FAILED, null, 2, null);
                return containerLayout;
            }
        } else {
            Log.i(TAG, "Initialized Godot engine");
            RemoteListener remoteListener2 = this.listener;
            if (remoteListener2 != null) {
                RemoteListener.onEngineStatusUpdate$default(remoteListener2, EngineStatus.INITIALIZED, null, 2, null);
            }
        }
        return containerLayout;
    }

    private final boolean performEngineInitialization() {
        String message;
        Log.d(TAG, "Performing engine initialization");
        try {
            Godot godot = getGodot();
            GodotServiceHost godotServiceHost = this.godotHost;
            ArrayList<String> commandLine = godotServiceHost.getCommandLine();
            Set<GodotPlugin> hostPlugins = this.godotHost.getHostPlugins(getGodot());
            Intrinsics.checkNotNullExpressionValue(hostPlugins, "getHostPlugins(...)");
            if (!godot.initEngine(godotServiceHost, commandLine, hostPlugins)) {
                throw new IllegalStateException("Unable to initialize Godot engine layer");
            }
            if (Godot.onInitRenderView$default(getGodot(), this.godotHost, null, 2, null) != null) {
                return true;
            }
            throw new IllegalStateException("Unable to initialize engine render view");
        } catch (IllegalStateException e2) {
            Log.e(TAG, "Engine initialization failed", e2);
            if (TextUtils.isEmpty(e2.getMessage())) {
                message = getString(R.string.error_engine_setup_message);
            } else {
                message = e2.getMessage();
                Intrinsics.checkNotNull(message);
            }
            Intrinsics.checkNotNull(message);
            Godot godot2 = getGodot();
            String string = getString(R.string.text_error_title);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            godot2.alert(message, string, new RunnableC0068g1(16, this));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void performEngineInitialization$lambda$1(GodotService godotService) {
        Godot.destroyAndKillProcess$default(godotService.getGodot(), null, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startEngine() {
        if (!getGodot().isInitialized()) {
            Log.e(TAG, "Attempting to start uninitialized Godot engine instance");
            return;
        }
        Log.d(TAG, "Starting Godot engine");
        getGodot().onStart(this.godotHost);
        getGodot().onResume(this.godotHost);
        RemoteListener remoteListener = this.listener;
        if (remoteListener != null) {
            RemoteListener.onEngineStatusUpdate$default(remoteListener, EngineStatus.STARTED, null, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void stopEngine() {
        if (!getGodot().isInitialized()) {
            Log.e(TAG, "Attempting to stop uninitialized Godot engine instance");
            return;
        }
        Log.d(TAG, "Stopping Godot engine");
        getGodot().onPause(this.godotHost);
        getGodot().onStop(this.godotHost);
        RemoteListener remoteListener = this.listener;
        if (remoteListener != null) {
            RemoteListener.onEngineStatusUpdate$default(remoteListener, EngineStatus.STOPPED, null, 2, null);
        }
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return this.messenger.getBinder();
    }

    @Override // android.app.Service
    public void onCreate() {
        Log.d(TAG, "OnCreate");
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        Log.d(TAG, "OnDestroy");
        super.onDestroy();
        destroyEngine();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int flags, int startId) {
        Log.d(TAG, "Processing start command " + intent);
        Message message = intent != null ? (Message) intent.getParcelableExtra(EXTRA_MSG_PAYLOAD) : null;
        if (message == null) {
            return 2;
        }
        this.handler.sendMessage(message);
        return 2;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        stopEngine();
        return false;
    }

    public void updateCommandLineParams(List<String> args) {
        Intrinsics.checkNotNullParameter(args, "args");
        this.commandLineParams.clear();
        if (args.isEmpty()) {
            return;
        }
        this.commandLineParams.addAll(args);
    }
}
