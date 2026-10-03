package org.godotengine.godot.service;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.SurfaceControlViewHost;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import androidx.activity.result.ActivityResultCaller;
import androidx.core.app.NotificationCompat;
import androidx.core.view.KeyEventDispatcher;
import androidx.core.view.o;
import androidx.fragment.app.Fragment;
import java.lang.ref.WeakReference;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.godotengine.godot.GodotHost;
import org.godotengine.godot.R;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010*\u0001\u0014\b\u0007\u0018\u0000 02\u00020\u0001:\u000201B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\b\u0010\u001a\u001a\u00020\u0017H\u0016J&\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u001a\u0010#\u001a\u00020\u00172\u0006\u0010$\u001a\u00020\u001c2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0019\u0010%\u001a\u00020\u00172\f\u0010&\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e¢\u0006\u0002\u0010'J\u0010\u0010(\u001a\u00020\u00172\b\b\u0002\u0010)\u001a\u00020\nJ\b\u0010*\u001a\u00020\u0017H\u0002J\b\u0010+\u001a\u00020\u0017H\u0002J\b\u0010,\u001a\u00020\u0017H\u0002J\b\u0010-\u001a\u00020\u0017H\u0016J\b\u0010.\u001a\u00020\u0017H\u0016J\b\u0010/\u001a\u00020\u0017H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eX\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0010R\u0010\u0010\u0011\u001a\u0004\u0018\u00010\u0012X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0013\u001a\u00020\u0014X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0015¨\u00062"}, d2 = {"Lorg/godotengine/godot/service/RemoteGodotFragment;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "messengerForReply", "Landroid/os/Messenger;", "serviceMessenger", "remoteSurface", "Landroid/view/SurfaceView;", "engineInitialized", "", "fragmentStarted", "serviceBound", "remoteGameArgs", "", "", "[Ljava/lang/String;", "godotHost", "Lorg/godotengine/godot/GodotHost;", "serviceConnection", "org/godotengine/godot/service/RemoteGodotFragment$serviceConnection$1", "Lorg/godotengine/godot/service/RemoteGodotFragment$serviceConnection$1;", "onAttach", "", "context", "Landroid/content/Context;", "onDetach", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "bundle", "Landroid/os/Bundle;", "onViewCreated", "view", "startRemoteGame", "args", "([Ljava/lang/String;)V", "stopRemoteGame", "destroyEngine", "initGodotEngine", "startGodotEngine", "stopGodotEngine", "onStart", "onStop", "onDestroy", "Companion", "IncomingHandler", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class RemoteGodotFragment extends Fragment {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "RemoteGodotFragment";
    private boolean engineInitialized;
    private boolean fragmentStarted;
    private GodotHost godotHost;
    private SurfaceView remoteSurface;
    private boolean serviceBound;
    private Messenger serviceMessenger;
    private final Messenger messengerForReply = new Messenger(new IncomingHandler(new WeakReference(this)));
    private String[] remoteGameArgs = new String[0];
    private final RemoteGodotFragment$serviceConnection$1 serviceConnection = new ServiceConnection() { // from class: org.godotengine.godot.service.RemoteGodotFragment$serviceConnection$1
        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName name, IBinder service) {
            Log.d(RemoteGodotFragment.INSTANCE.getTAG$lib_templateRelease(), "Connected to service " + name);
            this.this$0.serviceMessenger = new Messenger(service);
            this.this$0.initGodotEngine();
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName name) {
            Log.d(RemoteGodotFragment.INSTANCE.getTAG$lib_templateRelease(), "Disconnected from service " + name);
            this.this$0.serviceMessenger = null;
        }
    };

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0080\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;", "", "<init>", "()V", "TAG", "", "kotlin.jvm.PlatformType", "getTAG$lib_templateRelease", "()Ljava/lang/String;", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String getTAG$lib_templateRelease() {
            return RemoteGodotFragment.TAG;
        }

        private Companion() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lorg/godotengine/godot/service/RemoteGodotFragment$IncomingHandler;", "Landroid/os/Handler;", "fragmentRef", "Ljava/lang/ref/WeakReference;", "Lorg/godotengine/godot/service/RemoteGodotFragment;", "<init>", "(Ljava/lang/ref/WeakReference;)V", "handleMessage", "", NotificationCompat.CATEGORY_MESSAGE, "Landroid/os/Message;", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class IncomingHandler extends Handler {
        private final WeakReference<RemoteGodotFragment> fragmentRef;

        /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;
            public static final /* synthetic */ int[] $EnumSwitchMapping$1;

            static {
                int[] iArr = new int[GodotService.EngineStatus.values().length];
                try {
                    iArr[GodotService.EngineStatus.INITIALIZED.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[GodotService.EngineStatus.STARTED.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[GodotService.EngineStatus.STOPPED.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                try {
                    iArr[GodotService.EngineStatus.DESTROYED.ordinal()] = 4;
                } catch (NoSuchFieldError unused4) {
                }
                try {
                    iArr[GodotService.EngineStatus.SCVH_CREATED.ordinal()] = 5;
                } catch (NoSuchFieldError unused5) {
                }
                $EnumSwitchMapping$0 = iArr;
                int[] iArr2 = new int[GodotService.EngineError.values().length];
                try {
                    iArr2[GodotService.EngineError.ALREADY_BOUND.ordinal()] = 1;
                } catch (NoSuchFieldError unused6) {
                }
                try {
                    iArr2[GodotService.EngineError.INIT_FAILED.ordinal()] = 2;
                } catch (NoSuchFieldError unused7) {
                }
                try {
                    iArr2[GodotService.EngineError.SCVH_CREATION_FAILED.ordinal()] = 3;
                } catch (NoSuchFieldError unused8) {
                }
                $EnumSwitchMapping$1 = iArr2;
            }
        }

        public IncomingHandler(WeakReference<RemoteGodotFragment> fragmentRef) {
            Intrinsics.checkNotNullParameter(fragmentRef, "fragmentRef");
            this.fragmentRef = fragmentRef;
        }

        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            Messenger messenger;
            Intrinsics.checkNotNullParameter(msg, "msg");
            RemoteGodotFragment remoteGodotFragment = this.fragmentRef.get();
            if (remoteGodotFragment == null) {
                return;
            }
            try {
                Companion companion = RemoteGodotFragment.INSTANCE;
                Log.d(companion.getTAG$lib_templateRelease(), "HandleMessage: " + msg);
                switch (msg.what) {
                    case 100:
                        try {
                            String string = msg.getData().getString(GodotService.KEY_ENGINE_ERROR, "");
                            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                            GodotService.EngineError engineErrorValueOf = GodotService.EngineError.valueOf(string);
                            Log.d(companion.getTAG$lib_templateRelease(), "Received engine error " + engineErrorValueOf);
                            int i3 = WhenMappings.$EnumSwitchMapping$1[engineErrorValueOf.ordinal()];
                            if (i3 == 1) {
                                remoteGodotFragment.stopRemoteGame(false);
                                Unit unit = Unit.INSTANCE;
                                return;
                            } else if (i3 == 2) {
                                Log.e(companion.getTAG$lib_templateRelease(), "Engine initialization failed");
                                return;
                            } else {
                                if (i3 != 3) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                Log.e(companion.getTAG$lib_templateRelease(), "SurfaceControlViewHost creation failed");
                                return;
                            }
                        } catch (IllegalArgumentException e2) {
                            Log.e(RemoteGodotFragment.INSTANCE.getTAG$lib_templateRelease(), "Unable to retrieve engine error from message " + msg, e2);
                            return;
                        }
                    case GodotService.MSG_ENGINE_STATUS_UPDATE /* 101 */:
                        try {
                            String string2 = msg.getData().getString(GodotService.KEY_ENGINE_STATUS, "");
                            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
                            GodotService.EngineStatus engineStatusValueOf = GodotService.EngineStatus.valueOf(string2);
                            Log.d(companion.getTAG$lib_templateRelease(), "Received engine status " + engineStatusValueOf);
                            int i4 = WhenMappings.$EnumSwitchMapping$0[engineStatusValueOf.ordinal()];
                            if (i4 == 1) {
                                Log.d(companion.getTAG$lib_templateRelease(), "Engine initialized!");
                                try {
                                    Log.i(companion.getTAG$lib_templateRelease(), "Creating SurfaceControlViewHost...");
                                    SurfaceView surfaceView = remoteGodotFragment.remoteSurface;
                                    if (surfaceView == null || (messenger = remoteGodotFragment.serviceMessenger) == null) {
                                        return;
                                    }
                                    Message messageObtain = Message.obtain();
                                    messageObtain.what = 4;
                                    Bundle data = messageObtain.getData();
                                    data.putBinder(GodotService.KEY_HOST_TOKEN, surfaceView.getHostToken());
                                    data.putInt(GodotService.KEY_DISPLAY_ID, surfaceView.getDisplay().getDisplayId());
                                    data.putInt(GodotService.KEY_WIDTH, surfaceView.getWidth());
                                    data.putInt(GodotService.KEY_HEIGHT, surfaceView.getHeight());
                                    messageObtain.replyTo = remoteGodotFragment.messengerForReply;
                                    messenger.send(messageObtain);
                                    Unit unit2 = Unit.INSTANCE;
                                    return;
                                } catch (RemoteException e3) {
                                    Log.e(RemoteGodotFragment.INSTANCE.getTAG$lib_templateRelease(), "Unable to set up SurfaceControlViewHost", e3);
                                    return;
                                }
                            }
                            if (i4 == 2) {
                                Log.d(companion.getTAG$lib_templateRelease(), "Engine started!");
                                return;
                            }
                            if (i4 == 3) {
                                Log.d(companion.getTAG$lib_templateRelease(), "Engine stopped!");
                                return;
                            }
                            if (i4 == 4) {
                                Log.d(companion.getTAG$lib_templateRelease(), "Engine destroyed!");
                                remoteGodotFragment.engineInitialized = false;
                                Unit unit3 = Unit.INSTANCE;
                                return;
                            } else {
                                if (i4 != 5) {
                                    throw new NoWhenBranchMatchedException();
                                }
                                Log.d(companion.getTAG$lib_templateRelease(), "SurfaceControlViewHost created!");
                                SurfaceControlViewHost.SurfacePackage surfacePackageD = o.d(msg.getData().getParcelable(GodotService.KEY_SURFACE_PACKAGE));
                                if (surfacePackageD == null) {
                                    Log.e(companion.getTAG$lib_templateRelease(), "Unable to retrieve surface package from GodotService");
                                    return;
                                }
                                SurfaceView surfaceView2 = remoteGodotFragment.remoteSurface;
                                if (surfaceView2 != null) {
                                    surfaceView2.setChildSurfacePackage(surfacePackageD);
                                }
                                remoteGodotFragment.engineInitialized = true;
                                remoteGodotFragment.startGodotEngine();
                                Unit unit4 = Unit.INSTANCE;
                                return;
                            }
                        } catch (IllegalArgumentException unused) {
                            Log.e(RemoteGodotFragment.INSTANCE.getTAG$lib_templateRelease(), "Unable to retrieve engine status update from " + msg);
                            return;
                        }
                    case 102:
                        Log.d(companion.getTAG$lib_templateRelease(), "Engine restart requested");
                        if (remoteGodotFragment.serviceBound && remoteGodotFragment.engineInitialized) {
                            String[] strArr = remoteGodotFragment.remoteGameArgs;
                            RemoteGodotFragment.stopRemoteGame$default(remoteGodotFragment, false, 1, null);
                            remoteGodotFragment.startRemoteGame(strArr);
                            return;
                        }
                        return;
                    default:
                        super.handleMessage(msg);
                        return;
                }
            } catch (RemoteException e4) {
                Log.e(RemoteGodotFragment.INSTANCE.getTAG$lib_templateRelease(), "Unable to handle message " + msg, e4);
            }
            Log.e(RemoteGodotFragment.INSTANCE.getTAG$lib_templateRelease(), "Unable to handle message " + msg, e4);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void initGodotEngine() {
        if (this.serviceBound) {
            try {
                Messenger messenger = this.serviceMessenger;
                if (messenger != null) {
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 0;
                    messageObtain.getData().putStringArray(GodotService.KEY_COMMAND_LINE_PARAMETERS, this.remoteGameArgs);
                    messageObtain.replyTo = this.messengerForReply;
                    messenger.send(messageObtain);
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "Unable to initialize Godot engine", e2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startGodotEngine() {
        if (this.serviceBound && this.engineInitialized && this.fragmentStarted) {
            try {
                Messenger messenger = this.serviceMessenger;
                if (messenger != null) {
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 1;
                    messageObtain.replyTo = this.messengerForReply;
                    messenger.send(messageObtain);
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "Unable to start Godot engine", e2);
            }
        }
    }

    private final void stopGodotEngine() {
        if (this.serviceBound && this.engineInitialized && !this.fragmentStarted) {
            try {
                Messenger messenger = this.serviceMessenger;
                if (messenger != null) {
                    Message messageObtain = Message.obtain();
                    messageObtain.what = 2;
                    messageObtain.replyTo = this.messengerForReply;
                    messenger.send(messageObtain);
                }
            } catch (RemoteException e2) {
                Log.e(TAG, "Unable to stop Godot engine", e2);
            }
        }
    }

    public static /* synthetic */ void stopRemoteGame$default(RemoteGodotFragment remoteGodotFragment, boolean z2, int i3, Object obj) throws RemoteException {
        if ((i3 & 1) != 0) {
            z2 = true;
        }
        remoteGodotFragment.stopRemoteGame(z2);
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.onAttach(context);
        KeyEventDispatcher.Component activity = getActivity();
        if (activity instanceof GodotHost) {
            this.godotHost = (GodotHost) activity;
            return;
        }
        ActivityResultCaller parentFragment = getParentFragment();
        if (parentFragment instanceof GodotHost) {
            this.godotHost = (GodotHost) parentFragment;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return inflater.inflate(R.layout.remote_godot_fragment_layout, container, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() throws RemoteException {
        stopRemoteGame$default(this, false, 1, null);
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.godotHost = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        this.fragmentStarted = true;
        startGodotEngine();
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        this.fragmentStarted = false;
        stopGodotEngine();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        SurfaceView surfaceView = (SurfaceView) view.findViewById(R.id.remote_godot_window_surface);
        this.remoteSurface = surfaceView;
        if (surfaceView != null) {
            surfaceView.setZOrderOnTop(false);
        }
        initGodotEngine();
    }

    public final void startRemoteGame(String[] args) {
        Intrinsics.checkNotNullParameter(args, "args");
        String str = TAG;
        String string = Arrays.toString(args);
        Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
        Log.d(str, "Starting remote game with args: " + string);
        SurfaceView surfaceView = this.remoteSurface;
        if (surfaceView != null) {
            surfaceView.setZOrderOnTop(true);
        }
        this.remoteGameArgs = args;
        Context context = getContext();
        if (context != null) {
            context.bindService(new Intent(getContext(), (Class<?>) GodotService.class), this.serviceConnection, 1);
        }
        this.serviceBound = true;
    }

    public final void stopRemoteGame(boolean destroyEngine) throws RemoteException {
        Messenger messenger;
        Log.d(TAG, "Stopping remote game");
        SurfaceView surfaceView = this.remoteSurface;
        if (surfaceView != null) {
            surfaceView.setZOrderOnTop(false);
        }
        this.remoteGameArgs = new String[0];
        if (this.serviceBound) {
            if (destroyEngine && (messenger = this.serviceMessenger) != null) {
                Message messageObtain = Message.obtain();
                messageObtain.what = 3;
                messageObtain.replyTo = this.messengerForReply;
                messenger.send(messageObtain);
            }
            Context context = getContext();
            if (context != null) {
                context.unbindService(this.serviceConnection);
            }
            this.serviceBound = false;
        }
    }
}
