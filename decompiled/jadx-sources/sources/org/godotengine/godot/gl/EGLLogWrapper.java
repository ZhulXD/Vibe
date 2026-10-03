package org.godotengine.godot.gl;

import E.b;
import android.opengl.GLException;
import java.io.IOException;
import java.io.Writer;
import javax.microedition.khronos.egl.EGL;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGL11;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
class EGLLogWrapper implements EGL11 {
    private int mArgCount;
    boolean mCheckError;
    private EGL10 mEgl10;
    Writer mLog;
    boolean mLogArgumentNames;

    public EGLLogWrapper(EGL egl, int i3, Writer writer) {
        this.mEgl10 = (EGL10) egl;
        this.mLog = writer;
        this.mLogArgumentNames = (i3 & 4) != 0;
        this.mCheckError = (i3 & 1) != 0;
    }

    private void arg(String str, String str2) {
        int i3 = this.mArgCount;
        this.mArgCount = i3 + 1;
        if (i3 > 0) {
            log(", ");
        }
        if (this.mLogArgumentNames) {
            log(kotlin.collections.unsigned.a.g(str, "="));
        }
        log(str2);
    }

    private void begin(String str) {
        log(str + '(');
        this.mArgCount = 0;
    }

    private void checkError() {
        int iEglGetError = this.mEgl10.eglGetError();
        if (iEglGetError != 12288) {
            String str = "eglError: " + getErrorString(iEglGetError);
            logLine(str);
            if (this.mCheckError) {
                throw new GLException(iEglGetError, str);
            }
        }
    }

    private void end() {
        log(");\n");
        flush();
    }

    private void flush() {
        try {
            this.mLog.flush();
        } catch (IOException unused) {
            this.mLog = null;
        }
    }

    public static String getErrorString(int i3) {
        switch (i3) {
            case 12288:
                return "EGL_SUCCESS";
            case 12289:
                return "EGL_NOT_INITIALIZED";
            case 12290:
                return "EGL_BAD_ACCESS";
            case 12291:
                return "EGL_BAD_ALLOC";
            case 12292:
                return "EGL_BAD_ATTRIBUTE";
            case 12293:
                return "EGL_BAD_CONFIG";
            case 12294:
                return "EGL_BAD_CONTEXT";
            case 12295:
                return "EGL_BAD_CURRENT_SURFACE";
            case 12296:
                return "EGL_BAD_DISPLAY";
            case 12297:
                return "EGL_BAD_MATCH";
            case 12298:
                return "EGL_BAD_NATIVE_PIXMAP";
            case 12299:
                return "EGL_BAD_NATIVE_WINDOW";
            case 12300:
                return "EGL_BAD_PARAMETER";
            case 12301:
                return "EGL_BAD_SURFACE";
            case 12302:
                return "EGL_CONTEXT_LOST";
            default:
                return getHex(i3);
        }
    }

    private static String getHex(int i3) {
        return "0x" + Integer.toHexString(i3);
    }

    private void log(String str) {
        try {
            this.mLog.write(str);
        } catch (IOException unused) {
        }
    }

    private void logLine(String str) {
        log(str + '\n');
    }

    private void returns(String str) {
        log(b.m(" returns ", str, ";\n"));
        flush();
    }

    private String toString(Object obj) {
        return obj == null ? "null" : obj.toString();
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public boolean eglChooseConfig(EGLDisplay eGLDisplay, int[] iArr, EGLConfig[] eGLConfigArr, int i3, int[] iArr2) {
        begin("eglChooseConfig");
        arg("display", eGLDisplay);
        arg("attrib_list", iArr);
        arg("config_size", i3);
        end();
        boolean zEglChooseConfig = this.mEgl10.eglChooseConfig(eGLDisplay, iArr, eGLConfigArr, i3, iArr2);
        arg("configs", (Object[]) eGLConfigArr);
        arg("num_config", iArr2);
        returns(zEglChooseConfig);
        checkError();
        return zEglChooseConfig;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public boolean eglCopyBuffers(EGLDisplay eGLDisplay, EGLSurface eGLSurface, Object obj) {
        begin("eglCopyBuffers");
        arg("display", eGLDisplay);
        arg("surface", eGLSurface);
        arg("native_pixmap", obj);
        end();
        boolean zEglCopyBuffers = this.mEgl10.eglCopyBuffers(eGLDisplay, eGLSurface, obj);
        returns(zEglCopyBuffers);
        checkError();
        return zEglCopyBuffers;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public EGLContext eglCreateContext(EGLDisplay eGLDisplay, EGLConfig eGLConfig, EGLContext eGLContext, int[] iArr) {
        begin("eglCreateContext");
        arg("display", eGLDisplay);
        arg("config", eGLConfig);
        arg("share_context", eGLContext);
        arg("attrib_list", iArr);
        end();
        EGLContext eGLContextEglCreateContext = this.mEgl10.eglCreateContext(eGLDisplay, eGLConfig, eGLContext, iArr);
        returns(eGLContextEglCreateContext);
        checkError();
        return eGLContextEglCreateContext;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public EGLSurface eglCreatePbufferSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int[] iArr) {
        begin("eglCreatePbufferSurface");
        arg("display", eGLDisplay);
        arg("config", eGLConfig);
        arg("attrib_list", iArr);
        end();
        EGLSurface eGLSurfaceEglCreatePbufferSurface = this.mEgl10.eglCreatePbufferSurface(eGLDisplay, eGLConfig, iArr);
        returns(eGLSurfaceEglCreatePbufferSurface);
        checkError();
        return eGLSurfaceEglCreatePbufferSurface;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public EGLSurface eglCreatePixmapSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj, int[] iArr) {
        begin("eglCreatePixmapSurface");
        arg("display", eGLDisplay);
        arg("config", eGLConfig);
        arg("native_pixmap", obj);
        arg("attrib_list", iArr);
        end();
        EGLSurface eGLSurfaceEglCreatePixmapSurface = this.mEgl10.eglCreatePixmapSurface(eGLDisplay, eGLConfig, obj, iArr);
        returns(eGLSurfaceEglCreatePixmapSurface);
        checkError();
        return eGLSurfaceEglCreatePixmapSurface;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public EGLSurface eglCreateWindowSurface(EGLDisplay eGLDisplay, EGLConfig eGLConfig, Object obj, int[] iArr) {
        begin("eglCreateWindowSurface");
        arg("display", eGLDisplay);
        arg("config", eGLConfig);
        arg("native_window", obj);
        arg("attrib_list", iArr);
        end();
        EGLSurface eGLSurfaceEglCreateWindowSurface = this.mEgl10.eglCreateWindowSurface(eGLDisplay, eGLConfig, obj, iArr);
        returns(eGLSurfaceEglCreateWindowSurface);
        checkError();
        return eGLSurfaceEglCreateWindowSurface;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public boolean eglDestroyContext(EGLDisplay eGLDisplay, EGLContext eGLContext) {
        begin("eglDestroyContext");
        arg("display", eGLDisplay);
        arg("context", eGLContext);
        end();
        boolean zEglDestroyContext = this.mEgl10.eglDestroyContext(eGLDisplay, eGLContext);
        returns(zEglDestroyContext);
        checkError();
        return zEglDestroyContext;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public boolean eglDestroySurface(EGLDisplay eGLDisplay, EGLSurface eGLSurface) {
        begin("eglDestroySurface");
        arg("display", eGLDisplay);
        arg("surface", eGLSurface);
        end();
        boolean zEglDestroySurface = this.mEgl10.eglDestroySurface(eGLDisplay, eGLSurface);
        returns(zEglDestroySurface);
        checkError();
        return zEglDestroySurface;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public boolean eglGetConfigAttrib(EGLDisplay eGLDisplay, EGLConfig eGLConfig, int i3, int[] iArr) {
        begin("eglGetConfigAttrib");
        arg("display", eGLDisplay);
        arg("config", eGLConfig);
        arg("attribute", i3);
        end();
        boolean zEglGetConfigAttrib = this.mEgl10.eglGetConfigAttrib(eGLDisplay, eGLConfig, i3, iArr);
        arg("value", iArr);
        returns(zEglGetConfigAttrib);
        checkError();
        return false;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public boolean eglGetConfigs(EGLDisplay eGLDisplay, EGLConfig[] eGLConfigArr, int i3, int[] iArr) {
        begin("eglGetConfigs");
        arg("display", eGLDisplay);
        arg("config_size", i3);
        end();
        boolean zEglGetConfigs = this.mEgl10.eglGetConfigs(eGLDisplay, eGLConfigArr, i3, iArr);
        arg("configs", (Object[]) eGLConfigArr);
        arg("num_config", iArr);
        returns(zEglGetConfigs);
        checkError();
        return zEglGetConfigs;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public EGLContext eglGetCurrentContext() {
        begin("eglGetCurrentContext");
        end();
        EGLContext eGLContextEglGetCurrentContext = this.mEgl10.eglGetCurrentContext();
        returns(eGLContextEglGetCurrentContext);
        checkError();
        return eGLContextEglGetCurrentContext;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public EGLDisplay eglGetCurrentDisplay() {
        begin("eglGetCurrentDisplay");
        end();
        EGLDisplay eGLDisplayEglGetCurrentDisplay = this.mEgl10.eglGetCurrentDisplay();
        returns(eGLDisplayEglGetCurrentDisplay);
        checkError();
        return eGLDisplayEglGetCurrentDisplay;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public EGLSurface eglGetCurrentSurface(int i3) {
        begin("eglGetCurrentSurface");
        arg("readdraw", i3);
        end();
        EGLSurface eGLSurfaceEglGetCurrentSurface = this.mEgl10.eglGetCurrentSurface(i3);
        returns(eGLSurfaceEglGetCurrentSurface);
        checkError();
        return eGLSurfaceEglGetCurrentSurface;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public EGLDisplay eglGetDisplay(Object obj) {
        begin("eglGetDisplay");
        arg("native_display", obj);
        end();
        EGLDisplay eGLDisplayEglGetDisplay = this.mEgl10.eglGetDisplay(obj);
        returns(eGLDisplayEglGetDisplay);
        checkError();
        return eGLDisplayEglGetDisplay;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public int eglGetError() {
        begin("eglGetError");
        end();
        int iEglGetError = this.mEgl10.eglGetError();
        returns(getErrorString(iEglGetError));
        return iEglGetError;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public boolean eglInitialize(EGLDisplay eGLDisplay, int[] iArr) {
        begin("eglInitialize");
        arg("display", eGLDisplay);
        end();
        boolean zEglInitialize = this.mEgl10.eglInitialize(eGLDisplay, iArr);
        returns(zEglInitialize);
        arg("major_minor", iArr);
        checkError();
        return zEglInitialize;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public boolean eglMakeCurrent(EGLDisplay eGLDisplay, EGLSurface eGLSurface, EGLSurface eGLSurface2, EGLContext eGLContext) {
        begin("eglMakeCurrent");
        arg("display", eGLDisplay);
        arg("draw", eGLSurface);
        arg("read", eGLSurface2);
        arg("context", eGLContext);
        end();
        boolean zEglMakeCurrent = this.mEgl10.eglMakeCurrent(eGLDisplay, eGLSurface, eGLSurface2, eGLContext);
        returns(zEglMakeCurrent);
        checkError();
        return zEglMakeCurrent;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public boolean eglQueryContext(EGLDisplay eGLDisplay, EGLContext eGLContext, int i3, int[] iArr) {
        begin("eglQueryContext");
        arg("display", eGLDisplay);
        arg("context", eGLContext);
        arg("attribute", i3);
        end();
        boolean zEglQueryContext = this.mEgl10.eglQueryContext(eGLDisplay, eGLContext, i3, iArr);
        returns(iArr[0]);
        returns(zEglQueryContext);
        checkError();
        return zEglQueryContext;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public String eglQueryString(EGLDisplay eGLDisplay, int i3) {
        begin("eglQueryString");
        arg("display", eGLDisplay);
        arg("name", i3);
        end();
        String strEglQueryString = this.mEgl10.eglQueryString(eGLDisplay, i3);
        returns(strEglQueryString);
        checkError();
        return strEglQueryString;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public boolean eglQuerySurface(EGLDisplay eGLDisplay, EGLSurface eGLSurface, int i3, int[] iArr) {
        begin("eglQuerySurface");
        arg("display", eGLDisplay);
        arg("surface", eGLSurface);
        arg("attribute", i3);
        end();
        boolean zEglQuerySurface = this.mEgl10.eglQuerySurface(eGLDisplay, eGLSurface, i3, iArr);
        returns(iArr[0]);
        returns(zEglQuerySurface);
        checkError();
        return zEglQuerySurface;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public boolean eglSwapBuffers(EGLDisplay eGLDisplay, EGLSurface eGLSurface) {
        begin("eglSwapBuffers");
        arg("display", eGLDisplay);
        arg("surface", eGLSurface);
        end();
        boolean zEglSwapBuffers = this.mEgl10.eglSwapBuffers(eGLDisplay, eGLSurface);
        returns(zEglSwapBuffers);
        checkError();
        return zEglSwapBuffers;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public boolean eglTerminate(EGLDisplay eGLDisplay) {
        begin("eglTerminate");
        arg("display", eGLDisplay);
        end();
        boolean zEglTerminate = this.mEgl10.eglTerminate(eGLDisplay);
        returns(zEglTerminate);
        checkError();
        return zEglTerminate;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public boolean eglWaitGL() {
        begin("eglWaitGL");
        end();
        boolean zEglWaitGL = this.mEgl10.eglWaitGL();
        returns(zEglWaitGL);
        checkError();
        return zEglWaitGL;
    }

    @Override // javax.microedition.khronos.egl.EGL10
    public boolean eglWaitNative(int i3, Object obj) {
        begin("eglWaitNative");
        arg("engine", i3);
        arg("bindTarget", obj);
        end();
        boolean zEglWaitNative = this.mEgl10.eglWaitNative(i3, obj);
        returns(zEglWaitNative);
        checkError();
        return zEglWaitNative;
    }

    private String toString(int i3, int[] iArr, int i4) {
        StringBuilder sb = new StringBuilder("{\n");
        int length = iArr.length;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = i4 + i5;
            sb.append(" [" + i6 + "] = ");
            if (i6 >= 0 && i6 < length) {
                sb.append(iArr[i6]);
            } else {
                sb.append("out of bounds");
            }
            sb.append('\n');
        }
        sb.append("}");
        return sb.toString();
    }

    private void returns(int i3) {
        returns(Integer.toString(i3));
    }

    private void returns(boolean z2) {
        returns(Boolean.toString(z2));
    }

    private String toString(int i3, Object[] objArr, int i4) {
        StringBuilder sb = new StringBuilder("{\n");
        int length = objArr.length;
        for (int i5 = 0; i5 < i3; i5++) {
            int i6 = i4 + i5;
            sb.append(" [" + i6 + "] = ");
            if (i6 >= 0 && i6 < length) {
                sb.append(objArr[i6]);
            } else {
                sb.append("out of bounds");
            }
            sb.append('\n');
        }
        sb.append("}");
        return sb.toString();
    }

    private void returns(Object obj) {
        returns(toString(obj));
    }

    private void arg(String str, int i3) {
        arg(str, Integer.toString(i3));
    }

    private void arg(String str, Object obj) {
        arg(str, toString(obj));
    }

    private void arg(String str, EGLDisplay eGLDisplay) {
        if (eGLDisplay == EGL10.EGL_DEFAULT_DISPLAY) {
            arg(str, "EGL10.EGL_DEFAULT_DISPLAY");
        } else if (eGLDisplay == EGL11.EGL_NO_DISPLAY) {
            arg(str, "EGL10.EGL_NO_DISPLAY");
        } else {
            arg(str, toString(eGLDisplay));
        }
    }

    private void arg(String str, EGLContext eGLContext) {
        if (eGLContext == EGL10.EGL_NO_CONTEXT) {
            arg(str, "EGL10.EGL_NO_CONTEXT");
        } else {
            arg(str, toString(eGLContext));
        }
    }

    private void arg(String str, EGLSurface eGLSurface) {
        if (eGLSurface == EGL10.EGL_NO_SURFACE) {
            arg(str, "EGL10.EGL_NO_SURFACE");
        } else {
            arg(str, toString(eGLSurface));
        }
    }

    private void arg(String str, int[] iArr) {
        if (iArr == null) {
            arg(str, "null");
        } else {
            arg(str, toString(iArr.length, iArr, 0));
        }
    }

    private void arg(String str, Object[] objArr) {
        if (objArr == null) {
            arg(str, "null");
        } else {
            arg(str, toString(objArr.length, objArr, 0));
        }
    }
}
