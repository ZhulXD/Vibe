package org.godotengine.godot;

import A1.C0036q;
import C1.A1;
import C1.H;
import C1.RunnableC0062e1;
import C1.RunnableC0078k;
import C1.RunnableC0087n;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import androidx.core.graphics.ColorUtils;
import androidx.core.graphics.Insets;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsAnimationCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.core.view.accessibility.AccessibilityEventCompat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.collections.SetsKt;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.godotengine.godot.input.GodotEditText;
import org.godotengine.godot.input.GodotInputHandler;
import org.godotengine.godot.io.FilePicker;
import org.godotengine.godot.io.StorageScope;
import org.godotengine.godot.io.directory.DirectoryAccessHandler;
import org.godotengine.godot.io.file.FileAccessHandler;
import org.godotengine.godot.nativeapi.GodotNativeBridge;
import org.godotengine.godot.plugin.AndroidRuntimePlugin;
import org.godotengine.godot.plugin.GodotPlugin;
import org.godotengine.godot.plugin.GodotPluginRegistry;
import org.godotengine.godot.tts.GodotTTS;
import org.godotengine.godot.utils.BenchmarkUtils;
import org.godotengine.godot.utils.GodotNetUtils;
import org.godotengine.godot.utils.PermissionsUtil;
import org.godotengine.godot.xr.XRMode;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0094\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0000\n\u0002\u0010\u0015\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\b\u0018\u0018\u0000 Û\u00012\u00020\u0001:\u0004Û\u0001Ü\u0001B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u0081\u0001\u001a\u00020.H\u0002J\u0007\u0010\u0082\u0001\u001a\u00020.J\n\u0010\u0083\u0001\u001a\u0005\u0018\u00010\u0084\u0001J5\u0010\u0085\u0001\u001a\u00020.2\t\u0010\u0086\u0001\u001a\u0004\u0018\u00010Q2\u000e\u0010\u0087\u0001\u001a\t\u0012\u0004\u0012\u00020I0\u0088\u00012\u0011\b\u0002\u0010\u0089\u0001\u001a\n\u0012\u0005\u0012\u00030\u008b\u00010\u008a\u0001J\u001e\u0010\u008c\u0001\u001a\u00030\u008d\u00012\u0007\u0010\u008e\u0001\u001a\u00020.2\t\b\u0002\u0010\u008f\u0001\u001a\u00020.H\u0007J\t\u0010\u0090\u0001\u001a\u00020pH\u0002J\u001e\u0010\u0091\u0001\u001a\u00030\u008d\u00012\u0007\u0010\u008e\u0001\u001a\u00020.2\t\b\u0002\u0010\u008f\u0001\u001a\u00020.H\u0007J\u0007\u0010\u0092\u0001\u001a\u00020.J\u0007\u0010\u0093\u0001\u001a\u00020.J\b\u0010\u0094\u0001\u001a\u00030\u008d\u0001J\u0013\u0010\u0095\u0001\u001a\u00020p2\b\u0010\u0096\u0001\u001a\u00030\u0097\u0001H\u0002J\u0011\u0010\u0098\u0001\u001a\u00030\u008d\u00012\u0007\u0010\u0099\u0001\u001a\u00020IJ\u001f\u0010\u009a\u0001\u001a\u0004\u0018\u00010v2\u0007\u0010\u0086\u0001\u001a\u00020Q2\t\b\u0002\u0010\u009b\u0001\u001a\u00020vH\u0007J\u0011\u0010\u009c\u0001\u001a\u00030\u008d\u00012\u0007\u0010\u0086\u0001\u001a\u00020QJ\u0011\u0010\u009d\u0001\u001a\u00030\u008d\u00012\u0007\u0010\u0086\u0001\u001a\u00020QJ\n\u0010\u009e\u0001\u001a\u00030\u008d\u0001H\u0002J\u0019\u0010\u009f\u0001\u001a\u00030\u008d\u00012\u0007\u0010 \u0001\u001a\u00020.H\u0000¢\u0006\u0003\b¡\u0001J\u0011\u0010¢\u0001\u001a\u00030\u008d\u00012\u0007\u0010\u0086\u0001\u001a\u00020QJ\u0011\u0010£\u0001\u001a\u00030\u008d\u00012\u0007\u0010\u0086\u0001\u001a\u00020QJ\u0010\u0010¤\u0001\u001a\u00030\u008d\u00012\u0006\u0010P\u001a\u00020QJ\u0012\u0010¥\u0001\u001a\u00030\u008d\u00012\b\u0010¦\u0001\u001a\u00030§\u0001J&\u0010¨\u0001\u001a\u00030\u008d\u00012\u0007\u0010©\u0001\u001a\u00020p2\u0007\u0010ª\u0001\u001a\u00020p2\n\u0010«\u0001\u001a\u0005\u0018\u00010¬\u0001J3\u0010\u00ad\u0001\u001a\u00030\u008d\u00012\u0007\u0010©\u0001\u001a\u00020p2\u0010\u0010®\u0001\u001a\u000b\u0012\u0006\u0012\u0004\u0018\u00010I0¯\u00012\b\u0010°\u0001\u001a\u00030±\u0001¢\u0006\u0003\u0010²\u0001J\u0010\u0010³\u0001\u001a\u00030\u008d\u0001H\u0000¢\u0006\u0003\b´\u0001J\u0010\u0010µ\u0001\u001a\u00030\u008d\u0001H\u0000¢\u0006\u0003\b¶\u0001J\u0010\u0010·\u0001\u001a\u00030\u008d\u0001H\u0000¢\u0006\u0003\b¸\u0001J)\u0010¹\u0001\u001a\u00030\u008d\u00012\t\b\u0001\u0010º\u0001\u001a\u00020p2\t\b\u0001\u0010»\u0001\u001a\u00020p2\t\u0010¼\u0001\u001a\u0004\u0018\u00010LJ)\u0010¹\u0001\u001a\u00030\u008d\u00012\u0007\u0010½\u0001\u001a\u00020I2\u0007\u0010¾\u0001\u001a\u00020I2\u000b\b\u0002\u0010¼\u0001\u001a\u0004\u0018\u00010LH\u0007J\u0011\u0010¿\u0001\u001a\u00030\u008d\u00012\u0007\u0010À\u0001\u001a\u00020LJ\u0011\u0010Á\u0001\u001a\u00030\u008d\u00012\u0007\u0010À\u0001\u001a\u00020LJ\t\u0010Â\u0001\u001a\u00020IH\u0002J\u0015\u0010Ã\u0001\u001a\u00020.2\n\u0010Ä\u0001\u001a\u0005\u0018\u00010Å\u0001H\u0002J\u0019\u0010Æ\u0001\u001a\u00030\u008d\u00012\u0007\u0010\u008e\u0001\u001a\u00020.H\u0000¢\u0006\u0003\bÇ\u0001J\t\u0010È\u0001\u001a\u00020.H\u0007J\t\u0010É\u0001\u001a\u00020IH\u0007J\u0015\u0010Ê\u0001\u001a\u00030\u008d\u00012\t\u0010Ë\u0001\u001a\u0004\u0018\u00010IH\u0007J\u0017\u0010Ì\u0001\u001a\u00030\u008d\u00012\u000b\b\u0002\u0010Í\u0001\u001a\u0004\u0018\u00010LH\u0007J\u0018\u0010Î\u0001\u001a\u00020.2\u0007\u0010Ï\u0001\u001a\u00020pH\u0000¢\u0006\u0003\bÐ\u0001J\b\u0010Ñ\u0001\u001a\u00030\u008d\u0001J\u0012\u0010Ò\u0001\u001a\u00020.2\t\u0010Ó\u0001\u001a\u0004\u0018\u00010IJ\u0007\u0010Ô\u0001\u001a\u00020.J\u0018\u0010Õ\u0001\u001a\r\u0012\u0006\u0012\u0004\u0018\u00010I\u0018\u00010¯\u0001¢\u0006\u0003\u0010Ö\u0001J\u0007\u0010×\u0001\u001a\u00020.J\u0007\u0010Ø\u0001\u001a\u00020.J\u0010\u0010Ù\u0001\u001a\u00020.2\u0007\u0010Ú\u0001\u001a\u00020IR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\n\u001a\u0004\u0018\u00010\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\f\u0010\rR\u001d\u0010\u0010\u001a\u0004\u0018\u00010\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u000f\u001a\u0004\b\u0012\u0010\u0013R\u001b\u0010\u0015\u001a\u00020\u00168@X\u0080\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u000f\u001a\u0004\b\u0017\u0010\u0018R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\u001c\u001a\u0004\u0018\u00010\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u000f\u001a\u0004\b\u001e\u0010\u001fR\u000e\u0010!\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010\"\u001a\u0004\u0018\u00010\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u000f\u001a\u0004\b#\u0010\u001fR\u000e\u0010%\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010&\u001a\u0004\u0018\u00010\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010\u000f\u001a\u0004\b'\u0010\u001fR\u000e\u0010)\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u001d\u0010*\u001a\u0004\u0018\u00010\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010\u000f\u001a\u0004\b+\u0010\u001fR\u001b\u0010-\u001a\u00020.8FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b0\u0010\u000f\u001a\u0004\b-\u0010/R\u0011\u00101\u001a\u000202¢\u0006\b\n\u0000\u001a\u0004\b3\u00104R\u0011\u00105\u001a\u000206¢\u0006\b\n\u0000\u001a\u0004\b7\u00108R\u0011\u00109\u001a\u00020:¢\u0006\b\n\u0000\u001a\u0004\b;\u0010<R\u0011\u0010=\u001a\u00020>¢\u0006\b\n\u0000\u001a\u0004\b?\u0010@R\u0011\u0010A\u001a\u00020B¢\u0006\b\n\u0000\u001a\u0004\bC\u0010DR\u001c\u0010E\u001a\u0010\u0012\f\u0012\n G*\u0004\u0018\u00010.0.0FX\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010H\u001a\u0010\u0012\f\u0012\n G*\u0004\u0018\u00010I0I0FX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010J\u001a\b\u0012\u0004\u0012\u00020L0KX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010M\u001a\u00020.X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010N\u001a\u00020.X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010O\u001a\u00020.X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010P\u001a\u0004\u0018\u00010QX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bR\u0010S\"\u0004\bT\u0010UR\u000e\u0010V\u001a\u00020.X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010W\u001a\b\u0012\u0004\u0012\u00020X0KX\u0082\u0004¢\u0006\u0002\n\u0000R\u0011\u0010Y\u001a\u00020X8F¢\u0006\u0006\u001a\u0004\bZ\u0010[R\u0011\u0010\\\u001a\u00020]¢\u0006\b\n\u0000\u001a\u0004\b^\u0010_R\u0014\u0010`\u001a\b\u0012\u0004\u0012\u00020I0aX\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010b\u001a\u00020cX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bd\u0010e\"\u0004\bf\u0010gR\u000e\u0010h\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010i\u001a\u00020\u001bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010j\u001a\u00020.X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010k\u001a\u00020.X\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bl\u0010/\"\u0004\bm\u0010nR\u000e\u0010o\u001a\u00020pX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010q\u001a\u00020pX\u0082\u000e¢\u0006\u0002\n\u0000R\u001e\u0010s\u001a\u00020.2\u0006\u0010r\u001a\u00020.@BX\u0086\u000e¢\u0006\b\n\u0000\u001a\u0004\bt\u0010/R\u001c\u0010u\u001a\u0004\u0018\u00010vX\u0080\u000e¢\u0006\u000e\n\u0000\u001a\u0004\bw\u0010x\"\u0004\by\u0010zR\u001d\u0010{\u001a\u0004\u0018\u00010|X\u0086\u000e¢\u0006\u000f\n\u0000\u001a\u0004\b}\u0010~\"\u0005\b\u007f\u0010\u0080\u0001¨\u0006Ý\u0001"}, d2 = {"Lorg/godotengine/godot/Godot;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "godotNativeBridge", "Lorg/godotengine/godot/nativeapi/GodotNativeBridge;", "mSensorManager", "Landroid/hardware/SensorManager;", "getMSensorManager", "()Landroid/hardware/SensorManager;", "mSensorManager$delegate", "Lkotlin/Lazy;", "mClipboard", "Landroid/content/ClipboardManager;", "getMClipboard", "()Landroid/content/ClipboardManager;", "mClipboard$delegate", "pluginRegistry", "Lorg/godotengine/godot/plugin/GodotPluginRegistry;", "getPluginRegistry$lib_templateRelease", "()Lorg/godotengine/godot/plugin/GodotPluginRegistry;", "pluginRegistry$delegate", "accelerometerEnabled", "Ljava/util/concurrent/atomic/AtomicBoolean;", "mAccelerometer", "Landroid/hardware/Sensor;", "getMAccelerometer", "()Landroid/hardware/Sensor;", "mAccelerometer$delegate", "gravityEnabled", "mGravity", "getMGravity", "mGravity$delegate", "magnetometerEnabled", "mMagnetometer", "getMMagnetometer", "mMagnetometer$delegate", "gyroscopeEnabled", "mGyroscope", "getMGyroscope", "mGyroscope$delegate", "isXrRuntime", "", "()Z", "isXrRuntime$delegate", "tts", "Lorg/godotengine/godot/tts/GodotTTS;", "getTts", "()Lorg/godotengine/godot/tts/GodotTTS;", "directoryAccessHandler", "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;", "getDirectoryAccessHandler", "()Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;", "fileAccessHandler", "Lorg/godotengine/godot/io/file/FileAccessHandler;", "getFileAccessHandler", "()Lorg/godotengine/godot/io/file/FileAccessHandler;", "netUtils", "Lorg/godotengine/godot/utils/GodotNetUtils;", "getNetUtils", "()Lorg/godotengine/godot/utils/GodotNetUtils;", "godotInputHandler", "Lorg/godotengine/godot/input/GodotInputHandler;", "getGodotInputHandler", "()Lorg/godotengine/godot/input/GodotInputHandler;", "hasClipboardCallable", "Ljava/util/concurrent/Callable;", "kotlin.jvm.PlatformType", "getClipboardCallable", "", "runOnTerminate", "Ljava/util/concurrent/atomic/AtomicReference;", "Ljava/lang/Runnable;", "nativeLayerInitializeCompleted", "nativeLayerSetupCompleted", "renderViewInitialized", "primaryHost", "Lorg/godotengine/godot/GodotHost;", "getPrimaryHost$lib_templateRelease", "()Lorg/godotengine/godot/GodotHost;", "setPrimaryHost$lib_templateRelease", "(Lorg/godotengine/godot/GodotHost;)V", "resumed", "_runStatus", "Lorg/godotengine/godot/Godot$RunStatus;", "runStatus", "getRunStatus", "()Lorg/godotengine/godot/Godot$RunStatus;", "io", "Lorg/godotengine/godot/GodotIO;", "getIo", "()Lorg/godotengine/godot/GodotIO;", "commandLine", "", "xrMode", "Lorg/godotengine/godot/xr/XRMode;", "getXrMode$lib_templateRelease", "()Lorg/godotengine/godot/xr/XRMode;", "setXrMode$lib_templateRelease", "(Lorg/godotengine/godot/xr/XRMode;)V", "useImmersive", "isEdgeToEdge", "useDebugOpengl", "darkMode", "getDarkMode$lib_templateRelease", "setDarkMode$lib_templateRelease", "(Z)V", "backgroundColor", "", "orientation", "value", "disableGodotSplash", "getDisableGodotSplash", "containerLayout", "Landroid/widget/FrameLayout;", "getContainerLayout$lib_templateRelease", "()Landroid/widget/FrameLayout;", "setContainerLayout$lib_templateRelease", "(Landroid/widget/FrameLayout;)V", "renderView", "Lorg/godotengine/godot/GodotRenderView;", "getRenderView", "()Lorg/godotengine/godot/GodotRenderView;", "setRenderView", "(Lorg/godotengine/godot/GodotRenderView;)V", "isNativeInitialized", "isInitialized", "getActivity", "Landroid/app/Activity;", "initEngine", "host", "commandLineParams", "", "hostPlugins", "", "Lorg/godotengine/godot/plugin/GodotPlugin;", "enableEdgeToEdge", "", "enabled", "override", "getInsetType", "enableImmersiveMode", "isInImmersiveMode", "isInEdgeToEdgeMode", "setSystemBarsAppearance", "getWindowBackgroundColor", "window", "Landroid/view/Window;", "setWindowColor", "colorStr", "onInitRenderView", "providedContainerLayout", "onStart", "onResume", "registerSensorsIfNeeded", "onPictureInPictureModeChanged", "isInPictureInPictureMode", "onPictureInPictureModeChanged$lib_templateRelease", "onPause", "onStop", "onDestroy", "onConfigurationChanged", "newConfig", "Landroid/content/res/Configuration;", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onRequestPermissionsResult", "permissions", "", "grantResults", "", "(I[Ljava/lang/String;[I)V", "onGodotSetupCompleted", "onGodotSetupCompleted$lib_templateRelease", "onGodotMainLoopStarted", "onGodotMainLoopStarted$lib_templateRelease", "onGodotTerminating", "onGodotTerminating$lib_templateRelease", "alert", "messageResId", "titleResId", "okCallback", "message", "title", "runOnRenderThread", "action", "runOnHostThread", "getNativeRenderer", "meetsVulkanRequirements", "packageManager", "Landroid/content/pm/PackageManager;", "setKeepScreenOn", "setKeepScreenOn$lib_templateRelease", "hasClipboard", "getClipboard", "setClipboard", "text", "destroyAndKillProcess", "destroyRunnable", "forceQuit", "instanceId", "forceQuit$lib_templateRelease", "onBackPressed", "requestPermission", "name", "requestPermissions", "getGrantedPermissions", "()[Ljava/lang/String;", "isEditorHint", "isProjectManagerHint", "hasFeature", "feature", "Companion", "RunStatus", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGodot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Godot.kt\norg/godotengine/godot/Godot\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 Color.kt\nandroidx/core/graphics/ColorKt\n*L\n1#1,1066:1\n37#2:1067\n36#2,3:1068\n432#3:1071\n*S KotlinDebug\n*F\n+ 1 Godot.kt\norg/godotengine/godot/Godot\n*L\n338#1:1067\n338#1:1068,3\n473#1:1071\n*E\n"})
public final class Godot {
    private static final String EDITOR_FLAVOR = "editor";
    private static final long EXIT_RENDERER_TIMEOUT_IN_MS = 1500;
    private static volatile Godot INSTANCE = null;
    private static final String TEMPLATE_FLAVOR = "template";
    private final AtomicReference<RunStatus> _runStatus;
    private final AtomicBoolean accelerometerEnabled;
    private int backgroundColor;
    private List<String> commandLine;
    private FrameLayout containerLayout;
    private final Context context;
    private boolean darkMode;
    private final DirectoryAccessHandler directoryAccessHandler;
    private boolean disableGodotSplash;
    private final FileAccessHandler fileAccessHandler;
    private final Callable<String> getClipboardCallable;
    private final GodotInputHandler godotInputHandler;
    private final GodotNativeBridge godotNativeBridge;
    private final AtomicBoolean gravityEnabled;
    private final AtomicBoolean gyroscopeEnabled;
    private final Callable<Boolean> hasClipboardCallable;
    private final GodotIO io;
    private final AtomicBoolean isEdgeToEdge;

    /* JADX INFO: renamed from: isXrRuntime$delegate, reason: from kotlin metadata */
    private final Lazy isXrRuntime;

    /* JADX INFO: renamed from: mAccelerometer$delegate, reason: from kotlin metadata */
    private final Lazy mAccelerometer;

    /* JADX INFO: renamed from: mClipboard$delegate, reason: from kotlin metadata */
    private final Lazy mClipboard;

    /* JADX INFO: renamed from: mGravity$delegate, reason: from kotlin metadata */
    private final Lazy mGravity;

    /* JADX INFO: renamed from: mGyroscope$delegate, reason: from kotlin metadata */
    private final Lazy mGyroscope;

    /* JADX INFO: renamed from: mMagnetometer$delegate, reason: from kotlin metadata */
    private final Lazy mMagnetometer;

    /* JADX INFO: renamed from: mSensorManager$delegate, reason: from kotlin metadata */
    private final Lazy mSensorManager;
    private final AtomicBoolean magnetometerEnabled;
    private boolean nativeLayerInitializeCompleted;
    private boolean nativeLayerSetupCompleted;
    private final GodotNetUtils netUtils;
    private int orientation;

    /* JADX INFO: renamed from: pluginRegistry$delegate, reason: from kotlin metadata */
    private final Lazy pluginRegistry;
    private GodotHost primaryHost;
    private GodotRenderView renderView;
    private boolean renderViewInitialized;
    private boolean resumed;
    private final AtomicReference<Runnable> runOnTerminate;
    private final GodotTTS tts;
    private boolean useDebugOpengl;
    private final AtomicBoolean useImmersive;
    private XRMode xrMode;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "Godot";

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bH\u0007J\r\u0010\u0010\u001a\u00020\u0011H\u0000¢\u0006\u0002\b\u0012J\r\u0010\u0013\u001a\u00020\u0011H\u0000¢\u0006\u0002\b\u0014R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0015"}, d2 = {"Lorg/godotengine/godot/Godot$Companion;", "", "<init>", "()V", "TAG", "", "kotlin.jvm.PlatformType", "INSTANCE", "Lorg/godotengine/godot/Godot;", "getInstance", "context", "Landroid/content/Context;", "EXIT_RENDERER_TIMEOUT_IN_MS", "", "EDITOR_FLAVOR", "TEMPLATE_FLAVOR", "isEditorBuild", "", "isEditorBuild$lib_templateRelease", "isTemplateBuild", "isTemplateBuild$lib_templateRelease", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nGodot.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Godot.kt\norg/godotengine/godot/Godot$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1066:1\n1#2:1067\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        public final Godot getInstance(Context context) {
            Godot godot;
            Intrinsics.checkNotNullParameter(context, "context");
            Godot godot2 = Godot.INSTANCE;
            if (godot2 != null) {
                return godot2;
            }
            synchronized (this) {
                godot = Godot.INSTANCE;
                if (godot == null) {
                    Context applicationContext = context.getApplicationContext();
                    Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
                    godot = new Godot(applicationContext, null);
                    Godot.INSTANCE = godot;
                }
            }
            return godot;
        }

        public final boolean isEditorBuild$lib_templateRelease() {
            return false;
        }

        public final boolean isTemplateBuild$lib_templateRelease() {
            return true;
        }

        private Companion() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lorg/godotengine/godot/Godot$RunStatus;", "", "<init>", "(Ljava/lang/String;I)V", "INITIALIZING", "STARTED", "TERMINATING", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum RunStatus {
        INITIALIZING,
        STARTED,
        TERMINATING;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<RunStatus> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: renamed from: org.godotengine.godot.Godot$onInitRenderView$2, reason: invalid class name */
    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u00007\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016J\u0018\u0010\u000f\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016J\u001e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00132\f\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0016H\u0016J\u0010\u0010\u0017\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0004\u0010\u0005\"\u0004\b\u0006\u0010\u0007R\u001a\u0010\b\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\u0005\"\u0004\b\n\u0010\u0007¨\u0006\u0018"}, d2 = {"org/godotengine/godot/Godot$onInitRenderView$2", "Landroidx/core/view/WindowInsetsAnimationCompat$Callback;", "startBottom", "", "getStartBottom", "()I", "setStartBottom", "(I)V", "endBottom", "getEndBottom", "setEndBottom", "onPrepare", "", "animation", "Landroidx/core/view/WindowInsetsAnimationCompat;", "onStart", "Landroidx/core/view/WindowInsetsAnimationCompat$BoundsCompat;", "bounds", "onProgress", "Landroidx/core/view/WindowInsetsCompat;", "windowInsets", "animationsList", "", "onEnd", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class AnonymousClass2 extends WindowInsetsAnimationCompat.Callback {
        final /* synthetic */ View $topView;
        private int endBottom;
        private int startBottom;
        final /* synthetic */ Godot this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(View view, Godot godot) {
            super(0);
            this.$topView = view;
            this.this$0 = godot;
        }

        public final int getEndBottom() {
            return this.endBottom;
        }

        public final int getStartBottom() {
            return this.startBottom;
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
        public void onEnd(WindowInsetsAnimationCompat animation) {
            Intrinsics.checkNotNullParameter(animation, "animation");
            if (!this.this$0.useImmersive.get() || Build.VERSION.SDK_INT >= 30) {
                return;
            }
            Godot godot = this.this$0;
            godot.runOnHostThread(new c(godot, 3));
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
        public void onPrepare(WindowInsetsAnimationCompat animation) {
            Insets insets;
            Intrinsics.checkNotNullParameter(animation, "animation");
            WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(this.$topView);
            this.startBottom = (rootWindowInsets == null || (insets = rootWindowInsets.getInsets(WindowInsetsCompat.Type.ime())) == null) ? 0 : insets.bottom;
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
        public WindowInsetsCompat onProgress(WindowInsetsCompat windowInsets, List<WindowInsetsAnimationCompat> animationsList) {
            WindowInsetsAnimationCompat next;
            Intrinsics.checkNotNullParameter(windowInsets, "windowInsets");
            Intrinsics.checkNotNullParameter(animationsList, "animationsList");
            Iterator<WindowInsetsAnimationCompat> it = animationsList.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while ((next.getTypeMask() & WindowInsetsCompat.Type.ime()) == 0);
            if (next != null) {
                float interpolatedFraction = next.getInterpolatedFraction();
                GodotLib.setVirtualKeyboardHeight(Math.max(((int) ((this.endBottom * interpolatedFraction) + ((1.0f - interpolatedFraction) * this.startBottom))) - this.$topView.getRootView().getPaddingBottom(), 0));
            }
            return windowInsets;
        }

        @Override // androidx.core.view.WindowInsetsAnimationCompat.Callback
        public WindowInsetsAnimationCompat.BoundsCompat onStart(WindowInsetsAnimationCompat animation, WindowInsetsAnimationCompat.BoundsCompat bounds) {
            Insets insets;
            Intrinsics.checkNotNullParameter(animation, "animation");
            Intrinsics.checkNotNullParameter(bounds, "bounds");
            WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(this.$topView);
            this.endBottom = (rootWindowInsets == null || (insets = rootWindowInsets.getInsets(WindowInsetsCompat.Type.ime())) == null) ? 0 : insets.bottom;
            return bounds;
        }

        public final void setEndBottom(int i3) {
            this.endBottom = i3;
        }

        public final void setStartBottom(int i3) {
            this.startBottom = i3;
        }
    }

    public /* synthetic */ Godot(Context context, DefaultConstructorMarker defaultConstructorMarker) {
        this(context);
    }

    public static /* synthetic */ void alert$default(Godot godot, String str, String str2, Runnable runnable, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            runnable = null;
        }
        godot.alert(str, str2, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void alert$lambda$24(Activity activity, String str, String str2, final Runnable runnable) {
        AlertDialog.Builder builder = new AlertDialog.Builder(activity);
        builder.setMessage(str).setTitle(str2);
        builder.setPositiveButton(R.string.dialog_ok, new DialogInterface.OnClickListener() { // from class: org.godotengine.godot.d
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                Godot.alert$lambda$24$lambda$23(runnable, dialogInterface, i3);
            }
        });
        builder.create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void alert$lambda$24$lambda$23(Runnable runnable, DialogInterface dialog, int i3) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        if (runnable != null) {
            runnable.run();
        }
        dialog.cancel();
    }

    public static /* synthetic */ void destroyAndKillProcess$default(Godot godot, Runnable runnable, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            runnable = null;
        }
        godot.destroyAndKillProcess(runnable);
    }

    public static /* synthetic */ void enableEdgeToEdge$default(Godot godot, boolean z2, boolean z3, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            z3 = false;
        }
        godot.enableEdgeToEdge(z2, z3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WindowInsetsCompat enableEdgeToEdge$lambda$11(Godot godot, View v2, WindowInsetsCompat insets) {
        Intrinsics.checkNotNullParameter(v2, "v");
        Intrinsics.checkNotNullParameter(insets, "insets");
        v2.post(new A1(godot, insets, v2, 8));
        return WindowInsetsCompat.CONSUMED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void enableEdgeToEdge$lambda$11$lambda$10(Godot godot, WindowInsetsCompat windowInsetsCompat, View view) {
        if (!godot.useImmersive.get()) {
            Insets insets = windowInsetsCompat.getInsets(godot.getInsetType());
            Intrinsics.checkNotNullExpressionValue(insets, "getInsets(...)");
            view.setPadding(insets.left, insets.top, insets.right, insets.bottom);
        } else {
            if (!INSTANCE.isEditorBuild$lib_templateRelease()) {
                view.setPadding(0, 0, 0, 0);
                return;
            }
            Insets insets2 = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.displayCutout());
            Intrinsics.checkNotNullExpressionValue(insets2, "getInsets(...)");
            view.setPadding(insets2.left, insets2.top, insets2.right, insets2.bottom);
        }
    }

    public static /* synthetic */ void enableImmersiveMode$default(Godot godot, boolean z2, boolean z3, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            z3 = false;
        }
        godot.enableImmersiveMode(z2, z3);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String getClipboardCallable$lambda$9(Godot godot) {
        String string;
        ClipData.Item itemAt;
        ClipboardManager mClipboard = godot.getMClipboard();
        CharSequence text = null;
        ClipData primaryClip = mClipboard != null ? mClipboard.getPrimaryClip() : null;
        if (primaryClip != null && (itemAt = primaryClip.getItemAt(0)) != null) {
            text = itemAt.getText();
        }
        return (text == null || (string = text.toString()) == null) ? "" : string;
    }

    private final int getInsetType() {
        return (!this.useImmersive.get() || INSTANCE.isEditorBuild$lib_templateRelease()) ? WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout() : WindowInsetsCompat.Type.systemBars();
    }

    @JvmStatic
    public static final Godot getInstance(Context context) {
        return INSTANCE.getInstance(context);
    }

    private final Sensor getMAccelerometer() {
        return (Sensor) this.mAccelerometer.getValue();
    }

    private final ClipboardManager getMClipboard() {
        return (ClipboardManager) this.mClipboard.getValue();
    }

    private final Sensor getMGravity() {
        return (Sensor) this.mGravity.getValue();
    }

    private final Sensor getMGyroscope() {
        return (Sensor) this.mGyroscope.getValue();
    }

    private final Sensor getMMagnetometer() {
        return (Sensor) this.mMagnetometer.getValue();
    }

    private final SensorManager getMSensorManager() {
        return (SensorManager) this.mSensorManager.getValue();
    }

    private final String getNativeRenderer() {
        String[] rendererInfo = GodotLib.getRendererInfo(meetsVulkanRequirements(this.context.getPackageManager()));
        String str = rendererInfo[0];
        String str2 = rendererInfo[1];
        String str3 = rendererInfo[2];
        String str4 = rendererInfo[3];
        String str5 = rendererInfo[4];
        String str6 = TAG;
        StringBuilder sbJ = kotlin.collections.unsigned.a.j("renderingDevice: ", str, " (", str4, ")\n\t\t\trenderer: ");
        sbJ.append(str3);
        sbJ.append(" (");
        sbJ.append(str5);
        sbJ.append(")");
        Log.d(str6, sbJ.toString());
        if (Intrinsics.areEqual(str2, "vulkan") && Intrinsics.areEqual(str, "")) {
            throw new IllegalStateException(this.context.getString(R.string.error_missing_vulkan_requirements_message));
        }
        Intrinsics.checkNotNull(str);
        return str;
    }

    private final int getWindowBackgroundColor(Window window) {
        Drawable background = window.getDecorView().getBackground();
        return background instanceof ColorDrawable ? ((ColorDrawable) background).getColor() : this.backgroundColor;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean hasClipboardCallable$lambda$8(Godot godot) {
        ClipboardManager mClipboard = godot.getMClipboard();
        boolean z2 = false;
        if (mClipboard != null && mClipboard.hasPrimaryClip()) {
            z2 = true;
        }
        return Boolean.valueOf(z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ boolean initEngine$default(Godot godot, GodotHost godotHost, List list, Set set, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            set = Collections.EMPTY_SET;
        }
        return godot.initEngine(godotHost, list, set);
    }

    private final boolean isNativeInitialized() {
        return this.nativeLayerInitializeCompleted && this.nativeLayerSetupCompleted;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isXrRuntime_delegate$lambda$7(Godot godot) {
        return godot.hasFeature("xr_runtime");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Sensor mAccelerometer_delegate$lambda$3(Godot godot) {
        SensorManager mSensorManager = godot.getMSensorManager();
        if (mSensorManager != null) {
            return mSensorManager.getDefaultSensor(1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ClipboardManager mClipboard_delegate$lambda$1(Godot godot) {
        Object systemService = godot.context.getSystemService("clipboard");
        if (systemService instanceof ClipboardManager) {
            return (ClipboardManager) systemService;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Sensor mGravity_delegate$lambda$4(Godot godot) {
        SensorManager mSensorManager = godot.getMSensorManager();
        if (mSensorManager != null) {
            return mSensorManager.getDefaultSensor(9);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Sensor mGyroscope_delegate$lambda$6(Godot godot) {
        SensorManager mSensorManager = godot.getMSensorManager();
        if (mSensorManager != null) {
            return mSensorManager.getDefaultSensor(4);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Sensor mMagnetometer_delegate$lambda$5(Godot godot) {
        SensorManager mSensorManager = godot.getMSensorManager();
        if (mSensorManager != null) {
            return mSensorManager.getDefaultSensor(2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final SensorManager mSensorManager_delegate$lambda$0(Godot godot) {
        Object systemService = godot.context.getSystemService("sensor");
        if (systemService instanceof SensorManager) {
            return (SensorManager) systemService;
        }
        return null;
    }

    private final boolean meetsVulkanRequirements(PackageManager packageManager) {
        if (packageManager == null) {
            return false;
        }
        if (!packageManager.hasSystemFeature("android.hardware.vulkan.level", 1)) {
            Log.w(TAG, "The vulkan hardware level does not meet the minimum requirement: 1");
        }
        return packageManager.hasSystemFeature("android.hardware.vulkan.version", 4198400);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onActivityResult$lambda$18(Godot godot, int i3, int i4, Intent intent) {
        FilePicker.INSTANCE.handleActivityResult(godot.context, i3, i4, intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onConfigurationChanged$lambda$17(Godot godot) {
        GodotLib.onOrientationChange(godot.orientation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onGodotSetupCompleted$lambda$21(Godot godot, boolean z2, boolean z3, boolean z4, boolean z5, String str) {
        GodotInputHandler godotInputHandler = godot.godotInputHandler;
        godotInputHandler.enableLongPress(z2);
        godotInputHandler.enablePanningAndScalingGestures(z3);
        godotInputHandler.setOverrideVolumeButtons(z4);
        godotInputHandler.disableScrollDeadzone(z5);
        try {
            godotInputHandler.setRotaryInputAxis(Integer.parseInt(str));
        } catch (NumberFormatException e2) {
            Log.w(TAG, e2);
        }
    }

    public static /* synthetic */ FrameLayout onInitRenderView$default(Godot godot, GodotHost godotHost, FrameLayout frameLayout, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            frameLayout = new FrameLayout(godot.context);
        }
        return godot.onInitRenderView(godotHost, frameLayout);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onInitRenderView$lambda$14(Godot godot) {
        Iterator<GodotPlugin> it = godot.getPluginRegistry$lib_templateRelease().getAllPlugins().iterator();
        while (it.hasNext()) {
            it.next().onRegisterPluginWithGodotNative();
        }
        godot.setKeepScreenOn$lib_templateRelease(Boolean.parseBoolean(GodotLib.getGlobal("display/window/energy_saving/keep_screen_on")));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onRequestPermissionsResult$lambda$19(String[] strArr, int[] iArr) {
        int length = strArr.length;
        for (int i3 = 0; i3 < length; i3++) {
            GodotLib.requestPermissionResult(strArr[i3], iArr[i3] == 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void registerSensorsIfNeeded() {
        SensorManager mSensorManager;
        SensorManager mSensorManager2;
        SensorManager mSensorManager3;
        SensorManager mSensorManager4;
        if (this.resumed && getRunStatus() == RunStatus.STARTED) {
            if (this.accelerometerEnabled.get() && getMAccelerometer() != null && (mSensorManager4 = getMSensorManager()) != null) {
                mSensorManager4.registerListener(this.godotInputHandler, getMAccelerometer(), 1);
            }
            if (this.gravityEnabled.get() && getMGravity() != null && (mSensorManager3 = getMSensorManager()) != null) {
                mSensorManager3.registerListener(this.godotInputHandler, getMGravity(), 1);
            }
            if (this.magnetometerEnabled.get() && getMMagnetometer() != null && (mSensorManager2 = getMSensorManager()) != null) {
                mSensorManager2.registerListener(this.godotInputHandler, getMMagnetometer(), 1);
            }
            if (!this.gyroscopeEnabled.get() || getMGyroscope() == null || (mSensorManager = getMSensorManager()) == null) {
                return;
            }
            mSensorManager.registerListener(this.godotInputHandler, getMGyroscope(), 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setClipboard$lambda$26(Godot godot, String str) {
        ClipboardManager mClipboard = godot.getMClipboard();
        if (mClipboard != null) {
            mClipboard.setPrimaryClip(ClipData.newPlainText("myLabel", str));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setKeepScreenOn$lambda$25(boolean z2, Godot godot) {
        Window window;
        Window window2;
        if (z2) {
            Activity activity = godot.getActivity();
            if (activity == null || (window2 = activity.getWindow()) == null) {
                return;
            }
            window2.addFlags(128);
            return;
        }
        Activity activity2 = godot.getActivity();
        if (activity2 == null || (window = activity2.getWindow()) == null) {
            return;
        }
        window.clearFlags(128);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void setWindowColor$lambda$12(View view, int i3, Godot godot) {
        view.setBackgroundColor(i3);
        godot.backgroundColor = i3;
        godot.setSystemBarsAppearance();
    }

    @JvmOverloads
    public final void alert(String message, String title) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(title, "title");
        alert$default(this, message, title, null, 4, null);
    }

    @JvmOverloads
    public final void destroyAndKillProcess() {
        destroyAndKillProcess$default(this, null, 1, null);
    }

    @JvmOverloads
    public final void enableEdgeToEdge(boolean z2) {
        enableEdgeToEdge$default(this, z2, false, 2, null);
    }

    @JvmOverloads
    public final void enableImmersiveMode(boolean z2) {
        enableImmersiveMode$default(this, z2, false, 2, null);
    }

    public final boolean forceQuit$lib_templateRelease(int instanceId) {
        GodotHost godotHost = this.primaryHost;
        if (godotHost == null) {
            return false;
        }
        if (instanceId != 0) {
            return godotHost.onGodotForceQuit(instanceId);
        }
        godotHost.onGodotForceQuit(this);
        return true;
    }

    public final Activity getActivity() {
        GodotHost godotHost = this.primaryHost;
        if (godotHost != null) {
            return godotHost.getActivity();
        }
        return null;
    }

    @p005c.a
    public final String getClipboard() throws Exception {
        if (Build.VERSION.SDK_INT >= 28 || Intrinsics.areEqual(Looper.getMainLooper().getThread(), Thread.currentThread())) {
            String strCall = this.getClipboardCallable.call();
            Intrinsics.checkNotNull(strCall);
            return strCall;
        }
        FutureTask futureTask = new FutureTask(this.getClipboardCallable);
        runOnHostThread(futureTask);
        Object obj = futureTask.get();
        Intrinsics.checkNotNull(obj);
        return (String) obj;
    }

    /* JADX INFO: renamed from: getContainerLayout$lib_templateRelease, reason: from getter */
    public final FrameLayout getContainerLayout() {
        return this.containerLayout;
    }

    public final Context getContext() {
        return this.context;
    }

    /* JADX INFO: renamed from: getDarkMode$lib_templateRelease, reason: from getter */
    public final boolean getDarkMode() {
        return this.darkMode;
    }

    public final DirectoryAccessHandler getDirectoryAccessHandler() {
        return this.directoryAccessHandler;
    }

    public final boolean getDisableGodotSplash() {
        return this.disableGodotSplash;
    }

    public final FileAccessHandler getFileAccessHandler() {
        return this.fileAccessHandler;
    }

    public final GodotInputHandler getGodotInputHandler() {
        return this.godotInputHandler;
    }

    public final String[] getGrantedPermissions() {
        return PermissionsUtil.getGrantedPermissions(this.context);
    }

    public final GodotIO getIo() {
        return this.io;
    }

    public final GodotNetUtils getNetUtils() {
        return this.netUtils;
    }

    public final GodotPluginRegistry getPluginRegistry$lib_templateRelease() {
        Object value = this.pluginRegistry.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "getValue(...)");
        return (GodotPluginRegistry) value;
    }

    /* JADX INFO: renamed from: getPrimaryHost$lib_templateRelease, reason: from getter */
    public final GodotHost getPrimaryHost() {
        return this.primaryHost;
    }

    public final GodotRenderView getRenderView() {
        return this.renderView;
    }

    public final RunStatus getRunStatus() {
        RunStatus runStatus = this._runStatus.get();
        Intrinsics.checkNotNullExpressionValue(runStatus, "get(...)");
        return runStatus;
    }

    public final GodotTTS getTts() {
        return this.tts;
    }

    /* JADX INFO: renamed from: getXrMode$lib_templateRelease, reason: from getter */
    public final XRMode getXrMode() {
        return this.xrMode;
    }

    @p005c.a
    public final boolean hasClipboard() throws Exception {
        if (Build.VERSION.SDK_INT >= 28 || Intrinsics.areEqual(Looper.getMainLooper().getThread(), Thread.currentThread())) {
            Boolean boolCall = this.hasClipboardCallable.call();
            Intrinsics.checkNotNull(boolCall);
            return boolCall.booleanValue();
        }
        FutureTask futureTask = new FutureTask(this.hasClipboardCallable);
        runOnHostThread(futureTask);
        Object obj = futureTask.get();
        Intrinsics.checkNotNull(obj);
        return ((Boolean) obj).booleanValue();
    }

    public final boolean hasFeature(String feature) {
        Intrinsics.checkNotNullParameter(feature, "feature");
        return GodotLib.hasFeature(feature);
    }

    public final boolean initEngine(GodotHost host, List<String> commandLineParams, Set<? extends GodotPlugin> hostPlugins) {
        Intrinsics.checkNotNullParameter(commandLineParams, "commandLineParams");
        Intrinsics.checkNotNullParameter(hostPlugins, "hostPlugins");
        if (isNativeInitialized()) {
            Log.d(TAG, "Engine already initialized");
            return true;
        }
        Configuration configuration = this.context.getResources().getConfiguration();
        this.darkMode = (configuration.uiMode & 48) == 32;
        this.orientation = configuration.orientation;
        BenchmarkUtils.beginBenchmarkMeasure("Startup", "Godot::initEngine");
        try {
            this.primaryHost = host;
            this.commandLine.addAll(commandLineParams);
            Log.v(TAG, "Initializing Godot plugin registry");
            Set setMutableSetOf = SetsKt.mutableSetOf(new AndroidRuntimePlugin(this));
            setMutableSetOf.addAll(hostPlugins);
            GodotPluginRegistry.initializePluginRegistry(this, setMutableSetOf);
            List<String> listUnmodifiableList = Collections.unmodifiableList(commandLineParams);
            for (GodotPlugin godotPlugin : getPluginRegistry$lib_templateRelease().getAllPlugins()) {
                try {
                    List<String> commandLineParams2 = godotPlugin.getCommandLineParams(listUnmodifiableList);
                    Intrinsics.checkNotNullExpressionValue(commandLineParams2, "getCommandLineParams(...)");
                    if (!Intrinsics.areEqual(commandLineParams2, listUnmodifiableList) && !commandLineParams2.isEmpty()) {
                        Log.d(TAG, "Received command line params from plugin " + godotPlugin + ": " + commandLineParams2);
                        this.commandLine.addAll(commandLineParams2);
                    }
                } catch (Exception e2) {
                    Log.e(TAG, "Unable to get command line params from plugin " + godotPlugin, e2);
                }
            }
            Log.v(TAG, "InitEngine with params: " + this.commandLine);
            ArrayList arrayList = new ArrayList();
            int i3 = 0;
            boolean z2 = false;
            while (i3 < this.commandLine.size()) {
                boolean z3 = i3 < this.commandLine.size() - 1;
                String str = this.commandLine.get(i3);
                XRMode xRMode = XRMode.REGULAR;
                if (Intrinsics.areEqual(str, xRMode.cmdLineArg)) {
                    this.xrMode = xRMode;
                } else {
                    String str2 = this.commandLine.get(i3);
                    XRMode xRMode2 = XRMode.OPENXR;
                    if (Intrinsics.areEqual(str2, xRMode2.cmdLineArg)) {
                        this.xrMode = xRMode2;
                    } else if (Intrinsics.areEqual(this.commandLine.get(i3), "--debug_opengl")) {
                        this.useDebugOpengl = true;
                    } else if (Intrinsics.areEqual(this.commandLine.get(i3), "--edge_to_edge")) {
                        this.isEdgeToEdge.set(true);
                    } else if (Intrinsics.areEqual(this.commandLine.get(i3), "--fullscreen")) {
                        this.useImmersive.set(true);
                        arrayList.add(this.commandLine.get(i3));
                    } else if (z3 && Intrinsics.areEqual(this.commandLine.get(i3), "--background_color")) {
                        i3++;
                        setWindowColor(this.commandLine.get(i3));
                    } else if (Intrinsics.areEqual(this.commandLine.get(i3), "--disable_godot_splash")) {
                        this.disableGodotSplash = true;
                    } else if (Intrinsics.areEqual(this.commandLine.get(i3), "--benchmark")) {
                        BenchmarkUtils.setUseBenchmark(true);
                        arrayList.add(this.commandLine.get(i3));
                    } else if (z3 && Intrinsics.areEqual(this.commandLine.get(i3), "--benchmark-file")) {
                        BenchmarkUtils.setUseBenchmark(true);
                        arrayList.add(this.commandLine.get(i3));
                        i3++;
                        BenchmarkUtils.setBenchmarkFile(this.commandLine.get(i3));
                        arrayList.add(this.commandLine.get(i3));
                    } else if (z3 && Intrinsics.areEqual(this.commandLine.get(i3), "--main-pack")) {
                        arrayList.add(this.commandLine.get(i3));
                        i3++;
                        String str3 = this.commandLine.get(i3);
                        arrayList.add(this.commandLine.get(i3));
                        StorageScope storageScopeIdentifyStorageScope = this.fileAccessHandler.getStorageScopeIdentifier().identifyStorageScope(str3);
                        if (INSTANCE.isTemplateBuild$lib_templateRelease()) {
                            z2 = storageScopeIdentifyStorageScope == StorageScope.APP;
                        }
                    } else if (StringsKt.trim((CharSequence) this.commandLine.get(i3)).toString().length() > 0) {
                        arrayList.add(this.commandLine.get(i3));
                    }
                }
                i3++;
            }
            if (arrayList.isEmpty()) {
                arrayList = new ArrayList();
            }
            this.commandLine = arrayList;
            if (!this.nativeLayerInitializeCompleted) {
                boolean zInitialize = GodotLib.initialize(this.godotNativeBridge, this.context.getAssets(), this.io, this.netUtils, this.directoryAccessHandler, this.fileAccessHandler, z2);
                this.nativeLayerInitializeCompleted = zInitialize;
                Log.v(TAG, "Godot native layer initialization completed: " + zInitialize);
            }
            if (this.nativeLayerInitializeCompleted && !this.nativeLayerSetupCompleted) {
                String str4 = TAG;
                Log.v(str4, "Setting up native layer with params: " + this.commandLine);
                boolean upVar = GodotLib.setup((String[]) this.commandLine.toArray(new String[0]), this.tts);
                this.nativeLayerSetupCompleted = upVar;
                if (!upVar) {
                    throw new IllegalStateException("Unable to setup the Godot engine! Aborting...");
                }
                Log.v(str4, "Godot native layer setup completed");
            }
            BenchmarkUtils.endBenchmarkMeasure$default("Startup", "Godot::initEngine", false, 4, null);
            return isNativeInitialized();
        } catch (Throwable th) {
            BenchmarkUtils.endBenchmarkMeasure$default("Startup", "Godot::initEngine", false, 4, null);
            throw th;
        }
    }

    public final boolean isEditorHint() {
        return INSTANCE.isEditorBuild$lib_templateRelease() && GodotLib.isEditorHint();
    }

    public final boolean isInEdgeToEdgeMode() {
        return this.isEdgeToEdge.get();
    }

    public final boolean isInImmersiveMode() {
        return this.useImmersive.get();
    }

    public final boolean isInitialized() {
        return this.primaryHost != null && isNativeInitialized() && this.renderViewInitialized;
    }

    public final boolean isProjectManagerHint() {
        return INSTANCE.isEditorBuild$lib_templateRelease() && GodotLib.isProjectManagerHint();
    }

    public final boolean isXrRuntime() {
        return ((Boolean) this.isXrRuntime.getValue()).booleanValue();
    }

    public final void onActivityResult(final int requestCode, final int resultCode, final Intent data) {
        Iterator<GodotPlugin> it = getPluginRegistry$lib_templateRelease().getAllPlugins().iterator();
        while (it.hasNext()) {
            it.next().onMainActivityResult(requestCode, resultCode, data);
        }
        runOnRenderThread(new Runnable() { // from class: org.godotengine.godot.f
            @Override // java.lang.Runnable
            public final void run() {
                Godot.onActivityResult$lambda$18(this.b, requestCode, resultCode, data);
            }
        });
    }

    public final void onBackPressed() {
        Iterator<GodotPlugin> it = getPluginRegistry$lib_templateRelease().getAllPlugins().iterator();
        while (it.hasNext()) {
            it.next().onMainBackPressed();
        }
        runOnRenderThread(new RunnableC0062e1(2));
    }

    public final void onConfigurationChanged(Configuration newConfig) {
        Intrinsics.checkNotNullParameter(newConfig, "newConfig");
        this.godotInputHandler.onConfigurationChanged(newConfig);
        boolean z2 = (newConfig.uiMode & 48) == 32;
        if (this.darkMode != z2) {
            this.darkMode = z2;
            runOnRenderThread(new RunnableC0062e1(1));
        }
        int i3 = this.orientation;
        int i4 = newConfig.orientation;
        if (i3 != i4) {
            this.orientation = i4;
            runOnRenderThread(new c(this, 1));
        }
    }

    public final void onDestroy(GodotHost primaryHost) {
        Intrinsics.checkNotNullParameter(primaryHost, "primaryHost");
        if (Intrinsics.areEqual(this.primaryHost, primaryHost)) {
            Log.v(TAG, "OnDestroy: " + primaryHost);
            Iterator<GodotPlugin> it = getPluginRegistry$lib_templateRelease().getAllPlugins().iterator();
            while (it.hasNext()) {
                it.next().onMainDestroy();
            }
            GodotRenderView godotRenderView = this.renderView;
            if (godotRenderView == null || !godotRenderView.blockingExitRenderer(EXIT_RENDERER_TIMEOUT_IN_MS)) {
                Log.w(TAG, "Unable to exit the renderer within 1500 ms... Force quitting the process.");
                onGodotTerminating$lib_templateRelease();
                forceQuit$lib_templateRelease(0);
            }
            this.primaryHost = null;
        }
    }

    public final void onGodotMainLoopStarted$lib_templateRelease() {
        Log.v(TAG, "OnGodotMainLoopStarted");
        this._runStatus.set(RunStatus.STARTED);
        this.accelerometerEnabled.set(Boolean.parseBoolean(GodotLib.getGlobal("input_devices/sensors/enable_accelerometer")));
        this.gravityEnabled.set(Boolean.parseBoolean(GodotLib.getGlobal("input_devices/sensors/enable_gravity")));
        this.gyroscopeEnabled.set(Boolean.parseBoolean(GodotLib.getGlobal("input_devices/sensors/enable_gyroscope")));
        this.magnetometerEnabled.set(Boolean.parseBoolean(GodotLib.getGlobal("input_devices/sensors/enable_magnetometer")));
        runOnHostThread(new c(this, 0));
        Iterator<GodotPlugin> it = getPluginRegistry$lib_templateRelease().getAllPlugins().iterator();
        while (it.hasNext()) {
            it.next().onGodotMainLoopStarted();
        }
        GodotHost godotHost = this.primaryHost;
        if (godotHost != null) {
            godotHost.onGodotMainLoopStarted();
        }
    }

    public final void onGodotSetupCompleted$lib_templateRelease() {
        Log.v(TAG, "OnGodotSetupCompleted");
        final boolean z2 = Boolean.parseBoolean(GodotLib.getGlobal("input_devices/pointing/android/enable_long_press_as_right_click"));
        final boolean z3 = Boolean.parseBoolean(GodotLib.getGlobal("input_devices/pointing/android/enable_pan_and_scale_gestures"));
        final String global = GodotLib.getGlobal("input_devices/pointing/android/rotary_input_scroll_axis");
        final boolean z4 = Boolean.parseBoolean(GodotLib.getGlobal("input_devices/pointing/android/override_volume_buttons"));
        final boolean z5 = Boolean.parseBoolean(GodotLib.getGlobal("input_devices/pointing/android/disable_scroll_deadzone"));
        runOnHostThread(new Runnable() { // from class: org.godotengine.godot.g
            @Override // java.lang.Runnable
            public final void run() {
                Godot.onGodotSetupCompleted$lambda$21(this.b, z2, z3, z4, z5, global);
            }
        });
        Iterator<GodotPlugin> it = getPluginRegistry$lib_templateRelease().getAllPlugins().iterator();
        while (it.hasNext()) {
            it.next().onGodotSetupCompleted();
        }
        GodotHost godotHost = this.primaryHost;
        if (godotHost != null) {
            godotHost.onGodotSetupCompleted();
        }
    }

    public final void onGodotTerminating$lib_templateRelease() {
        Log.v(TAG, "OnGodotTerminating");
        this._runStatus.set(RunStatus.TERMINATING);
        Iterator<GodotPlugin> it = getPluginRegistry$lib_templateRelease().getAllPlugins().iterator();
        while (it.hasNext()) {
            it.next().onGodotTerminating();
        }
        Runnable runnable = this.runOnTerminate.get();
        if (runnable != null) {
            runnable.run();
        }
    }

    @JvmOverloads
    public final FrameLayout onInitRenderView(GodotHost host) {
        Intrinsics.checkNotNullParameter(host, "host");
        return onInitRenderView$default(this, host, null, 2, null);
    }

    public final void onPause(GodotHost host) {
        Intrinsics.checkNotNullParameter(host, "host");
        Log.v(TAG, "OnPause: " + host);
        this.resumed = false;
        if (Intrinsics.areEqual(host, this.primaryHost)) {
            Iterator<GodotPlugin> it = getPluginRegistry$lib_templateRelease().getAllPlugins().iterator();
            while (it.hasNext()) {
                it.next().onMainPause();
            }
            GodotRenderView godotRenderView = this.renderView;
            if (godotRenderView != null) {
                godotRenderView.onActivityPaused();
            }
            SensorManager mSensorManager = getMSensorManager();
            if (mSensorManager != null) {
                mSensorManager.unregisterListener(this.godotInputHandler);
            }
        }
    }

    public final void onPictureInPictureModeChanged$lib_templateRelease(boolean isInPictureInPictureMode) {
        Log.v(TAG, "onPictureInPictureModeChanged: " + isInPictureInPictureMode);
        runOnRenderThread(new h(0, isInPictureInPictureMode));
    }

    public final void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        Intrinsics.checkNotNullParameter(permissions, "permissions");
        Intrinsics.checkNotNullParameter(grantResults, "grantResults");
        Iterator<GodotPlugin> it = getPluginRegistry$lib_templateRelease().getAllPlugins().iterator();
        while (it.hasNext()) {
            it.next().onMainRequestPermissionsResult(requestCode, permissions, grantResults);
        }
        runOnRenderThread(new RunnableC0078k(16, permissions, grantResults));
    }

    public final void onResume(GodotHost host) {
        Intrinsics.checkNotNullParameter(host, "host");
        Log.v(TAG, "OnResume: " + host);
        this.resumed = true;
        if (Intrinsics.areEqual(host, this.primaryHost)) {
            GodotRenderView godotRenderView = this.renderView;
            if (godotRenderView != null) {
                godotRenderView.onActivityResumed();
            }
            registerSensorsIfNeeded();
            Iterator<GodotPlugin> it = getPluginRegistry$lib_templateRelease().getAllPlugins().iterator();
            while (it.hasNext()) {
                it.next().onMainResume();
            }
        }
    }

    public final void onStart(GodotHost host) {
        Intrinsics.checkNotNullParameter(host, "host");
        Log.v(TAG, "OnStart: " + host);
        if (Intrinsics.areEqual(host, this.primaryHost)) {
            GodotRenderView godotRenderView = this.renderView;
            if (godotRenderView != null) {
                godotRenderView.onActivityStarted();
            }
            Iterator<GodotPlugin> it = getPluginRegistry$lib_templateRelease().getAllPlugins().iterator();
            while (it.hasNext()) {
                it.next().onMainStart();
            }
        }
    }

    public final void onStop(GodotHost host) {
        Intrinsics.checkNotNullParameter(host, "host");
        Log.v(TAG, "OnStop: " + host);
        if (Intrinsics.areEqual(host, this.primaryHost)) {
            Iterator<GodotPlugin> it = getPluginRegistry$lib_templateRelease().getAllPlugins().iterator();
            while (it.hasNext()) {
                it.next().onMainStop();
            }
            GodotRenderView godotRenderView = this.renderView;
            if (godotRenderView != null) {
                godotRenderView.onActivityStopped();
            }
        }
    }

    public final boolean requestPermission(String name) {
        Activity activity = getActivity();
        if (activity == null) {
            return false;
        }
        return PermissionsUtil.requestPermission(name, activity);
    }

    public final boolean requestPermissions() {
        return PermissionsUtil.requestManifestPermissions(getActivity());
    }

    public final void runOnHostThread(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        GodotHost godotHost = this.primaryHost;
        if (godotHost != null) {
            godotHost.runOnHostThread(action);
        }
    }

    public final void runOnRenderThread(Runnable action) {
        Intrinsics.checkNotNullParameter(action, "action");
        GodotRenderView godotRenderView = this.renderView;
        if (godotRenderView != null) {
            godotRenderView.queueOnRenderThread(action);
        }
    }

    @p005c.a
    public final void setClipboard(String text) {
        runOnHostThread(new RunnableC0078k(17, this, text));
    }

    public final void setContainerLayout$lib_templateRelease(FrameLayout frameLayout) {
        this.containerLayout = frameLayout;
    }

    public final void setDarkMode$lib_templateRelease(boolean z2) {
        this.darkMode = z2;
    }

    public final void setKeepScreenOn$lib_templateRelease(boolean enabled) {
        runOnHostThread(new f2.a(enabled, this, 2));
    }

    public final void setPrimaryHost$lib_templateRelease(GodotHost godotHost) {
        this.primaryHost = godotHost;
    }

    public final void setRenderView(GodotRenderView godotRenderView) {
        this.renderView = godotRenderView;
    }

    public final void setSystemBarsAppearance() {
        Window window;
        Activity activity = getActivity();
        if (activity == null || (window = activity.getWindow()) == null) {
            return;
        }
        boolean z2 = ColorUtils.calculateLuminance(getWindowBackgroundColor(window)) > 0.5d;
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(window, window.getDecorView());
        windowInsetsControllerCompat.setAppearanceLightNavigationBars(z2);
        windowInsetsControllerCompat.setAppearanceLightStatusBars(z2);
    }

    public final void setWindowColor(String colorStr) {
        Window window;
        View decorView;
        Intrinsics.checkNotNullParameter(colorStr, "colorStr");
        try {
            int color = Color.parseColor(colorStr);
            Activity activity = getActivity();
            if (activity == null || (window = activity.getWindow()) == null || (decorView = window.getDecorView()) == null) {
                return;
            }
            runOnHostThread(new H(decorView, color, this, 4));
        } catch (IllegalArgumentException e2) {
            Log.w(TAG, "Failed to parse background color: " + colorStr, e2);
        }
    }

    public final void setXrMode$lib_templateRelease(XRMode xRMode) {
        Intrinsics.checkNotNullParameter(xRMode, "<set-?>");
        this.xrMode = xRMode;
    }

    private Godot(Context context) {
        this.context = context;
        this.godotNativeBridge = new GodotNativeBridge(this);
        final int i3 = 1;
        this.mSensorManager = LazyKt.lazy(new Function0(this) { // from class: org.godotengine.godot.a

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Godot f5168c;

            {
                this.f5168c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i3) {
                    case 0:
                        return Boolean.valueOf(Godot.isXrRuntime_delegate$lambda$7(this.f5168c));
                    case 1:
                        return Godot.mSensorManager_delegate$lambda$0(this.f5168c);
                    case 2:
                        return Godot.mClipboard_delegate$lambda$1(this.f5168c);
                    case 3:
                        return Godot.mAccelerometer_delegate$lambda$3(this.f5168c);
                    case 4:
                        return Godot.mGravity_delegate$lambda$4(this.f5168c);
                    case 5:
                        return Godot.mMagnetometer_delegate$lambda$5(this.f5168c);
                    default:
                        return Godot.mGyroscope_delegate$lambda$6(this.f5168c);
                }
            }
        });
        final int i4 = 2;
        this.mClipboard = LazyKt.lazy(new Function0(this) { // from class: org.godotengine.godot.a

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Godot f5168c;

            {
                this.f5168c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i4) {
                    case 0:
                        return Boolean.valueOf(Godot.isXrRuntime_delegate$lambda$7(this.f5168c));
                    case 1:
                        return Godot.mSensorManager_delegate$lambda$0(this.f5168c);
                    case 2:
                        return Godot.mClipboard_delegate$lambda$1(this.f5168c);
                    case 3:
                        return Godot.mAccelerometer_delegate$lambda$3(this.f5168c);
                    case 4:
                        return Godot.mGravity_delegate$lambda$4(this.f5168c);
                    case 5:
                        return Godot.mMagnetometer_delegate$lambda$5(this.f5168c);
                    default:
                        return Godot.mGyroscope_delegate$lambda$6(this.f5168c);
                }
            }
        });
        this.pluginRegistry = LazyKt.lazy(new C0036q(16));
        this.accelerometerEnabled = new AtomicBoolean(false);
        final int i5 = 3;
        this.mAccelerometer = LazyKt.lazy(new Function0(this) { // from class: org.godotengine.godot.a

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Godot f5168c;

            {
                this.f5168c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i5) {
                    case 0:
                        return Boolean.valueOf(Godot.isXrRuntime_delegate$lambda$7(this.f5168c));
                    case 1:
                        return Godot.mSensorManager_delegate$lambda$0(this.f5168c);
                    case 2:
                        return Godot.mClipboard_delegate$lambda$1(this.f5168c);
                    case 3:
                        return Godot.mAccelerometer_delegate$lambda$3(this.f5168c);
                    case 4:
                        return Godot.mGravity_delegate$lambda$4(this.f5168c);
                    case 5:
                        return Godot.mMagnetometer_delegate$lambda$5(this.f5168c);
                    default:
                        return Godot.mGyroscope_delegate$lambda$6(this.f5168c);
                }
            }
        });
        this.gravityEnabled = new AtomicBoolean(false);
        final int i6 = 4;
        this.mGravity = LazyKt.lazy(new Function0(this) { // from class: org.godotengine.godot.a

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Godot f5168c;

            {
                this.f5168c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i6) {
                    case 0:
                        return Boolean.valueOf(Godot.isXrRuntime_delegate$lambda$7(this.f5168c));
                    case 1:
                        return Godot.mSensorManager_delegate$lambda$0(this.f5168c);
                    case 2:
                        return Godot.mClipboard_delegate$lambda$1(this.f5168c);
                    case 3:
                        return Godot.mAccelerometer_delegate$lambda$3(this.f5168c);
                    case 4:
                        return Godot.mGravity_delegate$lambda$4(this.f5168c);
                    case 5:
                        return Godot.mMagnetometer_delegate$lambda$5(this.f5168c);
                    default:
                        return Godot.mGyroscope_delegate$lambda$6(this.f5168c);
                }
            }
        });
        this.magnetometerEnabled = new AtomicBoolean(false);
        final int i7 = 5;
        this.mMagnetometer = LazyKt.lazy(new Function0(this) { // from class: org.godotengine.godot.a

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Godot f5168c;

            {
                this.f5168c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i7) {
                    case 0:
                        return Boolean.valueOf(Godot.isXrRuntime_delegate$lambda$7(this.f5168c));
                    case 1:
                        return Godot.mSensorManager_delegate$lambda$0(this.f5168c);
                    case 2:
                        return Godot.mClipboard_delegate$lambda$1(this.f5168c);
                    case 3:
                        return Godot.mAccelerometer_delegate$lambda$3(this.f5168c);
                    case 4:
                        return Godot.mGravity_delegate$lambda$4(this.f5168c);
                    case 5:
                        return Godot.mMagnetometer_delegate$lambda$5(this.f5168c);
                    default:
                        return Godot.mGyroscope_delegate$lambda$6(this.f5168c);
                }
            }
        });
        this.gyroscopeEnabled = new AtomicBoolean(false);
        final int i8 = 6;
        this.mGyroscope = LazyKt.lazy(new Function0(this) { // from class: org.godotengine.godot.a

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Godot f5168c;

            {
                this.f5168c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i8) {
                    case 0:
                        return Boolean.valueOf(Godot.isXrRuntime_delegate$lambda$7(this.f5168c));
                    case 1:
                        return Godot.mSensorManager_delegate$lambda$0(this.f5168c);
                    case 2:
                        return Godot.mClipboard_delegate$lambda$1(this.f5168c);
                    case 3:
                        return Godot.mAccelerometer_delegate$lambda$3(this.f5168c);
                    case 4:
                        return Godot.mGravity_delegate$lambda$4(this.f5168c);
                    case 5:
                        return Godot.mMagnetometer_delegate$lambda$5(this.f5168c);
                    default:
                        return Godot.mGyroscope_delegate$lambda$6(this.f5168c);
                }
            }
        });
        final int i9 = 0;
        this.isXrRuntime = LazyKt.lazy(new Function0(this) { // from class: org.godotengine.godot.a

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ Godot f5168c;

            {
                this.f5168c = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                switch (i9) {
                    case 0:
                        return Boolean.valueOf(Godot.isXrRuntime_delegate$lambda$7(this.f5168c));
                    case 1:
                        return Godot.mSensorManager_delegate$lambda$0(this.f5168c);
                    case 2:
                        return Godot.mClipboard_delegate$lambda$1(this.f5168c);
                    case 3:
                        return Godot.mAccelerometer_delegate$lambda$3(this.f5168c);
                    case 4:
                        return Godot.mGravity_delegate$lambda$4(this.f5168c);
                    case 5:
                        return Godot.mMagnetometer_delegate$lambda$5(this.f5168c);
                    default:
                        return Godot.mGyroscope_delegate$lambda$6(this.f5168c);
                }
            }
        });
        this.tts = new GodotTTS(context);
        this.directoryAccessHandler = new DirectoryAccessHandler(context);
        this.fileAccessHandler = new FileAccessHandler(context);
        this.netUtils = new GodotNetUtils(context);
        this.godotInputHandler = new GodotInputHandler(context, this);
        final int i10 = 0;
        this.hasClipboardCallable = new Callable(this) { // from class: org.godotengine.godot.b
            public final /* synthetic */ Godot b;

            {
                this.b = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                switch (i10) {
                    case 0:
                        return Godot.hasClipboardCallable$lambda$8(this.b);
                    default:
                        return Godot.getClipboardCallable$lambda$9(this.b);
                }
            }
        };
        final int i11 = 1;
        this.getClipboardCallable = new Callable(this) { // from class: org.godotengine.godot.b
            public final /* synthetic */ Godot b;

            {
                this.b = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                switch (i11) {
                    case 0:
                        return Godot.hasClipboardCallable$lambda$8(this.b);
                    default:
                        return Godot.getClipboardCallable$lambda$9(this.b);
                }
            }
        };
        this.runOnTerminate = new AtomicReference<>();
        this._runStatus = new AtomicReference<>(RunStatus.INITIALIZING);
        this.io = new GodotIO(this);
        this.commandLine = new ArrayList();
        this.xrMode = XRMode.REGULAR;
        this.useImmersive = new AtomicBoolean(false);
        this.isEdgeToEdge = new AtomicBoolean(false);
        this.backgroundColor = ViewCompat.MEASURED_STATE_MASK;
    }

    public final void alert(int messageResId, int titleResId, Runnable okCallback) {
        Resources resources = this.context.getResources();
        if (resources == null) {
            return;
        }
        String string = resources.getString(messageResId);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = resources.getString(titleResId);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        alert(string, string2, okCallback);
    }

    @JvmOverloads
    public final void destroyAndKillProcess(Runnable destroyRunnable) {
        GodotHost godotHost = this.primaryHost;
        if (godotHost != null) {
            this.runOnTerminate.set(destroyRunnable);
            runOnHostThread(new RunnableC0078k(15, this, godotHost));
        } else {
            if (destroyRunnable != null) {
                destroyRunnable.run();
            }
            forceQuit$lib_templateRelease(0);
        }
    }

    @JvmOverloads
    public final void enableEdgeToEdge(boolean enabled, boolean override) {
        Window window;
        Activity activity = getActivity();
        if (activity == null || (window = activity.getWindow()) == null) {
            return;
        }
        if (this.isEdgeToEdge.compareAndSet(!enabled, enabled) || override) {
            View decorView = window.getDecorView();
            Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
            WindowCompat.setDecorFitsSystemWindows(window, (this.isEdgeToEdge.get() || this.useImmersive.get()) ? false : true);
            if (enabled) {
                ViewCompat.setOnApplyWindowInsetsListener(decorView, null);
                decorView.setPadding(0, 0, 0, 0);
                if (Build.VERSION.SDK_INT < 30) {
                    window.addFlags(AccessibilityEventCompat.TYPE_VIEW_TARGETED_BY_SCROLL);
                    window.addFlags(134217728);
                    return;
                }
                return;
            }
            if (decorView.getRootWindowInsets() != null && !this.useImmersive.get()) {
                WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(decorView.getRootWindowInsets());
                Intrinsics.checkNotNullExpressionValue(windowInsetsCompat, "toWindowInsetsCompat(...)");
                Insets insets = windowInsetsCompat.getInsets(getInsetType());
                Intrinsics.checkNotNullExpressionValue(insets, "getInsets(...)");
                decorView.setPadding(insets.left, insets.top, insets.right, insets.bottom);
            }
            ViewCompat.setOnApplyWindowInsetsListener(decorView, new OnApplyWindowInsetsListener() { // from class: org.godotengine.godot.e
                @Override // androidx.core.view.OnApplyWindowInsetsListener
                public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat2) {
                    return Godot.enableEdgeToEdge$lambda$11(this.b, view, windowInsetsCompat2);
                }
            });
        }
    }

    @JvmOverloads
    public final void enableImmersiveMode(boolean enabled, boolean override) {
        Window window;
        Activity activity = getActivity();
        if (activity == null || (window = activity.getWindow()) == null) {
            return;
        }
        if (this.useImmersive.compareAndSet(!enabled, enabled) || override) {
            WindowCompat.setDecorFitsSystemWindows(window, (this.isEdgeToEdge.get() || this.useImmersive.get()) ? false : true);
            WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(window, window.getDecorView());
            if (enabled) {
                windowInsetsControllerCompat.hide(WindowInsetsCompat.Type.systemBars());
                windowInsetsControllerCompat.setSystemBarsBehavior(2);
            } else {
                TypedValue typedValue = new TypedValue();
                windowInsetsControllerCompat.show((!(activity.getTheme().resolveAttribute(android.R.attr.windowFullscreen, typedValue, true) && typedValue.type == 18) ? !INSTANCE.isEditorBuild$lib_templateRelease() : typedValue.data == 0) ? WindowInsetsCompat.Type.navigationBars() : WindowInsetsCompat.Type.navigationBars() | WindowInsetsCompat.Type.statusBars());
            }
        }
    }

    @JvmOverloads
    public final FrameLayout onInitRenderView(GodotHost host, FrameLayout providedContainerLayout) {
        ViewGroup.LayoutParams layoutParams;
        View decorView;
        Window window;
        Window window2;
        Intrinsics.checkNotNullParameter(host, "host");
        Intrinsics.checkNotNullParameter(providedContainerLayout, "providedContainerLayout");
        if (!isNativeInitialized()) {
            throw new IllegalStateException("initEngine(...) must be invoked successfully prior to initializing the render view");
        }
        BenchmarkUtils.beginBenchmarkMeasure("Startup", "Godot::onInitRenderView");
        String str = TAG;
        Log.v(str, "OnInitRenderView: " + host);
        try {
            this.primaryHost = host;
            Activity activity = getActivity();
            if (activity != null && (window2 = activity.getWindow()) != null) {
                window2.addFlags(2097152);
            }
            FrameLayout frameLayout = this.containerLayout;
            if (frameLayout != null) {
                if (!this.renderViewInitialized) {
                    frameLayout.removeAllViews();
                    this.containerLayout = null;
                }
                BenchmarkUtils.endBenchmarkMeasure$default("Startup", "Godot::onInitRenderView", false, 4, null);
                return frameLayout;
            }
            this.containerLayout = providedContainerLayout;
            if (providedContainerLayout != null) {
                providedContainerLayout.removeAllViews();
            }
            FrameLayout frameLayout2 = this.containerLayout;
            if (frameLayout2 == null || (layoutParams = frameLayout2.getLayoutParams()) == null) {
                layoutParams = new ViewGroup.LayoutParams(-1, -1);
            }
            layoutParams.width = -1;
            layoutParams.height = -1;
            FrameLayout frameLayout3 = this.containerLayout;
            if (frameLayout3 != null) {
                frameLayout3.setLayoutParams(layoutParams);
            }
            GodotEditText godotEditText = new GodotEditText(this.context);
            godotEditText.setLayoutParams(new ViewGroup.LayoutParams(-1, (int) this.context.getResources().getDimension(R.dimen.text_edit_height)));
            godotEditText.setBackgroundColor(0);
            FrameLayout frameLayout4 = this.containerLayout;
            if (frameLayout4 != null) {
                frameLayout4.addView(godotEditText);
            }
            boolean z2 = (isProjectManagerHint() || isEditorHint() || !Boolean.parseBoolean(GodotLib.getGlobal("display/window/per_pixel_transparency/allowed"))) ? false : true;
            Log.d(str, "Render view should be transparent: " + z2);
            String nativeRenderer = getNativeRenderer();
            if (Intrinsics.areEqual(nativeRenderer, "vulkan")) {
                this.renderView = new GodotVulkanRenderView(this, this.godotInputHandler, z2);
            } else {
                if (!Intrinsics.areEqual(nativeRenderer, "opengl3")) {
                    throw new IllegalStateException("No native renderer is available.");
                }
                this.renderView = new GodotGLRenderView(this, this.godotInputHandler, this.xrMode, this.useDebugOpengl, z2);
            }
            GodotRenderView godotRenderView = this.renderView;
            if (godotRenderView != null) {
                godotRenderView.startRenderer();
                FrameLayout frameLayout5 = this.containerLayout;
                if (frameLayout5 != null) {
                    frameLayout5.addView(godotRenderView.getView(), new ViewGroup.LayoutParams(-1, -1));
                }
            }
            godotEditText.setView(this.renderView);
            this.io.setEdit(godotEditText);
            Activity activity2 = host.getActivity();
            if (activity2 == null || (window = activity2.getWindow()) == null || (decorView = window.getDecorView()) == null) {
                decorView = providedContainerLayout;
            }
            ViewCompat.setWindowInsetsAnimationCallback(decorView, new AnonymousClass2(decorView, this));
            GodotRenderView godotRenderView2 = this.renderView;
            if (godotRenderView2 != null) {
                godotRenderView2.queueOnRenderThread(new c(this, 2));
            }
            for (GodotPlugin godotPlugin : getPluginRegistry$lib_templateRelease().getAllPlugins()) {
                View viewOnMainCreate = godotPlugin.onMainCreate(activity2);
                if (viewOnMainCreate != null) {
                    if (godotPlugin.shouldBeOnTop()) {
                        FrameLayout frameLayout6 = this.containerLayout;
                        if (frameLayout6 != null) {
                            frameLayout6.addView(viewOnMainCreate);
                        }
                    } else {
                        FrameLayout frameLayout7 = this.containerLayout;
                        if (frameLayout7 != null) {
                            frameLayout7.addView(viewOnMainCreate, 0);
                        }
                    }
                }
            }
            this.renderViewInitialized = true;
            BenchmarkUtils.endBenchmarkMeasure$default("Startup", "Godot::onInitRenderView", false, 4, null);
            return this.containerLayout;
        } catch (Throwable th) {
            if (!this.renderViewInitialized) {
                FrameLayout frameLayout8 = this.containerLayout;
                if (frameLayout8 != null) {
                    frameLayout8.removeAllViews();
                }
                this.containerLayout = null;
            }
            BenchmarkUtils.endBenchmarkMeasure$default("Startup", "Godot::onInitRenderView", false, 4, null);
            throw th;
        }
    }

    @JvmOverloads
    public final void alert(String message, String title, Runnable okCallback) {
        Intrinsics.checkNotNullParameter(message, "message");
        Intrinsics.checkNotNullParameter(title, "title");
        Activity activity = getActivity();
        if (activity == null) {
            return;
        }
        runOnHostThread(new RunnableC0087n(4, activity, message, title, okCallback));
    }
}
