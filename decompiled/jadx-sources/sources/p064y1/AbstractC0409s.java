package p064y1;

import C1.N;
import G1.a;
import G1.h;
import G1.m;
import N1.n;
import O0.b;
import Q1.c;
import Q1.d;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.DialogInterface;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.util.TypedValue;
import android.view.View;
import android.webkit.ValueCallback;
import android.widget.Button;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameKt;
import com.minhub.gamehub.data.RpgMakerSaveStore;
import com.minhub.gamehub.game.GameActivity;
import java.io.File;
import java.util.Iterator;
import kotlin.Pair;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt___StringsKt;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;

/* JADX INFO: renamed from: y1.s, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0409s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String[] f6343a = {"[Manual report] Unknown error", "[Manual report] Black screen", "[Manual report] Freeze / not responding", "[Manual report] Crash / app closes", "[Manual report] Save / load broken", "[Manual report] Text missing / garbled", "[Manual report] Image / graphics broken", "[Manual report] No sound / audio issue"};

    public static boolean a(GameActivity gameActivity) {
        NetworkCapabilities networkCapabilities;
        try {
            Object systemService = gameActivity.getSystemService("connectivity");
            Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
            ConnectivityManager connectivityManager = (ConnectivityManager) systemService;
            Network activeNetwork = connectivityManager.getActiveNetwork();
            if (activeNetwork != null && (networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork)) != null) {
                return networkCapabilities.hasCapability(12);
            }
            return false;
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r15v7, types: [T, android.view.View, android.view.ViewGroup, android.widget.LinearLayout, android.widget.RadioGroup] */
    public static void b(final GameActivity gameActivity, final Game game, final d dVar, final c cVar, boolean z2) {
        String[] stringArray;
        Sequence<String> sequenceLineSequence;
        Sequence sequenceTake;
        String strJoinToString$default;
        final GameActivity gameActivity2;
        final d dVar2;
        final EditText editText;
        if (gameActivity.y(dVar)) {
            final String str = cVar.f1846a;
            String str2 = cVar.b;
            boolean zA = a(gameActivity);
            float f = gameActivity.getResources().getDisplayMetrics().density;
            int i3 = (int) (20 * f);
            EditText editText2 = new EditText(gameActivity);
            editText2.setHint(z2 ? R.string.bug_report_desc_required_hint : R.string.bug_report_desc_hint);
            editText2.setMinLines(2);
            editText2.setMaxLines(4);
            final Ref.ObjectRef objectRef = new Ref.ObjectRef();
            if (z2) {
                stringArray = gameActivity.getResources().getStringArray(R.array.bug_report_categories);
                Intrinsics.checkNotNullExpressionValue(stringArray, "getStringArray(...)");
            } else {
                stringArray = new String[0];
            }
            int iMin = Math.min(stringArray.length, 8);
            StringBuilder sb = new StringBuilder();
            if (z2) {
                sb.append(gameActivity.getString(R.string.bug_report_pick_prompt));
            } else {
                sb.append(gameActivity.getString(R.string.bug_report_message_prefix));
                sb.append("\n\n");
                sb.append(str);
                if (str2 != null && (sequenceLineSequence = StringsKt.lineSequence(str2)) != null && (sequenceTake = SequencesKt.take(sequenceLineSequence, 3)) != null && (strJoinToString$default = SequencesKt___SequencesKt.joinToString$default(sequenceTake, "\n", null, null, 0, null, null, 62, null)) != null && !StringsKt.isBlank(strJoinToString$default)) {
                    sb.append("\n\n");
                    sb.append(strJoinToString$default);
                }
            }
            sb.append("\n\n");
            sb.append(gameActivity.getString(R.string.bug_report_reassure));
            sb.append("\n\n");
            sb.append(gameActivity.getString(zA ? R.string.bug_report_hint_online : R.string.bug_report_hint_offline));
            if (zA) {
                sb.append("\n\n");
                sb.append(gameActivity.getString(R.string.bug_report_save_notice));
            }
            String string = sb.toString();
            TypedValue typedValue = new TypedValue();
            gameActivity.getTheme().resolveAttribute(android.R.attr.textColorSecondary, typedValue, true);
            int i4 = typedValue.resourceId;
            int color = i4 != 0 ? gameActivity.getColor(i4) : typedValue.data;
            TextView textView = new TextView(gameActivity);
            textView.setText(string);
            textView.setTextColor(color);
            textView.setTextSize(15.0f);
            textView.setLineSpacing(0.0f, 1.15f);
            LinearLayout linearLayout = new LinearLayout(gameActivity);
            linearLayout.setOrientation(1);
            int i5 = (int) (12 * f);
            linearLayout.setPadding(i3, i5, i3, (int) (4 * f));
            linearLayout.addView(textView);
            if (z2 && iMin > 0) {
                ?? radioGroup = new RadioGroup(gameActivity);
                radioGroup.setOrientation(1);
                int i6 = 0;
                while (i6 < iMin) {
                    RadioButton radioButton = new RadioButton(gameActivity);
                    radioButton.setId(View.generateViewId());
                    radioButton.setText(stringArray[i6]);
                    radioButton.setChecked(i6 == 0);
                    radioGroup.addView(radioButton);
                    i6++;
                }
                objectRef.element = radioGroup;
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
                layoutParams.topMargin = (int) (10 * f);
                Unit unit = Unit.INSTANCE;
                linearLayout.addView((View) radioGroup, layoutParams);
            }
            LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -2);
            layoutParams2.topMargin = i5;
            Unit unit2 = Unit.INSTANCE;
            linearLayout.addView(editText2, layoutParams2);
            ScrollView scrollView = new ScrollView(gameActivity);
            scrollView.addView(linearLayout);
            b bVar = new b(gameActivity, 0);
            C0240b c0240b = (C0240b) bVar.f4145c;
            bVar.j(R.string.bug_report_title);
            c0240b.f4112t = scrollView;
            c0240b.f4105m = true;
            Intrinsics.checkNotNullExpressionValue(bVar, "setCancelable(...)");
            DialogInterface.OnClickListener onClickListener = new DialogInterface.OnClickListener() { // from class: y1.o
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i7) {
                    GameActivity gameActivity3 = gameActivity;
                    if (gameActivity3.y(dVar)) {
                        String str3 = AbstractC0409s.d(objectRef, str) + "\n\n" + cVar.f1848d;
                        Object systemService = gameActivity3.getSystemService("clipboard");
                        Intrinsics.checkNotNull(systemService, "null cannot be cast to non-null type android.content.ClipboardManager");
                        ((ClipboardManager) systemService).setPrimaryClip(ClipData.newPlainText("MinHub bug", str3));
                        Toast.makeText(gameActivity3, R.string.bug_report_copied, 0).show();
                    }
                }
            };
            c0240b.f4103k = c0240b.f4096a.getText(R.string.bug_report_copy);
            c0240b.f4104l = onClickListener;
            if (zA) {
                gameActivity2 = gameActivity;
                dVar2 = dVar;
                editText = editText2;
                bVar.h(R.string.bug_report_send, new DialogInterface.OnClickListener() { // from class: y1.p
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i7) {
                        final GameActivity gameActivity3 = gameActivity2;
                        d dVar3 = dVar2;
                        if (gameActivity3.y(dVar3)) {
                            Toast.makeText(gameActivity3, R.string.bug_report_sending, 0).show();
                            String strD = AbstractC0409s.d(objectRef, str);
                            Editable text = editText.getText();
                            String string2 = text != null ? text.toString() : null;
                            final Game game2 = game;
                            final C0402p0 done = new C0402p0(gameActivity3, game2, dVar3, cVar, strD, string2, 2);
                            Intrinsics.checkNotNullParameter(done, "done");
                            if (game2 == null) {
                                done.invoke(null);
                            } else {
                                final long jCurrentTimeMillis = System.currentTimeMillis();
                                final Handler handler = new Handler(Looper.getMainLooper());
                                int i8 = K.f6094a[GameKt.getEngineEnum(game2).ordinal()];
                                if (i8 == 6 || i8 == 7) {
                                    RpgMakerSaveStore rpgMakerSaveStore = RpgMakerSaveStore.INSTANCE;
                                    final String strFileNameForSlot = rpgMakerSaveStore.fileNameForSlot(GameKt.getEngineEnum(game2), 998);
                                    final File file = new File(rpgMakerSaveStore.saveDir(game2), strFileNameForSlot);
                                    final File file2 = new File(rpgMakerSaveStore.saveDir(game2), rpgMakerSaveStore.fileNameForSlot(GameKt.getEngineEnum(game2), 997));
                                    gameActivity3.u().f5707q0.evaluateJavascript("(function(){try{if(!DataManager||!DataManager.saveGame||!window.$gameMap||!($gameMap.mapId()>0))return false;if(window.__mhBugSaveSafe&&!window.__mhBugSaveSafe())return false;if(typeof $gameSystem!=='undefined'&&$gameSystem.onBeforeSave)$gameSystem.onBeforeSave();var r=DataManager.saveGame(998);if(r&&typeof r.then==='function'){r.catch(function(){});return true}return !!r}catch(e){return false}})()", new ValueCallback() { // from class: y1.F
                                        @Override // android.webkit.ValueCallback
                                        public final void onReceiveValue(Object obj) {
                                            int i9 = GameActivity.f3676L;
                                            boolean zAreEqual = Intrinsics.areEqual((String) obj, "true");
                                            File file3 = file2;
                                            C0402p0 c0402p0 = done;
                                            GameActivity gameActivity4 = gameActivity3;
                                            String str3 = strFileNameForSlot;
                                            Game game3 = game2;
                                            if (zAreEqual) {
                                                GameActivity.q(0, jCurrentTimeMillis, handler, game3, gameActivity4, file, file3, str3, c0402p0);
                                            } else {
                                                GameActivity.p(file3, c0402p0, gameActivity4, str3, game3);
                                            }
                                        }
                                    });
                                } else if (i8 != 8) {
                                    done.invoke(null);
                                } else {
                                    gameActivity3.u().f5707q0.evaluateJavascript("(function(){try{return tyrano.plugin.kag.config.projectID||''}catch(e){return ''}})()", new com.minhub.gamehub.hub.catalog.c(gameActivity3, done, handler, 2));
                                }
                            }
                            dVar3.c();
                            dialogInterface.dismiss();
                        }
                    }
                });
            } else {
                gameActivity2 = gameActivity;
                dVar2 = dVar;
                editText = editText2;
            }
            bVar.f(R.string.bug_report_close, new DialogInterfaceOnClickListenerC0377h(dVar2, 2));
            c0240b.f4106n = new DialogInterfaceOnCancelListenerC0380i(1, dVar2);
            final DialogInterfaceC0245g dialogInterfaceC0245gC = bVar.c();
            Intrinsics.checkNotNullExpressionValue(dialogInterfaceC0245gC, "create(...)");
            if (z2 && zA) {
                dialogInterfaceC0245gC.setOnShowListener(new DialogInterface.OnShowListener() { // from class: y1.q
                    @Override // android.content.DialogInterface.OnShowListener
                    public final void onShow(DialogInterface dialogInterface) {
                        Button button = dialogInterfaceC0245gC.f4146d.f4127i;
                        EditText editText3 = editText;
                        GameActivity gameActivity3 = gameActivity2;
                        AbstractC0409s.c(editText3, button, gameActivity3);
                        editText3.addTextChangedListener(new N(editText3, button, gameActivity3));
                    }
                });
            }
            dialogInterfaceC0245gC.show();
        }
    }

    public static final void c(EditText editText, Button button, GameActivity gameActivity) {
        Editable text;
        String string;
        String strReplace;
        Editable text2 = editText.getText();
        String string2 = null;
        String string3 = text2 != null ? text2.toString() : null;
        boolean z2 = false;
        if (string3 != null && (string = StringsKt.trim((CharSequence) string3).toString()) != null && (strReplace = new Regex("\\s+").replace(string, " ")) != null && strReplace.length() >= 15) {
            int i3 = 0;
            for (int i4 = 0; i4 < strReplace.length(); i4++) {
                if (Character.isLetter(strReplace.charAt(i4))) {
                    i3++;
                }
            }
            if (i3 >= 5 && StringsKt___StringsKt.toSet(strReplace).size() >= 5) {
                z2 = true;
            }
        }
        if (button != null) {
            button.setEnabled(z2);
        }
        if (!z2 && (text = editText.getText()) != null && text.length() != 0) {
            string2 = gameActivity.getString(R.string.bug_report_desc_too_short, 15);
        }
        editText.setError(string2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final String d(Ref.ObjectRef objectRef, String str) {
        Integer next;
        View childAt;
        RadioGroup radioGroup = (RadioGroup) objectRef.element;
        if (radioGroup == null) {
            return str;
        }
        Iterator<Integer> it = RangesKt.until(0, radioGroup.getChildCount()).iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            childAt = radioGroup.getChildAt(next.intValue());
            Intrinsics.checkNotNull(childAt, "null cannot be cast to non-null type android.widget.RadioButton");
        } while (!((RadioButton) childAt).isChecked());
        Integer num = next;
        int iIntValue = num != null ? num.intValue() : 0;
        String[] strArr = f6343a;
        return (iIntValue < 0 || iIntValue >= 8) ? strArr[0] : strArr[iIntValue];
    }

    public static void e(final GameActivity gameActivity, final Game game, final d dVar, final c cVar, final boolean z2) {
        if (gameActivity.y(dVar)) {
            if (a(gameActivity)) {
                final int i3 = 1;
                new Thread(new Runnable() { // from class: y1.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        int longVersionCode;
                        final h hVar;
                        n nVarF;
                        Integer intOrNull;
                        switch (i3) {
                            case 0:
                                GameActivity gameActivity2 = gameActivity;
                                d dVar2 = dVar;
                                if (gameActivity2.y(dVar2)) {
                                    AbstractC0409s.b(gameActivity2, game, dVar2, cVar, z2);
                                }
                                break;
                            default:
                                final GameActivity ctx = gameActivity;
                                final d dVar3 = dVar;
                                if (ctx.y(dVar3)) {
                                    boolean z3 = false;
                                    try {
                                        PackageInfo packageInfo = ctx.getPackageManager().getPackageInfo(ctx.getPackageName(), 0);
                                        longVersionCode = Build.VERSION.SDK_INT >= 28 ? (int) packageInfo.getLongVersionCode() : packageInfo.versionCode;
                                    } catch (Exception unused) {
                                        longVersionCode = 0;
                                    }
                                    Intrinsics.checkNotNullParameter(ctx, "ctx");
                                    int iB = m.b(ctx);
                                    Pair pair = null;
                                    if (!StringsKt.isBlank("https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Patch/patch_manifest_v2.json")) {
                                        byte[] bArrB = a.f992a.b("https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Patch/patch_manifest_v2.json?t=" + System.currentTimeMillis(), 262144L);
                                        if (bArrB != null && (nVarF = m.f(bArrB)) != null && (intOrNull = StringsKt.toIntOrNull(nVarF.b)) != null) {
                                            pair = TuplesKt.to(intOrNull, Integer.valueOf(nVarF.f1461o));
                                        }
                                    }
                                    if (pair == null) {
                                        hVar = new h(-1, iB, false, false);
                                    } else {
                                        if (((Number) pair.getSecond()).intValue() <= longVersionCode && ((Number) pair.getFirst()).intValue() != iB) {
                                            z3 = true;
                                        }
                                        hVar = new h(((Number) pair.getFirst()).intValue(), iB, true, z3);
                                    }
                                    if (ctx.y(dVar3)) {
                                        final Game game2 = game;
                                        final c cVar2 = cVar;
                                        final boolean z4 = z2;
                                        ctx.runOnUiThread(new Runnable() { // from class: y1.r
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                GameActivity gameActivity3 = ctx;
                                                d dVar4 = dVar3;
                                                if (gameActivity3.y(dVar4)) {
                                                    if (!hVar.b) {
                                                        AbstractC0409s.b(gameActivity3, game2, dVar4, cVar2, z4);
                                                        return;
                                                    }
                                                    b bVar = new b(gameActivity3, 0);
                                                    C0240b c0240b = (C0240b) bVar.f4145c;
                                                    bVar.j(R.string.ota_update_title);
                                                    c0240b.f = c0240b.f4096a.getText(R.string.ota_update_message);
                                                    c0240b.f4105m = true;
                                                    bVar.h(R.string.ota_update_ok, new DialogInterfaceOnClickListenerC0392m(gameActivity3, dVar4, 1));
                                                    bVar.f(R.string.ota_update_cancel, new DialogInterfaceOnClickListenerC0377h(dVar4, 0));
                                                    c0240b.f4106n = new DialogInterfaceOnCancelListenerC0380i(0, dVar4);
                                                    bVar.e();
                                                }
                                            }
                                        });
                                        break;
                                    }
                                    break;
                                }
                                break;
                        }
                    }
                }).start();
            } else {
                final int i4 = 0;
                gameActivity.runOnUiThread(new Runnable() { // from class: y1.n
                    @Override // java.lang.Runnable
                    public final void run() {
                        int longVersionCode;
                        final h hVar;
                        n nVarF;
                        Integer intOrNull;
                        switch (i4) {
                            case 0:
                                GameActivity gameActivity2 = gameActivity;
                                d dVar2 = dVar;
                                if (gameActivity2.y(dVar2)) {
                                    AbstractC0409s.b(gameActivity2, game, dVar2, cVar, z2);
                                }
                                break;
                            default:
                                final GameActivity ctx = gameActivity;
                                final d dVar3 = dVar;
                                if (ctx.y(dVar3)) {
                                    boolean z3 = false;
                                    try {
                                        PackageInfo packageInfo = ctx.getPackageManager().getPackageInfo(ctx.getPackageName(), 0);
                                        longVersionCode = Build.VERSION.SDK_INT >= 28 ? (int) packageInfo.getLongVersionCode() : packageInfo.versionCode;
                                    } catch (Exception unused) {
                                        longVersionCode = 0;
                                    }
                                    Intrinsics.checkNotNullParameter(ctx, "ctx");
                                    int iB = m.b(ctx);
                                    Pair pair = null;
                                    if (!StringsKt.isBlank("https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Patch/patch_manifest_v2.json")) {
                                        byte[] bArrB = a.f992a.b("https://pub-5c8ab05667bd4a25a3ff4033246d4339.r2.dev/Patch/patch_manifest_v2.json?t=" + System.currentTimeMillis(), 262144L);
                                        if (bArrB != null && (nVarF = m.f(bArrB)) != null && (intOrNull = StringsKt.toIntOrNull(nVarF.b)) != null) {
                                            pair = TuplesKt.to(intOrNull, Integer.valueOf(nVarF.f1461o));
                                        }
                                    }
                                    if (pair == null) {
                                        hVar = new h(-1, iB, false, false);
                                    } else {
                                        if (((Number) pair.getSecond()).intValue() <= longVersionCode && ((Number) pair.getFirst()).intValue() != iB) {
                                            z3 = true;
                                        }
                                        hVar = new h(((Number) pair.getFirst()).intValue(), iB, true, z3);
                                    }
                                    if (ctx.y(dVar3)) {
                                        final Game game2 = game;
                                        final c cVar2 = cVar;
                                        final boolean z4 = z2;
                                        ctx.runOnUiThread(new Runnable() { // from class: y1.r
                                            @Override // java.lang.Runnable
                                            public final void run() {
                                                GameActivity gameActivity3 = ctx;
                                                d dVar4 = dVar3;
                                                if (gameActivity3.y(dVar4)) {
                                                    if (!hVar.b) {
                                                        AbstractC0409s.b(gameActivity3, game2, dVar4, cVar2, z4);
                                                        return;
                                                    }
                                                    b bVar = new b(gameActivity3, 0);
                                                    C0240b c0240b = (C0240b) bVar.f4145c;
                                                    bVar.j(R.string.ota_update_title);
                                                    c0240b.f = c0240b.f4096a.getText(R.string.ota_update_message);
                                                    c0240b.f4105m = true;
                                                    bVar.h(R.string.ota_update_ok, new DialogInterfaceOnClickListenerC0392m(gameActivity3, dVar4, 1));
                                                    bVar.f(R.string.ota_update_cancel, new DialogInterfaceOnClickListenerC0377h(dVar4, 0));
                                                    c0240b.f4106n = new DialogInterfaceOnCancelListenerC0380i(0, dVar4);
                                                    bVar.e();
                                                }
                                            }
                                        });
                                        break;
                                    }
                                    break;
                                }
                                break;
                        }
                    }
                });
            }
        }
    }
}
