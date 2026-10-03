package p064y1;

import C1.C0115w1;
import C1.g2;
import N1.w;
import Q1.c;
import S1.d;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.Toast;
import androidx.core.view.MotionEventCompat;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.data.GameEngine;
import com.minhub.gamehub.data.GameKt;
import com.minhub.gamehub.data.SaveRepository;
import com.minhub.gamehub.game.GameActivity;
import java.util.List;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
import p024j.C0269h;
import p047s1.b;

/* JADX INFO: renamed from: y1.w, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class ViewOnClickListenerC0421w implements View.OnClickListener {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ GameActivity f6386c;

    public /* synthetic */ ViewOnClickListenerC0421w(GameActivity gameActivity, int i3) {
        this.b = i3;
        this.f6386c = gameActivity;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        w wVar = null;
        C0269h c0269h = null;
        C0269h c0269h2 = null;
        g2 g2Var = null;
        ImageView imageView = null;
        C0385j1 c0385j1 = null;
        C0385j1 c0385j2 = null;
        switch (this.b) {
            case 0:
                GameActivity gameActivity = this.f6386c;
                int i3 = GameActivity.f3676L;
                gameActivity.u().f5668O.setVisibility(8);
                return;
            case 1:
                w wVar2 = this.f6386c.f3703w;
                if (wVar2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("basicCheatController");
                } else {
                    wVar = wVar2;
                }
                wVar.getClass();
                List list = AbstractC0371f.f6224a;
                C0368e c0368eA = AbstractC0371f.a(EnumC0359b.b);
                if (c0368eA == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                C0368e c0368eA2 = AbstractC0371f.a(EnumC0359b.f6182c);
                if (c0368eA2 == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                C0368e c0368eA3 = AbstractC0371f.a(EnumC0359b.f6183d);
                if (c0368eA3 == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                C0368e c0368eA4 = AbstractC0371f.a(EnumC0359b.f6184e);
                if (c0368eA4 == null) {
                    throw new IllegalArgumentException("Required value was null.");
                }
                wVar.e(CollectionsKt.listOf((Object[]) new C0368e[]{c0368eA, c0368eA2, c0368eA3, c0368eA4}), true);
                return;
            case 2:
                GameActivity gameActivity2 = this.f6386c;
                int i4 = GameActivity.f3676L;
                gameActivity2.u().f5669P.setVisibility(8);
                C0385j1 c0385j3 = gameActivity2.f3701u;
                if (c0385j3 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("controlsCoordinator");
                } else {
                    c0385j2 = c0385j3;
                }
                c0385j2.h();
                return;
            case 3:
                GameActivity gameActivity3 = this.f6386c;
                int i5 = GameActivity.f3676L;
                gameActivity3.u().f5669P.setVisibility(8);
                C0385j1 c0385j4 = gameActivity3.f3701u;
                if (c0385j4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("controlsCoordinator");
                } else {
                    c0385j1 = c0385j4;
                }
                c0385j1.d();
                return;
            case 4:
                GameActivity gameActivity4 = this.f6386c;
                C0366d0 c0366d0 = gameActivity4.f3697q;
                gameActivity4.f3697q = new C0366d0(!c0366d0.f6209a, c0366d0.b);
                gameActivity4.v().setVisibility(gameActivity4.f3697q.f6209a ? 0 : 8);
                gameActivity4.u().f5669P.setVisibility(8);
                return;
            case 5:
                GameActivity gameActivity5 = this.f6386c;
                Game game = gameActivity5.f3695o;
                if (!L1.g(gameActivity5, game != null ? GameKt.getEngineEnum(game) : null)) {
                    gameActivity5.u().f5669P.setVisibility(8);
                    return;
                }
                C0366d0 c0366d1 = gameActivity5.f3697q;
                gameActivity5.f3697q = new C0366d0(c0366d1.f6209a, !c0366d1.b);
                ImageView imageView2 = gameActivity5.g;
                if (imageView2 != null) {
                    imageView = imageView2;
                } else {
                    Intrinsics.throwUninitializedPropertyAccessException("cheatQuickButton");
                }
                imageView.setVisibility(gameActivity5.f3697q.b ? 0 : 8);
                gameActivity5.u().f5669P.setVisibility(8);
                return;
            case 6:
                GameActivity gameActivity6 = this.f6386c;
                Game game2 = gameActivity6.f3695o;
                if (!L1.g(gameActivity6, game2 != null ? GameKt.getEngineEnum(game2) : null)) {
                    gameActivity6.u().f5669P.setVisibility(8);
                    return;
                }
                gameActivity6.f3680D = !gameActivity6.f3680D;
                gameActivity6.u().f5708r.setText(gameActivity6.f3680D ? R.string.menu_reveal_events_on : R.string.menu_reveal_events_off);
                gameActivity6.u().f5707q0.evaluateJavascript(StringsKt.trimIndent("\n        (function() {\n          try {\n            var ON = " + (gameActivity6.f3680D ? "true" : "false") + ";\n            if (typeof Spriteset_Map === 'undefined' || typeof PIXI === 'undefined') return;\n\n            if (!window.__minhubReveal) {\n              // `edited` remembers events changed from this panel so their marker stays on screen\n              // once they become visible — otherwise turning a switch ON would make the event\n              // appear, remove its marker, and leave no way to turn it back OFF.\n              var R = window.__minhubReveal = { on: false, popupEventId: null, sp: null, edited: {} };\n\n              // Lazy accessors so a reload/scene change never leaves us holding a stale object.\n              var g = {\n                map:    function() { return $gameMap; },\n                sw:     function() { return $gameSwitches; },\n                va:     function() { return $gameVariables; },\n                ss:     function() { return $gameSelfSwitches; },\n                sys:    function() { return $dataSystem; },\n                items:  function() { return $dataItems; },\n                actors: function() { return $dataActors; },\n                party:  function() { return $gameParty; }\n              };\n\n              var esc = function(s) {\n                return String(s == null ? '' : s).replace(/[&<>\"]/g, function(c) {\n                  return { '&': '&amp;', '<': '&lt;', '>': '&gt;', '\"': '&quot;' }[c];\n                });\n              };\n\n              var isHidden = function(ev) {\n                try {\n                  if (!ev) return false;\n                  if (ev._erased) return true;\n                  var page = ev.page ? ev.page() : null;\n                  if (!page) return true;\n                  var img = page.image || {};\n                  return !img.characterName && !img.tileId;\n                } catch (e) { return false; }\n              };\n\n              // kind 'hidden' = red (the player cannot see this event); 'edited' = amber (an event\n              // you changed here — kept marked even once visible so you can tap it and revert).\n              var makeMarker = function(kind) {\n                var m = new PIXI.Graphics();\n                m.beginFill(kind === 'edited' ? 0xff9f0a : 0xff3b30, 0.75);\n                m.drawCircle(0, 0, 9); m.endFill();\n                m.lineStyle(2, 0xffffff, 0.95); m.drawCircle(0, 0, 9);\n                m.moveTo(0, -4); m.lineTo(0, 2);\n                m.beginFill(0xffffff, 0.95); m.drawCircle(0, 5, 1.2); m.endFill();\n                m.__mhKind = kind;\n                return m;\n              };\n\n              var switchLabel = function(id) {\n                var n = g.sys() && g.sys().switches && g.sys().switches[id];\n                return (n && n.trim()) ? (n + ' (#' + id + ')') : ('#' + id);\n              };\n              var varLabel = function(id) {\n                var n = g.sys() && g.sys().variables && g.sys().variables[id];\n                return (n && n.trim()) ? (n + ' (#' + id + ')') : ('#' + id);\n              };\n\n              // Resolve a page's activation conditions into rows the panel can render + edit.\n              var conditionsOf = function(page, mapId, eventId) {\n                var out = [];\n                var c = page && page.conditions;\n                if (!c) return out;\n                try {\n                  if (c.switch1Valid) out.push(swRow(c.switch1Id));\n                  if (c.switch2Valid) out.push(swRow(c.switch2Id));\n                  if (c.variableValid) {\n                    var cur = g.va().value(c.variableId);\n                    out.push({ kind: 'variable', id: c.variableId, need: c.variableValue,\n                      label: 'Variable ' + varLabel(c.variableId),\n                      detail: cur + ' / needs >= ' + c.variableValue, ok: cur >= c.variableValue });\n                  }\n                  if (c.selfSwitchValid) {\n                    var sv = g.ss().value([mapId, eventId, c.selfSwitchCh]);\n                    out.push({ kind: 'selfswitch', id: c.selfSwitchCh,\n                      label: 'Self-Switch ' + c.selfSwitchCh, detail: sv ? 'ON' : 'OFF', ok: !!sv });\n                  }\n                  if (c.itemValid) {\n                    var it = g.items()[c.itemId];\n                    var has = it ? g.party().hasItem(it) : false;\n                    out.push({ kind: 'item', label: 'Item ' + (it ? it.name : '#' + c.itemId),\n                      detail: has ? 'owned' : 'missing', ok: has });\n                  }\n                  if (c.actorValid) {\n                    var inParty = g.party().members().some(function(m) { return m.actorId() === c.actorId; });\n                    var a = g.actors()[c.actorId];\n                    out.push({ kind: 'actor', label: 'Actor ' + (a ? a.name : '#' + c.actorId),\n                      detail: inParty ? 'in party' : 'absent', ok: inParty });\n                  }\n                } catch (e) {}\n                return out;\n              };\n              var swRow = function(id) {\n                var v = g.sw().value(id);\n                return { kind: 'switch', id: id, label: 'Switch ' + switchLabel(id),\n                  detail: v ? 'ON' : 'OFF', ok: !!v };\n              };\n\n              // ---- marker layer -------------------------------------------------------------\n              R.attach = function(sp) {\n                if (!sp || sp.__mhRevealLayer) return;\n                sp.__mhRevealLayer = new PIXI.Container();\n                sp.__mhMarkers = {};\n                sp.addChild(sp.__mhRevealLayer);\n              };\n\n              R.refresh = function(sp) {\n                R.sp = sp;\n                var layer = sp && sp.__mhRevealLayer;\n                if (!layer) return;\n                if (!R.on) { layer.visible = false; return; }\n                layer.visible = true;\n                var events = (g.map() && g.map().events) ? g.map().events() : [];\n                var seen = {};\n                for (var i = 0; i < events.length; i++) {\n                  var ev = events[i];\n                  var id = ev.eventId();\n                  // Mark hidden events, plus any event you edited (so it stays reachable).\n                  // A normal visible event gets no marker, so tapping it still talks to the NPC.\n                  var kind = isHidden(ev) ? 'hidden' : (R.edited[id] ? 'edited' : null);\n                  if (!kind) continue;\n                  seen[id] = true;\n                  var m = sp.__mhMarkers[id];\n                  if (m && m.__mhKind !== kind) { layer.removeChild(m); m = null; }\n                  if (!m) { m = makeMarker(kind); sp.__mhMarkers[id] = m; layer.addChild(m); }\n                  m.visible = true;\n                  m.x = ev.screenX();\n                  m.y = ev.screenY() - 24;\n                  if (kind === 'edited') {\n                    // The event is visible now (an NPC stands here), so keep the marker off to the\n                    // side — sitting on top of the character would swallow the tap meant for it.\n                    var off = 40;\n                    var limit = (typeof Graphics !== 'undefined' && Graphics.width) ? Graphics.width : 816;\n                    if (m.x + off > limit - 16) off = -off;   // flip near the screen edge\n                    m.x += off;\n                    m.y = ev.screenY() - 12;\n                  }\n                }\n                for (var key in sp.__mhMarkers) {\n                  if (!seen[key]) sp.__mhMarkers[key].visible = false;\n                }\n              };\n\n              // ---- tap handling -------------------------------------------------------------\n              R.handleTouch = function() {\n                try {\n                  if (!R.on || !TouchInput.isTriggered() || !R.sp || !R.sp.__mhMarkers) return false;\n                  // ~24px radius: big enough to tap, small enough that an offset marker does not\n                  // cover the character standing next to it.\n                  var tx = TouchInput.x, ty = TouchInput.y, best = null, bestD = 576;\n                  for (var id in R.sp.__mhMarkers) {\n                    var m = R.sp.__mhMarkers[id];\n                    if (!m.visible) continue;\n                    var dx = m.x - tx, dy = m.y - ty, d = dx * dx + dy * dy;\n                    if (d < bestD) { bestD = d; best = id; }\n                  }\n                  if (best === null) return false;\n                  R.openPanel(Number(best));\n                  return true;\n                } catch (e) { return false; }\n              };\n\n              // ---- detail / edit panel ------------------------------------------------------\n              var host = function() {\n                var h = document.getElementById('mh-ev-panel');\n                if (h) return h;\n                h = document.createElement('div');\n                h.id = 'mh-ev-panel';\n                // WebView inflates DOM text on these wide-viewport game pages and ignores font-size\n                // (and text-size-adjust) — measured on device: a 4.5px request still rendered huge.\n                // A geometric transform runs after all of that, so scaling the whole panel is the\n                // only reliable way to size it. Everything inside shrinks with it.\n                h.style.cssText = 'position:fixed;left:50%;top:50%;transform:translate(-50%,-50%) scale(0.5);' +\n                  'z-index:2147483000;background:rgba(18,22,32,0.97);color:#f5f7fa;' +\n                  'border:2px solid rgba(255,255,255,0.22);border-radius:18px;padding:14px 18px;' +\n                  'min-width:430px;max-width:150vw;max-height:150vh;overflow:auto;' +\n                  // WebView \"font boosting\" inflates text on wide-viewport pages and ignores the\n                  // requested size — which is why several rounds of shrinking looked identical.\n                  // text-size-adjust:none opts this panel out so font-size is honoured verbatim.\n                  '-webkit-text-size-adjust:none;text-size-adjust:none;' +\n                  'font-family:sans-serif;font-size:19px;line-height:1.35;' +\n                  'box-shadow:0 10px 34px rgba(0,0,0,0.65);display:none';\n                // Keep taps inside the panel away from the game's own touch handling — but in the\n                // BUBBLE phase. Capturing here would swallow the event on its way down and our own\n                // buttons would never fire.\n                ['touchstart', 'touchend', 'touchmove', 'mousedown', 'mouseup', 'click', 'pointerdown', 'pointerup']\n                  .forEach(function(t) { h.addEventListener(t, function(e) { e.stopPropagation(); }, false); });\n                document.body.appendChild(h);\n                return h;\n              };\n\n              R.closePanel = function() {\n                var h = document.getElementById('mh-ev-panel');\n                if (h) h.style.display = 'none';\n                R.popupEventId = null;\n              };\n\n              var btnCss = 'background:#2a3550;color:#fff;border:1px solid rgba(255,255,255,0.25);' +\n                'border-radius:7px;padding:4px 9px;font-size:16px;line-height:1.4;cursor:pointer;flex:none';\n\n              R.openPanel = function(eventId) {\n                var ev = g.map().event(eventId);\n                if (!ev) return;\n                var data = ev.event();\n                var mapId = g.map().mapId();\n                R.popupEventId = eventId;\n                var h = host();\n\n                var html = '<div style=\"display:flex;align-items:center;margin-bottom:6px\">' +\n                  '<b>#' + eventId + ' ' + esc(data.name || '(no name)') + '</b>' +\n                  '<span style=\"opacity:.55;margin-left:8px\">(' + data.x + ',' + data.y + ')</span>' +\n                  '<span style=\"flex:1\"></span>' +\n                  '<button data-mh=\"close\" style=\"' + btnCss + '\">Close</button></div>';\n\n                (data.pages || []).forEach(function(p, i) {\n                  var active = (ev._pageIndex === i);\n                  html += '<div style=\"margin-top:10px\"><div style=\"font-size:15px;color:' +\n                    (active ? '#7CFF9B' : '#9aa0aa') + '\">Page ' + (i + 1) + (active ? ' — ACTIVE' : '') + '</div>';\n                  var conds = conditionsOf(p, mapId, eventId);\n                  if (!conds.length) {\n                    html += '<div style=\"font-size:15px;opacity:.5;margin-left:8px\">No conditions</div>';\n                  }\n                  conds.forEach(function(c) {\n                    html += '<div style=\"display:flex;align-items:center;margin:6px 0\">' +\n                      '<span style=\"width:9px;height:9px;border-radius:50%;flex:none;margin-right:9px;background:' +\n                      (c.ok ? '#34C759' : '#FF3B30') + '\"></span>' +\n                      // min-width:0 lets this shrink inside the flex row instead of overrunning\n                      // the button next to it (they visibly overlapped before).\n                      '<span style=\"flex:1;min-width:0;margin-right:6px;word-break:break-word\">' +\n                      esc(c.label) + ': <b>' + esc(c.detail) + '</b></span>';\n                    if (c.kind === 'switch') {\n                      html += '<button data-mh=\"sw\" data-id=\"' + c.id + '\" style=\"' + btnCss + '\">' +\n                        (c.ok ? 'Turn OFF' : 'Turn ON') + '</button>';\n                    } else if (c.kind === 'selfswitch') {\n                      html += '<button data-mh=\"ss\" data-id=\"' + esc(c.id) + '\" style=\"' + btnCss + '\">' +\n                        (c.ok ? 'Turn OFF' : 'Turn ON') + '</button>';\n                    } else if (c.kind === 'variable') {\n                      html += '<input data-mh=\"varin\" data-id=\"' + c.id + '\" value=\"' + esc(c.need) +\n                        '\" style=\"width:58px;margin-right:8px;background:#141a26;color:#fff;flex:none;' +\n                        'border:1px solid rgba(255,255,255,0.25);border-radius:6px;padding:3px 6px;font-size:15px\">' +\n                        '<button data-mh=\"setvar\" data-id=\"' + c.id + '\" style=\"' + btnCss + '\">Set</button>';\n                    }\n                    html += '</div>';\n                  });\n                  html += '</div>';\n                });\n\n                h.innerHTML = html;\n                h.style.display = 'block';\n\n                h.querySelectorAll('[data-mh]').forEach(function(el) {\n                  var kind = el.getAttribute('data-mh');\n                  if (kind === 'varin') return;\n                  el.addEventListener('click', function(e) {\n                    e.stopPropagation();\n                    var id = el.getAttribute('data-id');\n                    try {\n                      if (kind === 'close') { R.closePanel(); return; }\n                      if (kind === 'sw') {\n                        g.sw().setValue(Number(id), !g.sw().value(Number(id)));\n                      } else if (kind === 'ss') {\n                        var key = [mapId, eventId, id];\n                        g.ss().setValue(key, !g.ss().value(key));\n                      } else if (kind === 'setvar') {\n                        var input = h.querySelector('[data-mh=\"varin\"][data-id=\"' + id + '\"]');\n                        var val = Number(input && input.value);\n                        if (!isNaN(val)) g.va().setValue(Number(id), val);\n                      }\n                      R.edited[eventId] = true;   // keep this event markered so it can be reverted\n                      if (g.map().requestRefresh) g.map().requestRefresh();\n                      R.openPanel(eventId);\n                    } catch (err) {}\n                  }, false);\n                });\n              };\n\n              // ---- hooks --------------------------------------------------------------------\n              var _createLowerLayer = Spriteset_Map.prototype.createLowerLayer;\n              Spriteset_Map.prototype.createLowerLayer = function() {\n                _createLowerLayer.call(this);\n                R.attach(this);\n              };\n\n              var _update = Spriteset_Map.prototype.update;\n              Spriteset_Map.prototype.update = function() {\n                _update.call(this);\n                R.refresh(this);\n              };\n\n              if (typeof Scene_Map !== 'undefined' && Scene_Map.prototype.processMapTouch) {\n                var _processMapTouch = Scene_Map.prototype.processMapTouch;\n                Scene_Map.prototype.processMapTouch = function() {\n                  if (R.handleTouch()) return;   // tap consumed by a marker — don't walk there\n                  _processMapTouch.call(this);\n                };\n              }\n            }\n\n            var RR = window.__minhubReveal;\n            RR.on = ON;\n            if (!ON) RR.closePanel();\n\n            // Attach to the spriteset already on screen so the toggle works without changing maps.\n            try {\n              var scene = SceneManager._scene;\n              var sp = scene && scene._spriteset;\n              if (sp) { RR.attach(sp); RR.refresh(sp); }\n            } catch (e) {}\n          } catch (e) {\n            try { window.MinHub && window.MinHub.log && window.MinHub.log('[Reveal] ' + e); } catch (_) {}\n          }\n        })();\n    "), null);
                gameActivity6.u().f5669P.setVisibility(8);
                return;
            case 7:
                GameActivity gameActivity7 = this.f6386c;
                Game game3 = gameActivity7.f3695o;
                if (!L1.g(gameActivity7, game3 != null ? GameKt.getEngineEnum(game3) : null)) {
                    gameActivity7.u().f5669P.setVisibility(8);
                    return;
                }
                gameActivity7.f3681E = !gameActivity7.f3681E;
                gameActivity7.u().f5705p.setText(gameActivity7.f3681E ? R.string.menu_play_hints_on : R.string.menu_play_hints_off);
                gameActivity7.u().f5707q0.evaluateJavascript(StringsKt.trimIndent("\n        (function() {\n          try {\n            var ON = " + (gameActivity7.f3681E ? "true" : "false") + ";\n            if (typeof Spriteset_Map === 'undefined' || typeof PIXI === 'undefined') return;\n\n            if (!window.__minhubHints) {\n              var H = window.__minhubHints = { on: false };\n\n              // Command codes that mark an event as \"story progress\" when the player triggers it.\n              // 121 Control Switches · 122 Control Variables · 201 Transfer Player ·\n              // 126/127/128 Change Items/Weapons/Armor · 129 Change Party Member.\n              // (123 Control Self Switch is intentionally excluded — see the class note.)\n              var PROGRESS = { 121: 1, 122: 1, 201: 1, 126: 1, 127: 1, 128: 1, 129: 1 };\n\n              var isHint = function(ev) {\n                try {\n                  if (!ev || ev._erased) return false;\n                  var page = ev.page ? ev.page() : null;\n                  if (!page) return false;\n                  // Only events the player can trigger by standing there / pressing action:\n                  // 0 action button, 1 player touch, 2 event touch. Autorun/parallel run themselves.\n                  if (page.trigger == null || page.trigger > 2) return false;\n                  // Only visible events — an arrow floating over nothing helps no one.\n                  var img = page.image || {};\n                  if (!img.characterName && !img.tileId) return false;\n                  var list = page.list || [];\n                  for (var i = 0; i < list.length; i++) {\n                    if (PROGRESS[list[i].code]) return true;\n                  }\n                  return false;\n                } catch (e) { return false; }\n              };\n\n              // Downward-pointing arrow (▼): cyan fill + white outline so it reads on any tileset.\n              var makeArrow = function() {\n                var a = new PIXI.Graphics();\n                a.beginFill(0x34d3ff, 0.95);\n                a.moveTo(-11, -9); a.lineTo(11, -9); a.lineTo(0, 8); a.lineTo(-11, -9);\n                a.endFill();\n                a.lineStyle(2, 0xffffff, 0.9);\n                a.moveTo(-11, -9); a.lineTo(11, -9); a.lineTo(0, 8); a.lineTo(-11, -9);\n                return a;\n              };\n\n              H.attach = function(sp) {\n                if (!sp || sp.__mhHintLayer) return;\n                sp.__mhHintLayer = new PIXI.Container();\n                sp.__mhArrows = {};\n                sp.addChild(sp.__mhHintLayer);\n              };\n\n              H.refresh = function(sp) {\n                var layer = sp && sp.__mhHintLayer;\n                if (!layer) return;\n                if (!H.on) { layer.visible = false; return; }\n                layer.visible = true;\n                var map = $gameMap;\n                var events = (map && map.events) ? map.events() : [];\n                // Time-based bob so the arrows draw the eye without any per-sprite state.\n                var bounce = Math.sin(Date.now() / 250) * 4;\n                var seen = {};\n                for (var i = 0; i < events.length; i++) {\n                  var ev = events[i];\n                  if (!isHint(ev)) continue;\n                  var id = ev.eventId();\n                  seen[id] = true;\n                  var a = sp.__mhArrows[id];\n                  if (!a) { a = makeArrow(); sp.__mhArrows[id] = a; layer.addChild(a); }\n                  a.visible = true;\n                  a.x = ev.screenX();\n                  a.y = ev.screenY() - 50 + bounce;   // float above the head, pointing down\n                }\n                for (var key in sp.__mhArrows) {\n                  if (!seen[key]) sp.__mhArrows[key].visible = false;\n                }\n              };\n\n              var _createLowerLayer = Spriteset_Map.prototype.createLowerLayer;\n              Spriteset_Map.prototype.createLowerLayer = function() {\n                _createLowerLayer.call(this);\n                H.attach(this);\n              };\n\n              var _update = Spriteset_Map.prototype.update;\n              Spriteset_Map.prototype.update = function() {\n                _update.call(this);\n                H.refresh(this);\n              };\n            }\n\n            var HH = window.__minhubHints;\n            HH.on = ON;\n\n            // Attach to the spriteset already on screen so the toggle works without changing maps.\n            try {\n              var scene = SceneManager._scene;\n              var sp = scene && scene._spriteset;\n              if (sp) { HH.attach(sp); HH.refresh(sp); }\n            } catch (e) {}\n          } catch (e) {\n            try { window.MinHub && window.MinHub.log && window.MinHub.log('[Hints] ' + e); } catch (_) {}\n          }\n        })();\n    "), null);
                gameActivity7.u().f5669P.setVisibility(8);
                return;
            case 8:
                GameActivity gameActivity8 = this.f6386c;
                int i6 = GameActivity.f3676L;
                gameActivity8.u().f5669P.setVisibility(8);
                if (gameActivity8.f3693m != null) {
                    WebView wv = gameActivity8.u().f5707q0;
                    Intrinsics.checkNotNullExpressionValue(wv, "webView");
                    C0418v callback = new C0418v(gameActivity8, 1);
                    Intrinsics.checkNotNullParameter(wv, "wv");
                    Intrinsics.checkNotNullParameter(callback, "callback");
                    wv.evaluateJavascript("(function(){\n  try {\n    if (typeof DataManager === 'undefined' || !DataManager.saveGame) return false;\n    var slot = window.MinHub && window.MinHub.getQuickSaveSlot ? window.MinHub.getQuickSaveSlot() : 999;\n    if (typeof $gameSystem !== 'undefined' && $gameSystem && typeof $gameSystem.onBeforeSave === 'function') {\n      $gameSystem.onBeforeSave();\n    }\n    var r = DataManager.saveGame(slot);\n    if (r && typeof r.then === 'function') { r.then(function(){}); return true; }\n    return !!r;\n  } catch(e) { return false; }\n})();", new b(3, callback));
                    return;
                }
                return;
            case 9:
                GameActivity gameActivity9 = this.f6386c;
                int i7 = GameActivity.f3676L;
                gameActivity9.u().f5669P.setVisibility(8);
                Game game4 = gameActivity9.f3695o;
                if (game4 == null) {
                    return;
                }
                SaveRepository saveRepository = gameActivity9.f3704x;
                if (saveRepository == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("saveRepository");
                    saveRepository = null;
                }
                gameActivity9.f3677A = CollectionsKt.sortedWith(saveRepository.scanSaves(game4), new C0115w1(5, new M(0)));
                g2 g2Var2 = gameActivity9.f3705y;
                if (g2Var2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("loadSaveAdapter");
                } else {
                    g2Var = g2Var2;
                }
                g2Var.k(gameActivity9.f3677A);
                boolean zIsEmpty = gameActivity9.f3677A.isEmpty();
                gameActivity9.u().f5701m0.setVisibility(!zIsEmpty ? 8 : 0);
                gameActivity9.u().f5683c0.setVisibility(zIsEmpty ? 8 : 0);
                gameActivity9.u().f5668O.setVisibility(0);
                return;
            case 10:
                GameActivity gameActivity10 = this.f6386c;
                boolean z2 = !gameActivity10.f3699s;
                gameActivity10.f3699s = z2;
                Set set = d.f2060a;
                Intrinsics.checkNotNullParameter(gameActivity10, "<this>");
                gameActivity10.getSharedPreferences("minhub_prefs", 0).edit().putBoolean("show_fps", z2).apply();
                gameActivity10.m();
                return;
            case MotionEventCompat.AXIS_Z /* 11 */:
                GameActivity gameActivity11 = this.f6386c;
                boolean z3 = !gameActivity11.f3700t;
                gameActivity11.f3700t = z3;
                Set set2 = d.f2060a;
                Intrinsics.checkNotNullParameter(gameActivity11, "<this>");
                gameActivity11.getSharedPreferences("minhub_prefs", 0).edit().putBoolean("reduce_fx_mvmz", z3).apply();
                gameActivity11.u().f5706q.setText(gameActivity11.getString(gameActivity11.f3700t ? R.string.menu_reduce_fx_on : R.string.menu_reduce_fx_off));
                gameActivity11.u().f5707q0.evaluateJavascript(GameActivity.z(gameActivity11.f3700t), null);
                Toast.makeText(gameActivity11, gameActivity11.getString(gameActivity11.f3700t ? R.string.toast_reduce_fx_on : R.string.toast_reduce_fx_off), gameActivity11.f3700t ? 1 : 0).show();
                return;
            case 12:
                GameActivity gameActivity12 = this.f6386c;
                Game game5 = gameActivity12.f3695o;
                if (game5 == null) {
                    return;
                }
                Object[] objArr = GameKt.getEngineEnum(game5) == GameEngine.TYRANO;
                if (objArr == true) {
                    C0269h c0269h3 = gameActivity12.f3702v;
                    if (c0269h3 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("cheatCoordinator");
                    } else {
                        c0269h = c0269h3;
                    }
                    WebView webView = gameActivity12.u().f5707q0;
                    Intrinsics.checkNotNullExpressionValue(webView, "webView");
                    c0269h.q(game5, webView, new C0418v(gameActivity12, 2));
                    return;
                }
                if (gameActivity12.f3682F) {
                    gameActivity12.f3682F = false;
                    if (objArr == false) {
                        gameActivity12.u().K.setAdelMode(false);
                        gameActivity12.u().K.setVisibility(gameActivity12.f3683G);
                    }
                    gameActivity12.u().g.setVisibility(0);
                    if (gameActivity12.f3697q.f6209a) {
                        gameActivity12.v().setVisibility(0);
                    }
                } else {
                    gameActivity12.f3682F = true;
                    gameActivity12.f3683G = gameActivity12.u().K.getVisibility();
                    if (objArr == false) {
                        gameActivity12.u().K.setAdelMode(true);
                        gameActivity12.u().K.setVisibility(0);
                    }
                    gameActivity12.u().g.setVisibility(8);
                    if (gameActivity12.f3697q.f6209a) {
                        gameActivity12.v().setVisibility(8);
                    }
                }
                C0269h c0269h4 = gameActivity12.f3702v;
                if (c0269h4 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("cheatCoordinator");
                } else {
                    c0269h2 = c0269h4;
                }
                WebView webView2 = gameActivity12.u().f5707q0;
                Intrinsics.checkNotNullExpressionValue(webView2, "webView");
                c0269h2.q(game5, webView2, new C0418v(gameActivity12, 3));
                return;
            case 13:
                GameActivity gameActivity13 = this.f6386c;
                int i8 = GameActivity.f3676L;
                gameActivity13.u().f5669P.setVisibility(8);
                gameActivity13.D();
                return;
            case MotionEventCompat.AXIS_RZ /* 14 */:
                GameActivity gameActivity14 = this.f6386c;
                int i9 = GameActivity.f3676L;
                gameActivity14.u().f5669P.setVisibility(8);
                Q1.d session = gameActivity14.f3694n;
                if (session != null) {
                    Game game6 = gameActivity14.f3695o;
                    Intrinsics.checkNotNullParameter(session, "session");
                    if (gameActivity14.y(session)) {
                        synchronized (session) {
                            if (session.f1850c && !session.f1855j) {
                                session.f1855j = true;
                                c cVarA = session.a(AbstractC0409s.f6343a[0], null, true);
                                if (cVarA == null) {
                                    session.c();
                                    return;
                                } else {
                                    AbstractC0409s.e(gameActivity14, game6, session, cVarA, true);
                                    return;
                                }
                            }
                            return;
                        }
                    }
                    return;
                }
                return;
            case MotionEventCompat.AXIS_HAT_X /* 15 */:
                GameActivity gameActivity15 = this.f6386c;
                int i10 = GameActivity.f3676L;
                Integer intOrNull = StringsKt.toIntOrNull(gameActivity15.u().f5664J.getText().toString());
                int iCoerceIn = intOrNull != null ? RangesKt.coerceIn(intOrNull.intValue(), 8, 72) : 0;
                Set set3 = d.f2060a;
                Intrinsics.checkNotNullParameter(gameActivity15, "<this>");
                gameActivity15.getSharedPreferences("minhub_prefs", 0).edit().putInt("game_font_size", RangesKt.coerceIn(iCoerceIn, 0, 72)).apply();
                gameActivity15.n(iCoerceIn);
                gameActivity15.u().f5669P.setVisibility(8);
                return;
            case 16:
                GameActivity gameActivity16 = this.f6386c;
                int i11 = GameActivity.f3676L;
                Set set4 = d.f2060a;
                Intrinsics.checkNotNullParameter(gameActivity16, "<this>");
                gameActivity16.getSharedPreferences("minhub_prefs", 0).edit().putInt("game_font_size", RangesKt.coerceIn(0, 0, 72)).apply();
                gameActivity16.u().f5664J.setText("");
                gameActivity16.n(0);
                gameActivity16.u().f5669P.setVisibility(8);
                return;
            case 17:
                GameActivity gameActivity17 = this.f6386c;
                int i12 = GameActivity.f3676L;
                gameActivity17.B("device-width");
                return;
            case MotionEventCompat.AXIS_RTRIGGER /* 18 */:
                GameActivity gameActivity18 = this.f6386c;
                int i13 = GameActivity.f3676L;
                gameActivity18.B("960x540");
                return;
            case 19:
                GameActivity gameActivity19 = this.f6386c;
                int i14 = GameActivity.f3676L;
                gameActivity19.B("1280x720");
                return;
            case MotionEventCompat.AXIS_RUDDER /* 20 */:
                GameActivity gameActivity20 = this.f6386c;
                int i15 = GameActivity.f3676L;
                gameActivity20.B("1920x1080");
                return;
            case 21:
                GameActivity gameActivity21 = this.f6386c;
                int i16 = GameActivity.f3676L;
                gameActivity21.t();
                return;
            case 22:
                GameActivity gameActivity22 = this.f6386c;
                int i17 = GameActivity.f3676L;
                if (gameActivity22.u().f5669P.getVisibility() == 0) {
                    gameActivity22.u().f5669P.setVisibility(8);
                    return;
                } else {
                    gameActivity22.x();
                    return;
                }
            case 23:
                GameActivity gameActivity23 = this.f6386c;
                int i18 = GameActivity.f3676L;
                gameActivity23.u().f5669P.setVisibility(8);
                return;
            case 24:
                GameActivity gameActivity24 = this.f6386c;
                C0400o1 c0400o1 = gameActivity24.f3698r;
                gameActivity24.f3698r = C0400o1.a(c0400o1, !c0400o1.f6310a, false, false, false, false, 30);
                gameActivity24.E();
                return;
            case 25:
                GameActivity gameActivity25 = this.f6386c;
                C0400o1 c0400o2 = gameActivity25.f3698r;
                gameActivity25.f3698r = C0400o1.a(c0400o2, false, !c0400o2.b, false, false, false, 29);
                gameActivity25.E();
                return;
            case 26:
                GameActivity gameActivity26 = this.f6386c;
                C0400o1 c0400o3 = gameActivity26.f3698r;
                gameActivity26.f3698r = C0400o1.a(c0400o3, false, false, !c0400o3.f6311c, false, false, 27);
                gameActivity26.E();
                return;
            case 27:
                GameActivity gameActivity27 = this.f6386c;
                C0400o1 c0400o4 = gameActivity27.f3698r;
                gameActivity27.f3698r = C0400o1.a(c0400o4, false, false, false, !c0400o4.f6312d, false, 23);
                gameActivity27.E();
                return;
            default:
                GameActivity gameActivity28 = this.f6386c;
                C0400o1 c0400o5 = gameActivity28.f3698r;
                gameActivity28.f3698r = C0400o1.a(c0400o5, false, false, false, false, !c0400o5.f6313e, 15);
                gameActivity28.E();
                return;
        }
    }
}
