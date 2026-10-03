package com.minhub.gamehub.game;

import A1.C0013d;
import A1.C0035p;
import A1.C0036q;
import A1.F;
import A1.r;
import A1.v0;
import B1.z;
import C1.C0074i1;
import C1.C0096q;
import C1.C0114w0;
import C1.C0117x0;
import C1.J;
import C1.Z0;
import C1.g2;
import G1.g;
import G1.n;
import G1.p;
import G1.q;
import G1.s;
import J1.a;
import N1.w;
import S1.b;
import S1.c;
import V1.H;
import android.animation.AnimatorSet;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Process;
import android.provider.MediaStore;
import android.util.Base64;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import android.widget.Toast;
import androidx.core.util.Pair;
import androidx.core.view.InputDeviceCompat;
import androidx.core.view.ViewCompat;
import androidx.lifecycle.LifecycleOwnerKt;
import androidx.lifecycle.ViewModelLazy;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.data.GameKt;
import com.minhub.gamehub.data.SaveRepository;
import com.minhub.gamehub.game.GameActivity;
import com.minhub.gamehub.gamepad.GamepadOverlay;
import com.minhub.gamehub.hub.catalog.h;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.RegexOption;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.json.JSONException;
import org.json.JSONObject;
import p024j.C0269h;
import p058w1.d;
import p064y1.A;
import p064y1.AbstractC0369e0;
import p064y1.AbstractC0378h0;
import p064y1.B;
import p064y1.C0363c0;
import p064y1.C0366d0;
import p064y1.C0375g0;
import p064y1.C0385j1;
import p064y1.C0400o1;
import p064y1.C0402p0;
import p064y1.C0414t1;
import p064y1.C0415u;
import p064y1.C0418v;
import p064y1.C0427y;
import p064y1.C0430z;
import p064y1.K;
import p064y1.L1;
import p064y1.N;
import p064y1.O;
import p064y1.P;
import p064y1.V;
import p064y1.ViewOnClickListenerC0421w;
import p064y1.X;
import p064y1.Y;
import p064y1.Z;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/minhub/gamehub/game/GameActivity;", "LS1/c;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameActivity.kt\ncom/minhub/gamehub/game/GameActivity\n+ 2 ActivityViewModelLazy.kt\nandroidx/activity/ActivityViewModelLazyKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,1659:1\n75#2,13:1660\n1#3:1673\n295#4,2:1674\n*S KotlinDebug\n*F\n+ 1 GameActivity.kt\ncom/minhub/gamehub/game/GameActivity\n*L\n95#1:1660,13\n168#1:1674,2\n*E\n"})
public final class GameActivity extends c {

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public static final /* synthetic */ int f3676L = 0;

    /* JADX INFO: renamed from: B, reason: collision with root package name */
    public String f3678B;

    /* JADX INFO: renamed from: C, reason: collision with root package name */
    public boolean f3679C;

    /* JADX INFO: renamed from: D, reason: collision with root package name */
    public boolean f3680D;

    /* JADX INFO: renamed from: E, reason: collision with root package name */
    public boolean f3681E;

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public boolean f3682F;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public v0 f3684H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public File f3685I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f3686J;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public d f3687e;
    public ImageView f;
    public ImageView g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public AnimatorSet f3688h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public AnimatorSet f3689i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public AnimatorSet f3690j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f3692l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public C0414t1 f3693m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public volatile Q1.d f3694n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public Game f3695o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public long f3696p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public boolean f3699s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f3700t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public C0385j1 f3701u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public C0269h f3702v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public w f3703w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public SaveRepository f3704x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public g2 f3705y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public z f3706z;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final ViewModelLazy f3691k = new ViewModelLazy(Reflection.getOrCreateKotlinClass(Z0.class), new P(this, 0), new O(this), new P(this, 1));

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public C0366d0 f3697q = new C0366d0(false, false);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public C0400o1 f3698r = new C0400o1();

    /* JADX INFO: renamed from: A, reason: collision with root package name */
    public List f3677A = CollectionsKt.emptyList();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f3683G = 8;
    public final int K = 2;

    public static final void p(File file, C0402p0 c0402p0, GameActivity gameActivity, String str, Game game) {
        Object objM9constructorimpl;
        byte[] bArr;
        if (!file.isFile() || file.lastModified() < gameActivity.f3696p) {
            file = null;
        }
        if (file != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(FilesKt.readBytes(file));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m15isFailureimpl(objM9constructorimpl)) {
                objM9constructorimpl = null;
            }
            bArr = (byte[]) objM9constructorimpl;
        } else {
            bArr = null;
        }
        c0402p0.invoke(bArr != null ? s(str, GameKt.getEngineEnum(game).name(), 998, null, bArr) : null);
    }

    public static final void q(final int i3, final long j2, final Handler handler, final Game game, final GameActivity gameActivity, final File file, final File file2, final String str, final C0402p0 c0402p0) {
        Object objM9constructorimpl;
        if (!file.exists() || file.lastModified() < j2 - ((long) 1000)) {
            if (i3 >= 8) {
                p(file2, c0402p0, gameActivity, str, game);
                return;
            } else {
                handler.postDelayed(new Runnable() { // from class: y1.H
                    @Override // java.lang.Runnable
                    public final void run() {
                        GameActivity.q(i3 + 1, j2, handler, game, gameActivity, file, file2, str, c0402p0);
                    }
                }, 500L);
                return;
            }
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(FilesKt.readBytes(file));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = null;
        }
        byte[] bArr = (byte[]) objM9constructorimpl;
        c0402p0.invoke(bArr != null ? s(str, GameKt.getEngineEnum(game).name(), 998, null, bArr) : null);
    }

    public static final void r(final int i3, final Handler handler, final GameActivity gameActivity, final String str, final C0402p0 c0402p0) {
        String string = gameActivity.getSharedPreferences("tyrano_save", 0).getString(str, null);
        if (string != null && !StringsKt.isBlank(string)) {
            byte[] bytes = string.getBytes(Charsets.UTF_8);
            Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
            c0402p0.invoke(s("bug-save.json", "TYRANO", 0, str, bytes));
        } else if (i3 >= 8) {
            c0402p0.invoke(null);
        } else {
            handler.postDelayed(new Runnable() { // from class: y1.J
                @Override // java.lang.Runnable
                public final void run() {
                    GameActivity.r(i3 + 1, handler, gameActivity, str, c0402p0);
                }
            }, 500L);
        }
    }

    public static final JSONObject s(String str, String str2, int i3, String str3, byte[] bArr) throws JSONException {
        if (bArr.length == 0 || bArr.length > 524288) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("engine", str2);
        jSONObject.put("fileName", str);
        jSONObject.put("slot", i3);
        if (str3 != null) {
            jSONObject.put("key", str3);
        }
        jSONObject.put("dataBase64", Base64.encodeToString(bArr, 2));
        return jSONObject;
    }

    public static String z(boolean z2) {
        return StringsKt.trimIndent("\n            (function(){\n              var ON = " + (z2 ? "true" : "false") + ";\n              // Cờ TOÀN CỤC đọc được từ ngoài (window.__mhFx.on) để bản vá OTA \"plugin vá\n              // lag\" cũng gate theo cùng toggle này — xem otaOverrideScript / bundle OTA.\n              if (!window.__mhFx) {\n                window.__mhFx = { on:false, set:function(v){ this.on = !!v; } };\n              }\n              var FX = window.__mhFx;\n              if (window.__mhFxHooked) { FX.set(ON); return; }\n              window.__mhFxHooked = true;\n              function once(o,k){ if(!o||o['__mhfx_'+k]) return false; o['__mhfx_'+k]=true; return true; }\n\n              function patchDur(K){\n                if (!K || typeof K.prototype.setupDuration!=='function' || !once(K.prototype,'dur')) return;\n                var o = K.prototype.setupDuration;\n                K.prototype.setupDuration = function(){ o.call(this); if (FX.on) this._duration = 1; };\n              }\n              patchDur(window.Sprite_Animation);\n              patchDur(window.Sprite_AnimationMV);\n\n              if (window.Sprite_Animation && typeof Sprite_Animation.prototype.updateEffectGeometry==='function' && once(Sprite_Animation.prototype,'mz')){\n                var u = Sprite_Animation.prototype.update;\n                Sprite_Animation.prototype.update = function(){\n                  u.call(this);\n                  if (FX.on && this._handle && this._handle.setSpeed && !this.__mhSped){ this.__mhSped = true; try{ this._handle.setSpeed(8); }catch(e){} }\n                };\n              }\n\n              if (window.Game_Screen && once(Game_Screen.prototype,'flash')){\n                var sf = Game_Screen.prototype.startFlash;\n                Game_Screen.prototype.startFlash = function(c,d){ if (FX.on) return; sf.call(this,c,d); };\n              }\n\n              if (window.Scene_Base && once(Scene_Base.prototype,'fade')){\n                ['startFadeIn','startFadeOut'].forEach(function(m){\n                  var o = Scene_Base.prototype[m];\n                  if (typeof o!=='function') return;\n                  Scene_Base.prototype[m] = function(dur,white){ o.call(this, FX.on ? 1 : dur, white); };\n                });\n              }\n\n              if (window.Scene_Map && typeof Scene_Map.prototype.updateEncounterEffect==='function' && once(Scene_Map.prototype,'enc')){\n                var e = Scene_Map.prototype.updateEncounterEffect;\n                Scene_Map.prototype.updateEncounterEffect = function(){\n                  if (FX.on && this._encounterEffectDuration > 1) this._encounterEffectDuration = 1;\n                  e.call(this);\n                };\n              }\n\n              // Plugin Foreground.js (Sasuke Kannazuki): ẩn lớp khói/sương foreground\n              // cuộn (<fgName:...>) khi bật. Baked-in cho 2 plugin đã biết; plugin MỚI\n              // về sau đẩy qua OTA bundle (cùng gate FX.on).\n              if (window.Spriteset_Map && typeof Spriteset_Map.prototype.updateForeground==='function' && once(Spriteset_Map.prototype,'fg')){\n                var ufg = Spriteset_Map.prototype.updateForeground;\n                Spriteset_Map.prototype.updateForeground = function(){\n                  ufg.call(this);\n                  if (this._foreground) this._foreground.visible = !FX.on;\n                };\n              }\n\n              // Plugin ParallaxLayerMap.js (triacontane): ẩn lớp parallax phụ khi bật.\n              if (window.Sprite_MapLayer && typeof Sprite_MapLayer.prototype.updateVisibility==='function' && once(Sprite_MapLayer.prototype,'plm')){\n                var uvl = Sprite_MapLayer.prototype.updateVisibility;\n                Sprite_MapLayer.prototype.updateVisibility = function(){\n                  uvl.call(this);\n                  if (FX.on) this.visible = false;\n                };\n              }\n\n              // Plugin TerraxLighting.js: a full-screen black lightmask (with radial gradient\n              // \"holes\" for lights) is BLENDED over the whole map every frame. On LDPlayer's\n              // emulated GPU (GLESv2_enc) this full-screen alpha blend is a major overdraw cost\n              // — throttling the redraw isn't enough, the layer must not be DRAWN at all. The\n              // mask is private (plugin IIFE) but its instance is spriteset._lightmask: hide it\n              // (kills the overdraw → fully-lit map) AND skip its per-frame recompute when\n              // reduce-FX is on. Restored on toggle off.\n              if (window.Spriteset_Map && typeof Spriteset_Map.prototype.update==='function' && once(Spriteset_Map.prototype,'terrax')){\n                var _ssu = Spriteset_Map.prototype.update;\n                Spriteset_Map.prototype.update = function(){\n                  var lm = this._lightmask;\n                  if (lm){\n                    lm.visible = !FX.on;\n                    if (typeof lm.update==='function' && !lm.__mhThrottled){\n                      lm.__mhThrottled = true;\n                      var _lmu = lm.update;\n                      lm.update = function(){ if (FX.on) return; _lmu.call(this); };\n                    }\n                  }\n                  _ssu.call(this);\n                };\n              }\n\n              // Plugin MOG_CharacterMotion.js: per-frame visual effects (breathing/swing/\n              // float/shake/ghost) applied to EVERY character sprite. Purely cosmetic — skip\n              // when reduce-FX is on. Base Sprite_Character.update still runs (sprites render).\n              if (window.Sprite_Character && typeof Sprite_Character.prototype.updateSprEffect==='function' && once(Sprite_Character.prototype,'mogcm')){\n                var _use = Sprite_Character.prototype.updateSprEffect;\n                Sprite_Character.prototype.updateSprEffect = function(){\n                  if (FX.on) return;\n                  return _use.apply(this, arguments);\n                };\n              }\n\n              // Plugin BMSP_MapFog.js: scrolling fog TilingSprites. Hide the fog containers +\n              // skip the per-frame scroll/texture work when reduce-FX is on.\n              if (window.Game_Map && typeof Game_Map.prototype.updateFogs==='function' && once(Game_Map.prototype,'bmspfog')){\n                var _gmf = Game_Map.prototype.updateFogs;\n                Game_Map.prototype.updateFogs = function(){ if (FX.on) return; return _gmf.apply(this, arguments); };\n              }\n              if (window.Spriteset_Map && typeof Spriteset_Map.prototype.updateFogs==='function' && once(Spriteset_Map.prototype,'bmspfogspr')){\n                var _smf = Spriteset_Map.prototype.updateFogs;\n                Spriteset_Map.prototype.updateFogs = function(){\n                  if (this._fogContainer){ for (var z=0; z<this._fogContainer.length; z++){ if (this._fogContainer[z]) this._fogContainer[z].visible = !FX.on; } }\n                  if (FX.on) return;\n                  return _smf.apply(this, arguments);\n                };\n              }\n\n              // Weather (native MV Weather class, used by BOTH map Spriteset_Map._weather and —\n              // via KZR_WeatherControl — battle Spriteset_Battle._weather). Rain/snow/blizzard\n              // spawn dozens of particle sprites updated + drawn every frame: very heavy on the\n              // emulator. When reduce-FX is on, hide the weather layer (skips GPU draw) and skip\n              // its per-frame particle work entirely; restore on toggle off.\n              if (window.Weather && typeof Weather.prototype.update==='function' && once(Weather.prototype,'weather')){\n                var _wu = Weather.prototype.update;\n                Weather.prototype.update = function(){\n                  if (FX.on){ this.visible = false; return; }\n                  this.visible = true;\n                  return _wu.apply(this, arguments);\n                };\n                try { window.MinHub && window.MinHub.log && window.MinHub.log('[ReduceFx] Weather hook installed'); } catch(e){}\n              }\n\n              // Plugins BattlebackScroll.js / BattlebackScroll2.js: continuously scroll the\n              // battleback1/2 images (the drifting clouds/fog over the battle background) by\n              // advancing _backNSprite.origin every frame. Freeze that scroll when reduce-FX is\n              // on — capture the origin before the (plugin-wrapped) updateBattleback runs and\n              // restore it after, so the clouds stop moving without shifting their position.\n              if (window.Spriteset_Battle && typeof Spriteset_Battle.prototype.updateBattleback==='function' && once(Spriteset_Battle.prototype,'bbscroll')){\n                var _ub = Spriteset_Battle.prototype.updateBattleback;\n                Spriteset_Battle.prototype.updateBattleback = function(){\n                  if (!FX.on) return _ub.apply(this, arguments);\n                  var b1 = this._back1Sprite, b2 = this._back2Sprite;\n                  var x1 = b1 && b1.origin && b1.origin.x, y1 = b1 && b1.origin && b1.origin.y;\n                  var x2 = b2 && b2.origin && b2.origin.x, y2 = b2 && b2.origin && b2.origin.y;\n                  var r = _ub.apply(this, arguments);\n                  if (b1 && b1.origin){ b1.origin.x = x1; b1.origin.y = y1; }\n                  if (b2 && b2.origin){ b2.origin.x = x2; b2.origin.y = y2; }\n                  return r;\n                };\n              }\n\n              // Plugin BattleSplashFade.js: replaces the battle-start fade with a \"splash\" that\n              // shatters the screen snapshot into many flying pieces (makeBreakSprites) — a big\n              // sprite burst that lags hard exactly at combat start. It overrides Scene_Battle\n              // start/updateFade; when reduce-FX is on, route those through the engine's plain\n              // Scene_Base fade instead so no shatter pieces are ever created.\n              if (window.Scene_Battle && window.Scene_Base && once(Scene_Battle.prototype,'splash')){\n                ['startFadeIn','startFadeOut','updateFade'].forEach(function(m){\n                  var _o = Scene_Battle.prototype[m];\n                  var _base = Scene_Base.prototype[m];\n                  if (typeof _o!=='function' || typeof _base!=='function') return;\n                  Scene_Battle.prototype[m] = function(){\n                    if (FX.on) return _base.apply(this, arguments);\n                    return _o.apply(this, arguments);\n                  };\n                });\n              }\n\n              // Plugins MOG_TitleParticles.js / MOG_TitleLayers.js: animated particles + moving\n              // background layers on the title screen. Freeze their per-frame animation when\n              // reduce-FX is on (the title art stays, just stops animating/burning CPU+GPU).\n              if (window.TitleParticles && typeof TitleParticles.prototype.update==='function' && once(TitleParticles.prototype,'titlep')){\n                var _tp = TitleParticles.prototype.update;\n                TitleParticles.prototype.update = function(){ if (FX.on) return; return _tp.apply(this, arguments); };\n              }\n              if (window.TitleBackground && typeof TitleBackground.prototype.update==='function' && once(TitleBackground.prototype,'titlebg')){\n                var _tb = TitleBackground.prototype.update;\n                TitleBackground.prototype.update = function(){ if (FX.on) return; return _tb.apply(this, arguments); };\n              }\n\n              // Confirmation log so we can verify in logcat which heavy hooks were wired and the\n              // current toggle state.\n              try {\n                window.MinHub && window.MinHub.log && window.MinHub.log('[ReduceFx] applied ON=' + ON +\n                  ' weather=' + (typeof (window.Weather && Weather.prototype.update) === 'function') +\n                  ' terrax=' + !!(window.Spriteset_Map) +\n                  ' mogcm=' + (typeof (window.Sprite_Character && Sprite_Character.prototype.updateSprEffect) === 'function') +\n                  ' fog=' + (typeof (window.Game_Map && Game_Map.prototype.updateFogs) === 'function') +\n                  ' splash=' + !!(window.Scene_Battle && window.Scene_Base) +\n                  ' titleP=' + (typeof (window.TitleParticles && TitleParticles.prototype.update) === 'function') +\n                  ' titleBg=' + (typeof (window.TitleBackground && TitleBackground.prototype.update) === 'function'));\n              } catch(e){}\n\n              FX.set(ON);\n            })();\n        ");
    }

    public final boolean A(Bitmap bitmap, String str) {
        ContentResolver contentResolver = getContentResolver();
        try {
            if (Build.VERSION.SDK_INT >= 29) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("_display_name", str);
                contentValues.put("mime_type", "image/png");
                contentValues.put("relative_path", Environment.DIRECTORY_PICTURES + "/MinHub");
                contentValues.put("is_pending", (Integer) 1);
                Uri uriInsert = contentResolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues);
                if (uriInsert == null) {
                    return false;
                }
                OutputStream outputStreamOpenOutputStream = contentResolver.openOutputStream(uriInsert);
                if (outputStreamOpenOutputStream != null) {
                    try {
                        bitmap.compress(Bitmap.CompressFormat.PNG, 100, outputStreamOpenOutputStream);
                        CloseableKt.closeFinally(outputStreamOpenOutputStream, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            CloseableKt.closeFinally(outputStreamOpenOutputStream, th);
                            throw th2;
                        }
                    }
                }
                contentValues.clear();
                contentValues.put("is_pending", (Integer) 0);
                contentResolver.update(uriInsert, contentValues, null, null);
            } else {
                File file = new File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "MinHub");
                if (!file.exists()) {
                    file.mkdirs();
                }
                File file2 = new File(file, str);
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                try {
                    bitmap.compress(Bitmap.CompressFormat.PNG, 100, fileOutputStream);
                    CloseableKt.closeFinally(fileOutputStream, null);
                    MediaScannerConnection.scanFile(this, new String[]{file2.getAbsolutePath()}, new String[]{"image/png"}, null);
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        CloseableKt.closeFinally(fileOutputStream, th3);
                        throw th4;
                    }
                }
            }
            return true;
        } catch (Throwable th5) {
            Log.e("MinHub", "saveBitmap failed", th5);
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:41:0x00bf  */
    public final void B(String v2) {
        int i3;
        int i4;
        if (Intrinsics.areEqual(S1.d.g(this), v2)) {
            return;
        }
        Intrinsics.checkNotNullParameter(this, "<this>");
        Intrinsics.checkNotNullParameter(v2, "v");
        getSharedPreferences("minhub_prefs", 0).edit().putString("resolution", v2).apply();
        F();
        if (Intrinsics.areEqual(v2, "device-width")) {
            u().f5707q0.evaluateJavascript("(function(){\n  var vp = document.querySelector('meta[name=\"viewport\"]');\n  var content = 'width=device-width, initial-scale=1.0, minimum-scale=0.1, maximum-scale=10';\n  if (vp) { vp.setAttribute('content', content); }\n  else {\n    vp = document.createElement('meta');\n    vp.name = 'viewport';\n    vp.content = content;\n    document.head.insertBefore(vp, document.head.firstChild);\n  }\n  window.dispatchEvent(new Event('resize'));\n})();", null);
        } else {
            int iHashCode = v2.hashCode();
            if (iHashCode != -1719904874) {
                if (iHashCode != 642032940) {
                    if (iHashCode == 802059049 && v2.equals("1920x1080")) {
                        i3 = 1920;
                        u().f5707q0.evaluateJavascript(StringsKt.trimIndent("\n            (function(){\n              var targetW = " + i3 + ";\n              var deviceW = window.innerWidth || document.documentElement.clientWidth || screen.width;\n              var scale = Math.min(1, deviceW / targetW);\n              var content = 'width=' + targetW + ', initial-scale=' + scale + ', minimum-scale=0.1, maximum-scale=10';\n              var vp = document.querySelector('meta[name=\"viewport\"]');\n              if (vp) { vp.setAttribute('content', content); }\n              else {\n                vp = document.createElement('meta');\n                vp.name = 'viewport';\n                vp.content = content;\n                document.head.insertBefore(vp, document.head.firstChild);\n              }\n              window.dispatchEvent(new Event('resize'));\n            })();\n        "), null);
                    }
                } else if (v2.equals("960x540")) {
                    i3 = 960;
                    u().f5707q0.evaluateJavascript(StringsKt.trimIndent("\n            (function(){\n              var targetW = " + i3 + ";\n              var deviceW = window.innerWidth || document.documentElement.clientWidth || screen.width;\n              var scale = Math.min(1, deviceW / targetW);\n              var content = 'width=' + targetW + ', initial-scale=' + scale + ', minimum-scale=0.1, maximum-scale=10';\n              var vp = document.querySelector('meta[name=\"viewport\"]');\n              if (vp) { vp.setAttribute('content', content); }\n              else {\n                vp = document.createElement('meta');\n                vp.name = 'viewport';\n                vp.content = content;\n                document.head.insertBefore(vp, document.head.firstChild);\n              }\n              window.dispatchEvent(new Event('resize'));\n            })();\n        "), null);
                }
            } else if (v2.equals("1280x720")) {
                i3 = 1280;
                u().f5707q0.evaluateJavascript(StringsKt.trimIndent("\n            (function(){\n              var targetW = " + i3 + ";\n              var deviceW = window.innerWidth || document.documentElement.clientWidth || screen.width;\n              var scale = Math.min(1, deviceW / targetW);\n              var content = 'width=' + targetW + ', initial-scale=' + scale + ', minimum-scale=0.1, maximum-scale=10';\n              var vp = document.querySelector('meta[name=\"viewport\"]');\n              if (vp) { vp.setAttribute('content', content); }\n              else {\n                vp = document.createElement('meta');\n                vp.name = 'viewport';\n                vp.content = content;\n                document.head.insertBefore(vp, document.head.firstChild);\n              }\n              window.dispatchEvent(new Event('resize'));\n            })();\n        "), null);
            }
        }
        int iHashCode2 = v2.hashCode();
        if (iHashCode2 != -1719904874) {
            if (iHashCode2 != 642032940) {
                if (iHashCode2 == 802059049 && v2.equals("1920x1080")) {
                    i4 = R.string.menu_resolution_1080p;
                } else {
                    i4 = R.string.menu_resolution_device;
                }
            } else if (v2.equals("960x540")) {
                i4 = R.string.menu_resolution_540p;
            } else {
                i4 = R.string.menu_resolution_device;
            }
        } else if (v2.equals("1280x720")) {
            i4 = R.string.menu_resolution_720p;
        } else {
            i4 = R.string.menu_resolution_device;
        }
        Toast.makeText(this, getString(R.string.toast_applied, getString(i4)), 0).show();
    }

    /* JADX WARN: Code duplicated, block: B:104:0x02e9  */
    /* JADX WARN: Code duplicated, block: B:181:0x051f  */
    /* JADX WARN: Code duplicated, block: B:217:0x0690  */
    /* JADX WARN: Code duplicated, block: B:251:0x07f0  */
    /* JADX WARN: Code duplicated, block: B:254:0x07fd  */
    /* JADX WARN: Code duplicated, block: B:257:0x0802  */
    /* JADX WARN: Code duplicated, block: B:258:0x081d  */
    /* JADX WARN: Code duplicated, block: B:292:0x07d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:257:0x0802, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v102 */
    /* JADX WARN: Type inference failed for: r0v137, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v140 */
    /* JADX WARN: Type inference failed for: r0v141 */
    /* JADX WARN: Type inference failed for: r0v161 */
    /* JADX WARN: Type inference failed for: r0v162 */
    /* JADX WARN: Type inference failed for: r0v163 */
    /* JADX WARN: Type inference failed for: r0v164 */
    /* JADX WARN: Type inference failed for: r0v82 */
    /* JADX WARN: Type inference failed for: r0v83, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v86, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r0v99, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r11v16, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r11v31 */
    /* JADX WARN: Type inference failed for: r11v37 */
    /* JADX WARN: Type inference failed for: r31v0 */
    /* JADX WARN: Type inference failed for: r31v1, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r31v2 */
    /* JADX WARN: Type inference failed for: r33v0 */
    /* JADX WARN: Type inference failed for: r33v1 */
    /* JADX WARN: Type inference failed for: r33v2, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r33v3 */
    /* JADX WARN: Type inference failed for: r34v0 */
    /* JADX WARN: Type inference failed for: r34v1, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r34v2 */
    /* JADX WARN: Type inference failed for: r4v22 */
    /* JADX WARN: Type inference failed for: r4v23, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v24 */
    /* JADX WARN: Type inference failed for: r4v25, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r4v53 */
    /* JADX WARN: Type inference failed for: r4v54 */
    /* JADX WARN: Type inference failed for: r5v18, types: [kotlin.coroutines.Continuation] */
    public final void C(Game game) throws IOException {
        WebView webView;
        Object obj;
        Object obj2;
        Object objM9constructorimpl;
        Object obj3;
        Object obj4;
        ?? r31;
        ?? r11;
        int i3;
        b bVar;
        ?? r33;
        String absolutePath;
        Z z2;
        ?? A2;
        ?? B2;
        String str;
        String strM;
        String indexHtml;
        File file;
        ?? r2;
        String str2;
        Object objM9constructorimpl2;
        Throwable thM12exceptionOrNullimpl;
        File file2;
        String strM2;
        String strH;
        ?? r3;
        File file3;
        int i4;
        GameActivity context = this;
        Q1.d dVar = context.f3694n;
        if (dVar == null) {
            return;
        }
        WebView wv = context.u().f5707q0;
        Intrinsics.checkNotNullExpressionValue(wv, "webView");
        Set set = S1.d.f2060a;
        Intrinsics.checkNotNullParameter(context, "ctx");
        s snapshot = S1.d.t(S1.d.s(context).getString("utilities_json", "{}"));
        GameEngine engine = GameEngine.INSTANCE.fromString(game.getEngine());
        String strI = S1.d.i(context);
        boolean zM = S1.d.m(context);
        Intrinsics.checkNotNullParameter(engine, "engine");
        int i5 = 0;
        int i6 = 1;
        boolean z3 = (!zM || engine == GameEngine.TYRANO || engine == GameEngine.BROWSE) ? false : true;
        String gamePath = game.getGamePath();
        String str3 = !StringsKt.isBlank(gamePath) ? gamePath : null;
        b bVarK = str3 != null ? com.bumptech.glide.c.K(new File(str3)) : null;
        V v2 = bVarK != null ? new V(bVarK.f2056a, engine) : null;
        GamepadOverlay gamepadOverlay = context.u().K;
        Intrinsics.checkNotNullParameter(wv, "wv");
        gamepadOverlay.f3737c = wv;
        WebSettings settings = wv.getSettings();
        Intrinsics.checkNotNullExpressionValue(settings, "getSettings(...)");
        Intrinsics.checkNotNullParameter(settings, "settings");
        Intrinsics.checkNotNullParameter(engine, "engine");
        settings.setJavaScriptEnabled(true);
        settings.setDomStorageEnabled(true);
        settings.setAllowFileAccess(true);
        settings.setAllowContentAccess(true);
        settings.setAllowFileAccessFromFileURLs(true);
        settings.setAllowUniversalAccessFromFileURLs(z3);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setMixedContentMode(0);
        settings.setCacheMode(-1);
        settings.setMinimumFontSize(1);
        settings.setMinimumLogicalFontSize(1);
        int i7 = AbstractC0378h0.f6240a[engine.ordinal()];
        int i8 = 2;
        if (i7 == 1) {
            settings.setSupportZoom(true);
            settings.setBuiltInZoomControls(true);
            settings.setDisplayZoomControls(false);
            settings.setUseWideViewPort(true);
            settings.setLoadWithOverviewMode(true);
        } else if (i7 != 2) {
            settings.setSupportZoom(false);
        } else {
            settings.setSupportZoom(false);
            settings.setUseWideViewPort(true);
            settings.setLoadWithOverviewMode(true);
        }
        if (Build.VERSION.SDK_INT >= 26) {
            wv.setRendererPriorityPolicy(2, false);
        }
        Intrinsics.checkNotNullParameter(context, "<this>");
        int i9 = S1.d.s(context).getInt("mv_mz_font_size", 0);
        C0430z c0430z = new C0430z(context, dVar, i5);
        C0036q c0036q = new C0036q(19);
        b bVar2 = bVarK;
        C0430z c0430z2 = new C0430z(context, dVar, i6);
        C0427y c0427y = new C0427y(context, dVar, i8);
        C0427y c0427y2 = new C0427y(context, dVar, 3);
        r rVar = new r(context, dVar, wv, 9);
        context.f3693m = new C0414t1(context, game, snapshot, strI, i9, c0430z, c0036q, c0430z2, c0427y, c0427y2, rVar, new A(context, game, dVar), new B(context, dVar, wv), dVar);
        Intrinsics.checkNotNullParameter(engine, "engine");
        if (engine != GameEngine.BROWSE) {
            C0414t1 c0414t1 = context.f3693m;
            Intrinsics.checkNotNull(c0414t1);
            webView = wv;
            webView.addJavascriptInterface(c0414t1, "MinHub");
            GamepadOverlay gamepadOverlay2 = context.u().K;
            Intrinsics.checkNotNullExpressionValue(gamepadOverlay2, "gamepadOverlay");
            context = this;
            webView.addJavascriptInterface(new p050t1.b(gamepadOverlay2, new C0096q(1, this, GameActivity.class, "runOnUiThread", "runOnUiThread(Ljava/lang/Runnable;)V", 0, 3)), "MHAdelBridge");
            obj = gamepadOverlay2;
        } else {
            webView = wv;
            obj = rVar;
        }
        Intrinsics.checkNotNullParameter(engine, "engine");
        if (engine == GameEngine.TYRANO) {
            webView.addJavascriptInterface(new a(context), "appJsInterface");
        }
        new h(14);
        C0363c0 c0363c0 = new C0363c0();
        C0096q c0096q = v2 != null ? new C0096q(1, v2, V.class, "interceptPayload", "interceptPayload$app_release(Ljava/lang/String;)Lcom/minhub/gamehub/game/InterceptedGameAsset;", 0, 2) : null;
        Intrinsics.checkNotNullParameter(context, "context");
        Y.a aVar = new Y.a(new Y.a(context));
        ArrayList arrayList = new ArrayList();
        arrayList.add(Pair.create("/cheat/", aVar));
        ArrayList arrayList2 = new ArrayList();
        int size = arrayList.size();
        int i10 = 0;
        while (i10 < size) {
            Object obj5 = arrayList.get(i10);
            i10++;
            Pair pair = (Pair) obj5;
            arrayList2.add(new Y.b((String) pair.first, (Y.a) pair.second));
        }
        Y.c cVar = new Y.c(arrayList2);
        Intrinsics.checkNotNullExpressionValue(cVar, "build(...)");
        int i11 = 1;
        C0013d c0013d = new C0013d(new kotlin.coroutines.a(i11, cVar, aVar), new C0035p(17, aVar));
        Intrinsics.checkNotNullParameter(engine, "engine");
        boolean z4 = engine == GameEngine.TYRANO;
        C0363c0 c0363c1 = C0363c0.b;
        Context context2 = context.getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(context2, "getApplicationContext(...)");
        Intrinsics.checkNotNullParameter(context2, "context");
        byte[] bArr = C0363c0.f6202c;
        if (bArr != null) {
            r31 = bArr;
            r11 = 0;
        } else {
            synchronized (c0363c1) {
                try {
                    byte[] bArr2 = C0363c0.f6202c;
                    if (bArr2 == null) {
                        try {
                            try {
                                Result.Companion companion = Result.INSTANCE;
                                InputStream inputStreamOpen = context2.getAssets().open("live2d/live2dcubismcore_4_2_4.min.js");
                                try {
                                    Intrinsics.checkNotNull(inputStreamOpen);
                                    byte[] bytes = ByteStreamsKt.readBytes(inputStreamOpen);
                                    obj2 = null;
                                    CloseableKt.closeFinally(inputStreamOpen, null);
                                    byte[] bytes2 = "\nwindow.LIVE2DCUBISMCORE = window.LIVE2DCUBISMCORE || window.Live2DCubismCore;\n".getBytes(Charsets.UTF_8);
                                    Intrinsics.checkNotNullExpressionValue(bytes2, "getBytes(...)");
                                    objM9constructorimpl = Result.m9constructorimpl(ArraysKt.plus(bytes, bytes2));
                                    boolean zM15isFailureimpl = Result.m15isFailureimpl(objM9constructorimpl);
                                    Object obj6 = objM9constructorimpl;
                                    if (zM15isFailureimpl) {
                                        obj6 = obj2;
                                    }
                                    byte[] bArr3 = (byte[]) obj6;
                                    if (bArr3 != null) {
                                        C0363c0.f6202c = bArr3;
                                        obj3 = bArr3;
                                        obj4 = obj2;
                                    } else {
                                        obj3 = obj2;
                                        obj4 = obj2;
                                    }
                                } catch (Throwable th) {
                                    obj = null;
                                    obj = null;
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        CloseableKt.closeFinally(inputStreamOpen, th);
                                        throw th2;
                                    }
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                obj = null;
                                Result.Companion companion2 = Result.INSTANCE;
                                objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                                obj2 = obj;
                            }
                        } catch (Throwable th4) {
                            th = th4;
                            Result.Companion companion3 = Result.INSTANCE;
                            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                            obj2 = obj;
                        }
                    } else {
                        obj4 = null;
                        obj3 = bArr2;
                    }
                } catch (Throwable th5) {
                    throw th5;
                }
            }
            r31 = obj3;
            r11 = obj4;
        }
        GameEngine gameEngine = GameEngine.HTML;
        if (engine == gameEngine) {
            Set set2 = S1.d.f2060a;
            Intrinsics.checkNotNullParameter(context, "<this>");
            String strG = S1.d.g(context);
            int iHashCode = strG.hashCode();
            if (iHashCode != -1719904874) {
                if (iHashCode != 642032940) {
                    if (iHashCode == 802059049 && strG.equals("1920x1080")) {
                        i4 = 1920;
                    } else {
                        i4 = 0;
                    }
                } else if (strG.equals("960x540")) {
                    i4 = 960;
                } else {
                    i4 = 0;
                }
            } else if (strG.equals("1280x720")) {
                i4 = 1280;
            } else {
                i4 = 0;
            }
            i3 = i4;
        } else {
            i3 = 0;
        }
        if (engine == GameEngine.RENPY8 || engine == GameEngine.RENPY7) {
            bVar = bVar2;
            r33 = bVar != null ? bVar.f2056a : r11;
        } else {
            r33 = r11;
            bVar = bVar2;
        }
        WebView webView2 = webView;
        GameActivity context3 = context;
        webView2.setWebViewClient(new C0375g0(c0096q, c0013d, z4, r31, i3, r33, ((engine == gameEngine || engine == GameEngine.TYRANO) && bVar != null) ? bVar.f2056a : r11, c0363c0, new J(context, dVar, webView2, engine, game, 1), new C0427y(context3, dVar, 0), new kotlin.coroutines.a(2, context3, dVar), new C0427y(context3, dVar, i11)));
        webView2.setWebChromeClient(new N());
        Log.i("MinHub-Launch", "gameId=" + game.getId() + " title=" + game.getTitle());
        String gamePath2 = game.getGamePath();
        StringBuilder sb = new StringBuilder("gamePath=");
        sb.append(gamePath2);
        Log.i("MinHub-Launch", sb.toString());
        if (bVar == null || (file3 = bVar.f2056a) == null || (absolutePath = file3.getAbsolutePath()) == null) {
            absolutePath = "<none>";
        }
        Log.i("MinHub-Launch", "resolvedRoot=".concat(absolutePath));
        Log.i("MinHub-Launch", "indexExists=" + (bVar != null && bVar.b.exists()));
        if (!StringsKt.isBlank(game.getStreamUrl())) {
            Log.i("MinHub-Launch", "streamUrl=" + game.getStreamUrl());
            webView2.setBackgroundColor(ViewCompat.MEASURED_STATE_MASK);
            webView2.loadUrl(game.getStreamUrl());
            return;
        }
        if (bVar == null) {
            Log.w("MinHub-Launch", "Missing index.html for path=" + gamePath);
            Log.d("MinHub-Launch", "finalUrl=<demo-html-fallback>");
            Toast.makeText(context3, context3.getString(R.string.toast_cannot_open_game), 1).show();
            String coverColor1 = game.getCoverColor1();
            String upperCase = StringsKt.take(game.getTitle(), 1).toUpperCase(Locale.ROOT);
            Intrinsics.checkNotNullExpressionValue(upperCase, "toUpperCase(...)");
            String title = game.getTitle();
            String string = context3.getString(R.string.no_game_file);
            String title2 = game.getTitle();
            StringBuilder sbJ = kotlin.collections.unsigned.a.j("\n        <!DOCTYPE html>\n        <html style=\"margin:0;padding:0;background:#09090d;height:100%;font-family:sans-serif\">\n        <body style=\"margin:0;display:flex;align-items:center;justify-content:center;height:100%;flex-direction:column;gap:16px\">\n          <div style=\"width:64px;height:64px;border-radius:16px;background:", coverColor1, ";display:flex;align-items:center;justify-content:center;font-size:24px;font-weight:900;color:rgba(255,255,255,0.8)\">\n            ", upperCase, "\n          </div>\n          <div style=\"font-size:20px;font-weight:900;color:#F0F0F6;letter-spacing:-0.5px\">");
            kotlin.collections.unsigned.a.n(sbJ, title, "</div>\n          <div style=\"font-size:12px;color:#8888A4\">", string, "</div>\n          <div style=\"margin-top:8px;font-size:10px;color:rgba(255,255,255,0.2);letter-spacing:1px\">MINHUB ENGINE DEMO</div>\n          <script>window.MinHub?.log?.('Demo game loaded for: ");
            sbJ.append(title2);
            sbJ.append("')</script>\n        </body></html>\n    ");
            webView2.loadDataWithBaseURL(null, StringsKt.trimIndent(sbJ.toString()), "text/html", "UTF-8", null);
            return;
        }
        String strO = kotlin.collections.unsigned.a.o("file://", bVar.b.getAbsolutePath());
        Log.i("MinHub-Launch", "finalUrl=" + strO);
        if (engine == GameEngine.MV || engine == GameEngine.MZ) {
            try {
                File rootDir = bVar.f2056a;
                Intrinsics.checkNotNullParameter(rootDir, "rootDir");
                L1.j(rootDir, new File(rootDir, "img/img_data_mfsuplub.json"), "img");
                L1.j(rootDir, new File(rootDir, "audio/snd_data_mfsuplub.json"), "audio");
            } catch (Exception unused) {
            }
        }
        Intrinsics.checkNotNullParameter(engine, "engine");
        switch (Y.f6161a[engine.ordinal()]) {
            case 1:
            case 2:
            case 3:
            case 4:
                z2 = Z.f6163c;
                break;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                z2 = Z.b;
                break;
            default:
                throw new NoWhenBranchMatchedException();
        }
        int iOrdinal = z2.ordinal();
        if (iOrdinal == 0) {
            if ((engine == GameEngine.RENPY8 || engine == GameEngine.RENPY7) && !L1.n(bVar.f2056a)) {
                V1.A.c(LifecycleOwnerKt.getLifecycleScope(context3), H.b, new C0114w0(bVar, webView2, strO, (Continuation) r11, 6), 2);
                return;
            } else {
                webView2.loadUrl(strO);
                return;
            }
        }
        if (iOrdinal != 1) {
            throw new NoWhenBranchMatchedException();
        }
        try {
            String str4 = g.f997a;
            A2 = g.a(context3, engine);
        } catch (Exception unused2) {
            A2 = r11;
        }
        try {
            String str5 = g.f997a;
            B2 = g.b(context3, game.getCatalogPostId());
        } catch (Exception unused3) {
            B2 = r11;
        }
        String strO2 = CollectionsKt.o(CollectionsKt.listOfNotNull((Object[]) new String[]{A2, B2 != 0 ? E.b.m("(function(){try{\n", B2, "\n}catch(e){try{console.error('[GamePatch] pre error: '+e)}catch(_){}}})();") : r11}), "\n", null, null, null, 62);
        boolean zIsBlank = StringsKt.isBlank(strO2);
        ?? r4 = strO2;
        if (zIsBlank) {
            r4 = r11;
        }
        Intrinsics.checkNotNullParameter(engine, "engine");
        if (engine != GameEngine.TYRANO) {
            str = strO;
            String indexHtml2 = FilesKt__FileReadWriteKt.readText$default(bVar.b, null, 1, null);
            Intrinsics.checkNotNullParameter(indexHtml2, "indexHtml");
            if (r4 == 0) {
                strM = "";
            } else {
                if (StringsKt.isBlank(r4)) {
                    r2 = r4;
                    r2 = 0;
                }
                if (r2 == 0 || (strM = E.b.m("\n<script>\n", StringsKt__StringsJVMKt.replace((String) r2, "</script", "<\\/script", true), "\n</script>")) == null) {
                    strM = "";
                }
            }
            String strG2 = kotlin.collections.unsigned.a.g(StringsKt.trimIndent("\n        <script>\n        (function(){\n  // process polyfill: prevents top-level plugin code like\n  // `process.versions['node-webkit']` from throwing ReferenceError before\n  // our main patch script runs.\n  if (typeof window.process === 'undefined') { window.process = {}; }\n  window.process.versions   = window.process.versions   || {};\n  window.process.argv       = window.process.argv       || [];\n  // NW.js puts the executable path in argv[0]; plugins derive the game root from it\n  // (e.g. TS_Decode: argv[0] minus file name + 'scenario/' -> Succubus Farm's .sl\n  // scripts). Empty argv made argv[0].split throw, so every AdvLoad cutscene was\n  // skipped. Point it at a virtual Game.exe beside index.html.\n  if (!window.process.argv.length) {\n    try { window.process.argv.push(location.pathname.replace(/\\/[^\\/]*$/, '/Game.exe')); } catch(e){}\n  }\n  window.process.mainModule = window.process.mainModule || { filename: 'index.html' };\n\n  // Early require() stub. Some plugins call require('fs')/require('path') at\n  // PARSE time (top-level), e.g. DarkPlasma_ScreenshotGallery.js, and threw\n  // \"ReferenceError: require is not defined\" because the full NW.js compat\n  // polyfill is only injected at onPageFinished — after plugin scripts parse.\n  // We pin Utils.isNwjs() to false below so the engine still runs in\n  // web-storage mode (saves route through the MinHub native bridge); the stub\n  // prevents the load-time crash and routes game-local file operations to the native bridge.\n  if (typeof window.require !== 'function') {\n    var __mhPath = {\n      sep: '/',\n      join: function(){ return Array.prototype.slice.call(arguments).join('/'); },\n      // Node's path.resolve() with no (or only falsy) segments returns the current\n      // working directory. We have no real CWD, so we use '.' — this must match what\n      // dirname() below returns for a bare filename ('index.html' has no slash), so\n      // plugins that independently compute a \"game root\" via either function (e.g.\n      // MakeScreenCapture.js uses dirname(process.mainModule.filename), DarkPlasma_\n      // ScreenshotGallery.js uses resolve('')) end up pointing at the SAME './'\n      // directory and can read back what the other wrote.\n      resolve: function(){\n        var parts = Array.prototype.slice.call(arguments).filter(Boolean);\n        return parts.length ? parts.join('/') : '.';\n      },\n      dirname: function(p){\n        if (!p) return '.';\n        var s = String(p).replace(/[\\\\/]+$/, '');\n        var i = Math.max(s.lastIndexOf('/'), s.lastIndexOf('\\\\'));\n        return i > 0 ? s.slice(0, i) : (i === 0 ? '/' : '.');\n      },\n      basename: function(p, ext){ var b = p ? String(p).split(/[\\\\/]/).pop() : ''; return (ext && b.slice(-ext.length) === ext) ? b.slice(0, -ext.length) : b; },\n      extname: function(p){ var b = p ? String(p).split(/[\\\\/]/).pop() : ''; var i = b.lastIndexOf('.'); return i > 0 ? b.slice(i) : ''; }\n    };\n    // Synchronously read a game data file via file:// XHR. Many RPG Maker games\n    // (esp. the MEO_* plugin framework: LoadFileUTF8Escaped -> $Node.fs.readFileSync)\n    // load their JSON config straight off disk through require('fs'). Returning ''\n    // here made JSON.parse('') throw \"Unexpected end of JSON input\" and crash the\n    // whole game at boot (e.g. MEO_CombatStatusDisplay: t.root undefined). Reading the\n    // real bytes makes those plugins work; a missing file still yields '' (no throw,\n    // same as before). Same-origin file:// XHR works because the page IS a file:// URL.\n    var __mhReadSync = function(p){\n      try {\n        var x = new XMLHttpRequest();\n        x.open('GET', String(p), false);\n        try { x.overrideMimeType('text/plain; charset=utf-8'); } catch(e){}\n        x.send(null);\n        var r = x.responseText;\n        if (r != null && r.length) return r;\n      } catch(e){}\n      return null;\n    };\n    var __mhExistsCache = {};\n    // Existence check: appends ?__mh_exists=1 so shouldInterceptRequest can\n    // answer with a native File.exists() check (no file content loaded).\n    // Falls back to __mhReadSync only when the XHR itself throws (e.g. bad path).\n    var __mhExistsSync = function(k) {\n      try {\n        var x = new XMLHttpRequest();\n        x.open('GET', k + (k.indexOf('?') >= 0 ? '&' : '?') + '__mh_exists=1', false);\n        x.send(null);\n        return x.responseText === '1';\n      } catch(e) {}\n      return __mhReadSync(k) != null;\n    };\n    // Converts a writeFileSync `data` argument (Buffer wrapper, string, or anything else)\n    // into a base64 string for the native fsWriteFile bridge. Our Buffer polyfill (below)\n    // never actually decodes bytes — it just remembers what it was built from — so a Buffer\n    // built with the 'base64' encoding already IS the base64 string we need; anything else\n    // gets UTF-8-safe btoa'd.\n    var __mhToBase64 = function(d){\n      try {\n        if (d && d.__mhIsBuffer) {\n          if (d.__mhEncoding === 'base64' && typeof d.__mhData === 'string') return d.__mhData;\n          d = d.__mhData;\n        }\n        if (typeof d !== 'string') d = String(d);\n        return btoa(unescape(encodeURIComponent(d)));\n      } catch(e) { return ''; }\n    };\n    var __mhFs = {\n      existsSync: function(p){\n        var k=String(p); if(k in __mhExistsCache)return __mhExistsCache[k];\n        var r=__mhExistsSync(k);\n        if (!r) { try { r = !!(window.MinHub && window.MinHub.fsExists && window.MinHub.fsExists(k)); } catch(e) {} }\n        __mhExistsCache[k]=r; return r;\n      },\n      // Real Node fs.accessSync() throws on failure, returns undefined on success - plugins\n      // (e.g. AsyncLoadImage.js's fileExists()) wrap it in try/catch and treat any throw as\n      // \"file missing\". Without this, fs.accessSync was undefined -> calling it threw\n      // \"accessSync is not a function\" for every single check, so every image looked missing\n      // regardless of whether it actually existed. Route through the same existence check as\n      // existsSync (mode/R_OK etc. are ignored).\n      accessSync: function(p, mode){\n        if (!__mhFs.existsSync(p)) { throw new Error('ENOENT: no such file or directory, access \\'' + p + '\\''); }\n      },\n      constants: { F_OK: 0, R_OK: 4, W_OK: 2, X_OK: 1 },\n      mkdirSync: function(p){\n        if (!window.MinHub || !window.MinHub.fsMkdir || !window.MinHub.fsMkdir(String(p))) throw new Error('EACCES: mkdir ' + p);\n        delete __mhExistsCache[String(p)];\n      },\n      rmdirSync: function(p){\n        if (!window.MinHub || !window.MinHub.fsRmdir || !window.MinHub.fsRmdir(String(p))) throw new Error('ENOTEMPTY: rmdir ' + p);\n        delete __mhExistsCache[String(p)];\n      },\n      unlinkSync: function(p){\n        if (!window.MinHub || !window.MinHub.fsUnlink || !window.MinHub.fsUnlink(String(p))) throw new Error('ENOENT: unlink ' + p);\n        delete __mhExistsCache[String(p)];\n      },\n      // Actually persists to the game's content-root directory via the native bridge (see\n      // MinHubBridge.fsWriteFile) so plugins that save-then-later-load a file (e.g. take a\n      // screenshot in-game, view it in an in-game gallery/phone UI) work instead of silently\n      // losing the data. Scoped to the game's own folder — see resolveWritableTarget().\n      writeFileSync: function(p, d){\n        if (!window.MinHub || !window.MinHub.fsWriteFile || !window.MinHub.fsWriteFile(String(p), __mhToBase64(d))) throw new Error('EACCES: write ' + p);\n        try { delete __mhExistsCache[String(p)]; } catch(e) {}\n      },\n      appendFileSync: function(p, d){\n        if (!window.MinHub || !window.MinHub.fsAppendFile || !window.MinHub.fsAppendFile(String(p), __mhToBase64(d))) throw new Error('EACCES: append ' + p);\n        delete __mhExistsCache[String(p)];\n      },\n      readFileSync: function(p){ var r = __mhReadSync(p); return r != null ? r : ''; },\n      // Real directory listing via the native bridge — file:// XHR has no way to list a\n      // directory, so this was always '[]' before. Needed by e.g. DarkPlasma_\n      // ScreenshotGallery.js's loadAllScreenshot() to find previously-saved photos.\n      // Supports the { withFileTypes: true } option (Node returns Dirent objects, not plain\n      // strings, in that mode) since DarkPlasma_ScreenshotGallery.js relies on it.\n      readdirSync: function(p, opts){\n        var names = [];\n        try {\n          if (window.MinHub && window.MinHub.fsReadDir) {\n            names = JSON.parse(window.MinHub.fsReadDir(String(p)) || '[]');\n          }\n        } catch(e) {}\n        if (opts && opts.withFileTypes) {\n          return names.map(function(n){\n            var st = __mhFs.statSync(String(p).replace(/\\/$/, '') + '/' + n);\n            return { name: n, isFile: st.isFile, isDirectory: st.isDirectory };\n          });\n        }\n        return names;\n      },\n      statSync: function(p){\n        var s = {};\n        try { s = JSON.parse(window.MinHub.fsStat(String(p)) || '{}'); } catch(e) {}\n        if (!s.file && !s.directory) throw new Error('ENOENT: stat ' + p);\n        return { isFile: function(){ return !!s.file; }, isDirectory: function(){ return !!s.directory; }, size: s.size || 0 };\n      },\n      lstatSync: function(p){ return __mhFs.statSync(p); },\n      readdir: function(p, cb){ if (typeof cb === 'function') { var list = []; try { list = __mhFs.readdirSync(p); } catch(e) {} cb(null, list); } },\n      readFile: function(p, o, cb){ if (typeof o === 'function') cb = o; if (typeof cb === 'function') { var r = __mhReadSync(p); cb(null, r != null ? r : ''); } },\n      writeFile: function(p, d, cb){ var err = null; try { __mhFs.writeFileSync(p, d); } catch(e) { err = e; } if (typeof cb === 'function') cb(err); }\n    };\n    window.require = function(m){\n      if (m === 'fs') return __mhFs;\n      if (m === 'path') return __mhPath;\n      if (m === 'nw') return window.nw || {};\n      if (m === 'nw.gui') return (window.nw && window.nw.gui) || {};\n      return {};\n    };\n  }\n  // Minimal Buffer polyfill. Must be new-able — plugins commonly call\n  // `new Buffer(data, 'base64')` (e.g. MakeScreenCapture.js), and a plain object literal\n  // there throws \"Buffer is not a constructor\". We don't do real byte decoding; we just\n  // remember what the Buffer was built from (value + encoding) so writeFileSync's\n  // __mhToBase64 helper above can recover a base64 string to hand to the native bridge.\n  if (typeof window.Buffer === 'undefined') {\n    window.Buffer = function(data, encoding){\n      if (!(this instanceof window.Buffer)) return new window.Buffer(data, encoding);\n      this.__mhIsBuffer = true;\n      this.__mhData = data;\n      this.__mhEncoding = encoding;\n    };\n    window.Buffer.prototype.toString = function(){ return typeof this.__mhData === 'string' ? this.__mhData : String(this.__mhData); };\n    window.Buffer.from = function(data, encoding){ return new window.Buffer(data, encoding); };\n    window.Buffer.isBuffer = function(v){ return !!(v && v.__mhIsBuffer); };\n  }\n\n  // Global `nw` (NW.js) stub. Many RPG Maker plugins reference the `nw` global\n  // unconditionally, assuming a desktop NW.js host — e.g. SRD_HUDMakerUltra's\n  // setupAutoReload() calls nw.Window.get() at plugin load time. In the mobile\n  // WebView `nw` is undefined, so the ReferenceError bubbles to RPG Maker's boot\n  // error handler and freezes the game on a black \"nw is not defined\" screen.\n  // An inert stub lets those plugins load and the game boot normally.\n  if (typeof window.nw === 'undefined') {\n    var __mhNoop = function(){};\n    var __mhNwWindow = {\n      on: __mhNoop, once: __mhNoop, removeAllListeners: __mhNoop, removeListener: __mhNoop,\n      close: __mhNoop, reload: __mhNoop, reloadDev: __mhNoop,\n      show: __mhNoop, hide: __mhNoop, focus: __mhNoop, blur: __mhNoop,\n      maximize: __mhNoop, minimize: __mhNoop, unmaximize: __mhNoop, restore: __mhNoop,\n      setMinimumSize: __mhNoop, setMaximumSize: __mhNoop, setResizable: __mhNoop,\n      resizeTo: __mhNoop, moveTo: __mhNoop, setPosition: __mhNoop,\n      showDevTools: __mhNoop, closeDevTools: __mhNoop, setAlwaysOnTop: __mhNoop,\n      enterFullscreen: __mhNoop, leaveFullscreen: __mhNoop, toggleFullscreen: __mhNoop,\n      capturePage: __mhNoop, setProgressBar: __mhNoop, requestAttention: __mhNoop,\n      title: (document.title || ''), zoomLevel: 0, window: window\n    };\n    var __mhNwApp = {\n      argv: [], fullArgv: [], dataPath: '', manifest: {},\n      quit: __mhNoop, closeAllWindows: __mhNoop, clearCache: __mhNoop,\n      on: __mhNoop, addOriginAccessWhitelistEntry: __mhNoop,\n      getProxyForURL: function(){ return 'DIRECT'; }\n    };\n    var __mhNwShell = { openExternal: __mhNoop, openItem: __mhNoop, showItemInFolder: __mhNoop };\n    window.nw = {\n      Window: { get: function(){ return __mhNwWindow; }, open: __mhNoop },\n      App: __mhNwApp,\n      Shell: __mhNwShell\n    };\n    window.nw.gui = { Window: window.nw.Window, App: __mhNwApp, Shell: __mhNwShell };\n  }\n\n  // Keep RPG Maker in web-storage mode even though require() now exists, so the\n  // native save bridge stays in control (matches the previous behaviour, when\n  // require was simply undefined). Utils is a global function in rmmz_core.js;\n  // poll briefly until it loads, then pin isNwjs() to false.\n  (function(){\n    var n = 0;\n    var pin = function(){\n      try {\n        if (typeof Utils !== 'undefined' && Utils && typeof Utils.isNwjs === 'function') {\n          Utils.isNwjs = function(){ return false; };\n          return;\n        }\n      } catch (e) {}\n      if (n++ < 300) setTimeout(pin, 16);\n    };\n    pin();\n  })();\n\n  // XHR file:// status fix: Android WebView always returns xhr.status=0 for\n  // file:// requests, even on success. Plugins that check status===200 strictly\n  // (e.g. ARPG_Core.js HttpRequest) fail and crash. Patch the status getter to\n  // return 200 when status=0 + readyState=DONE + non-empty response (= success).\n  // Games using status<400 (standard RMMZ DataManager) are unaffected.\n  (function(){\n    try {\n      var _desc = Object.getOwnPropertyDescriptor(XMLHttpRequest.prototype, 'status');\n      if (!_desc || !_desc.get) return;\n      Object.defineProperty(XMLHttpRequest.prototype, 'status', {\n        get: function() {\n          var s = _desc.get.call(this);\n          if (s === 0 && this.readyState === 4 && this.response) return 200;\n          return s;\n        },\n        configurable: true\n      });\n    } catch(e) {}\n  })();\n\n  if(!window.fetch||window.fetch.__mhFileFetch)return;\n  var _fetch=window.fetch.bind(window);\n  window.fetch=function(input,init){\n    // Extract URL string from string, URL object (.href), or Request object (.url).\n    // Plugins like AudioStreaming.js call fetch(new URL(...)) which has .href not .url —\n    // the old check left url='' and fell through to native fetch(), which Chrome always\n    // blocks for file:// regardless of origin or allowFileAccessFromFileURLs.\n    var url=typeof input==='string'?input:(input!=null?String(input.href||input.url||''):'');\n    // Resolve relative and root-relative URLs to absolute using the document base URL.\n    // Games often call fetch('data/file.csv') — Chrome resolves it to file:///... internally\n    // but blocks it; we must resolve it ourselves so the file:// check below fires first.\n    if(url && !/^[a-zA-Z][a-zA-Z0-9+\\-.]*:/.test(url)){\n      try{var abs=new URL(url,location.href).href;if(typeof input==='string')input=abs;url=abs;}catch(e){}\n    }\n    // Rewrite Ren'Py webloader protocol-relative //path URLs (e.g. //game/images/x.jpg).\n    // From a file:// origin Chrome resolves // as file://host/path which is invalid on\n    // Android. Rewrite to an absolute file:// URL before routing through XHR below.\n    if(typeof url==='string'&&url.startsWith('//')&&location.protocol==='file:'){\n      url=location.href.replace(/\\/[^\\/]*$/,'/')+url.substring(2).split('/').map(encodeURIComponent).join('/');\n      input=url;\n      console.log('[MinHub] fetch // rewritten: '+url);\n    }\n    if(typeof url==='string'&&url.indexOf('file:')=== 0){\n      return new Promise(function(resolve,reject){\n        var xhr=new XMLHttpRequest();\n        xhr.open('GET',url,true);\n        xhr.responseType='arraybuffer';\n        xhr.onload=function(){\n          var status=xhr.status>0?xhr.status:200;\n          if(status<200||status>599)status=200;\n          resolve(new Response(xhr.response,{status:status,headers:{'Content-Type':xhr.getResponseHeader('Content-Type')||'application/octet-stream'}}));\n        };\n        xhr.onerror=function(){reject(new TypeError('fetch file:// failed: '+url));};\n        xhr.send();\n      });\n    }\n    return _fetch(input,init);\n  };\n  window.fetch.__mhFileFetch=true;\n})();\n\n// ── Boot watchdog ────────────────────────────────────────────────────────\n// Recovers the intermittent cold-launch black screen. When a file:// script\n// (e.g. jQuery) races the cold renderer and loads empty, every dependent\n// plugin throws and the engine never starts — the screen stays black until the\n// user manually exits and re-enters (a warm renderer then boots fine). We detect\n// that here — an early uncaught-error cascade, or simply nothing rendered after a\n// grace period — and ask the native side to reload (it caps the retries).\n(function(){\n  if (window.__mhBootWatch) return;\n  window.__mhBootWatch = true;\n  var done = false, errs = 0, bootPhase = true;\n  setTimeout(function(){ bootPhase = false; }, 3500);\n  function reload(reason){\n    if (done) return; done = true;\n    try { console.log('[MH-FIX] boot watchdog reload: ' + reason); } catch(e){}\n    try {\n      if (window.MinHub && typeof window.MinHub.requestBootReload === 'function') {\n        window.MinHub.requestBootReload(reason); return;\n      }\n    } catch(e){}\n    try { location.reload(); } catch(e){}\n  }\n  // Fast path: a burst of uncaught errors during early boot = the engine is dead.\n  window.addEventListener('error', function(){\n    if (!bootPhase || done) return;\n    if (++errs >= 4) reload('error-cascade:' + errs);\n  }, true);\n  // Fallback: if nothing real rendered after the grace period, reload once.\n  setTimeout(function(){\n    if (done) return;\n    var rendered = 0;\n    try {\n      rendered = document.querySelectorAll('canvas, video, img, #tyrano_base, .tyrano_base').length;\n      if (rendered === 0) {\n        var txt = ((document.body && document.body.innerText) || '').replace(/\\s+/g, '');\n        if (txt.length > 8) rendered = 1; // a populated text page counts as booted too\n      }\n    } catch(e){}\n    if (rendered === 0) reload('nothing-rendered');\n  }, 6000);\n})();\n        </script>\n    "), strM);
            RegexOption regexOption = RegexOption.IGNORE_CASE;
            MatchResult matchResultFind$default = Regex.find$default(new Regex("<head[^>]*>", regexOption), indexHtml2, 0, 2, null);
            if (matchResultFind$default != null) {
                int last = matchResultFind$default.getRange().getLast() + 1;
                String strSubstring = indexHtml2.substring(0, last);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                String strSubstring2 = indexHtml2.substring(last);
                Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                indexHtml = strSubstring + "\n" + strG2 + "\n" + strSubstring2;
            } else {
                MatchResult matchResultFind$default2 = Regex.find$default(new Regex("<script\\b", regexOption), indexHtml2, 0, 2, null);
                if (matchResultFind$default2 != null) {
                    int first = matchResultFind$default2.getRange().getFirst();
                    String strSubstring3 = indexHtml2.substring(0, first);
                    Intrinsics.checkNotNullExpressionValue(strSubstring3, "substring(...)");
                    String strSubstring4 = indexHtml2.substring(first);
                    Intrinsics.checkNotNullExpressionValue(strSubstring4, "substring(...)");
                    indexHtml = strSubstring3 + strG2 + "\n" + strSubstring4;
                } else {
                    indexHtml = kotlin.collections.unsigned.a.h(strG2, "\n", indexHtml2);
                }
            }
            if (engine == GameEngine.MZ) {
                Intrinsics.checkNotNullParameter(indexHtml, "indexHtml");
                String strTrimIndent = StringsKt.trimIndent("\n        <script>\n        (function() {\n  if (window.__mhEarlyFix) return;\n  window.__mhEarlyFix = true;\n\n  // ── Prefer WebGL2 on capable devices ──────────────────────────────────\n  // PIXI 5.3 sets PREFER_ENV = WEBGL(1) for ALL mobile user-agents, so RPG Maker MZ\n  // creates a WebGL1 renderer even on phones that fully support WebGL2. WebGL1 forces\n  // our SFPatch/WLPatch fallbacks (filter/stencil stripping), which break filter-based\n  // rendering such as PictureLive2D's Cubism clipping masks — the Live2D model then\n  // renders completely invisible. We flip PREFER_ENV to WEBGL2 the instant PIXI is\n  // assigned (this <head> script runs before pixi.js, and `var PIXI = (...)()` triggers\n  // this accessor on assignment, with PIXI.settings/ENV already populated), i.e. before\n  // Graphics._createPixiApp runs. PIXI still auto-falls-back to a WebGL1 context when\n  // WebGL2 is unavailable (old emulators), so the WebGL1 patches remain the safety net.\n  try {\n    if (!('PIXI' in window)) {\n      var _mhPixi;\n      Object.defineProperty(window, 'PIXI', {\n        configurable: true, enumerable: true,\n        get: function() { return _mhPixi; },\n        set: function(v) {\n          _mhPixi = v;\n          try {\n            if (v && v.settings && v.ENV && typeof v.ENV.WEBGL2 !== 'undefined') {\n              v.settings.PREFER_ENV = v.ENV.WEBGL2;\n              console.log('[MH-FIX] PIXI.settings.PREFER_ENV -> WEBGL2');\n            }\n          } catch (e) {}\n          // Swap the accessor for a plain data property so later reads/writes are normal.\n          try {\n            Object.defineProperty(window, 'PIXI', { value: v, writable: true, configurable: true, enumerable: true });\n          } catch (e) {}\n        }\n      });\n    }\n  } catch (e) {}\n\n  // Log the FULL JS stack of any uncaught error (capture phase, before RPG Maker's\n  // own handler). Plugin crashes that surface as window.onerror — e.g. \"Cannot read\n  // properties of null (reading 'pivot')\" from a use-after-destroy display object —\n  // otherwise reach the engine only as an ErrorEvent (no .stack), so we read\n  // ErrorEvent.error.stack here to pinpoint the offending plugin/function.\n  window.addEventListener('error', function(ev) {\n    try {\n      var err = ev && ev.error;\n      if (err && err.stack) {\n        console.error('[MH-FIX] uncaught:\\n' + String(err.stack).substring(0, 1500));\n      } else if (ev) {\n        console.error('[MH-FIX] uncaught: ' + ev.message + ' @ ' + ev.filename + ':' + ev.lineno + ':' + ev.colno);\n      }\n    } catch(e) {}\n  }, true);\n\n  // FIX: Patch JSON.parse to restore Chrome 91 silent-pass behaviour for non-JSON strings.\n  //\n  // Chrome 91 (LDPlayer) swallowed exceptions thrown inside reviver functions AND some\n  // callers had outer try/catch that silently swallowed direct-call failures.\n  // Chrome 120+ propagates both, causing \"Uncaught SyntaxError: Unexpected non-whitespace\n  // character after JSON at position 5 (line 1 column 6)\" with input \"1280 / 1000\".\n  //\n  // Two cases fixed:\n  // 1. Reviver (e.g. VisuMZ _paramReplacer): wrap in try/catch so failed inner\n  //    JSON.parse(value) returns original value instead of propagating.\n  // 2. Direct call (e.g. JSON.parse(\"1280 / 1000\")): try Function-based eval as fallback\n  //    ONLY for primitive results (number/string/boolean/null).\n  //    SAFETY: Must NOT return objects/arrays — eval(\"window\") returns the Window global,\n  //    and PluginCommonBase.js:160 then calls JSON.stringify(window) which throws\n  //    \"Converting circular structure to JSON\" (window.window === window).\n  //    If eval fails or returns a non-primitive, return original string — same silent-pass\n  //    behaviour as Chrome 91's outer try/catch.\n  var _origParse = JSON.parse;\n  JSON.parse = function(text, reviver) {\n    if (typeof reviver === 'function') {\n      // Case 1: reviver — wrap in try/catch, return original value on failure.\n      var _safeReviver = function(k, v) {\n        try { return reviver.call(this, k, v); } catch(e) { return v; }\n      };\n      return _origParse.call(JSON, text, _safeReviver);\n    }\n    try {\n      return _origParse.apply(JSON, arguments);\n    } catch(e) {\n      // Case 2: direct call — try JS expression eval as fallback (primitives only).\n      if (typeof text === 'string' && text.trim() !== '') {\n        try {\n          // Use Function constructor (not bare eval) to avoid polluting outer scope.\n          // \"1280 / 1000\" → 1.28, \"true\" → true, \"null\" → null, etc.\n          //\n          // SAFETY: Skip eval if text contains a comma — the JS comma operator would\n          // silently return the last value (e.g. \"0.5,0.25\" → 0.25 via eval).\n          // Plugin parameters like \"0.5,0.25\" (parallax) are intentional comma-strings,\n          // not arithmetic. Returning 0.25 breaks .split(',') calls downstream.\n          if (text.indexOf(',') !== -1) { return text; }\n          // SAFETY: a bare integer range like \"5-7\" (or \"1-3-5\") is a common plugin-param\n          // convention for id lists (e.g. PictureCallCommon(-extended) DisableRules.pictureIds,\n          // parsed later via text.split(',')). JS would eval \"5-7\" to the NUMBER -2, so the\n          // downstream .split then throws \"text.split is not a function\" every frame. On desktop\n          // JSON.parse(\"5-7\") throws and the caller keeps the original string, so match that:\n          // keep digit ranges as strings instead of evaluating the subtraction.\n          if (/^\\s*\\d+(?:\\s*-\\s*\\d+)+\\s*$/.test(text)) { return text; }\n          var _r = Function('\"use strict\"; return (' + text + ')')();\n          // Only return primitives. Non-primitives (object, array, function) would\n          // cause JSON.stringify circular-reference errors downstream if they capture\n          // the window global or other complex state.\n          if (_r === null || typeof _r === 'string' || typeof _r === 'number' || typeof _r === 'boolean') {\n            return _r;\n          }\n          // Non-primitive result → fall through to return original string below.\n        } catch(ex) {\n          // Eval failed (e.g. bare identifiers like \"ecg_ans1\", malformed expressions).\n        }\n        // Return original string — replicates Chrome 91 silent-pass for callers\n        // that just need any value to continue (they ignore the returned string).\n        return text;\n      }\n      throw e;\n    }\n  };\n  console.log('[MH-FIX] JSON.parse reviver+eval guard installed');\n\n  // Hook Graphics.printError so any remaining on-screen errors appear in logcat.\n  var _hgfx = function(n) {\n    if (typeof Graphics === 'undefined' || typeof Graphics.printError !== 'function') {\n      if (n < 80) setTimeout(function() { _hgfx(n + 1); }, 100);\n      return;\n    }\n    if (Graphics.__mhDiagHooked) return;\n    Graphics.__mhDiagHooked = true;\n    var _o = Graphics.printError;\n    Graphics.printError = function(name, msg, e) {\n      try {\n        // RPG Maker sometimes forwards an ErrorEvent (no .stack); the real Error is on .error.\n        var realErr = (e && e.error) ? e.error : e;\n        var st = (realErr && realErr.stack) ? String(realErr.stack).substring(0, 800) : (e ? String(e) : '');\n        console.error('[MH-FIX] printError: ' + name + ': ' + msg + '\\n' + st);\n      } catch(ex) {}\n      return _o.apply(this, arguments);\n    };\n    console.log('[MH-FIX] Graphics.printError hooked');\n  };\n  _hgfx(0);\n})();\n        </script>\n    ");
                MatchResult matchResultFind$default3 = Regex.find$default(new Regex("<head[^>]*>", regexOption), indexHtml, 0, 2, null);
                if (matchResultFind$default3 != null) {
                    int last2 = matchResultFind$default3.getRange().getLast() + 1;
                    String strSubstring5 = indexHtml.substring(0, last2);
                    Intrinsics.checkNotNullExpressionValue(strSubstring5, "substring(...)");
                    String strSubstring6 = indexHtml.substring(last2);
                    Intrinsics.checkNotNullExpressionValue(strSubstring6, "substring(...)");
                    indexHtml = strSubstring5 + "\n" + strTrimIndent + "\n" + strSubstring6;
                } else {
                    file = null;
                    MatchResult matchResultFind$default4 = Regex.find$default(new Regex("<script\\b", regexOption), indexHtml, 0, 2, null);
                    if (matchResultFind$default4 != null) {
                        int first2 = matchResultFind$default4.getRange().getFirst();
                        String strSubstring7 = indexHtml.substring(0, first2);
                        Intrinsics.checkNotNullExpressionValue(strSubstring7, "substring(...)");
                        String strSubstring8 = indexHtml.substring(first2);
                        Intrinsics.checkNotNullExpressionValue(strSubstring8, "substring(...)");
                        indexHtml = strSubstring7 + strTrimIndent + "\n" + strSubstring8;
                    } else {
                        indexHtml = kotlin.collections.unsigned.a.h(strTrimIndent, "\n", indexHtml);
                    }
                }
            }
            str2 = indexHtml;
            Intrinsics.checkNotNullParameter(engine, "engine");
            if (engine != GameEngine.TYRANO || engine == GameEngine.MV || engine == GameEngine.MZ || engine == GameEngine.HTML) {
                try {
                    Result.Companion companion4 = Result.INSTANCE;
                    HashMap map = X.f6155a;
                    objM9constructorimpl2 = Result.m9constructorimpl(X.c(bVar.f2056a, str2));
                } catch (Throwable th6) {
                    Result.Companion companion5 = Result.INSTANCE;
                    objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th6));
                }
                thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(objM9constructorimpl2);
                if (thM12exceptionOrNullimpl != null) {
                    Log.w("MinHub-Launch", "Boot page write failed", thM12exceptionOrNullimpl);
                }
                if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                    objM9constructorimpl2 = file;
                }
                file2 = (File) objM9constructorimpl2;
            } else {
                file2 = file;
            }
            if (file2 != null) {
                webView2.loadDataWithBaseURL(str, str2, "text/html", "UTF-8", str);
                return;
            }
            context3.f3685I = bVar.f2056a;
            webView2.loadUrl("file://" + file2.getAbsolutePath());
        }
        File indexFile = bVar.b;
        Intrinsics.checkNotNullParameter(context3, "context");
        Intrinsics.checkNotNullParameter(indexFile, "indexFile");
        Intrinsics.checkNotNullParameter(snapshot, "snapshot");
        Charset UTF_8 = StandardCharsets.UTF_8;
        Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
        String indexHtml3 = FilesKt.readText(indexFile, UTF_8);
        InputStream inputStreamOpen2 = context3.getAssets().open("Cheat/tyrano_player.js");
        Intrinsics.checkNotNullExpressionValue(inputStreamOpen2, "open(...)");
        Intrinsics.checkNotNullExpressionValue(UTF_8, "UTF_8");
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStreamOpen2, UTF_8), 8192);
        try {
            String playerScript = TextStreamsKt.readText(bufferedReader);
            CloseableKt.closeFinally(bufferedReader, r11);
            String strV = "";
            Intrinsics.checkNotNullParameter(indexHtml3, "indexHtml");
            Intrinsics.checkNotNullParameter(playerScript, "playerScript");
            Intrinsics.checkNotNullParameter(snapshot, "snapshot");
            if (r4 == 0) {
                strM2 = "";
            } else {
                if (StringsKt.isBlank(r4)) {
                    r3 = r4;
                    r3 = 0;
                }
                if (r3 == 0 || (strM2 = E.b.m("\n<script>\n", StringsKt__StringsJVMKt.replace((String) r3, "</script", "<\\/script", true), "\n</script>")) == null) {
                    strM2 = "";
                }
            }
            Intrinsics.checkNotNullParameter(snapshot, "snapshot");
            List list = q.f1036a;
            s sVarB = q.b(snapshot.a());
            p023i1.r rVar2 = new p023i1.r();
            Iterator it = q.f1036a.iterator();
            while (it.hasNext()) {
                String str6 = strO;
                p pVar = ((n) it.next()).f1013a;
                rVar2.h(pVar.b, Boolean.valueOf(sVarB.b(pVar)));
                it = it;
                strO = str6;
            }
            str = strO;
            String string2 = rVar2.toString();
            Intrinsics.checkNotNullExpressionValue(string2, "toString(...)");
            if (snapshot.b(p.TYRANO_LARGE_IMAGE_RESCALE)) {
                Intrinsics.checkNotNullParameter("Tyrano", "runtimeLabel");
                strV = com.bumptech.glide.c.v("Tyrano");
            }
            String strTrimIndent2 = StringsKt.trimIndent("\n        (function(){\n            if (window.__minhubTyranoPrelude) return;\n            window.__minhubTyranoPrelude = true;\n\n            window.__minhubUtilities = " + string2 + ";\n\n            if (typeof process === 'undefined' || !process) {\n                window.process = {};\n            }\n            window.process.execPath = window.process.execPath || '/android_asset/index.html';\n            window.process.env = window.process.env || { HOME: '/sdcard' };\n            window.process.argv = window.process.argv || ['', ''];\n            window.process.platform = window.process.platform || 'android';\n            window.process.version = window.process.version || 'v14.0.0';\n            window.process.versions = window.process.versions || {};\n            window.process.mainModule = window.process.mainModule || { filename: 'index.html' };\n\n            if (typeof __dirname === 'undefined') {\n                window.__dirname = '';\n            }\n            if (typeof __filename === 'undefined') {\n                window.__filename = 'index.html';\n            }\n\n            var __appStub = {\n                getAppPath: function(){ return ''; },\n                getPath: function(){ return '/sdcard'; },\n                quit: function(){},\n                on: function(){}\n            };\n            var __ipcRendererStub = {\n                on: function(){ return this; },\n                once: function(){ return this; },\n                send: function(){},\n                sendSync: function(){ return null; },\n                removeListener: function(){ return this; },\n                removeAllListeners: function(){ return this; },\n                invoke: function(){ return Promise.resolve(null); }\n            };\n            var __electronStub = {\n                app: __appStub,\n                remote: { app: __appStub, getGlobal: function(){ return {}; }, getCurrentWindow: function(){ return {}; } },\n                ipcRenderer: __ipcRendererStub,\n                ipcMain: null,\n                shell: { openExternal: function(){}, openPath: function(){} },\n                clipboard: { writeText: function(){}, readText: function(){ return ''; } }\n            };\n            var __nwStub = {\n                Window: { get: function(){ return { focus:function(){}, moveTo:function(){}, resizeTo:function(){}, maximize:function(){} }; } },\n                App: { quit: function(){}, manifest: {}, dataPath: '/sdcard', clearCache: function(){} }\n            };\n            var __fsStub = {\n                readFileSync:function(){ return ''; },\n                writeFileSync:function(){},\n                existsSync:function(){ return false; },\n                mkdirSync:function(){},\n                readdirSync:function(){ return []; },\n                unlinkSync:function(){},\n                appendFileSync:function(){},\n                statSync:function(){ return { isFile:function(){ return false; }, isDirectory:function(){ return false; }, size:0 }; },\n                lstatSync:function(){ return { isFile:function(){ return false; }, isDirectory:function(){ return false; } }; },\n                readdir:function(path, cb){ if (cb) cb(null, []); },\n                readFile:function(path, opts, cb){ if (typeof opts === 'function') cb = opts; if (cb) cb(null, ''); },\n                writeFile:function(path, data, cb){ if (cb) cb(null); }\n            };\n            var __pathStub = {\n                join:function(){ return Array.prototype.slice.call(arguments).join('/'); },\n                dirname:function(p){ var i=p.lastIndexOf('/'); return i>=0?p.substring(0,i):p; },\n                basename:function(p){ return p.split('/').pop(); },\n                extname:function(p){ var b=p.split('/').pop(); var i=b.lastIndexOf('.'); return i>0?b.substring(i):''; }\n            };\n\n            // Luôn wrap require — kể cả khi game có require từ bundler riêng.\n            // Lý do: libs.js của Tyrano có thể định nghĩa require nội bộ (webpack/browserify)\n            // không biết về 'electron' → require('electron') trả undefined → crash ipcRenderer.\n            //\n            // QUAN TRỌNG: Với module không biết (vd: đường dẫn file .js), phải THROW thay vì\n            // return {}. Tyrano code như:\n            //   try { window.$ = require('./tyrano/libs/jquery.min.js'); } catch(e) {}\n            // nếu require() trả {} thì window.$ bị overwrite → jQuery mất → crash toàn bộ.\n            // Nếu require() throw → try-catch bắt → window.$ giữ nguyên jQuery đã load qua <script src>.\n            var _prevRequire = (typeof require === 'function') ? require : null;\n            window.require = function(module) {\n                if (module === 'electron') return __electronStub;\n                if (module === 'nw.gui' || module === 'nw') return __nwStub;\n                if (module === 'fs') return __fsStub;\n                if (module === 'path') return __pathStub;\n                if (_prevRequire) { try { return _prevRequire(module); } catch(e) {} }\n                throw new Error('[MinHub] Cannot find module: ' + module);\n            };\n\n            // Safety net: một số Tyrano game truy cập window.ipcRenderer trực tiếp\n            if (!window.ipcRenderer) window.ipcRenderer = __ipcRendererStub;\n\n            // webpack externals: libs.js được bundle bằng webpack nên require('electron')\n            // được resolve thành window['electron'] (không đi qua window.require của chúng ta).\n            // Phải set window.electron để webpack tìm được stub.\n            if (!window.electron) window.electron = __electronStub;\n\n            // Tương tự cho nw và nw.gui (NW.js externals)\n            if (!window.nw) window.nw = __nwStub;\n\n            // window.studio_api: TyranoStudio IDE API — chỉ có trong Electron desktop.\n            // libs.js:995 gọi window.studio_api.ipcRenderer.sendSync(\"getAppPath\") KHÔNG có\n            // null check → crash nếu studio_api undefined. Stub để tránh uncaught error.\n            if (!window.studio_api) {\n                window.studio_api = {\n                    ipcRenderer: {\n                        sendSync: function(cmd) {\n                            if (cmd === 'getAppPath') return '';\n                            // \"getProcess\" trả về window.process đã setup sẵn.\n                            if (cmd === 'getProcess') return window.process;\n                            // \"doubleCheck\": phải return true (truthy) để kag.js KHÔNG\n                            // chạy block alert(\"double_start\") + window.close() gây màn hình đen.\n                            // Logic kag.js: if($.isElectron() && !sendSync(\"doubleCheck\")) → close\n                            // → !true = false → block bị skip → game chạy bình thường.\n                            if (cmd === 'doubleCheck') return true;\n                            if (cmd === 'showSelectFileDialog') return null;\n                            return null;\n                        },\n                        send: function() {},\n                        on: function() { return this; },\n                        removeAllListeners: function() { return this; },\n                        removeListener: function() { return this; }\n                    },\n                    // studio_api.fs: dùng bởi applyPatch trong kag.js\n                    // existsSync trả false → bỏ qua việc apply patch (file không tồn tại)\n                    fs: {\n                        existsSync: function() { return false; },\n                        copySync: function() {},\n                        removeSync: function() {},\n                        mkdirSync: function() {},\n                        readFileSync: function() { return ''; },\n                        writeFileSync: function() {}\n                    },\n                    path: {\n                        join: function() { return Array.prototype.slice.call(arguments).join('/'); },\n                        resolve: function() { return ''; },\n                        dirname: function(p) { return p ? p.split('/').slice(0,-1).join('/') : ''; }\n                    }\n                };\n            }\n\n            // [0.8.0] Vô hiệu hoá desktop auto-update của Tyrano (checkUpdate) trên mobile.\n            // kag.js gọi checkUpdate(init_game) lúc boot. checkUpdate chỉ gọi callback (→ init_game)\n            // ở nhánh \"không NWJS\" / \"patch_apply_auto=false\"; nhánh desktop đi qua localFilePath +\n            // applyPatch(studio_api.fs). Dù prelude đã stub các API đó, applyPatch của MỘT SỐ kag.js\n            // KHÔNG gọi callback khi .tpatch không tồn tại (existsSync=false) → init_game không chạy →\n            // đen màn (đây là gốc của ~100 report game Naughty ở APK cũ). Mobile không có .tpatch cục bộ\n            // nên bỏ hẳn: override checkUpdate = gọi thẳng callback. Prelude chạy TRƯỚC mọi script game\n            // nên poll này wrap được kag.checkUpdate ngay khi kag.js định nghĩa — trước cú loadConfig→\n            // checkUpdate (bất đồng bộ) → chắc ăn cho MỌI game Tyrano, không phụ thuộc nội bộ kag.js.\n            (function(){\n                var __mhTries = 0;\n                var __mhIv = setInterval(function(){\n                    try {\n                        var kag = window.tyrano && window.tyrano.plugin && window.tyrano.plugin.kag;\n                        if (kag && typeof kag.checkUpdate === 'function' && !kag.checkUpdate.__mhNeutralized) {\n                            var __mhCU = function(call_back){ if (typeof call_back === 'function') call_back(); };\n                            __mhCU.__mhNeutralized = true;\n                            kag.checkUpdate = __mhCU;\n                            clearInterval(__mhIv);\n                        }\n                    } catch(e){}\n                    if (++__mhTries > 1200) clearInterval(__mhIv);\n                }, 8);\n            })();\n\n            " + strV + "\n        })();\n    ");
            StringBuilder sb2 = new StringBuilder("\n            <!-- MinHub prelude — must run before any game scripts -->\n            <script>\n            ");
            sb2.append(strTrimIndent2);
            sb2.append("\n            </script>\n        ");
            String strG3 = kotlin.collections.unsigned.a.g(StringsKt.trimIndent(sb2.toString()), strM2);
            String strTrimIndent3 = StringsKt.trimIndent("\n            <!-- TyranoPlayer injected by MinHub -->\n            <script>\n            " + playerScript + "\n            </script>\n        ");
            MatchResult matchResultFind$default5 = Regex.find$default(new Regex("<head[^>]*>", RegexOption.IGNORE_CASE), indexHtml3, 0, 2, null);
            if (matchResultFind$default5 != null) {
                int last3 = matchResultFind$default5.getRange().getLast() + 1;
                String strSubstring9 = indexHtml3.substring(0, last3);
                Intrinsics.checkNotNullExpressionValue(strSubstring9, "substring(...)");
                String strSubstring10 = indexHtml3.substring(last3);
                Intrinsics.checkNotNullExpressionValue(strSubstring10, "substring(...)");
                strH = strSubstring9 + "\n" + strG3 + "\n" + strSubstring10;
            } else {
                strH = kotlin.collections.unsigned.a.h(strG3, "\n", indexHtml3);
            }
            if (StringsKt__StringsKt.contains$default((CharSequence) strH, (CharSequence) "<!-- Others -->", false, 2, (Object) null)) {
                indexHtml = StringsKt__StringsJVMKt.replace$default(strH, "<!-- Others -->", strTrimIndent3 + "\n<!-- Others -->", false, 4, (Object) null);
            } else if (StringsKt__StringsKt.contains(strH, (CharSequence) "</head>", true)) {
                indexHtml = StringsKt__StringsJVMKt.replace(strH, "</head>", strTrimIndent3 + "\n</head>", true);
            } else {
                indexHtml = kotlin.collections.unsigned.a.h(strH, "\n", strTrimIndent3);
            }
        } catch (Throwable th7) {
            try {
                throw th7;
            } catch (Throwable th8) {
                CloseableKt.closeFinally(bufferedReader, th7);
                throw th8;
            }
        }
        file = null;
        str2 = indexHtml;
        Intrinsics.checkNotNullParameter(engine, "engine");
        if (engine != GameEngine.TYRANO) {
            Result.Companion companion6 = Result.INSTANCE;
            HashMap map2 = X.f6155a;
            objM9constructorimpl2 = Result.m9constructorimpl(X.c(bVar.f2056a, str2));
            thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(objM9constructorimpl2);
            if (thM12exceptionOrNullimpl != null) {
                Log.w("MinHub-Launch", "Boot page write failed", thM12exceptionOrNullimpl);
            }
            if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                objM9constructorimpl2 = file;
            }
            file2 = (File) objM9constructorimpl2;
        } else {
            file2 = file;
        }
        if (file2 != null) {
            webView2.loadDataWithBaseURL(str, str2, "text/html", "UTF-8", str);
            return;
        }
        context3.f3685I = bVar.f2056a;
        webView2.loadUrl("file://" + file2.getAbsolutePath());
    }

    public final void D() {
        String strReplace;
        String title;
        String strTake;
        try {
            WebView webView = u().f5707q0;
            Intrinsics.checkNotNullExpressionValue(webView, "webView");
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(RangesKt.coerceAtLeast(webView.getWidth(), 1), RangesKt.coerceAtLeast(webView.getHeight(), 1), Bitmap.Config.ARGB_8888);
            Intrinsics.checkNotNullExpressionValue(bitmapCreateBitmap, "createBitmap(...)");
            webView.draw(new Canvas(bitmapCreateBitmap));
            Game game = this.f3695o;
            if (game == null || (title = game.getTitle()) == null || (strTake = StringsKt.take(title, 20)) == null || (strReplace = new Regex("\\W+").replace(strTake, "_")) == null) {
                strReplace = "Game";
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            StringBuilder sb = new StringBuilder("MinHub_");
            sb.append(strReplace);
            sb.append("_");
            sb.append(jCurrentTimeMillis);
            sb.append(".png");
            Toast.makeText(this, A(bitmapCreateBitmap, sb.toString()) ? getString(R.string.screenshot_ok) : getString(R.string.screenshot_fail), 0).show();
        } catch (Throwable th) {
            Log.e("MinHub", "screenshot failed", th);
            Toast.makeText(this, getString(R.string.error_message_format, th.getMessage()), 0).show();
        }
    }

    public final void E() {
        String string = getString(R.string.menu_section_chevron_collapsed);
        Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
        String string2 = getString(R.string.menu_section_chevron_expanded);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
        u().f5670Q.setVisibility(this.f3698r.f6310a ? 0 : 8);
        u().f5672S.setVisibility(this.f3698r.b ? 0 : 8);
        u().f5675V.setVisibility(this.f3698r.f6311c ? 0 : 8);
        u().f5673T.setVisibility(this.f3698r.f6312d ? 0 : 8);
        u().f5674U.setVisibility(this.f3698r.f6313e ? 0 : 8);
        u().f5689g0.setText(this.f3698r.f6310a ? string2 : string);
        u().f5691h0.setText(this.f3698r.b ? string2 : string);
        u().f5697k0.setText(this.f3698r.f6311c ? string2 : string);
        u().f5693i0.setText(this.f3698r.f6312d ? string2 : string);
        TextView textView = u().f5695j0;
        if (this.f3698r.f6313e) {
            string = string2;
        }
        textView.setText(string);
    }

    public final void F() {
        String strG = S1.d.g(this);
        for (kotlin.Pair pair : CollectionsKt.listOf((Object[]) new kotlin.Pair[]{TuplesKt.to(u().f5714x, "device-width"), TuplesKt.to(u().f5712v, "960x540"), TuplesKt.to(u().f5713w, "1280x720"), TuplesKt.to(u().f5711u, "1920x1080")})) {
            Object objComponent1 = pair.component1();
            Intrinsics.checkNotNullExpressionValue(objComponent1, "component1(...)");
            ((Button) objComponent1).setTextColor(Color.parseColor(Intrinsics.areEqual(strG, (String) pair.component2()) ? "#EF4444" : "#F0F0F6"));
        }
    }

    @Override // p011e.AbstractActivityC0248j, androidx.core.app.ComponentActivity, android.app.Activity, android.view.Window.Callback
    public final boolean dispatchKeyEvent(KeyEvent event) {
        Intrinsics.checkNotNullParameter(event, "event");
        if (!event.isFromSource(InputDeviceCompat.SOURCE_GAMEPAD) && !event.isFromSource(InputDeviceCompat.SOURCE_JOYSTICK) && L1.i(event.getKeyCode()) == null) {
            return super.dispatchKeyEvent(event);
        }
        String inputId = L1.i(event.getKeyCode());
        if (inputId == null) {
            return super.dispatchKeyEvent(event);
        }
        z zVar = this.f3706z;
        if (zVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("physicalGamepadMappingManager");
            zVar = null;
        }
        zVar.getClass();
        Intrinsics.checkNotNullParameter(inputId, "inputId");
        String keyCode = (String) zVar.c().get(inputId);
        if (!S1.d.e(this) || keyCode == null || StringsKt.isBlank(keyCode)) {
            return super.dispatchKeyEvent(event);
        }
        int action = event.getAction();
        if (action == 0) {
            GamepadOverlay gamepadOverlay = u().K;
            Intrinsics.checkNotNull(keyCode);
            Intrinsics.checkNotNullParameter(keyCode, "keyCode");
            gamepadOverlay.e(keyCode, true);
            return true;
        }
        if (action != 1) {
            return super.dispatchKeyEvent(event);
        }
        GamepadOverlay gamepadOverlay2 = u().K;
        Intrinsics.checkNotNull(keyCode);
        Intrinsics.checkNotNullParameter(keyCode, "keyCode");
        gamepadOverlay2.e(keyCode, false);
        return true;
    }

    public final void m() {
        u().f5702n.setText(getString(this.f3699s ? R.string.fps_on : R.string.fps_off));
        u().f5688f0.setVisibility(this.f3699s ? 0 : 8);
        if (!this.f3699s || this.f3693m == null) {
            return;
        }
        WebView wv = u().f5707q0;
        Intrinsics.checkNotNullExpressionValue(wv, "webView");
        Intrinsics.checkNotNullParameter(wv, "wv");
        wv.evaluateJavascript("(function(){\n  if (window.__minhubFps) return;\n  window.__minhubFps = true;\n  var frames = 0, last = performance.now();\n  function loop(now){\n    frames++;\n    if (now - last >= 1000) {\n      try { window.MinHub && window.MinHub.setFps(frames); } catch(e) {}\n      frames = 0; last = now;\n    }\n    requestAnimationFrame(loop);\n  }\n  requestAnimationFrame(loop);\n})();", null);
    }

    public final void n(int i3) {
        String string;
        String str;
        u().f5707q0.evaluateJavascript(i3 <= 0 ? "(function(){var s=document.getElementById('_mh_fs');if(s)s.remove();})();" : E.b.j(i3, "(function(){var s=document.getElementById('_mh_fs');if(!s){s=document.createElement('style');s.id='_mh_fs';document.head.appendChild(s);}s.textContent='*{font-size:", "px!important}';})();"), null);
        Game game = this.f3695o;
        GameEngine engineEnum = game != null ? GameKt.getEngineEnum(game) : null;
        int i4 = engineEnum == null ? -1 : K.f6094a[engineEnum.ordinal()];
        if (i4 == 6) {
            if (i3 <= 0) {
                string = "(function(){if(window.Window_Base&&Window_Base.prototype._mhOrigStdFs){Window_Base.prototype.standardFontSize=Window_Base.prototype._mhOrigStdFs;delete Window_Base.prototype._mhOrigStdFs;}if(window.Game_System){if(Game_System.prototype._mhOrigGetMsgFs){Game_System.prototype.getMessageFontSize=Game_System.prototype._mhOrigGetMsgFs;delete Game_System.prototype._mhOrigGetMsgFs;}if(Game_System.prototype._mhOrigMainFs){Game_System.prototype.mainFontSize=Game_System.prototype._mhOrigMainFs;delete Game_System.prototype._mhOrigMainFs;}}})();";
            } else {
                StringBuilder sbP = E.b.p("(function(){if(window.Window_Base){if(!Window_Base.prototype._mhOrigStdFs&&typeof Window_Base.prototype.standardFontSize==='function')Window_Base.prototype._mhOrigStdFs=Window_Base.prototype.standardFontSize;Window_Base.prototype.standardFontSize=function(){return ", i3, i3, ";};}if(window.Game_System){if(typeof Game_System.prototype.getMessageFontSize==='function'){if(!Game_System.prototype._mhOrigGetMsgFs)Game_System.prototype._mhOrigGetMsgFs=Game_System.prototype.getMessageFontSize;Game_System.prototype.getMessageFontSize=function(){return ", ";};}if(typeof Game_System.prototype.mainFontSize==='function'){if(!Game_System.prototype._mhOrigMainFs)Game_System.prototype._mhOrigMainFs=Game_System.prototype.mainFontSize;Game_System.prototype.mainFontSize=function(){return ");
                sbP.append(i3);
                sbP.append(";};}}})();");
                string = sbP.toString();
            }
            u().f5707q0.evaluateJavascript(string, null);
            return;
        }
        if (i4 != 7) {
            return;
        }
        if (i3 <= 0) {
            str = "(function(){try{if(window.Game_System&&Game_System.prototype._mhOrigMainFs){Game_System.prototype.mainFontSize=Game_System.prototype._mhOrigMainFs;delete Game_System.prototype._mhOrigMainFs;}if(typeof $gameSystem!=='undefined'&&$gameSystem&&$gameSystem._mhOrigMainFs){$gameSystem.mainFontSize=$gameSystem._mhOrigMainFs;delete $gameSystem._mhOrigMainFs;}}catch(e){}})();";
        } else {
            str = "(function(){try{if(window.Game_System&&typeof Game_System.prototype.mainFontSize==='function'){if(!Game_System.prototype._mhOrigMainFs)Game_System.prototype._mhOrigMainFs=Game_System.prototype.mainFontSize;Game_System.prototype.mainFontSize=function(){return " + i3 + ";};}if(typeof $gameSystem!=='undefined'&&$gameSystem){if(!$gameSystem._mhOrigMainFs&&typeof $gameSystem.mainFontSize==='function')$gameSystem._mhOrigMainFs=$gameSystem.mainFontSize;$gameSystem.mainFontSize=function(){return " + i3 + ";};}}catch(e){}})();";
        }
        u().f5707q0.evaluateJavascript(str, null);
    }

    public final void o(boolean z2) {
        GameEngine engineEnum;
        Game game = this.f3695o;
        if (game == null || (engineEnum = GameKt.getEngineEnum(game)) == null) {
            return;
        }
        if (engineEnum == GameEngine.MV || engineEnum == GameEngine.MZ) {
            u().f5707q0.evaluateJavascript(z2 ? "(function(){try{if(typeof $gameSystem!=='undefined'&&$gameSystem&&typeof $gameSystem.setMessageWindowWordWrap==='function')$gameSystem.setMessageWindowWordWrap(true);}catch(e){}if(typeof Window_Message!=='undefined'&&typeof Window_Message.prototype.isWordWrap==='function'){if(!Window_Message.prototype._mhOrigIsWW)Window_Message.prototype._mhOrigIsWW=Window_Message.prototype.isWordWrap;Window_Message.prototype.isWordWrap=function(){return true;};}})();" : "(function(){try{if(typeof $gameSystem!=='undefined'&&$gameSystem&&typeof $gameSystem.setMessageWindowWordWrap==='function')$gameSystem.setMessageWindowWordWrap(false);}catch(e){}if(typeof Window_Message!=='undefined'&&Window_Message.prototype._mhOrigIsWW){Window_Message.prototype.isWordWrap=Window_Message.prototype._mhOrigIsWW;delete Window_Message.prototype._mhOrigIsWW;}})();", null);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        C0385j1 c0385j1 = this.f3701u;
        if (c0385j1 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("controlsCoordinator");
            c0385j1 = null;
        }
        if (c0385j1.f()) {
            return;
        }
        if (u().f5668O.getVisibility() == 0) {
            u().f5668O.setVisibility(8);
        } else if (u().f5669P.getVisibility() == 0) {
            u().f5669P.setVisibility(8);
        } else {
            x();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [y1.x] */
    /* JADX WARN: Type inference failed for: r2v1, types: [y1.x] */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        final int i3 = 0;
        final int i4 = 1;
        this.f3684H = p000a.a.r(this, "web", new Runnable(this) { // from class: y1.x

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ GameActivity f6398c;

            {
                this.f6398c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i5 = i3;
                GameActivity gameActivity = this.f6398c;
                switch (i5) {
                    case 0:
                        int i6 = GameActivity.f3676L;
                        gameActivity.u().f5707q0.stopLoading();
                        gameActivity.u().f5707q0.destroy();
                        gameActivity.finish();
                        break;
                    default:
                        int i7 = GameActivity.f3676L;
                        gameActivity.u().f5707q0.stopLoading();
                        gameActivity.u().f5707q0.destroy();
                        gameActivity.finishAndRemoveTask();
                        Process.killProcess(Process.myPid());
                        break;
                }
            }
        }, new Runnable(this) { // from class: y1.x

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final /* synthetic */ GameActivity f6398c;

            {
                this.f6398c = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                int i5 = i4;
                GameActivity gameActivity = this.f6398c;
                switch (i5) {
                    case 0:
                        int i6 = GameActivity.f3676L;
                        gameActivity.u().f5707q0.stopLoading();
                        gameActivity.u().f5707q0.destroy();
                        gameActivity.finish();
                        break;
                    default:
                        int i7 = GameActivity.f3676L;
                        gameActivity.u().f5707q0.stopLoading();
                        gameActivity.u().f5707q0.destroy();
                        gameActivity.finishAndRemoveTask();
                        Process.killProcess(Process.myPid());
                        break;
                }
            }
        });
        if (bundle == null) {
            L1.b = false;
        }
        AbstractC0369e0.a(this, getIntent().getIntExtra("game_id", -1));
        getWindow().addFlags(128);
        w();
        g2 g2Var = null;
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_game, (ViewGroup) null, false);
        int i5 = R.id.btn_arrange_cancel;
        Button button = (Button) viewInflate.findViewById(R.id.btn_arrange_cancel);
        if (button != null) {
            i5 = R.id.btn_arrange_save;
            Button button2 = (Button) viewInflate.findViewById(R.id.btn_arrange_save);
            if (button2 != null) {
                i5 = R.id.btn_close_customize;
                if (((TextView) viewInflate.findViewById(R.id.btn_close_customize)) != null) {
                    i5 = R.id.btn_close_load_save;
                    TextView textView = (TextView) viewInflate.findViewById(R.id.btn_close_load_save);
                    if (textView != null) {
                        i5 = R.id.btn_game_font_size_apply;
                        TextView textView2 = (TextView) viewInflate.findViewById(R.id.btn_game_font_size_apply);
                        if (textView2 != null) {
                            i5 = R.id.btn_game_font_size_reset;
                            TextView textView3 = (TextView) viewInflate.findViewById(R.id.btn_game_font_size_reset);
                            if (textView3 != null) {
                                i5 = R.id.btn_menu;
                                ImageView imageView = (ImageView) viewInflate.findViewById(R.id.btn_menu);
                                if (imageView != null) {
                                    i5 = R.id.btn_menu_advanced_cheat;
                                    Button button3 = (Button) viewInflate.findViewById(R.id.btn_menu_advanced_cheat);
                                    if (button3 != null) {
                                        i5 = R.id.btn_menu_basic_cheat;
                                        Button button4 = (Button) viewInflate.findViewById(R.id.btn_menu_basic_cheat);
                                        if (button4 != null) {
                                            i5 = R.id.btn_menu_bug_report;
                                            Button button5 = (Button) viewInflate.findViewById(R.id.btn_menu_bug_report);
                                            if (button5 != null) {
                                                i5 = R.id.btn_menu_buttons;
                                                Button button6 = (Button) viewInflate.findViewById(R.id.btn_menu_buttons);
                                                if (button6 != null) {
                                                    i5 = R.id.btn_menu_editor;
                                                    Button button7 = (Button) viewInflate.findViewById(R.id.btn_menu_editor);
                                                    if (button7 != null) {
                                                        i5 = R.id.btn_menu_exit;
                                                        Button button8 = (Button) viewInflate.findViewById(R.id.btn_menu_exit);
                                                        if (button8 != null) {
                                                            i5 = R.id.btn_menu_fps;
                                                            Button button9 = (Button) viewInflate.findViewById(R.id.btn_menu_fps);
                                                            if (button9 != null) {
                                                                i5 = R.id.btn_menu_load;
                                                                Button button10 = (Button) viewInflate.findViewById(R.id.btn_menu_load);
                                                                if (button10 != null) {
                                                                    i5 = R.id.btn_menu_play_hints;
                                                                    Button button11 = (Button) viewInflate.findViewById(R.id.btn_menu_play_hints);
                                                                    if (button11 != null) {
                                                                        i5 = R.id.btn_menu_reduce_fx;
                                                                        Button button12 = (Button) viewInflate.findViewById(R.id.btn_menu_reduce_fx);
                                                                        if (button12 != null) {
                                                                            i5 = R.id.btn_menu_reveal_events;
                                                                            Button button13 = (Button) viewInflate.findViewById(R.id.btn_menu_reveal_events);
                                                                            if (button13 != null) {
                                                                                i5 = R.id.btn_menu_save;
                                                                                Button button14 = (Button) viewInflate.findViewById(R.id.btn_menu_save);
                                                                                if (button14 != null) {
                                                                                    i5 = R.id.btn_menu_screenshot;
                                                                                    Button button15 = (Button) viewInflate.findViewById(R.id.btn_menu_screenshot);
                                                                                    if (button15 != null) {
                                                                                        i5 = R.id.btn_resolution_1080p;
                                                                                        Button button16 = (Button) viewInflate.findViewById(R.id.btn_resolution_1080p);
                                                                                        if (button16 != null) {
                                                                                            i5 = R.id.btn_resolution_540p;
                                                                                            Button button17 = (Button) viewInflate.findViewById(R.id.btn_resolution_540p);
                                                                                            if (button17 != null) {
                                                                                                i5 = R.id.btn_resolution_720p;
                                                                                                Button button18 = (Button) viewInflate.findViewById(R.id.btn_resolution_720p);
                                                                                                if (button18 != null) {
                                                                                                    i5 = R.id.btn_resolution_device;
                                                                                                    Button button19 = (Button) viewInflate.findViewById(R.id.btn_resolution_device);
                                                                                                    if (button19 != null) {
                                                                                                        i5 = R.id.btn_shape_circle;
                                                                                                        if (((LinearLayout) viewInflate.findViewById(R.id.btn_shape_circle)) != null) {
                                                                                                            i5 = R.id.btn_shape_rect;
                                                                                                            if (((LinearLayout) viewInflate.findViewById(R.id.btn_shape_rect)) != null) {
                                                                                                                i5 = R.id.btn_shape_rounded;
                                                                                                                if (((LinearLayout) viewInflate.findViewById(R.id.btn_shape_rounded)) != null) {
                                                                                                                    i5 = R.id.btn_toggle_customize;
                                                                                                                    if (((TextView) viewInflate.findViewById(R.id.btn_toggle_customize)) != null) {
                                                                                                                        i5 = R.id.color_blue;
                                                                                                                        View viewFindViewById = viewInflate.findViewById(R.id.color_blue);
                                                                                                                        if (viewFindViewById != null) {
                                                                                                                            i5 = R.id.color_gray;
                                                                                                                            View viewFindViewById2 = viewInflate.findViewById(R.id.color_gray);
                                                                                                                            if (viewFindViewById2 != null) {
                                                                                                                                i5 = R.id.color_green;
                                                                                                                                View viewFindViewById3 = viewInflate.findViewById(R.id.color_green);
                                                                                                                                if (viewFindViewById3 != null) {
                                                                                                                                    i5 = R.id.color_orange;
                                                                                                                                    View viewFindViewById4 = viewInflate.findViewById(R.id.color_orange);
                                                                                                                                    if (viewFindViewById4 != null) {
                                                                                                                                        i5 = R.id.color_pink;
                                                                                                                                        View viewFindViewById5 = viewInflate.findViewById(R.id.color_pink);
                                                                                                                                        if (viewFindViewById5 != null) {
                                                                                                                                            i5 = R.id.color_purple;
                                                                                                                                            View viewFindViewById6 = viewInflate.findViewById(R.id.color_purple);
                                                                                                                                            if (viewFindViewById6 != null) {
                                                                                                                                                i5 = R.id.color_red;
                                                                                                                                                View viewFindViewById7 = viewInflate.findViewById(R.id.color_red);
                                                                                                                                                if (viewFindViewById7 != null) {
                                                                                                                                                    i5 = R.id.color_white;
                                                                                                                                                    View viewFindViewById8 = viewInflate.findViewById(R.id.color_white);
                                                                                                                                                    if (viewFindViewById8 != null) {
                                                                                                                                                        i5 = R.id.color_yellow;
                                                                                                                                                        View viewFindViewById9 = viewInflate.findViewById(R.id.color_yellow);
                                                                                                                                                        if (viewFindViewById9 != null) {
                                                                                                                                                            i5 = R.id.controls_host;
                                                                                                                                                            FrameLayout frameLayout = (FrameLayout) viewInflate.findViewById(R.id.controls_host);
                                                                                                                                                            if (frameLayout != null) {
                                                                                                                                                                i5 = R.id.editor_host;
                                                                                                                                                                FrameLayout frameLayout2 = (FrameLayout) viewInflate.findViewById(R.id.editor_host);
                                                                                                                                                                if (frameLayout2 != null) {
                                                                                                                                                                    i5 = R.id.et_game_font_size;
                                                                                                                                                                    EditText editText = (EditText) viewInflate.findViewById(R.id.et_game_font_size);
                                                                                                                                                                    if (editText != null) {
                                                                                                                                                                        i5 = R.id.gamepad_overlay;
                                                                                                                                                                        GamepadOverlay gamepadOverlay = (GamepadOverlay) viewInflate.findViewById(R.id.gamepad_overlay);
                                                                                                                                                                        if (gamepadOverlay != null) {
                                                                                                                                                                            i5 = R.id.keyboard_host;
                                                                                                                                                                            FrameLayout frameLayout3 = (FrameLayout) viewInflate.findViewById(R.id.keyboard_host);
                                                                                                                                                                            if (frameLayout3 != null) {
                                                                                                                                                                                i5 = R.id.layout_arrange_body;
                                                                                                                                                                                if (((LinearLayout) viewInflate.findViewById(R.id.layout_arrange_body)) != null) {
                                                                                                                                                                                    i5 = R.id.layout_arrange_properties;
                                                                                                                                                                                    LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.layout_arrange_properties);
                                                                                                                                                                                    if (linearLayout != null) {
                                                                                                                                                                                        i5 = R.id.layout_arrange_toolbar;
                                                                                                                                                                                        LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.layout_arrange_toolbar);
                                                                                                                                                                                        if (linearLayout2 != null) {
                                                                                                                                                                                            i5 = R.id.layout_load_save_overlay;
                                                                                                                                                                                            FrameLayout frameLayout4 = (FrameLayout) viewInflate.findViewById(R.id.layout_load_save_overlay);
                                                                                                                                                                                            if (frameLayout4 != null) {
                                                                                                                                                                                                i5 = R.id.layout_menu;
                                                                                                                                                                                                FrameLayout frameLayout5 = (FrameLayout) viewInflate.findViewById(R.id.layout_menu);
                                                                                                                                                                                                if (frameLayout5 != null) {
                                                                                                                                                                                                    i5 = R.id.layout_menu_buttons;
                                                                                                                                                                                                    LinearLayout linearLayout3 = (LinearLayout) viewInflate.findViewById(R.id.layout_menu_buttons);
                                                                                                                                                                                                    if (linearLayout3 != null) {
                                                                                                                                                                                                        i5 = R.id.layout_menu_card;
                                                                                                                                                                                                        ScrollView scrollView = (ScrollView) viewInflate.findViewById(R.id.layout_menu_card);
                                                                                                                                                                                                        if (scrollView != null) {
                                                                                                                                                                                                            i5 = R.id.layout_menu_cheats;
                                                                                                                                                                                                            LinearLayout linearLayout4 = (LinearLayout) viewInflate.findViewById(R.id.layout_menu_cheats);
                                                                                                                                                                                                            if (linearLayout4 != null) {
                                                                                                                                                                                                                i5 = R.id.layout_menu_other;
                                                                                                                                                                                                                LinearLayout linearLayout5 = (LinearLayout) viewInflate.findViewById(R.id.layout_menu_other);
                                                                                                                                                                                                                if (linearLayout5 != null) {
                                                                                                                                                                                                                    i5 = R.id.layout_menu_resolution;
                                                                                                                                                                                                                    LinearLayout linearLayout6 = (LinearLayout) viewInflate.findViewById(R.id.layout_menu_resolution);
                                                                                                                                                                                                                    if (linearLayout6 != null) {
                                                                                                                                                                                                                        i5 = R.id.layout_menu_save_load;
                                                                                                                                                                                                                        LinearLayout linearLayout7 = (LinearLayout) viewInflate.findViewById(R.id.layout_menu_save_load);
                                                                                                                                                                                                                        if (linearLayout7 != null) {
                                                                                                                                                                                                                            i5 = R.id.layout_resolution_section;
                                                                                                                                                                                                                            LinearLayout linearLayout8 = (LinearLayout) viewInflate.findViewById(R.id.layout_resolution_section);
                                                                                                                                                                                                                            if (linearLayout8 != null) {
                                                                                                                                                                                                                                i5 = R.id.row_menu_buttons_header;
                                                                                                                                                                                                                                LinearLayout linearLayout9 = (LinearLayout) viewInflate.findViewById(R.id.row_menu_buttons_header);
                                                                                                                                                                                                                                if (linearLayout9 != null) {
                                                                                                                                                                                                                                    i5 = R.id.row_menu_cheats_header;
                                                                                                                                                                                                                                    LinearLayout linearLayout10 = (LinearLayout) viewInflate.findViewById(R.id.row_menu_cheats_header);
                                                                                                                                                                                                                                    if (linearLayout10 != null) {
                                                                                                                                                                                                                                        i5 = R.id.row_menu_other_header;
                                                                                                                                                                                                                                        LinearLayout linearLayout11 = (LinearLayout) viewInflate.findViewById(R.id.row_menu_other_header);
                                                                                                                                                                                                                                        if (linearLayout11 != null) {
                                                                                                                                                                                                                                            i5 = R.id.row_menu_resolution_header;
                                                                                                                                                                                                                                            LinearLayout linearLayout12 = (LinearLayout) viewInflate.findViewById(R.id.row_menu_resolution_header);
                                                                                                                                                                                                                                            if (linearLayout12 != null) {
                                                                                                                                                                                                                                                i5 = R.id.row_menu_save_load_header;
                                                                                                                                                                                                                                                LinearLayout linearLayout13 = (LinearLayout) viewInflate.findViewById(R.id.row_menu_save_load_header);
                                                                                                                                                                                                                                                if (linearLayout13 != null) {
                                                                                                                                                                                                                                                    i5 = R.id.rv_load_saves;
                                                                                                                                                                                                                                                    RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.rv_load_saves);
                                                                                                                                                                                                                                                    if (recyclerView != null) {
                                                                                                                                                                                                                                                        i5 = R.id.sb_volume;
                                                                                                                                                                                                                                                        SeekBar seekBar = (SeekBar) viewInflate.findViewById(R.id.sb_volume);
                                                                                                                                                                                                                                                        if (seekBar != null) {
                                                                                                                                                                                                                                                            i5 = R.id.seek_opacity;
                                                                                                                                                                                                                                                            if (((SeekBar) viewInflate.findViewById(R.id.seek_opacity)) != null) {
                                                                                                                                                                                                                                                                i5 = R.id.seek_size;
                                                                                                                                                                                                                                                                if (((SeekBar) viewInflate.findViewById(R.id.seek_size)) != null) {
                                                                                                                                                                                                                                                                    i5 = R.id.shape_row;
                                                                                                                                                                                                                                                                    if (((LinearLayout) viewInflate.findViewById(R.id.shape_row)) != null) {
                                                                                                                                                                                                                                                                        i5 = R.id.sw_word_wrap;
                                                                                                                                                                                                                                                                        Switch r70 = (Switch) viewInflate.findViewById(R.id.sw_word_wrap);
                                                                                                                                                                                                                                                                        if (r70 != null) {
                                                                                                                                                                                                                                                                            i5 = R.id.tv_arrange_selected;
                                                                                                                                                                                                                                                                            if (((TextView) viewInflate.findViewById(R.id.tv_arrange_selected)) != null) {
                                                                                                                                                                                                                                                                                i5 = R.id.tv_fps;
                                                                                                                                                                                                                                                                                TextView textView4 = (TextView) viewInflate.findViewById(R.id.tv_fps);
                                                                                                                                                                                                                                                                                if (textView4 != null) {
                                                                                                                                                                                                                                                                                    i5 = R.id.tv_load_save_hint;
                                                                                                                                                                                                                                                                                    if (((TextView) viewInflate.findViewById(R.id.tv_load_save_hint)) != null) {
                                                                                                                                                                                                                                                                                        i5 = R.id.tv_menu_buttons_chevron;
                                                                                                                                                                                                                                                                                        TextView textView5 = (TextView) viewInflate.findViewById(R.id.tv_menu_buttons_chevron);
                                                                                                                                                                                                                                                                                        if (textView5 != null) {
                                                                                                                                                                                                                                                                                            i5 = R.id.tv_menu_cheats_chevron;
                                                                                                                                                                                                                                                                                            TextView textView6 = (TextView) viewInflate.findViewById(R.id.tv_menu_cheats_chevron);
                                                                                                                                                                                                                                                                                            if (textView6 != null) {
                                                                                                                                                                                                                                                                                                i5 = R.id.tv_menu_other_chevron;
                                                                                                                                                                                                                                                                                                TextView textView7 = (TextView) viewInflate.findViewById(R.id.tv_menu_other_chevron);
                                                                                                                                                                                                                                                                                                if (textView7 != null) {
                                                                                                                                                                                                                                                                                                    i5 = R.id.tv_menu_resolution_chevron;
                                                                                                                                                                                                                                                                                                    TextView textView8 = (TextView) viewInflate.findViewById(R.id.tv_menu_resolution_chevron);
                                                                                                                                                                                                                                                                                                    if (textView8 != null) {
                                                                                                                                                                                                                                                                                                        i5 = R.id.tv_menu_save_load_chevron;
                                                                                                                                                                                                                                                                                                        TextView textView9 = (TextView) viewInflate.findViewById(R.id.tv_menu_save_load_chevron);
                                                                                                                                                                                                                                                                                                        if (textView9 != null) {
                                                                                                                                                                                                                                                                                                            i5 = R.id.tv_menu_title;
                                                                                                                                                                                                                                                                                                            TextView textView10 = (TextView) viewInflate.findViewById(R.id.tv_menu_title);
                                                                                                                                                                                                                                                                                                            if (textView10 != null) {
                                                                                                                                                                                                                                                                                                                i5 = R.id.tv_no_load_saves;
                                                                                                                                                                                                                                                                                                                TextView textView11 = (TextView) viewInflate.findViewById(R.id.tv_no_load_saves);
                                                                                                                                                                                                                                                                                                                if (textView11 != null) {
                                                                                                                                                                                                                                                                                                                    i5 = R.id.tv_opacity_label;
                                                                                                                                                                                                                                                                                                                    if (((TextView) viewInflate.findViewById(R.id.tv_opacity_label)) != null) {
                                                                                                                                                                                                                                                                                                                        i5 = R.id.tv_physical_gamepad_warning;
                                                                                                                                                                                                                                                                                                                        TextView textView12 = (TextView) viewInflate.findViewById(R.id.tv_physical_gamepad_warning);
                                                                                                                                                                                                                                                                                                                        if (textView12 != null) {
                                                                                                                                                                                                                                                                                                                            i5 = R.id.tv_size_label;
                                                                                                                                                                                                                                                                                                                            if (((TextView) viewInflate.findViewById(R.id.tv_size_label)) != null) {
                                                                                                                                                                                                                                                                                                                                i5 = R.id.tv_subtitle;
                                                                                                                                                                                                                                                                                                                                TextView textView13 = (TextView) viewInflate.findViewById(R.id.tv_subtitle);
                                                                                                                                                                                                                                                                                                                                if (textView13 != null) {
                                                                                                                                                                                                                                                                                                                                    i5 = R.id.tv_volume_label;
                                                                                                                                                                                                                                                                                                                                    TextView textView14 = (TextView) viewInflate.findViewById(R.id.tv_volume_label);
                                                                                                                                                                                                                                                                                                                                    if (textView14 != null) {
                                                                                                                                                                                                                                                                                                                                        i5 = R.id.web_view;
                                                                                                                                                                                                                                                                                                                                        WebView webView = (WebView) viewInflate.findViewById(R.id.web_view);
                                                                                                                                                                                                                                                                                                                                        if (webView != null) {
                                                                                                                                                                                                                                                                                                                                            d dVar = new d((FrameLayout) viewInflate, button, button2, textView, textView2, textView3, imageView, button3, button4, button5, button6, button7, button8, button9, button10, button11, button12, button13, button14, button15, button16, button17, button18, button19, viewFindViewById, viewFindViewById2, viewFindViewById3, viewFindViewById4, viewFindViewById5, viewFindViewById6, viewFindViewById7, viewFindViewById8, viewFindViewById9, frameLayout, frameLayout2, editText, gamepadOverlay, frameLayout3, linearLayout, linearLayout2, frameLayout4, frameLayout5, linearLayout3, scrollView, linearLayout4, linearLayout5, linearLayout6, linearLayout7, linearLayout8, linearLayout9, linearLayout10, linearLayout11, linearLayout12, linearLayout13, recyclerView, seekBar, r70, textView4, textView5, textView6, textView7, textView8, textView9, textView10, textView11, textView12, textView13, textView14, webView);
                                                                                                                                                                                                                                                                                                                                            Intrinsics.checkNotNullExpressionValue(dVar, "inflate(...)");
                                                                                                                                                                                                                                                                                                                                            Intrinsics.checkNotNullParameter(dVar, "<set-?>");
                                                                                                                                                                                                                                                                                                                                            this.f3687e = dVar;
                                                                                                                                                                                                                                                                                                                                            setContentView(u().f5679a);
                                                                                                                                                                                                                                                                                                                                            this.f3704x = new SaveRepository(this);
                                                                                                                                                                                                                                                                                                                                            this.f3706z = new z(this);
                                                                                                                                                                                                                                                                                                                                            View viewFindViewById10 = findViewById(R.id.btn_basic_cheat_quick);
                                                                                                                                                                                                                                                                                                                                            Intrinsics.checkNotNullExpressionValue(viewFindViewById10, "findViewById(...)");
                                                                                                                                                                                                                                                                                                                                            ImageView imageView2 = (ImageView) viewFindViewById10;
                                                                                                                                                                                                                                                                                                                                            Intrinsics.checkNotNullParameter(imageView2, "<set-?>");
                                                                                                                                                                                                                                                                                                                                            this.f = imageView2;
                                                                                                                                                                                                                                                                                                                                            View viewFindViewById11 = findViewById(R.id.btn_cheat_quick);
                                                                                                                                                                                                                                                                                                                                            Intrinsics.checkNotNull(viewFindViewById11, "null cannot be cast to non-null type android.widget.ImageView");
                                                                                                                                                                                                                                                                                                                                            ImageView imageView3 = (ImageView) viewFindViewById11;
                                                                                                                                                                                                                                                                                                                                            Intrinsics.checkNotNullParameter(imageView3, "<set-?>");
                                                                                                                                                                                                                                                                                                                                            this.g = imageView3;
                                                                                                                                                                                                                                                                                                                                            GamepadOverlay gamepadOverlay2 = u().K;
                                                                                                                                                                                                                                                                                                                                            Intrinsics.checkNotNullExpressionValue(gamepadOverlay2, "gamepadOverlay");
                                                                                                                                                                                                                                                                                                                                            FrameLayout controlsHost = u().f5662H;
                                                                                                                                                                                                                                                                                                                                            Intrinsics.checkNotNullExpressionValue(controlsHost, "controlsHost");
                                                                                                                                                                                                                                                                                                                                            FrameLayout keyboardHost = u().f5665L;
                                                                                                                                                                                                                                                                                                                                            Intrinsics.checkNotNullExpressionValue(keyboardHost, "keyboardHost");
                                                                                                                                                                                                                                                                                                                                            FrameLayout editorHost = u().f5663I;
                                                                                                                                                                                                                                                                                                                                            Intrinsics.checkNotNullExpressionValue(editorHost, "editorHost");
                                                                                                                                                                                                                                                                                                                                            LinearLayout layoutArrangeToolbar = u().f5667N;
                                                                                                                                                                                                                                                                                                                                            Intrinsics.checkNotNullExpressionValue(layoutArrangeToolbar, "layoutArrangeToolbar");
                                                                                                                                                                                                                                                                                                                                            LinearLayout layoutArrangeProperties = u().f5666M;
                                                                                                                                                                                                                                                                                                                                            Intrinsics.checkNotNullExpressionValue(layoutArrangeProperties, "layoutArrangeProperties");
                                                                                                                                                                                                                                                                                                                                            this.f3701u = new C0385j1(this, gamepadOverlay2, controlsHost, keyboardHost, editorHost, layoutArrangeToolbar, layoutArrangeProperties, new C0415u(this, 2));
                                                                                                                                                                                                                                                                                                                                            final int i6 = 1;
                                                                                                                                                                                                                                                                                                                                            u().b.setOnClickListener(new View.OnClickListener(this) { // from class: y1.G

                                                                                                                                                                                                                                                                                                                                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                                                                                                                                                                                                                                                                                                                                public final /* synthetic */ GameActivity f6068c;

                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                    this.f6068c = this;
                                                                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                                                                @Override // android.view.View.OnClickListener
                                                                                                                                                                                                                                                                                                                                                public final void onClick(View view) {
                                                                                                                                                                                                                                                                                                                                                    switch (i6) {
                                                                                                                                                                                                                                                                                                                                                        case 0:
                                                                                                                                                                                                                                                                                                                                                            C0385j1 c0385j1 = this.f6068c.f3701u;
                                                                                                                                                                                                                                                                                                                                                            if (c0385j1 == null) {
                                                                                                                                                                                                                                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("controlsCoordinator");
                                                                                                                                                                                                                                                                                                                                                                c0385j1 = null;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            c0385j1.e(true);
                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                        default:
                                                                                                                                                                                                                                                                                                                                                            C0385j1 c0385j2 = this.f6068c.f3701u;
                                                                                                                                                                                                                                                                                                                                                            if (c0385j2 == null) {
                                                                                                                                                                                                                                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("controlsCoordinator");
                                                                                                                                                                                                                                                                                                                                                                c0385j2 = null;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            c0385j2.e(false);
                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                            });
                                                                                                                                                                                                                                                                                                                                            final int i7 = 0;
                                                                                                                                                                                                                                                                                                                                            u().f5682c.setOnClickListener(new View.OnClickListener(this) { // from class: y1.G

                                                                                                                                                                                                                                                                                                                                                /* JADX INFO: renamed from: c, reason: collision with root package name */
                                                                                                                                                                                                                                                                                                                                                public final /* synthetic */ GameActivity f6068c;

                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                    this.f6068c = this;
                                                                                                                                                                                                                                                                                                                                                }

                                                                                                                                                                                                                                                                                                                                                @Override // android.view.View.OnClickListener
                                                                                                                                                                                                                                                                                                                                                public final void onClick(View view) {
                                                                                                                                                                                                                                                                                                                                                    switch (i7) {
                                                                                                                                                                                                                                                                                                                                                        case 0:
                                                                                                                                                                                                                                                                                                                                                            C0385j1 c0385j1 = this.f6068c.f3701u;
                                                                                                                                                                                                                                                                                                                                                            if (c0385j1 == null) {
                                                                                                                                                                                                                                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("controlsCoordinator");
                                                                                                                                                                                                                                                                                                                                                                c0385j1 = null;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            c0385j1.e(true);
                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                        default:
                                                                                                                                                                                                                                                                                                                                                            C0385j1 c0385j2 = this.f6068c.f3701u;
                                                                                                                                                                                                                                                                                                                                                            if (c0385j2 == null) {
                                                                                                                                                                                                                                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("controlsCoordinator");
                                                                                                                                                                                                                                                                                                                                                                c0385j2 = null;
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            c0385j2.e(false);
                                                                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                            });
                                                                                                                                                                                                                                                                                                                                            this.f3705y = new g2(new h(12), new h(13), new C0418v(this, 0), false);
                                                                                                                                                                                                                                                                                                                                            u().f5683c0.setLayoutManager(new LinearLayoutManager(1));
                                                                                                                                                                                                                                                                                                                                            RecyclerView recyclerView2 = u().f5683c0;
                                                                                                                                                                                                                                                                                                                                            g2 g2Var2 = this.f3705y;
                                                                                                                                                                                                                                                                                                                                            if (g2Var2 == null) {
                                                                                                                                                                                                                                                                                                                                                Intrinsics.throwUninitializedPropertyAccessException("loadSaveAdapter");
                                                                                                                                                                                                                                                                                                                                            } else {
                                                                                                                                                                                                                                                                                                                                                g2Var = g2Var2;
                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                            recyclerView2.setAdapter(g2Var);
                                                                                                                                                                                                                                                                                                                                            u().f5684d.setOnClickListener(new ViewOnClickListenerC0421w(this, 0));
                                                                                                                                                                                                                                                                                                                                            int intExtra = getIntent().getIntExtra("game_id", -1);
                                                                                                                                                                                                                                                                                                                                            if (intExtra == -1) {
                                                                                                                                                                                                                                                                                                                                                finish();
                                                                                                                                                                                                                                                                                                                                                return;
                                                                                                                                                                                                                                                                                                                                            } else {
                                                                                                                                                                                                                                                                                                                                                ((Z0) this.f3691k.getValue()).b.observe(this, new C0117x0(new F(this, intExtra, 3), (byte) 0));
                                                                                                                                                                                                                                                                                                                                                return;
                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                }
                                                                                                                                                                                                                            }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                    }
                                                                                                                                                                                                                }
                                                                                                                                                                                                            }
                                                                                                                                                                                                        }
                                                                                                                                                                                                    }
                                                                                                                                                                                                }
                                                                                                                                                                                            }
                                                                                                                                                                                        }
                                                                                                                                                                                    }
                                                                                                                                                                                }
                                                                                                                                                                            }
                                                                                                                                                                        }
                                                                                                                                                                    }
                                                                                                                                                                }
                                                                                                                                                            }
                                                                                                                                                        }
                                                                                                                                                    }
                                                                                                                                                }
                                                                                                                                            }
                                                                                                                                        }
                                                                                                                                    }
                                                                                                                                }
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                }
                                                                                                            }
                                                                                                        }
                                                                                                    }
                                                                                                }
                                                                                            }
                                                                                        }
                                                                                    }
                                                                                }
                                                                            }
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i5)));
    }

    @Override // p011e.AbstractActivityC0248j, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        Object objM9constructorimpl;
        boolean zDelete;
        boolean z2;
        File gameRoot = this.f3685I;
        if (gameRoot != null) {
            HashMap map = X.f6155a;
            Intrinsics.checkNotNullParameter(gameRoot, "gameRoot");
            try {
                Result.Companion companion = Result.INSTANCE;
                String strA = X.a(gameRoot);
                HashMap map2 = X.f6155a;
                synchronized (map2) {
                    try {
                        Integer num = (Integer) map2.get(strA);
                        zDelete = false;
                        int iIntValue = (num != null ? num.intValue() : 0) - 1;
                        if (iIntValue > 0) {
                            map2.put(strA, Integer.valueOf(iIntValue));
                        } else {
                            map2.remove(strA);
                        }
                        z2 = iIntValue > 0;
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                if (!z2) {
                    File file = new File(gameRoot, "_minhub_boot.html");
                    if (file.isFile()) {
                        zDelete = file.delete();
                    }
                }
                objM9constructorimpl = Result.m9constructorimpl(Boolean.valueOf(zDelete));
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th2));
            }
            Boolean bool = Boolean.FALSE;
            if (Result.m15isFailureimpl(objM9constructorimpl)) {
                objM9constructorimpl = bool;
            }
            ((Boolean) objM9constructorimpl).getClass();
        }
        this.f3685I = null;
        Q1.d dVar = this.f3694n;
        if (dVar != null) {
            dVar.b();
        }
        this.f3694n = null;
        v0 v0Var = this.f3684H;
        if (v0Var != null) {
            v0Var.b();
        }
        AnimatorSet animatorSet = this.f3688h;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        AnimatorSet animatorSet2 = this.f3689i;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        AnimatorSet animatorSet3 = this.f3690j;
        if (animatorSet3 != null) {
            animatorSet3.cancel();
        }
        u().f5707q0.destroy();
        super.onDestroy();
    }

    @Override // android.app.Activity
    public final boolean onGenericMotionEvent(MotionEvent event) {
        String inputId;
        Intrinsics.checkNotNullParameter(event, "event");
        if (!S1.d.e(this) || !event.isFromSource(InputDeviceCompat.SOURCE_JOYSTICK)) {
            return super.onGenericMotionEvent(event);
        }
        float axisValue = event.getAxisValue(15);
        float axisValue2 = event.getAxisValue(16);
        z zVar = null;
        if (Math.abs(axisValue) < 0.5f && Math.abs(axisValue2) < 0.5f) {
            inputId = null;
        } else if (Math.abs(axisValue) > Math.abs(axisValue2)) {
            inputId = axisValue > 0.0f ? "DPAD_RIGHT" : "DPAD_LEFT";
        } else {
            inputId = axisValue2 > 0.0f ? "DPAD_DOWN" : "DPAD_UP";
        }
        if (Intrinsics.areEqual(inputId, this.f3678B)) {
            return super.onGenericMotionEvent(event);
        }
        String inputId2 = this.f3678B;
        if (inputId2 != null) {
            z zVar2 = this.f3706z;
            if (zVar2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("physicalGamepadMappingManager");
                zVar2 = null;
            }
            zVar2.getClass();
            Intrinsics.checkNotNullParameter(inputId2, "inputId");
            String keyCode = (String) zVar2.c().get(inputId2);
            if (keyCode != null) {
                GamepadOverlay gamepadOverlay = u().K;
                Intrinsics.checkNotNullParameter(keyCode, "keyCode");
                gamepadOverlay.e(keyCode, false);
            }
        }
        if (inputId != null) {
            z zVar3 = this.f3706z;
            if (zVar3 == null) {
                Intrinsics.throwUninitializedPropertyAccessException("physicalGamepadMappingManager");
            } else {
                zVar = zVar3;
            }
            zVar.getClass();
            Intrinsics.checkNotNullParameter(inputId, "inputId");
            String keyCode2 = (String) zVar.c().get(inputId);
            if (keyCode2 != null) {
                GamepadOverlay gamepadOverlay2 = u().K;
                Intrinsics.checkNotNullParameter(keyCode2, "keyCode");
                gamepadOverlay2.e(keyCode2, true);
            }
        }
        this.f3678B = inputId;
        if (inputId != null) {
            return true;
        }
        return super.onGenericMotionEvent(event);
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        u().f5707q0.onPause();
    }

    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        u().f5707q0.onResume();
        u().f5707q0.resumeTimers();
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks2
    public final void onTrimMemory(int i3) {
        super.onTrimMemory(i3);
        if (i3 >= 10 && this.f3687e != null) {
            Log.w("MinHub-Memory", "onTrimMemory level=" + i3 + " -> trimming textures");
            u().f5707q0.evaluateJavascript("(function(){try{var r=window.Graphics&&(Graphics._renderer||(Graphics.app&&Graphics.app.renderer));if(r&&r.textureGC){var m=r.textureGC.maxIdle;r.textureGC.maxIdle=60;r.textureGC.run();r.textureGC.maxIdle=m;}var c=window.ImageManager&&ImageManager._imageCache;if(c&&c._truncateCache&&window.ImageCache){var l=ImageCache.limit;ImageCache.limit=l/2;c._truncateCache();ImageCache.limit=l;}}catch(e){}})()", null);
        }
    }

    @Override // S1.c, android.app.Activity, android.view.Window.Callback
    public final void onWindowFocusChanged(boolean z2) {
        super.onWindowFocusChanged(z2);
        if (z2) {
            w();
        }
    }

    public final void t() {
        Game game;
        int iCurrentTimeMillis = (int) ((System.currentTimeMillis() - this.f3696p) / ((long) 60000));
        if (iCurrentTimeMillis > 0 && (game = this.f3695o) != null) {
            V1.A.c(LifecycleOwnerKt.getLifecycleScope(this), null, new C0074i1(this, game, iCurrentTimeMillis, (Continuation) null), 3);
        }
        finish();
    }

    public final d u() {
        d dVar = this.f3687e;
        if (dVar != null) {
            return dVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("b");
        return null;
    }

    public final ImageView v() {
        ImageView imageView = this.f;
        if (imageView != null) {
            return imageView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("basicCheatQuickButton");
        return null;
    }

    public final void w() {
        View decorView = getWindow().getDecorView();
        Intrinsics.checkNotNullExpressionValue(decorView, "getDecorView(...)");
        if (Build.VERSION.SDK_INT < 30) {
            decorView.setSystemUiVisibility(5894);
            return;
        }
        getWindow().setDecorFitsSystemWindows(false);
        WindowInsetsController windowInsetsController = decorView.getWindowInsetsController();
        if (windowInsetsController != null) {
            windowInsetsController.hide(WindowInsets.Type.systemBars());
            windowInsetsController.setSystemBarsBehavior(2);
        }
    }

    public final void x() {
        this.f3698r = new C0400o1();
        E();
        Game game = this.f3695o;
        boolean z2 = (game != null ? GameKt.getEngineEnum(game) : null) == GameEngine.BROWSE;
        u().f5677X.setVisibility(0);
        u().f5678Y.setVisibility(z2 ? 8 : 0);
        u().f5681b0.setVisibility(z2 ? 8 : 0);
        u().Z.setVisibility(z2 ? 8 : 0);
        u().f5680a0.setVisibility(0);
        u().f5669P.setVisibility(0);
    }

    public final boolean y(Q1.d session) {
        Intrinsics.checkNotNullParameter(session, "session");
        return this.f3694n == session && session.f1850c && !isFinishing() && !isDestroyed();
    }
}
