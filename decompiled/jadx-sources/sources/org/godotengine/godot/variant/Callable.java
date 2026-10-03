package org.godotengine.godot.variant;

import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import p005c.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@a
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0012\u0010\u0007\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\b\"\u00020\u0001¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\u0003H\u0002J\b\u0010\u000b\u001a\u00020\fH\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lorg/godotengine/godot/variant/Callable;", "", "nativeCallablePointer", "", "<init>", "(J)V", NotificationCompat.CATEGORY_CALL, "params", "", "([Ljava/lang/Object;)Ljava/lang/Object;", "getNativePointer", "finalize", "", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Callable {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private final long nativeCallablePointer;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\t\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J3\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0012\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\n\"\u00020\u0001H\u0007¢\u0006\u0002\u0010\u000bJ1\u0010\f\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0012\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\n\"\u00020\u0001H\u0007¢\u0006\u0002\u0010\u000eJ#\u0010\u000f\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0010\u001a\u00020\u00062\u000e\u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\nH\u0083 J+\u0010\u0012\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u000e\u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\nH\u0083 J)\u0010\u0013\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u000e\u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\nH\u0083 J\u0011\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0015\u001a\u00020\u0006H\u0083 ¨\u0006\u0016"}, d2 = {"Lorg/godotengine/godot/variant/Callable$Companion;", "", "<init>", "()V", NotificationCompat.CATEGORY_CALL, "godotObjectId", "", "methodName", "", "methodParameters", "", "(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;", "callDeferred", "", "(JLjava/lang/String;[Ljava/lang/Object;)V", "nativeCall", "pointer", "params", "nativeCallObject", "nativeCallObjectDeferred", "releaseNativePointer", "nativePointer", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final Object nativeCall(long j2, Object[] objArr) {
            return Callable.nativeCall(j2, objArr);
        }

        @JvmStatic
        private final Object nativeCallObject(long j2, String str, Object[] objArr) {
            return Callable.nativeCallObject(j2, str, objArr);
        }

        @JvmStatic
        private final void nativeCallObjectDeferred(long j2, String str, Object[] objArr) {
            Callable.nativeCallObjectDeferred(j2, str, objArr);
        }

        /* JADX INFO: Access modifiers changed from: private */
        @JvmStatic
        public final void releaseNativePointer(long nativePointer) {
            Callable.releaseNativePointer(nativePointer);
        }

        @JvmStatic
        public final Object call(long godotObjectId, String methodName, Object... methodParameters) {
            Intrinsics.checkNotNullParameter(methodName, "methodName");
            Intrinsics.checkNotNullParameter(methodParameters, "methodParameters");
            return nativeCallObject(godotObjectId, methodName, methodParameters);
        }

        @JvmStatic
        public final void callDeferred(long godotObjectId, String methodName, Object... methodParameters) {
            Intrinsics.checkNotNullParameter(methodName, "methodName");
            Intrinsics.checkNotNullParameter(methodParameters, "methodParameters");
            nativeCallObjectDeferred(godotObjectId, methodName, methodParameters);
        }

        private Companion() {
        }
    }

    private Callable(long j2) {
        this.nativeCallablePointer = j2;
    }

    @JvmStatic
    public static final Object call(long j2, String str, Object... objArr) {
        return INSTANCE.call(j2, str, objArr);
    }

    @JvmStatic
    public static final void callDeferred(long j2, String str, Object... objArr) {
        INSTANCE.callDeferred(j2, str, objArr);
    }

    /* JADX INFO: renamed from: getNativePointer, reason: from getter */
    private final long getNativeCallablePointer() {
        return this.nativeCallablePointer;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native Object nativeCall(long j2, Object[] objArr);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native Object nativeCallObject(long j2, String str, Object[] objArr);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void nativeCallObjectDeferred(long j2, String str, Object[] objArr);

    /* JADX INFO: Access modifiers changed from: private */
    @JvmStatic
    public static final native void releaseNativePointer(long j2);

    public final void finalize() {
        INSTANCE.releaseNativePointer(this.nativeCallablePointer);
    }

    public final Object call(Object... params) {
        Intrinsics.checkNotNullParameter(params, "params");
        long j2 = this.nativeCallablePointer;
        if (j2 == 0) {
            return null;
        }
        return INSTANCE.nativeCall(j2, params);
    }
}
