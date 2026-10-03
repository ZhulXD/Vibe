package p011e;

import F.b;
import android.content.Context;
import android.content.IntentFilter;
import android.location.Location;
import android.location.LocationManager;
import android.os.PowerManager;
import android.util.Log;
import androidx.core.content.PermissionChecker;
import java.util.Calendar;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class x extends y {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f4164d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ B f4165e;
    public final Object f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(B b, b bVar) {
        super(b);
        this.f4165e = b;
        this.f = bVar;
    }

    @Override // p011e.y
    public final IntentFilter b() {
        switch (this.f4164d) {
            case 0:
                IntentFilter intentFilter = new IntentFilter();
                intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
                return intentFilter;
            default:
                IntentFilter intentFilter2 = new IntentFilter();
                intentFilter2.addAction("android.intent.action.TIME_SET");
                intentFilter2.addAction("android.intent.action.TIMEZONE_CHANGED");
                intentFilter2.addAction("android.intent.action.TIME_TICK");
                return intentFilter2;
        }
    }

    @Override // p011e.y
    public final int c() {
        Location location;
        boolean z2;
        long j2;
        Location lastKnownLocation;
        switch (this.f4164d) {
            case 0:
                return t.a((PowerManager) this.f) ? 2 : 1;
            default:
                b bVar = (b) this.f;
                J j3 = (J) bVar.f945e;
                LocationManager locationManager = (LocationManager) bVar.f944d;
                if (j3.b <= System.currentTimeMillis()) {
                    Context context = (Context) bVar.f943c;
                    Location lastKnownLocation2 = null;
                    if (PermissionChecker.checkSelfPermission(context, "android.permission.ACCESS_COARSE_LOCATION") == 0) {
                        try {
                            lastKnownLocation = locationManager.isProviderEnabled("network") ? locationManager.getLastKnownLocation("network") : null;
                        } catch (Exception e2) {
                            Log.d("TwilightManager", "Failed to get last known location", e2);
                        }
                        location = lastKnownLocation;
                    } else {
                        location = null;
                    }
                    if (PermissionChecker.checkSelfPermission(context, "android.permission.ACCESS_FINE_LOCATION") == 0) {
                        try {
                            if (locationManager.isProviderEnabled("gps")) {
                                lastKnownLocation2 = locationManager.getLastKnownLocation("gps");
                            }
                        } catch (Exception e3) {
                            Log.d("TwilightManager", "Failed to get last known location", e3);
                        }
                    }
                    if (lastKnownLocation2 == null || location == null ? lastKnownLocation2 != null : lastKnownLocation2.getTime() > location.getTime()) {
                        location = lastKnownLocation2;
                    }
                    z2 = false;
                    if (location != null) {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        if (I.f4064d == null) {
                            I.f4064d = new I();
                        }
                        I i3 = I.f4064d;
                        i3.a(location.getLatitude(), location.getLongitude(), jCurrentTimeMillis - 86400000);
                        i3.a(location.getLatitude(), location.getLongitude(), jCurrentTimeMillis);
                        z2 = i3.f4066c == 1;
                        long j4 = i3.b;
                        long j5 = i3.f4065a;
                        i3.a(location.getLatitude(), location.getLongitude(), jCurrentTimeMillis + 86400000);
                        long j6 = i3.b;
                        if (j4 == -1 || j5 == -1) {
                            j2 = jCurrentTimeMillis + 43200000;
                        } else {
                            if (jCurrentTimeMillis > j5) {
                                j4 = j6;
                            } else if (jCurrentTimeMillis > j4) {
                                j4 = j5;
                            }
                            j2 = j4 + 60000;
                        }
                        j3.f4067a = z2;
                        j3.b = j2;
                    } else {
                        Log.i("TwilightManager", "Could not get last known location. This is probably because the app does not have any location permissions. Falling back to hardcoded sunrise/sunset values.");
                        int i4 = Calendar.getInstance().get(11);
                        if (i4 < 6 || i4 >= 22) {
                            z2 = true;
                        }
                    }
                    break;
                } else {
                    z2 = j3.f4067a;
                }
                return z2 ? 2 : 1;
        }
    }

    @Override // p011e.y
    public final void d() {
        switch (this.f4164d) {
            case 0:
                this.f4165e.n(true, true);
                break;
            default:
                this.f4165e.n(true, true);
                break;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public x(B b, Context context) {
        super(b);
        this.f4165e = b;
        this.f = (PowerManager) context.getApplicationContext().getSystemService("power");
    }
}
