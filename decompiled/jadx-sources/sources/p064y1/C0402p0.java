package p064y1;

import P.H0;
import Q1.c;
import Q1.d;
import S1.j;
import android.content.SharedPreferences;
import android.os.Build;
import android.widget.LinearLayout;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.game.GameActivity;
import java.io.OutputStream;
import java.io.Serializable;
import java.net.HttpURLConnection;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.json.JSONObject;

/* JADX INFO: renamed from: y1.p0, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C0402p0 implements Function1 {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6319c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f6320d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Object f6321e;
    public final /* synthetic */ Object f;
    public final /* synthetic */ Serializable g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ Object f6322h;

    public /* synthetic */ C0402p0(Object obj, Object obj2, Object obj3, Object obj4, Serializable serializable, Object obj5, int i3) {
        this.b = i3;
        this.f6319c = obj;
        this.f6320d = obj2;
        this.f6321e = obj3;
        this.f = obj4;
        this.g = serializable;
        this.f6322h = obj5;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        switch (this.b) {
            case 0:
                C0425x0 c0425x0 = (C0425x0) this.f6319c;
                List list = (List) this.f6320d;
                LinkedHashMap linkedHashMap = (LinkedHashMap) this.f6321e;
                LinearLayout linearLayout = (LinearLayout) this.f;
                Ref.ObjectRef objectRef = (Ref.ObjectRef) this.g;
                c0425x0.h(list, ((Integer) obj).intValue(), linkedHashMap, new C0413t0((H0) this.f6322h, linearLayout, linkedHashMap, list, objectRef, c0425x0));
                break;
            case 1:
                C0425x0 c0425x1 = (C0425x0) this.f6319c;
                List list2 = (List) this.f6320d;
                LinkedHashMap linkedHashMap2 = (LinkedHashMap) this.f6321e;
                LinearLayout linearLayout2 = (LinearLayout) this.f;
                Ref.ObjectRef objectRef2 = (Ref.ObjectRef) this.g;
                c0425x1.h(list2, ((Integer) obj).intValue(), linkedHashMap2, new C0419v0((H0) this.f6322h, linearLayout2, linkedHashMap2, list2, objectRef2, c0425x1));
                break;
            default:
                final GameActivity gameActivity = (GameActivity) this.f6319c;
                final Game game = (Game) this.f6320d;
                final d dVar = (d) this.f6321e;
                c cVar = (c) this.f;
                String title = (String) this.g;
                final String str = (String) this.f6322h;
                final JSONObject jSONObject = (JSONObject) obj;
                String str2 = cVar.b;
                String diagnostics = cVar.f1847c;
                String debugLog = cVar.f1848d;
                Intrinsics.checkNotNullParameter(title, "title");
                Intrinsics.checkNotNullParameter(diagnostics, "diagnostics");
                Intrinsics.checkNotNullParameter(debugLog, "debugLog");
                final c cVar2 = new c(title, str2, diagnostics, debugLog);
                if (gameActivity.y(dVar)) {
                    new Thread(new Runnable() { // from class: y1.j
                        @Override // java.lang.Runnable
                        public final void run() throws Throwable {
                            Object version;
                            Object engine;
                            Object objTake;
                            Object obj2;
                            String string;
                            String title2;
                            c cVar3 = cVar2;
                            GameActivity gameActivity2 = gameActivity;
                            d dVar2 = dVar;
                            if (gameActivity2.y(dVar2)) {
                                HttpURLConnection httpURLConnection = null;
                                String str3 = null;
                                HttpURLConnection httpURLConnection2 = null;
                                try {
                                    try {
                                        JSONObject jSONObject2 = new JSONObject();
                                        Game game2 = game;
                                        Object obj3 = "(không tên)";
                                        if (game2 != null && (title2 = game2.getTitle()) != null && !StringsKt.isBlank(title2)) {
                                            obj3 = title2;
                                        }
                                        jSONObject2.put("gameName", obj3);
                                        Object obj4 = "?";
                                        if (game2 == null || (version = game2.getVersion()) == null) {
                                            version = "?";
                                        }
                                        jSONObject2.put("gameVersion", version);
                                        if (game2 == null || (engine = game2.getEngine()) == null) {
                                            engine = "?";
                                        }
                                        jSONObject2.put("engine", engine);
                                        jSONObject2.put("errorTitle", cVar3.f1846a);
                                        jSONObject2.put("debugLog", cVar3.f1848d);
                                        String str4 = str;
                                        if (str4 == null || (string = StringsKt.trim((CharSequence) str4).toString()) == null || (objTake = StringsKt.take(string, 1000)) == null) {
                                            objTake = "";
                                        }
                                        jSONObject2.put("description", objTake);
                                        SharedPreferences sharedPreferences = gameActivity2.getSharedPreferences("minhub_bugreport", 0);
                                        String string2 = sharedPreferences.getString("device_id", null);
                                        if (string2 == null) {
                                            string2 = UUID.randomUUID().toString();
                                            Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
                                            sharedPreferences.edit().putString("device_id", string2).apply();
                                        }
                                        jSONObject2.put("deviceId", string2);
                                        try {
                                            obj2 = gameActivity2.getPackageManager().getPackageInfo(gameActivity2.getPackageName(), 0).versionName;
                                            if (obj2 == null) {
                                                obj2 = "?";
                                            }
                                        } catch (Exception unused) {
                                        }
                                        jSONObject2.put("appVersion", obj2);
                                        Object obj5 = Build.VERSION.RELEASE;
                                        if (obj5 != null) {
                                            obj4 = obj5;
                                        }
                                        jSONObject2.put("androidVersion", obj4);
                                        Object obj6 = jSONObject;
                                        if (obj6 != null) {
                                            jSONObject2.put("save", obj6);
                                        }
                                        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", Locale.US);
                                        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                                        Unit unit = Unit.INSTANCE;
                                        jSONObject2.put("at", simpleDateFormat.format(new Date()));
                                        String string3 = jSONObject2.toString();
                                        Intrinsics.checkNotNullExpressionValue(string3, "toString(...)");
                                        HttpURLConnection httpURLConnectionC = j.c("https://auth.h-game18.xyz/bugreports");
                                        httpURLConnectionC.setRequestMethod("POST");
                                        httpURLConnectionC.setConnectTimeout(8000);
                                        httpURLConnectionC.setReadTimeout(15000);
                                        httpURLConnectionC.setDoOutput(true);
                                        httpURLConnectionC.setRequestProperty("Content-Type", "application/json");
                                        try {
                                            OutputStream outputStream = httpURLConnectionC.getOutputStream();
                                            try {
                                                byte[] bytes = string3.getBytes(Charsets.UTF_8);
                                                Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
                                                outputStream.write(bytes);
                                                CloseableKt.closeFinally(outputStream, null);
                                                int responseCode = httpURLConnectionC.getResponseCode();
                                                if (200 > responseCode || responseCode >= 300) {
                                                    if (responseCode == 426) {
                                                        str3 = "outdated";
                                                    } else {
                                                        str3 = "HTTP " + httpURLConnectionC.getResponseCode();
                                                    }
                                                }
                                                try {
                                                    httpURLConnectionC.disconnect();
                                                } catch (Exception unused2) {
                                                }
                                            } catch (Throwable th) {
                                                try {
                                                    throw th;
                                                } catch (Throwable th2) {
                                                    CloseableKt.closeFinally(outputStream, th);
                                                    throw th2;
                                                }
                                            }
                                        } catch (Exception e2) {
                                            e = e2;
                                            httpURLConnection = httpURLConnectionC;
                                            String message = e.getMessage();
                                            String simpleName = message == null ? e.getClass().getSimpleName() : message;
                                            if (httpURLConnection != null) {
                                                try {
                                                    httpURLConnection.disconnect();
                                                } catch (Exception unused3) {
                                                }
                                            }
                                            str3 = simpleName;
                                        } catch (Throwable th3) {
                                            th = th3;
                                            httpURLConnection2 = httpURLConnectionC;
                                            if (httpURLConnection2 != null) {
                                                try {
                                                    httpURLConnection2.disconnect();
                                                } catch (Exception unused4) {
                                                }
                                            }
                                            throw th;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                    }
                                } catch (Exception e3) {
                                    e = e3;
                                }
                                if (gameActivity2.y(dVar2)) {
                                    gameActivity2.runOnUiThread(new RunnableC0389l(gameActivity2, dVar2, str3, 0));
                                }
                            }
                        }
                    }).start();
                }
                break;
        }
        return Unit.INSTANCE;
    }
}
