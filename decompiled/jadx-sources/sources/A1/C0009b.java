package A1;

import C1.C0059d1;
import C1.C0065f1;
import C1.C0076j0;
import C1.d2;
import P.RunnableC0140d;
import android.app.Activity;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.MotionEventCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewPropertyAnimatorUpdateListener;
import androidx.core.view.WindowInsetsCompat;
import androidx.profileinstaller.ProfileInstallReceiver;
import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.hub.AddGameActivity;
import com.minhub.gamehub.hub.HubActivity;
import com.minhub.gamehub.hub.SettingsActivity;
import java.lang.ref.WeakReference;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.LinkedHashSet;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SpillingKt;
import kotlin.jvm.internal.Intrinsics;
import p064y1.C0363c0;

/* JADX INFO: renamed from: A1.b, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0009b implements OnApplyWindowInsetsListener, I0.a, N.d, P.O, R0.g, p024j.n, Y1.f, Y1.b, ViewPropertyAnimatorUpdateListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static C0009b f168c;
    public Object b;

    public /* synthetic */ C0009b(Object obj) {
        this.b = obj;
    }

    public static String n(String str) {
        String str2 = null;
        if (str != null) {
            String strGuessContentTypeFromName = URLConnection.guessContentTypeFromName(str);
            if (strGuessContentTypeFromName == null) {
                byte b = 46;
                int iLastIndexOf = str.lastIndexOf(46);
                if (iLastIndexOf != -1) {
                    String lowerCase = str.substring(iLastIndexOf + 1).toLowerCase();
                    lowerCase.getClass();
                    switch (lowerCase.hashCode()) {
                        case 3315:
                            b = !lowerCase.equals("gz") ? (byte) -1 : (byte) 0;
                            break;
                        case 3401:
                            b = !lowerCase.equals("js") ? (byte) -1 : (byte) 1;
                            break;
                        case 97669:
                            b = !lowerCase.equals("bmp") ? (byte) -1 : (byte) 2;
                            break;
                        case 98819:
                            b = !lowerCase.equals("css") ? (byte) -1 : (byte) 3;
                            break;
                        case 102340:
                            b = !lowerCase.equals("gif") ? (byte) -1 : (byte) 4;
                            break;
                        case 103649:
                            b = !lowerCase.equals("htm") ? (byte) -1 : (byte) 5;
                            break;
                        case 104085:
                            b = !lowerCase.equals("ico") ? (byte) -1 : (byte) 6;
                            break;
                        case 105441:
                            b = !lowerCase.equals("jpg") ? (byte) -1 : (byte) 7;
                            break;
                        case 106458:
                            b = !lowerCase.equals("m4a") ? (byte) -1 : (byte) 8;
                            break;
                        case 106479:
                            b = !lowerCase.equals("m4v") ? (byte) -1 : (byte) 9;
                            break;
                        case 108089:
                            b = !lowerCase.equals("mht") ? (byte) -1 : (byte) 10;
                            break;
                        case 108150:
                            b = !lowerCase.equals("mjs") ? (byte) -1 : (byte) 11;
                            break;
                        case 108272:
                            b = !lowerCase.equals("mp3") ? (byte) -1 : (byte) 12;
                            break;
                        case 108273:
                            b = !lowerCase.equals("mp4") ? (byte) -1 : (byte) 13;
                            break;
                        case 108324:
                            b = !lowerCase.equals("mpg") ? (byte) -1 : (byte) 14;
                            break;
                        case 109961:
                            b = !lowerCase.equals("oga") ? (byte) -1 : (byte) 15;
                            break;
                        case 109967:
                            b = !lowerCase.equals("ogg") ? (byte) -1 : (byte) 16;
                            break;
                        case 109973:
                            b = !lowerCase.equals("ogm") ? (byte) -1 : (byte) 17;
                            break;
                        case 109982:
                            b = !lowerCase.equals("ogv") ? (byte) -1 : (byte) 18;
                            break;
                        case 110834:
                            b = !lowerCase.equals("pdf") ? (byte) -1 : (byte) 19;
                            break;
                        case 111030:
                            b = !lowerCase.equals("pjp") ? (byte) -1 : (byte) 20;
                            break;
                        case 111145:
                            b = !lowerCase.equals("png") ? (byte) -1 : (byte) 21;
                            break;
                        case 114276:
                            b = !lowerCase.equals("svg") ? (byte) -1 : (byte) 22;
                            break;
                        case 114791:
                            b = !lowerCase.equals("tgz") ? (byte) -1 : (byte) 23;
                            break;
                        case 114833:
                            b = !lowerCase.equals("tif") ? (byte) -1 : (byte) 24;
                            break;
                        case 117484:
                            b = !lowerCase.equals("wav") ? (byte) -1 : (byte) 25;
                            break;
                        case 118660:
                            b = !lowerCase.equals("xht") ? (byte) -1 : (byte) 26;
                            break;
                        case 118807:
                            b = !lowerCase.equals("xml") ? (byte) -1 : (byte) 27;
                            break;
                        case 120609:
                            b = !lowerCase.equals("zip") ? (byte) -1 : (byte) 28;
                            break;
                        case 3000872:
                            b = !lowerCase.equals("apng") ? (byte) -1 : (byte) 29;
                            break;
                        case 3145576:
                            b = !lowerCase.equals("flac") ? (byte) -1 : (byte) 30;
                            break;
                        case 3213227:
                            b = !lowerCase.equals("html") ? (byte) -1 : (byte) 31;
                            break;
                        case 3259225:
                            b = !lowerCase.equals("jfif") ? (byte) -1 : (byte) 32;
                            break;
                        case 3268712:
                            b = !lowerCase.equals("jpeg") ? (byte) -1 : (byte) 33;
                            break;
                        case 3271912:
                            b = !lowerCase.equals("json") ? (byte) -1 : (byte) 34;
                            break;
                        case 3358085:
                            b = !lowerCase.equals("mpeg") ? (byte) -1 : (byte) 35;
                            break;
                        case 3418175:
                            b = !lowerCase.equals("opus") ? (byte) -1 : (byte) 36;
                            break;
                        case 3529614:
                            b = !lowerCase.equals("shtm") ? (byte) -1 : (byte) 37;
                            break;
                        case 3542678:
                            b = !lowerCase.equals("svgz") ? (byte) -1 : (byte) 38;
                            break;
                        case 3559925:
                            b = !lowerCase.equals("tiff") ? (byte) -1 : (byte) 39;
                            break;
                        case 3642020:
                            b = !lowerCase.equals("wasm") ? (byte) -1 : (byte) 40;
                            break;
                        case 3645337:
                            b = !lowerCase.equals("webm") ? (byte) -1 : (byte) 41;
                            break;
                        case 3645340:
                            b = !lowerCase.equals("webp") ? (byte) -1 : (byte) 42;
                            break;
                        case 3655064:
                            b = !lowerCase.equals("woff") ? (byte) -1 : (byte) 43;
                            break;
                        case 3678569:
                            b = !lowerCase.equals("xhtm") ? (byte) -1 : (byte) 44;
                            break;
                        case 96488848:
                            b = !lowerCase.equals("ehtml") ? (byte) -1 : (byte) 45;
                            break;
                        case 103877016:
                            if (!lowerCase.equals("mhtml")) {
                                b = -1;
                            }
                            break;
                        case 106703064:
                            b = !lowerCase.equals("pjpeg") ? (byte) -1 : (byte) 47;
                            break;
                        case 109418142:
                            b = !lowerCase.equals("shtml") ? (byte) -1 : (byte) 48;
                            break;
                        case 114035747:
                            b = !lowerCase.equals("xhtml") ? (byte) -1 : (byte) 49;
                            break;
                        default:
                            b = -1;
                            break;
                    }
                    switch (b) {
                        case 0:
                        case 23:
                            str2 = "application/gzip";
                            break;
                        case 1:
                        case MotionEventCompat.AXIS_Z /* 11 */:
                            str2 = "text/javascript";
                            break;
                        case 2:
                            str2 = "image/bmp";
                            break;
                        case 3:
                            str2 = "text/css";
                            break;
                        case 4:
                            str2 = "image/gif";
                            break;
                        case 5:
                        case 31:
                        case MotionEventCompat.AXIS_GENERIC_6 /* 37 */:
                        case MotionEventCompat.AXIS_GENERIC_14 /* 45 */:
                        case 48:
                            str2 = "text/html";
                            break;
                        case 6:
                            str2 = "image/x-icon";
                            break;
                        case 7:
                        case MotionEventCompat.AXIS_RUDDER /* 20 */:
                        case 32:
                        case MotionEventCompat.AXIS_GENERIC_2 /* 33 */:
                        case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                            str2 = "image/jpeg";
                            break;
                        case 8:
                            str2 = "audio/x-m4a";
                            break;
                        case 9:
                        case 13:
                            str2 = "video/mp4";
                            break;
                        case 10:
                        case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
                            str2 = "multipart/related";
                            break;
                        case 12:
                            str2 = "audio/mpeg";
                            break;
                        case MotionEventCompat.AXIS_RZ /* 14 */:
                        case MotionEventCompat.AXIS_GENERIC_4 /* 35 */:
                            str2 = "video/mpeg";
                            break;
                        case MotionEventCompat.AXIS_HAT_X /* 15 */:
                        case 16:
                        case MotionEventCompat.AXIS_GENERIC_5 /* 36 */:
                            str2 = "audio/ogg";
                            break;
                        case 17:
                        case MotionEventCompat.AXIS_RTRIGGER /* 18 */:
                            str2 = "video/ogg";
                            break;
                        case 19:
                            str2 = "application/pdf";
                            break;
                        case 21:
                            str2 = "image/png";
                            break;
                        case 22:
                        case MotionEventCompat.AXIS_GENERIC_7 /* 38 */:
                            str2 = "image/svg+xml";
                            break;
                        case 24:
                        case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
                            str2 = "image/tiff";
                            break;
                        case 25:
                            str2 = "audio/wav";
                            break;
                        case 26:
                        case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                        case 49:
                            str2 = "application/xhtml+xml";
                            break;
                        case 27:
                            str2 = "text/xml";
                            break;
                        case MotionEventCompat.AXIS_RELATIVE_Y /* 28 */:
                            str2 = "application/zip";
                            break;
                        case 29:
                            str2 = "image/apng";
                            break;
                        case 30:
                            str2 = "audio/flac";
                            break;
                        case MotionEventCompat.AXIS_GENERIC_3 /* 34 */:
                            str2 = "application/json";
                            break;
                        case MotionEventCompat.AXIS_GENERIC_9 /* 40 */:
                            str2 = "application/wasm";
                            break;
                        case MotionEventCompat.AXIS_GENERIC_10 /* 41 */:
                            str2 = "video/webm";
                            break;
                        case MotionEventCompat.AXIS_GENERIC_11 /* 42 */:
                            str2 = "image/webp";
                            break;
                        case MotionEventCompat.AXIS_GENERIC_12 /* 43 */:
                            str2 = "application/font-woff";
                            break;
                    }
                }
            } else {
                str2 = strGuessContentTypeFromName;
            }
        }
        return str2 == null ? "text/plain" : str2;
    }

    @Override // P.O
    public void a(int i3, int i4) {
        ((C0076j0) this.b).f1643a.f(i3, i4);
    }

    @Override // P.O
    public void b(int i3, int i4) {
        ((C0076j0) this.b).f1643a.c(i3, i4);
    }

    @Override // N.d
    public void d() {
        Log.d("ProfileInstaller", "DIAGNOSTIC_PROFILE_IS_COMPRESSED");
    }

    @Override // N.d
    public void e(int i3, Object obj) {
        String str;
        switch (i3) {
            case 1:
                str = "RESULT_INSTALL_SUCCESS";
                break;
            case 2:
                str = "RESULT_ALREADY_INSTALLED";
                break;
            case 3:
                str = "RESULT_UNSUPPORTED_ART_VERSION";
                break;
            case 4:
                str = "RESULT_NOT_WRITABLE";
                break;
            case 5:
                str = "RESULT_DESIRED_FORMAT_UNSUPPORTED";
                break;
            case 6:
                str = "RESULT_BASELINE_PROFILE_NOT_FOUND";
                break;
            case 7:
                str = "RESULT_IO_EXCEPTION";
                break;
            case 8:
                str = "RESULT_PARSE_EXCEPTION";
                break;
            case 9:
            default:
                str = "";
                break;
            case 10:
                str = "RESULT_INSTALL_SKIP_FILE_SUCCESS";
                break;
            case MotionEventCompat.AXIS_Z /* 11 */:
                str = "RESULT_DELETE_SKIP_FILE_SUCCESS";
                break;
        }
        if (i3 == 6 || i3 == 7 || i3 == 8) {
            Log.e("ProfileInstaller", str, (Throwable) obj);
        } else {
            Log.d("ProfileInstaller", str);
        }
        ((ProfileInstallReceiver) this.b).setResultCode(i3);
    }

    @Override // Y1.b
    public Object f(Y1.c cVar, Continuation continuation) {
        return ((Y1.h) ((Y1.e) this.b)).f(cVar, continuation);
    }

    @Override // P.O
    public void g(int i3, int i4) {
        ((C0076j0) this.b).f1643a.d(i3, i4);
    }

    @Override // p024j.n
    public boolean h(p024j.p pVar, MenuItem item) {
        T0.j jVar = ((BottomNavigationView) this.b).f;
        if (jVar == null) {
            return false;
        }
        HubActivity hubActivity = ((C0065f1) jVar).b;
        int i3 = HubActivity.f3779j;
        Intrinsics.checkNotNullParameter(item, "item");
        int itemId = item.getItemId();
        if (itemId == R.id.nav_home) {
            hubActivity.getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container, new C0059d1(), "home").commit();
            return false;
        }
        if (itemId == R.id.nav_add) {
            hubActivity.startActivity(new Intent(hubActivity, (Class<?>) AddGameActivity.class));
            return true;
        }
        if (itemId == R.id.nav_profile) {
            hubActivity.getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container, new d2(), "profile").commit();
            return false;
        }
        if (itemId != R.id.nav_settings) {
            return true;
        }
        hubActivity.startActivity(new Intent(hubActivity, (Class<?>) SettingsActivity.class));
        return true;
    }

    @Override // P.O
    public void i(int i3, int i4) {
        ((C0076j0) this.b).f1643a.e(i3, i4);
    }

    public boolean j(int i3, int i4) {
        RunnableC0140d runnableC0140d = (RunnableC0140d) this.b;
        Object obj = runnableC0140d.b.get(i3);
        Object obj2 = runnableC0140d.f1658c.get(i4);
        if (obj == null || obj2 == null) {
            if (obj == null && obj2 == null) {
                return true;
            }
            throw new AssertionError();
        }
        runnableC0140d.f1660e.b.getClass();
        Game a3 = (Game) obj;
        Game b = (Game) obj2;
        Intrinsics.checkNotNullParameter(a3, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        return Intrinsics.areEqual(a3, b);
    }

    public boolean k(int i3, int i4) {
        RunnableC0140d runnableC0140d = (RunnableC0140d) this.b;
        Object obj = runnableC0140d.b.get(i3);
        Object obj2 = runnableC0140d.f1658c.get(i4);
        if (obj == null || obj2 == null) {
            return obj == null && obj2 == null;
        }
        runnableC0140d.f1660e.b.getClass();
        Game a3 = (Game) obj;
        Game b = (Game) obj2;
        Intrinsics.checkNotNullParameter(a3, "a");
        Intrinsics.checkNotNullParameter(b, "b");
        return a3.getId() == b.getId();
    }

    public void l(int i3, int i4) {
        RunnableC0140d runnableC0140d = (RunnableC0140d) this.b;
        Object obj = runnableC0140d.b.get(i3);
        Object obj2 = runnableC0140d.f1658c.get(i4);
        if (obj == null || obj2 == null) {
            throw new AssertionError();
        }
        runnableC0140d.f1660e.b.getClass();
    }

    public String m() {
        i2.a aVar = (i2.a) this.b;
        String string = aVar.f4457a.toString();
        StringBuffer stringBuffer = aVar.f4459d;
        if (stringBuffer == null || stringBuffer.toString().equals("")) {
            return string;
        }
        return aVar.f4459d.toString() + "/" + string;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    public Object o(C0016e0 c0016e0, n0 n0Var, ContinuationImpl continuationImpl) {
        C0007a c0007a;
        C0016e0 c0016e1 = c0016e0;
        n0 n0Var2 = n0Var;
        if (continuationImpl instanceof C0007a) {
            c0007a = (C0007a) continuationImpl;
            int i3 = c0007a.f163h;
            if ((i3 & Integer.MIN_VALUE) != 0) {
                c0007a.f163h = i3 - Integer.MIN_VALUE;
            } else {
                c0007a = new C0007a(this, continuationImpl);
            }
        } else {
            c0007a = new C0007a(this, continuationImpl);
        }
        Object objC = c0007a.f;
        Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
        int i4 = c0007a.f163h;
        if (i4 == 0) {
            ResultKt.throwOnFailure(objC);
            Log.d("GameLaunch", "container launch begin request=" + c0016e1.f184a + " session=" + n0Var2.f207a);
            Activity activity = (Activity) ((WeakReference) this.b).get();
            if (activity == null) {
                return null;
            }
            Game game = new Game(c0016e1.b, "", c0016e1.f185c, null, null, c0016e1.f186d, null, null, null, null, null, false, 0, 0L, 0, null, 0, null, null, null, null, null, false, 0L, null, null, null, 134217688, null);
            C0363c0 c0363c0 = C0363c0.f6201a;
            c0007a.b = c0016e1;
            c0007a.f160c = n0Var2;
            c0007a.f161d = SpillingKt.nullOutSpilledVariable(activity);
            c0007a.f162e = SpillingKt.nullOutSpilledVariable(game);
            c0007a.f163h = 1;
            objC = c0363c0.c(activity, game, n0Var2, c0007a);
            if (objC == coroutine_suspended) {
                return coroutine_suspended;
            }
        } else {
            if (i4 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            n0 n0Var3 = c0007a.f160c;
            C0016e0 c0016e2 = c0007a.b;
            ResultKt.throwOnFailure(objC);
            n0Var2 = n0Var3;
            c0016e1 = c0016e2;
        }
        boolean zBooleanValue = ((Boolean) objC).booleanValue();
        Log.d("GameLaunch", "container launch result request=" + c0016e1.f184a + " dispatched=" + zBooleanValue);
        if (zBooleanValue) {
            return new C0011c(n0Var2.f207a);
        }
        return null;
    }

    @Override // androidx.core.view.ViewPropertyAnimatorUpdateListener
    public void onAnimationUpdate(View view) {
        ((View) ((p011e.M) this.b).f4076e.getParent()).invalidate();
    }

    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
        H0.o oVar = (H0.o) this.b;
        H0.n nVar = oVar.f1080k;
        if (nVar != null) {
            oVar.f1075d.f3320W.remove(nVar);
        }
        if (windowInsetsCompat != null) {
            H0.n nVar2 = new H0.n(oVar.g, windowInsetsCompat);
            oVar.f1080k = nVar2;
            nVar2.e(oVar.getWindow());
            BottomSheetBehavior bottomSheetBehavior = oVar.f1075d;
            H0.n nVar3 = oVar.f1080k;
            ArrayList arrayList = bottomSheetBehavior.f3320W;
            if (!arrayList.contains(nVar3)) {
                arrayList.add(nVar3);
            }
        }
        return windowInsetsCompat;
    }

    public C0009b(ViewGroup viewGroup) {
        this.b = viewGroup.getOverlay();
    }

    public C0009b(int i3) {
        switch (i3) {
            case 23:
                this.b = new Object();
                new Handler(Looper.getMainLooper(), new p004b1.d(0, this));
                break;
            default:
                this.b = new LinkedHashSet();
                break;
        }
    }

    @Override // p024j.n
    public void c(p024j.p pVar) {
    }
}
