package androidx.biometric;

import P.ExecutorC0142e;
import android.app.KeyguardManager;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.util.Log;
import androidx.core.view.MotionEventCompat;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.minhub.gamehub.R;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class j implements Observer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f2769a;
    public final /* synthetic */ p b;

    public /* synthetic */ j(p pVar, int i3) {
        this.f2769a = i3;
        this.b = pVar;
    }

    /* JADX WARN: Code duplicated, block: B:102:0x0174  */
    /* JADX WARN: Code duplicated, block: B:105:0x017e A[LOOP:0: B:101:0x0172->B:105:0x017e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:108:0x0184  */
    /* JADX WARN: Code duplicated, block: B:111:0x018f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:113:0x0192  */
    /* JADX WARN: Code duplicated, block: B:124:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:125:0x017c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:0x0119  */
    /* JADX WARN: Code duplicated, block: B:79:0x011f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:81:0x0122  */
    /* JADX WARN: Code duplicated, block: B:84:0x012d  */
    /* JADX WARN: Code duplicated, block: B:88:0x0136  */
    /* JADX WARN: Code duplicated, block: B:90:0x013e  */
    /* JADX WARN: Code duplicated, block: B:92:0x0145  */
    /* JADX WARN: Code duplicated, block: B:93:0x0149  */
    /* JADX WARN: Code duplicated, block: B:95:0x015a  */
    /* JADX WARN: Code duplicated, block: B:97:0x0160  */
    /* JADX WARN: Instruction removed from duplicated block: B:113:0x0192, please report this as an issue */
    @Override // androidx.lifecycle.Observer
    public final void onChanged(Object obj) {
        Context context;
        int i3;
        String str;
        String[] stringArray;
        int length;
        int i4;
        boolean z2;
        int i5;
        switch (this.f2769a) {
            case 0:
                s sVar = (s) obj;
                if (sVar != null) {
                    p pVar = this.b;
                    pVar.i(sVar);
                    w wVar = pVar.f2771c;
                    if (wVar.f2786o == null) {
                        wVar.f2786o = new MutableLiveData();
                    }
                    w.f(wVar.f2786o, null);
                }
                break;
            case 1:
                C0221g c0221g = (C0221g) obj;
                if (c0221g != null) {
                    int i6 = c0221g.f2764a;
                    CharSequence charSequenceZ = c0221g.b;
                    switch (i6) {
                        case 1:
                        case 2:
                        case 3:
                        case 4:
                        case 5:
                        case 7:
                        case 8:
                        case 9:
                        case 10:
                        case MotionEventCompat.AXIS_Z /* 11 */:
                        case 12:
                        case 13:
                        case MotionEventCompat.AXIS_RZ /* 14 */:
                        case MotionEventCompat.AXIS_HAT_X /* 15 */:
                            break;
                        case 6:
                        default:
                            i6 = 8;
                            break;
                    }
                    p pVar2 = this.b;
                    Context context2 = pVar2.getContext();
                    int i7 = Build.VERSION.SDK_INT;
                    if (i7 < 29 && ((i6 == 7 || i6 == 9) && context2 != null)) {
                        KeyguardManager keyguardManagerA = F.a(context2);
                        if ((keyguardManagerA == null ? false : F.b(keyguardManagerA)) && p000a.a.s(pVar2.f2771c.a())) {
                            pVar2.f();
                        } else if (pVar2.e()) {
                            if (charSequenceZ == null) {
                                charSequenceZ = com.bumptech.glide.d.z(pVar2.getContext(), i6);
                            }
                            if (i6 == 5) {
                                i5 = pVar2.f2771c.f2780i;
                                if (i5 != 0) {
                                    pVar2.h(i6, charSequenceZ);
                                } else {
                                    pVar2.h(i6, charSequenceZ);
                                }
                                pVar2.dismiss();
                            } else {
                                if (pVar2.f2771c.f2791t) {
                                    pVar2.g(i6, charSequenceZ);
                                } else {
                                    pVar2.j(charSequenceZ);
                                    Handler handler = pVar2.b;
                                    h hVar = new h(pVar2, i6, charSequenceZ, 1);
                                    context = pVar2.getContext();
                                    if (context != null) {
                                        str = Build.MODEL;
                                        if (i7 == 28) {
                                            z2 = false;
                                        } else {
                                            stringArray = context.getResources().getStringArray(R.array.hide_fingerprint_instantly_prefixes);
                                            length = stringArray.length;
                                            i4 = 0;
                                            while (true) {
                                                if (i4 < length) {
                                                    z2 = false;
                                                } else if (str.startsWith(stringArray[i4])) {
                                                    z2 = true;
                                                } else {
                                                    i4++;
                                                }
                                            }
                                        }
                                        if (z2) {
                                        }
                                    }
                                    handler.postDelayed(hVar, i3);
                                }
                                pVar2.f2771c.f2791t = true;
                            }
                        } else {
                            if (charSequenceZ == null) {
                                charSequenceZ = pVar2.getString(R.string.default_error_msg) + " " + i6;
                            }
                            pVar2.g(i6, charSequenceZ);
                        }
                    } else if (pVar2.e()) {
                        if (charSequenceZ == null) {
                            charSequenceZ = com.bumptech.glide.d.z(pVar2.getContext(), i6);
                        }
                        if (i6 == 5) {
                            i5 = pVar2.f2771c.f2780i;
                            if (i5 != 0 || i5 == 3) {
                                pVar2.h(i6, charSequenceZ);
                            }
                            pVar2.dismiss();
                        } else {
                            if (pVar2.f2771c.f2791t) {
                                pVar2.g(i6, charSequenceZ);
                            } else {
                                pVar2.j(charSequenceZ);
                                Handler handler2 = pVar2.b;
                                h hVar2 = new h(pVar2, i6, charSequenceZ, 1);
                                context = pVar2.getContext();
                                if (context != null) {
                                    str = Build.MODEL;
                                    if (i7 == 28 || str == null) {
                                        z2 = false;
                                    } else {
                                        stringArray = context.getResources().getStringArray(R.array.hide_fingerprint_instantly_prefixes);
                                        length = stringArray.length;
                                        i4 = 0;
                                        while (true) {
                                            if (i4 < length) {
                                                z2 = false;
                                            } else if (str.startsWith(stringArray[i4])) {
                                                z2 = true;
                                            } else {
                                                i4++;
                                            }
                                        }
                                    }
                                    i3 = z2 ? 0 : 2000;
                                }
                                handler2.postDelayed(hVar2, i3);
                            }
                            pVar2.f2771c.f2791t = true;
                        }
                    } else {
                        if (charSequenceZ == null) {
                            charSequenceZ = pVar2.getString(R.string.default_error_msg) + " " + i6;
                        }
                        pVar2.g(i6, charSequenceZ);
                    }
                    pVar2.f2771c.b(null);
                }
                break;
            case 2:
                CharSequence charSequence = (CharSequence) obj;
                if (charSequence != null) {
                    p pVar3 = this.b;
                    if (pVar3.e()) {
                        pVar3.j(charSequence);
                    }
                    pVar3.f2771c.b(null);
                }
                break;
            case 3:
                if (((Boolean) obj).booleanValue()) {
                    p pVar4 = this.b;
                    if (pVar4.e()) {
                        pVar4.j(pVar4.getString(R.string.fingerprint_not_recognized));
                    }
                    w wVar2 = pVar4.f2771c;
                    if (wVar2.f2782k) {
                        Executor executorC0142e = wVar2.f2775a;
                        if (executorC0142e == null) {
                            executorC0142e = new ExecutorC0142e(2);
                        }
                        executorC0142e.execute(new i(pVar4, 0));
                    } else {
                        Log.w("BiometricFragment", "Failure not sent to client. Client is not awaiting a result.");
                    }
                    w wVar3 = pVar4.f2771c;
                    if (wVar3.f2789r == null) {
                        wVar3.f2789r = new MutableLiveData();
                    }
                    w.f(wVar3.f2789r, Boolean.FALSE);
                }
                break;
            case 4:
                if (((Boolean) obj).booleanValue()) {
                    p pVar5 = this.b;
                    if (pVar5.d()) {
                        pVar5.f();
                    } else {
                        w wVar4 = pVar5.f2771c;
                        CharSequence string = wVar4.f2779h;
                        if (string == null) {
                            F.b bVar = wVar4.f2776c;
                            if (bVar != null) {
                                string = (CharSequence) bVar.f945e;
                                if (string == null) {
                                    string = "";
                                }
                            } else {
                                string = null;
                            }
                        }
                        if (string == null) {
                            string = pVar5.getString(R.string.default_error_msg);
                        }
                        pVar5.g(13, string);
                        pVar5.b(2);
                    }
                    pVar5.f2771c.e(false);
                }
                break;
            default:
                if (((Boolean) obj).booleanValue()) {
                    p pVar6 = this.b;
                    pVar6.b(1);
                    pVar6.dismiss();
                    w wVar5 = pVar6.f2771c;
                    if (wVar5.f2792u == null) {
                        wVar5.f2792u = new MutableLiveData();
                    }
                    w.f(wVar5.f2792u, Boolean.FALSE);
                }
                break;
        }
    }
}
