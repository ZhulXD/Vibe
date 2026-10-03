package org.godotengine.godot.gl;

import android.content.Context;
import android.opengl.GLDebugHelper;
import android.util.AttributeSet;
import android.util.Log;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import java.io.Writer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL;
import javax.microedition.khronos.opengles.GL10;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public class GLSurfaceView extends SurfaceView implements SurfaceHolder.Callback2 {
    public static final int DEBUG_CHECK_GL_ERROR = 1;
    public static final int DEBUG_LOG_GL_CALLS = 2;
    private static final boolean LOG_ATTACH_DETACH = false;
    private static final boolean LOG_EGL = false;
    private static final boolean LOG_PAUSE_RESUME = false;
    private static final boolean LOG_RENDERER = false;
    private static final boolean LOG_RENDERER_DRAW_FRAME = false;
    private static final boolean LOG_SURFACE = false;
    private static final boolean LOG_THREADS = false;
    public static final int RENDERMODE_CONTINUOUSLY = 1;
    public static final int RENDERMODE_WHEN_DIRTY = 0;
    private static final String TAG = "GLSurfaceView";
    private static final GLThreadManager sGLThreadManager = new GLThreadManager(0);
    private int mDebugFlags;
    private boolean mDetached;
    private EGLConfigChooser mEGLConfigChooser;
    private int mEGLContextClientVersion;
    private EGLContextFactory mEGLContextFactory;
    private EGLWindowSurfaceFactory mEGLWindowSurfaceFactory;
    private GLThread mGLThread;
    private GLWrapper mGLWrapper;
    private boolean mPreserveEGLContextOnPause;
    private Renderer mRenderer;
    private final WeakReference<GLSurfaceView> mThisWeakRef;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public abstract class BaseConfigChooser implements EGLConfigChooser {
        protected int[] mConfigSpec;

        public BaseConfigChooser(int[] iArr) {
            this.mConfigSpec = filterConfigSpec(iArr);
        }

        private int[] filterConfigSpec(int[] iArr) {
            if (GLSurfaceView.this.mEGLContextClientVersion != 2 && GLSurfaceView.this.mEGLContextClientVersion != 3) {
                return iArr;
            }
            int length = iArr.length;
            int[] iArr2 = new int[length + 2];
            int i3 = length - 1;
            System.arraycopy(iArr, 0, iArr2, 0, i3);
            iArr2[i3] = 12352;
            if (GLSurfaceView.this.mEGLContextClientVersion == 2) {
                iArr2[length] = 4;
            } else {
                iArr2[length] = 64;
            }
            iArr2[length + 1] = 12344;
            return iArr2;
        }

        @Override // org.godotengine.godot.gl.GLSurfaceView.EGLConfigChooser
        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay) {
            int[] iArr = new int[1];
            if (!egl10.eglChooseConfig(eGLDisplay, this.mConfigSpec, null, 0, iArr)) {
                throw new IllegalArgumentException("eglChooseConfig failed");
            }
            int i3 = iArr[0];
            if (i3 <= 0) {
                throw new IllegalArgumentException("No configs match configSpec");
            }
            EGLConfig[] eGLConfigArr = new EGLConfig[i3];
            if (!egl10.eglChooseConfig(eGLDisplay, this.mConfigSpec, eGLConfigArr, i3, iArr)) {
                throw new IllegalArgumentException("eglChooseConfig#2 failed");
            }
            EGLConfig eGLConfigChooseConfig = chooseConfig(egl10, eGLDisplay, eGLConfigArr);
            if (eGLConfigChooseConfig != null) {
                return eGLConfigChooseConfig;
            }
            throw new IllegalArgumentException("No config chosen");
        }

        public abstract EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr);
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public class ComponentSizeChooser extends BaseConfigChooser {
        protected int mAlphaSize;
        protected int mBlueSize;
        protected int mDepthSize;
        protected int mGreenSize;
        protected int mRedSize;
        protected int mStencilSize;
        private int[] mValue;

        public ComponentSizeChooser(int i3, int i4, int i5, int i6, int i7, int i8) {
            super(new int[]{12324, i3, 12323, i4, 12322, i5, 12321, i6, 12325, i7, 12326, i8, 12344});
            this.mValue = new int[1];
            this.mRedSize = i3;
            this.mGreenSize = i4;
            this.mBlueSize = i5;
            this.mAlphaSize = i6;
            this.mDepthSize = i7;
            this.mStencilSize = i8;
        }

        private int findConfigAttrib(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i3, int i4) {
            return egl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i3, this.mValue) ? this.mValue[0] : i4;
        }

        @Override // org.godotengine.godot.gl.GLSurfaceView.BaseConfigChooser
        public EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr) {
            int length = eGLConfigArr.length;
            int i3 = 0;
            while (i3 < length) {
                EGLConfig eGLConfig = eGLConfigArr[i3];
                EGL10 egl11 = egl10;
                EGLDisplay eGLDisplay2 = eGLDisplay;
                int iFindConfigAttrib = findConfigAttrib(egl11, eGLDisplay2, eGLConfig, 12325, 0);
                int iFindConfigAttrib2 = findConfigAttrib(egl11, eGLDisplay2, eGLConfig, 12326, 0);
                if (iFindConfigAttrib >= this.mDepthSize && iFindConfigAttrib2 >= this.mStencilSize) {
                    int iFindConfigAttrib3 = findConfigAttrib(egl11, eGLDisplay2, eGLConfig, 12324, 0);
                    int iFindConfigAttrib4 = findConfigAttrib(egl11, eGLDisplay2, eGLConfig, 12323, 0);
                    int iFindConfigAttrib5 = findConfigAttrib(egl11, eGLDisplay2, eGLConfig, 12322, 0);
                    int iFindConfigAttrib6 = findConfigAttrib(egl11, eGLDisplay2, eGLConfig, 12321, 0);
                    if (iFindConfigAttrib3 == this.mRedSize && iFindConfigAttrib4 == this.mGreenSize && iFindConfigAttrib5 == this.mBlueSize && iFindConfigAttrib6 == this.mAlphaSize) {
                        return eGLConfig;
                    }
                }
                i3++;
                egl10 = egl11;
                eGLDisplay = eGLDisplay2;
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public class DefaultContextFactory implements EGLContextFactory {
        private int EGL_CONTEXT_CLIENT_VERSION;

        public /* synthetic */ DefaultContextFactory(GLSurfaceView gLSurfaceView, int i3) {
            this();
        }

        @Override // org.godotengine.godot.gl.GLSurfaceView.EGLContextFactory
        public EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig) {
            int[] iArr = {this.EGL_CONTEXT_CLIENT_VERSION, GLSurfaceView.this.mEGLContextClientVersion, 12344};
            if (GLSurfaceView.this.mEGLContextClientVersion == 0) {
                iArr = null;
            }
            return egl10.eglCreateContext(eGLDisplay, eGLConfig, EGL10.EGL_NO_CONTEXT, iArr);
        }

        @Override // org.godotengine.godot.gl.GLSurfaceView.EGLContextFactory
        public void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext) {
            if (egl10.eglDestroyContext(eGLDisplay, eGLContext)) {
                return;
            }
            Log.e("DefaultContextFactory", "display:" + eGLDisplay + " context: " + eGLContext);
            EglHelper.throwEglException("eglDestroyContex", egl10.eglGetError());
        }

        private DefaultContextFactory() {
            this.EGL_CONTEXT_CLIENT_VERSION = 12440;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class DefaultWindowSurfaceFactory implements EGLWindowSurfaceFactory {
        public /* synthetic */ DefaultWindowSurfaceFactory(int i3) {
            this();
        }

        @Override // org.godotengine.godot.gl.GLSurfaceView.EGLWindowSurfaceFactory
        public EGLSurface createWindowSurface(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj) {
            try {
                return egl10.eglCreateWindowSurface(eGLDisplay, eGLConfig, obj, null);
            } catch (IllegalArgumentException e2) {
                Log.e(GLSurfaceView.TAG, "eglCreateWindowSurface", e2);
                return null;
            }
        }

        @Override // org.godotengine.godot.gl.GLSurfaceView.EGLWindowSurfaceFactory
        public void destroySurface(EGL10 egl10, EGLDisplay eGLDisplay, EGLSurface eGLSurface) {
            egl10.eglDestroySurface(eGLDisplay, eGLSurface);
        }

        private DefaultWindowSurfaceFactory() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public interface EGLConfigChooser {
        EGLConfig chooseConfig(EGL10 egl10, EGLDisplay eGLDisplay);
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public interface EGLContextFactory {
        EGLContext createContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig);

        void destroyContext(EGL10 egl10, EGLDisplay eGLDisplay, EGLContext eGLContext);
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public interface EGLWindowSurfaceFactory {
        EGLSurface createWindowSurface(EGL10 egl10, EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj);

        void destroySurface(EGL10 egl10, EGLDisplay eGLDisplay, EGLSurface eGLSurface);
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class EglHelper {
        EGL10 mEgl;
        EGLConfig mEglConfig;
        EGLContext mEglContext;
        EGLDisplay mEglDisplay;
        EGLSurface mEglSurface;
        private WeakReference<GLSurfaceView> mGLSurfaceViewWeakRef;

        public EglHelper(WeakReference<GLSurfaceView> weakReference) {
            this.mGLSurfaceViewWeakRef = weakReference;
        }

        private void destroySurfaceImp() {
            EGLSurface eGLSurface;
            EGLSurface eGLSurface2 = this.mEglSurface;
            if (eGLSurface2 == null || eGLSurface2 == (eGLSurface = EGL10.EGL_NO_SURFACE)) {
                return;
            }
            this.mEgl.eglMakeCurrent(this.mEglDisplay, eGLSurface, eGLSurface, EGL10.EGL_NO_CONTEXT);
            GLSurfaceView gLSurfaceView = this.mGLSurfaceViewWeakRef.get();
            if (gLSurfaceView != null) {
                gLSurfaceView.mEGLWindowSurfaceFactory.destroySurface(this.mEgl, this.mEglDisplay, this.mEglSurface);
            }
            this.mEglSurface = null;
        }

        public static String formatEglError(String str, int i3) {
            return str + " failed: " + EGLLogWrapper.getErrorString(i3);
        }

        public static void logEglErrorAsWarning(String str, String str2, int i3) {
            Log.w(str, formatEglError(str2, i3));
        }

        private void throwEglException(String str) {
            throwEglException(str, this.mEgl.eglGetError());
        }

        public GL createGL() {
            GL gl = this.mEglContext.getGL();
            GLSurfaceView gLSurfaceView = this.mGLSurfaceViewWeakRef.get();
            if (gLSurfaceView == null) {
                return gl;
            }
            if (gLSurfaceView.mGLWrapper != null) {
                gl = gLSurfaceView.mGLWrapper.wrap(gl);
            }
            if ((gLSurfaceView.mDebugFlags & 3) != 0) {
                return GLDebugHelper.wrap(gl, (gLSurfaceView.mDebugFlags & 1) == 0 ? 0 : 1, (gLSurfaceView.mDebugFlags & 2) != 0 ? new LogWriter() : null);
            }
            return gl;
        }

        public boolean createSurface() {
            if (this.mEgl == null) {
                throw new RuntimeException("egl not initialized");
            }
            if (this.mEglDisplay == null) {
                throw new RuntimeException("eglDisplay not initialized");
            }
            if (this.mEglConfig == null) {
                throw new RuntimeException("mEglConfig not initialized");
            }
            destroySurfaceImp();
            GLSurfaceView gLSurfaceView = this.mGLSurfaceViewWeakRef.get();
            if (gLSurfaceView != null) {
                this.mEglSurface = gLSurfaceView.mEGLWindowSurfaceFactory.createWindowSurface(this.mEgl, this.mEglDisplay, this.mEglConfig, gLSurfaceView.getHolder());
            } else {
                this.mEglSurface = null;
            }
            EGLSurface eGLSurface = this.mEglSurface;
            if (eGLSurface == null || eGLSurface == EGL10.EGL_NO_SURFACE) {
                if (this.mEgl.eglGetError() == 12299) {
                    Log.e("EglHelper", "createWindowSurface returned EGL_BAD_NATIVE_WINDOW.");
                }
                return false;
            }
            if (this.mEgl.eglMakeCurrent(this.mEglDisplay, eGLSurface, eGLSurface, this.mEglContext)) {
                return true;
            }
            logEglErrorAsWarning("EGLHelper", "eglMakeCurrent", this.mEgl.eglGetError());
            return false;
        }

        public void destroySurface() {
            destroySurfaceImp();
        }

        public void finish() {
            if (this.mEglContext != null) {
                GLSurfaceView gLSurfaceView = this.mGLSurfaceViewWeakRef.get();
                if (gLSurfaceView != null) {
                    gLSurfaceView.mEGLContextFactory.destroyContext(this.mEgl, this.mEglDisplay, this.mEglContext);
                }
                this.mEglContext = null;
            }
            EGLDisplay eGLDisplay = this.mEglDisplay;
            if (eGLDisplay != null) {
                this.mEgl.eglTerminate(eGLDisplay);
                this.mEglDisplay = null;
            }
        }

        public void start() {
            EGL10 egl10 = (EGL10) EGLContext.getEGL();
            this.mEgl = egl10;
            EGLDisplay eGLDisplayEglGetDisplay = egl10.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
            this.mEglDisplay = eGLDisplayEglGetDisplay;
            if (eGLDisplayEglGetDisplay == EGL10.EGL_NO_DISPLAY) {
                throw new RuntimeException("eglGetDisplay failed");
            }
            if (!this.mEgl.eglInitialize(eGLDisplayEglGetDisplay, new int[2])) {
                throw new RuntimeException("eglInitialize failed");
            }
            GLSurfaceView gLSurfaceView = this.mGLSurfaceViewWeakRef.get();
            if (gLSurfaceView == null) {
                this.mEglConfig = null;
                this.mEglContext = null;
            } else {
                this.mEglConfig = gLSurfaceView.mEGLConfigChooser.chooseConfig(this.mEgl, this.mEglDisplay);
                this.mEglContext = gLSurfaceView.mEGLContextFactory.createContext(this.mEgl, this.mEglDisplay, this.mEglConfig);
            }
            EGLContext eGLContext = this.mEglContext;
            if (eGLContext == null || eGLContext == EGL10.EGL_NO_CONTEXT) {
                this.mEglContext = null;
                throwEglException("createContext");
            }
            this.mEglSurface = null;
        }

        public int swap() {
            if (this.mEgl.eglSwapBuffers(this.mEglDisplay, this.mEglSurface)) {
                return 12288;
            }
            return this.mEgl.eglGetError();
        }

        public static void throwEglException(String str, int i3) {
            throw new RuntimeException(formatEglError(str, i3));
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class GLThreadManager {
        private static String TAG = "GLThreadManager";

        public /* synthetic */ GLThreadManager(int i3) {
            this();
        }

        public void releaseEglContextLocked(GLThread gLThread) {
            notifyAll();
        }

        public synchronized void threadExiting(GLThread gLThread) {
            gLThread.mExited = true;
            notifyAll();
        }

        private GLThreadManager() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public interface GLWrapper {
        GL wrap(GL gl);
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class LogWriter extends Writer {
        private StringBuilder mBuilder = new StringBuilder();

        private void flushBuilder() {
            if (this.mBuilder.length() > 0) {
                Log.v(GLSurfaceView.TAG, this.mBuilder.toString());
                StringBuilder sb = this.mBuilder;
                sb.delete(0, sb.length());
            }
        }

        @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            flushBuilder();
        }

        @Override // java.io.Writer, java.io.Flushable
        public void flush() {
            flushBuilder();
        }

        @Override // java.io.Writer
        public void write(char[] cArr, int i3, int i4) {
            for (int i5 = 0; i5 < i4; i5++) {
                char c3 = cArr[i3 + i5];
                if (c3 == '\n') {
                    flushBuilder();
                } else {
                    this.mBuilder.append(c3);
                }
            }
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public interface Renderer {
        boolean onDrawFrame(GL10 gl10);

        void onRenderThreadExiting();

        void onSurfaceChanged(GL10 gl10, int i3, int i4);

        void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig);
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public class SimpleEGLConfigChooser extends ComponentSizeChooser {
        public SimpleEGLConfigChooser(boolean z2) {
            super(8, 8, 8, 0, z2 ? 16 : 0, 0);
        }
    }

    public GLSurfaceView(Context context) {
        super(context);
        this.mThisWeakRef = new WeakReference<>(this);
        init();
    }

    private void checkRenderThreadState() {
        if (this.mGLThread != null) {
            throw new IllegalStateException("setRenderer has already been called for this instance.");
        }
    }

    private void init() {
        getHolder().addCallback(this);
    }

    public void finalize() throws Throwable {
        try {
            GLThread gLThread = this.mGLThread;
            if (gLThread != null) {
                gLThread.requestExitAndWait();
            }
        } finally {
            super.finalize();
        }
    }

    public int getDebugFlags() {
        return this.mDebugFlags;
    }

    public boolean getPreserveEGLContextOnPause() {
        return this.mPreserveEGLContextOnPause;
    }

    public int getRenderMode() {
        return this.mGLThread.getRenderMode();
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.mDetached && this.mRenderer != null) {
            GLThread gLThread = this.mGLThread;
            int renderMode = gLThread != null ? gLThread.getRenderMode() : 1;
            GLThread gLThread2 = new GLThread(this.mThisWeakRef);
            this.mGLThread = gLThread2;
            if (renderMode != 1) {
                gLThread2.setRenderMode(renderMode);
            }
            this.mGLThread.start();
        }
        this.mDetached = false;
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onDetachedFromWindow() {
        GLThread gLThread = this.mGLThread;
        if (gLThread != null) {
            gLThread.requestExitAndWait();
        }
        this.mDetached = true;
        super.onDetachedFromWindow();
    }

    public final void pauseGLThread() {
        this.mGLThread.onPause();
    }

    public void queueEvent(Runnable runnable) {
        this.mGLThread.queueEvent(runnable);
    }

    public void requestRender() {
        this.mGLThread.requestRender();
    }

    public final void requestRenderThreadExitAndWait() {
        GLThread gLThread = this.mGLThread;
        if (gLThread != null) {
            gLThread.requestExitAndWait();
        }
    }

    public final void resumeGLThread() {
        this.mGLThread.onResume();
    }

    public void setDebugFlags(int i3) {
        this.mDebugFlags = i3;
    }

    public void setEGLConfigChooser(EGLConfigChooser eGLConfigChooser) {
        checkRenderThreadState();
        this.mEGLConfigChooser = eGLConfigChooser;
    }

    public void setEGLContextClientVersion(int i3) {
        checkRenderThreadState();
        this.mEGLContextClientVersion = i3;
    }

    public void setEGLContextFactory(EGLContextFactory eGLContextFactory) {
        checkRenderThreadState();
        this.mEGLContextFactory = eGLContextFactory;
    }

    public void setEGLWindowSurfaceFactory(EGLWindowSurfaceFactory eGLWindowSurfaceFactory) {
        checkRenderThreadState();
        this.mEGLWindowSurfaceFactory = eGLWindowSurfaceFactory;
    }

    public void setGLWrapper(GLWrapper gLWrapper) {
        this.mGLWrapper = gLWrapper;
    }

    public void setPreserveEGLContextOnPause(boolean z2) {
        this.mPreserveEGLContextOnPause = z2;
    }

    public void setRenderMode(int i3) {
        this.mGLThread.setRenderMode(i3);
    }

    public void setRenderer(Renderer renderer) {
        checkRenderThreadState();
        if (this.mEGLConfigChooser == null) {
            this.mEGLConfigChooser = new SimpleEGLConfigChooser(true);
        }
        int i3 = 0;
        if (this.mEGLContextFactory == null) {
            this.mEGLContextFactory = new DefaultContextFactory(this, i3);
        }
        if (this.mEGLWindowSurfaceFactory == null) {
            this.mEGLWindowSurfaceFactory = new DefaultWindowSurfaceFactory(i3);
        }
        this.mRenderer = renderer;
        GLThread gLThread = new GLThread(this.mThisWeakRef);
        this.mGLThread = gLThread;
        gLThread.start();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceChanged(SurfaceHolder surfaceHolder, int i3, int i4, int i5) {
        this.mGLThread.onWindowResize(i4, i5);
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceCreated(SurfaceHolder surfaceHolder) {
        this.mGLThread.surfaceCreated();
    }

    @Override // android.view.SurfaceHolder.Callback
    public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.mGLThread.surfaceDestroyed();
    }

    @Override // android.view.SurfaceHolder.Callback2
    public void surfaceRedrawNeededAsync(SurfaceHolder surfaceHolder, Runnable runnable) {
        GLThread gLThread = this.mGLThread;
        if (gLThread != null) {
            gLThread.requestRenderAndNotify(runnable);
        }
    }

    public final boolean requestRenderThreadExitAndWait(long j2) {
        GLThread gLThread = this.mGLThread;
        if (gLThread != null) {
            return gLThread.requestExitAndWait(j2);
        }
        return false;
    }

    public void setEGLConfigChooser(boolean z2) {
        setEGLConfigChooser(new SimpleEGLConfigChooser(z2));
    }

    public GLSurfaceView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mThisWeakRef = new WeakReference<>(this);
        init();
    }

    public void setEGLConfigChooser(int i3, int i4, int i5, int i6, int i7, int i8) {
        setEGLConfigChooser(new ComponentSizeChooser(i3, i4, i5, i6, i7, i8));
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    public static class GLThread extends Thread {
        private EglHelper mEglHelper;
        private boolean mExited;
        private boolean mFinishedCreatingEglSurface;
        private WeakReference<GLSurfaceView> mGLSurfaceViewWeakRef;
        private boolean mHasSurface;
        private boolean mHaveEglContext;
        private boolean mHaveEglSurface;
        private boolean mPaused;
        private boolean mRenderComplete;
        private boolean mRequestPaused;
        private boolean mShouldExit;
        private boolean mShouldReleaseEglContext;
        private boolean mSurfaceIsBad;
        private boolean mWaitingForSurface;
        private ArrayList<Runnable> mEventQueue = new ArrayList<>();
        private boolean mSizeChanged = true;
        private Runnable mFinishDrawingRunnable = null;
        private int mWidth = 0;
        private int mHeight = 0;
        private boolean mRequestRender = true;
        private int mRenderMode = 1;
        private boolean mWantRenderNotification = false;

        public GLThread(WeakReference<GLSurfaceView> weakReference) {
            this.mGLSurfaceViewWeakRef = weakReference;
        }

        /* JADX WARN: Code restructure failed: missing block: B:100:0x016f, code lost:
        
            r9 = org.godotengine.godot.gl.GLSurfaceView.sGLThreadManager;
         */
        /* JADX WARN: Code restructure failed: missing block: B:101:0x0173, code lost:
        
            monitor-enter(r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:103:0x0175, code lost:
        
            r19.mFinishedCreatingEglSurface = true;
            org.godotengine.godot.gl.GLSurfaceView.sGLThreadManager.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:104:0x017e, code lost:
        
            monitor-exit(r9);
         */
        /* JADX WARN: Code restructure failed: missing block: B:105:0x017f, code lost:
        
            r9 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:109:0x0184, code lost:
        
            r16 = org.godotengine.godot.gl.GLSurfaceView.sGLThreadManager;
         */
        /* JADX WARN: Code restructure failed: missing block: B:110:0x0188, code lost:
        
            monitor-enter(r16);
         */
        /* JADX WARN: Code restructure failed: missing block: B:112:0x018a, code lost:
        
            r19.mFinishedCreatingEglSurface = true;
            r19.mSurfaceIsBad = true;
            org.godotengine.godot.gl.GLSurfaceView.sGLThreadManager.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:113:0x0195, code lost:
        
            monitor-exit(r16);
         */
        /* JADX WARN: Code restructure failed: missing block: B:118:0x019a, code lost:
        
            if (r10 == false) goto L120;
         */
        /* JADX WARN: Code restructure failed: missing block: B:119:0x019c, code lost:
        
            r7 = (javax.microedition.khronos.opengles.GL10) r19.mEglHelper.createGL();
            r10 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:120:0x01a6, code lost:
        
            if (r8 == false) goto L125;
         */
        /* JADX WARN: Code restructure failed: missing block: B:121:0x01a8, code lost:
        
            r0 = r19.mGLSurfaceViewWeakRef.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:122:0x01b0, code lost:
        
            if (r0 == null) goto L124;
         */
        /* JADX WARN: Code restructure failed: missing block: B:123:0x01b2, code lost:
        
            r0.mRenderer.onSurfaceCreated(r7, r19.mEglHelper.mEglConfig);
         */
        /* JADX WARN: Code restructure failed: missing block: B:124:0x01bd, code lost:
        
            r8 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:125:0x01be, code lost:
        
            if (r11 == false) goto L130;
         */
        /* JADX WARN: Code restructure failed: missing block: B:126:0x01c0, code lost:
        
            r0 = r19.mGLSurfaceViewWeakRef.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:127:0x01c8, code lost:
        
            if (r0 == null) goto L129;
         */
        /* JADX WARN: Code restructure failed: missing block: B:128:0x01ca, code lost:
        
            r0.mRenderer.onSurfaceChanged(r7, r13, r14);
         */
        /* JADX WARN: Code restructure failed: missing block: B:129:0x01d1, code lost:
        
            r11 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:130:0x01d2, code lost:
        
            r0 = r19.mGLSurfaceViewWeakRef.get();
         */
        /* JADX WARN: Code restructure failed: missing block: B:131:0x01da, code lost:
        
            if (r0 == null) goto L135;
         */
        /* JADX WARN: Code restructure failed: missing block: B:132:0x01dc, code lost:
        
            r0 = r0.mRenderer.onDrawFrame(r7);
         */
        /* JADX WARN: Code restructure failed: missing block: B:133:0x01e4, code lost:
        
            if (r6 == null) goto L136;
         */
        /* JADX WARN: Code restructure failed: missing block: B:134:0x01e6, code lost:
        
            r6.run();
            r6 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:135:0x01eb, code lost:
        
            r0 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:136:0x01ec, code lost:
        
            if (r0 == false) goto L151;
         */
        /* JADX WARN: Code restructure failed: missing block: B:137:0x01ee, code lost:
        
            r0 = r19.mEglHelper.swap();
         */
        /* JADX WARN: Code restructure failed: missing block: B:138:0x01f6, code lost:
        
            if (r0 == 12288) goto L151;
         */
        /* JADX WARN: Code restructure failed: missing block: B:140:0x01fa, code lost:
        
            if (r0 == 12302) goto L150;
         */
        /* JADX WARN: Code restructure failed: missing block: B:141:0x01fc, code lost:
        
            org.godotengine.godot.gl.GLSurfaceView.EglHelper.logEglErrorAsWarning("GLThread", "eglSwapBuffers", r0);
            r2 = org.godotengine.godot.gl.GLSurfaceView.sGLThreadManager;
         */
        /* JADX WARN: Code restructure failed: missing block: B:142:0x0209, code lost:
        
            monitor-enter(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:143:0x020a, code lost:
        
            r0 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:144:0x020b, code lost:
        
            r19.mSurfaceIsBad = true;
            org.godotengine.godot.gl.GLSurfaceView.sGLThreadManager.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:145:0x0214, code lost:
        
            monitor-exit(r2);
         */
        /* JADX WARN: Code restructure failed: missing block: B:150:0x0219, code lost:
        
            r0 = true;
            r3 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:151:0x021c, code lost:
        
            r0 = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:152:0x021f, code lost:
        
            r3 = r3;
         */
        /* JADX WARN: Code restructure failed: missing block: B:153:0x0221, code lost:
        
            if (r12 == false) goto L189;
         */
        /* JADX WARN: Code restructure failed: missing block: B:154:0x0223, code lost:
        
            r4 = r0;
            r12 = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:92:0x0159, code lost:
        
            if (r15 == null) goto L97;
         */
        /* JADX WARN: Code restructure failed: missing block: B:93:0x015b, code lost:
        
            r15.run();
            r15 = r2;
         */
        /* JADX WARN: Code restructure failed: missing block: B:97:0x0165, code lost:
        
            if (r9 == false) goto L118;
         */
        /* JADX WARN: Code restructure failed: missing block: B:99:0x016d, code lost:
        
            if (r19.mEglHelper.createSurface() == false) goto L109;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void guardedRun() {
            /*
                Method dump skipped, instruction units count: 618
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.godotengine.godot.gl.GLSurfaceView.GLThread.guardedRun():void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void lambda$requestRenderAndNotify$0(Runnable runnable, Runnable runnable2) {
            if (runnable != null) {
                runnable.run();
            }
            if (runnable2 != null) {
                runnable2.run();
            }
        }

        private boolean readyToDraw() {
            if (this.mPaused || !this.mHasSurface || this.mSurfaceIsBad || this.mWidth <= 0 || this.mHeight <= 0) {
                return false;
            }
            return this.mRequestRender || this.mRenderMode == 1;
        }

        private void stopEglContextLocked() {
            if (this.mHaveEglContext) {
                this.mEglHelper.finish();
                this.mHaveEglContext = false;
                GLSurfaceView.sGLThreadManager.releaseEglContextLocked(this);
            }
        }

        private void stopEglSurfaceLocked() {
            if (this.mHaveEglSurface) {
                this.mHaveEglSurface = false;
                this.mEglHelper.destroySurface();
            }
        }

        public boolean ableToDraw() {
            return this.mHaveEglContext && this.mHaveEglSurface && readyToDraw();
        }

        public int getRenderMode() {
            int i3;
            synchronized (GLSurfaceView.sGLThreadManager) {
                i3 = this.mRenderMode;
            }
            return i3;
        }

        public void onPause() {
            synchronized (GLSurfaceView.sGLThreadManager) {
                this.mRequestPaused = true;
                GLSurfaceView.sGLThreadManager.notifyAll();
            }
        }

        public void onResume() {
            synchronized (GLSurfaceView.sGLThreadManager) {
                this.mRequestPaused = false;
                this.mRequestRender = true;
                this.mRenderComplete = false;
                GLSurfaceView.sGLThreadManager.notifyAll();
            }
        }

        public void onWindowResize(int i3, int i4) {
            synchronized (GLSurfaceView.sGLThreadManager) {
                try {
                    this.mWidth = i3;
                    this.mHeight = i4;
                    this.mSizeChanged = true;
                    this.mRequestRender = true;
                    this.mRenderComplete = false;
                    if (Thread.currentThread() == this) {
                        return;
                    }
                    GLSurfaceView.sGLThreadManager.notifyAll();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        public void queueEvent(Runnable runnable) {
            if (runnable == null) {
                throw new IllegalArgumentException("r must not be null");
            }
            synchronized (GLSurfaceView.sGLThreadManager) {
                this.mEventQueue.add(runnable);
                GLSurfaceView.sGLThreadManager.notifyAll();
            }
        }

        public void requestExitAndWait() {
            synchronized (GLSurfaceView.sGLThreadManager) {
                this.mShouldExit = true;
                GLSurfaceView.sGLThreadManager.notifyAll();
                while (!this.mExited) {
                    try {
                        GLSurfaceView.sGLThreadManager.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                }
            }
        }

        public void requestReleaseEglContextLocked() {
            this.mShouldReleaseEglContext = true;
            GLSurfaceView.sGLThreadManager.notifyAll();
        }

        public void requestRender() {
            synchronized (GLSurfaceView.sGLThreadManager) {
                this.mRequestRender = true;
                GLSurfaceView.sGLThreadManager.notifyAll();
            }
        }

        public void requestRenderAndNotify(final Runnable runnable) {
            synchronized (GLSurfaceView.sGLThreadManager) {
                try {
                    if (Thread.currentThread() == this) {
                        return;
                    }
                    this.mWantRenderNotification = true;
                    this.mRequestRender = true;
                    this.mRenderComplete = false;
                    final Runnable runnable2 = this.mFinishDrawingRunnable;
                    this.mFinishDrawingRunnable = new Runnable() { // from class: org.godotengine.godot.gl.a
                        @Override // java.lang.Runnable
                        public final void run() {
                            GLSurfaceView.GLThread.lambda$requestRenderAndNotify$0(runnable2, runnable);
                        }
                    };
                    GLSurfaceView.sGLThreadManager.notifyAll();
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            setName("GLThread " + getId());
            try {
                guardedRun();
            } catch (InterruptedException unused) {
            } finally {
                GLSurfaceView.sGLThreadManager.threadExiting(this);
            }
        }

        public void setRenderMode(int i3) {
            if (i3 < 0 || i3 > 1) {
                throw new IllegalArgumentException("renderMode");
            }
            synchronized (GLSurfaceView.sGLThreadManager) {
                this.mRenderMode = i3;
                GLSurfaceView.sGLThreadManager.notifyAll();
            }
        }

        public void surfaceCreated() {
            synchronized (GLSurfaceView.sGLThreadManager) {
                this.mHasSurface = true;
                this.mFinishedCreatingEglSurface = false;
                GLSurfaceView.sGLThreadManager.notifyAll();
            }
        }

        public void surfaceDestroyed() {
            synchronized (GLSurfaceView.sGLThreadManager) {
                this.mHasSurface = false;
                GLSurfaceView.sGLThreadManager.notifyAll();
            }
        }

        public boolean requestExitAndWait(long j2) {
            boolean z2;
            synchronized (GLSurfaceView.sGLThreadManager) {
                this.mShouldExit = true;
                GLSurfaceView.sGLThreadManager.notifyAll();
                if (!this.mExited) {
                    try {
                        GLSurfaceView.sGLThreadManager.wait(j2);
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                    }
                    z2 = this.mExited;
                } else {
                    z2 = this.mExited;
                }
                throw th;
            }
            return z2;
        }
    }

    @Override // android.view.SurfaceHolder.Callback2
    @Deprecated
    public void surfaceRedrawNeeded(SurfaceHolder surfaceHolder) {
    }
}
