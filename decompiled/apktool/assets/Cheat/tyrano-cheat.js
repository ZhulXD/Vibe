/* MinHub TyranoBuilder Cheat Panel v13 — ADEL style */
(function() {
    'use strict';
    var ID = '__mh_tc_v13__';

    var staleIds = ['__mh_tyrano_cheat__','__mh_tyrano_cheat_v5__'];
    staleIds.forEach(function(sid) { var e = document.getElementById(sid); if (e) e.remove(); });
    document.querySelectorAll('[id^="__mh_tc_v"]').forEach(function(e) { if (e.id !== ID) e.remove(); });

    /* Always create fresh — bootstrap removes existing before loading this script */

    function kag()  { return window.TYRANO && window.TYRANO.kag; }
    function stat() { var k = kag(); return k ? k.stat : null; }

    var TAGS = [
        { icon:'💰', color:'#d97706', re:/money|gold|coin|credit|cash|gem|jewel|dollar|yen|won|currency|wallet|fund/i },
        { icon:'❤️', color:'#ef4444', re:/^hp$|^life$|^lives$|health|vitality|hp_/i },
        { icon:'💙', color:'#3b82f6', re:/^mp$|^sp$|mana|stamina|energy|magic_point/i },
        { icon:'⭐', color:'#eab308', re:/exp|experience|^xp$|level|^lv$|rank|score|point|progress/i },
        { icon:'🎭', color:'#ec4899', re:/love|affection|affinity|relation|friend|trust|favor|like/i },
        { icon:'📦', color:'#8b5cf6', re:/item|inventory|bag|stock|count_/i },
        { icon:'🔘', color:'#64748b', re:/^f_|^flag|^flg|^sw_|switch|bool|visited|seen|cleared/i },
        { icon:'🗓️', color:'#0d9488', re:/event|quest|mission|chapter|day|scene|route/i },
    ];
    function guessTag(k) {
        for (var i = 0; i < TAGS.length; i++) if (TAGS[i].re.test(k)) return TAGS[i];
        return null;
    }

    /* ── CSS — ADEL-inspired palette (compact) ───────────────────────── */
    var S = document.createElement('style');
    S.textContent = [
        '#'+ID+',#'+ID+' *{box-sizing:border-box;margin:0;padding:0;font-family:system-ui,-apple-system,sans-serif;-webkit-text-size-adjust:none!important;text-size-adjust:none!important}',

        /* Panel shell */
        '#'+ID+'{',
        '  position:fixed;top:16px;right:10px;',
        '  width:min(380px,calc(100vw - 12px));',
        '  background:rgba(2,6,23,.97);',
        '  border:1px solid rgba(255,255,255,.1);',
        '  border-radius:6px;',
        '  box-shadow:0 6px 30px rgba(0,0,0,.9);',
        '  color:#e2e8f0;font-size:8px;',
        '  display:flex;flex-direction:column;',
        '  z-index:2147483647;overflow:hidden',
        '}',

        /* Header */
        '#'+ID+' .hdr{display:flex;align-items:center;gap:3px;padding:5px 7px;background:rgba(0,0,0,.4);border-bottom:1px solid rgba(255,255,255,.07);cursor:grab;flex-shrink:0}',
        '#'+ID+' .hdr:active{cursor:grabbing}',
        '#'+ID+' .ttl{font-weight:900;font-size:9px;color:#fff;flex:1;letter-spacing:.2px}',
        '#'+ID+' .ttl span{color:#72f7c8}',
        '#'+ID+' .cls{background:none;border:none;color:rgba(255,255,255,.3);font-size:11px;cursor:pointer;line-height:1;padding:0 0 0 2px}',
        '#'+ID+' .cls:active{color:#fff}',

        /* Tabs */
        '#'+ID+' .tabs{display:grid;grid-template-columns:repeat(4,1fr);gap:1px;padding:3px 4px;background:rgba(0,0,0,.3);border-bottom:1px solid rgba(255,255,255,.06);flex-shrink:0}',
        '#'+ID+' .tab{padding:3px 1px;border:1px solid rgba(255,255,255,.06);background:rgba(255,255,255,.03);color:#94a3b8;border-radius:4px;cursor:pointer;font-size:8px;font-weight:700;text-align:center}',
        '#'+ID+' .tab.on{background:rgba(114,247,200,.15);border-color:rgba(114,247,200,.35);color:#72f7c8}',

        /* Body — scrollable */
        '#'+ID+' .body{flex:1;min-height:0;overflow-y:auto;-webkit-overflow-scrolling:touch;padding:5px 6px;display:flex;flex-direction:column;gap:4px}',

        /* Section label */
        '#'+ID+' .lbl{font-size:7px;font-weight:800;text-transform:uppercase;letter-spacing:.7px;color:#64748b;margin-bottom:1px}',
        '#'+ID+' .lbl.mt{margin-top:4px}',

        /* Button rows */
        '#'+ID+' .row{display:flex;gap:2px;flex-wrap:wrap}',
        '#'+ID+' .btn{flex:1 1 auto;padding:4px 3px;background:rgba(255,255,255,.06);border:1px solid rgba(255,255,255,.08);color:#cbd5e1;border-radius:4px;cursor:pointer;font-size:8px;font-weight:700;text-align:center;min-width:22px}',
        '#'+ID+' .btn:active{filter:brightness(.7)}',
        '#'+ID+' .btn.teal {background:rgba(20,184,166,.2);border-color:rgba(20,184,166,.4);color:#2dd4bf}',
        '#'+ID+' .btn.green{background:rgba(22,163,74,.2); border-color:rgba(22,163,74,.4); color:#4ade80}',
        '#'+ID+' .btn.blue {background:rgba(29,78,216,.25);border-color:rgba(29,78,216,.4); color:#93c5fd}',
        '#'+ID+' .btn.amber{background:rgba(146,64,14,.2); border-color:rgba(180,83,9,.4);  color:#fbbf24}',
        '#'+ID+' .btn.red  {background:rgba(153,27,27,.2); border-color:rgba(185,28,28,.4); color:#fca5a5}',
        '#'+ID+' .btn.sm   {padding:2px 3px;font-size:7px}',

        /* Slider */
        '#'+ID+' .slrow{display:flex;align-items:center;gap:3px;margin-top:2px}',
        '#'+ID+' .slrow label{font-size:7px;color:#475569;white-space:nowrap}',
        '#'+ID+' .slrow input[type=range]{flex:1;accent-color:#14b8a6;height:10px}',
        '#'+ID+' .slval{min-width:12px;text-align:right;font-size:8px;color:#94a3b8;font-variant-numeric:tabular-nums}',
        '#'+ID+' .status{font-size:7px;color:#475569;margin-top:1px}',
        '#'+ID+' .status b{color:#94a3b8}',

        /* Slot chips */
        '#'+ID+' .slot-bar{display:flex;gap:3px;flex-wrap:wrap;min-height:14px}',
        '#'+ID+' .chip{padding:2px 6px;background:rgba(255,255,255,.04);border:1px solid rgba(255,255,255,.08);color:#64748b;border-radius:10px;cursor:pointer;font-size:7px;font-weight:700;white-space:nowrap}',
        '#'+ID+' .chip.rt{border-color:rgba(114,247,200,.35);color:#72f7c8}',
        '#'+ID+' .chip.on{background:rgba(114,247,200,.15);border-color:rgba(114,247,200,.4);color:#72f7c8}',
        '#'+ID+' .chip.dim{opacity:.35;cursor:default}',

        /* Search */
        '#'+ID+' .vsearch{width:100%;padding:3px 6px;background:rgba(15,23,42,.7);border:1px solid rgba(255,255,255,.1);color:#e2e8f0;border-radius:3px;font-size:8px;-webkit-appearance:none;appearance:none}',
        '#'+ID+' .vsearch:focus{border-color:rgba(114,247,200,.4);outline:none}',
        '#'+ID+' .vsearch::placeholder{color:#475569}',

        /* Var row */
        '#'+ID+' .vrow{display:flex;align-items:center;gap:2px;padding:2px 5px;background:rgba(2,6,23,.42);border:1px solid rgba(255,255,255,.06);border-left:2px solid transparent;border-radius:4px;min-height:16px}',
        '#'+ID+' .vrow:hover{background:rgba(255,255,255,.04)}',
        '#'+ID+' .vkey{flex:1;min-width:0;font-size:8px;font-weight:700;color:#cbd5e1;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}',
        '#'+ID+' .vinp{width:50px;flex-shrink:0;padding:2px 3px;background:rgba(15,23,42,.8);border:1px solid rgba(114,247,200,.2);color:#e2e8f0;border-radius:3px;font-size:8px;font-family:Consolas,Monaco,monospace}',
        '#'+ID+' .vinp:focus{border-color:rgba(114,247,200,.5);outline:none}',
        '#'+ID+' .vset{padding:2px 5px;background:rgba(20,184,166,.2);border:1px solid rgba(20,184,166,.4);border-radius:3px;color:#2dd4bf;font-size:7px;font-weight:800;cursor:pointer;flex-shrink:0;white-space:nowrap}',
        '#'+ID+' .vset:active{filter:brightness(.75)}',

        '#'+ID+' .empty{color:#475569;font-size:8px;text-align:center;padding:8px}',

        '#'+ID+' .sep{height:1px;background:rgba(255,255,255,.06);margin:2px 0}',

        '#'+ID+' .pane{display:none}',
        '#'+ID+' .pane.on{display:flex;flex-direction:column;gap:4px}',
    ].join('');
    document.head.appendChild(S);

    /* ── HTML ─────────────────────────────────────────────────────────── */
    var root = document.createElement('div');
    root.id = ID;
    root.innerHTML = [
        '<div class="hdr">',
        '  <span class="ttl"><span>⚡</span> Tyrano Cheat</span>',
        '  <button class="cls" id="'+ID+'_close">✕</button>',
        '</div>',
        '<div class="tabs">',
        '  <button class="tab on" data-pane="speed">Speed</button>',
        '  <button class="tab" data-pane="ctrl">Ctrl</button>',
        '  <button class="tab" data-pane="save">Save</button>',
        '  <button class="tab" data-pane="vars">Vars</button>',
        '</div>',
        '<div class="body">',

        /* SPEED */
        '<div class="pane on" data-pane="speed">',
        '<div class="lbl">Text Speed</div>',
        '<div class="row">',
        '  <button class="btn green" id="'+ID+'_sp0">Instant</button>',
        '  <button class="btn blue"  id="'+ID+'_sp1">Normal</button>',
        '  <button class="btn amber" id="'+ID+'_sp5">Slow</button>',
        '</div>',
        '<div class="slrow">',
        '  <label>0</label>',
        '  <input type="range" id="'+ID+'_slider" min="0" max="20" value="3" step="1">',
        '  <label>20</label>',
        '  <span class="slval" id="'+ID+'_sval">3</span>',
        '</div>',
        '<div class="status" id="'+ID+'_spstatus">Current: <b>—</b></div>',
        '<div class="sep"></div>',
        '<div class="lbl">Auto Play Speed</div>',
        '<div class="row">',
        '  <button class="btn sm" id="'+ID+'_auto50">50ms</button>',
        '  <button class="btn sm" id="'+ID+'_auto100">100ms</button>',
        '  <button class="btn sm" id="'+ID+'_auto200">200ms</button>',
        '</div>',
        '</div>',

        /* CTRL */
        '<div class="pane" data-pane="ctrl">',
        '<div class="lbl">Auto Mode</div>',
        '<div class="row">',
        '  <button class="btn teal" id="'+ID+'_autoOn">Auto ON</button>',
        '  <button class="btn red"  id="'+ID+'_autoOff">Auto OFF</button>',
        '</div>',
        '<div class="lbl mt">Skip Mode</div>',
        '<div class="row">',
        '  <button class="btn teal" id="'+ID+'_skipOn">Skip ON</button>',
        '  <button class="btn red"  id="'+ID+'_skipOff">Skip OFF</button>',
        '</div>',
        '<div class="lbl mt">Text</div>',
        '<div class="row">',
        '  <button class="btn blue" id="'+ID+'_next">Next ▶</button>',
        '  <button class="btn sm" id="'+ID+'_hideMsg">Hide</button>',
        '  <button class="btn sm" id="'+ID+'_showMsg">Show</button>',
        '</div>',
        '<div class="status" id="'+ID+'_ctrlstatus">—</div>',
        '</div>',

        /* SAVE */
        '<div class="pane" data-pane="save">',
        '<div class="lbl">Save / Load</div>',
        '<div class="row">',
        '  <button class="btn amber" id="'+ID+'_save">Open Save</button>',
        '  <button class="btn blue"  id="'+ID+'_load">Open Load</button>',
        '</div>',
        '<div class="lbl mt">Quick State</div>',
        '<div class="row">',
        '  <button class="btn teal" id="'+ID+'_qsave">QSave</button>',
        '  <button class="btn blue" id="'+ID+'_qload">QLoad</button>',
        '</div>',
        '<div class="status" id="'+ID+'_savestatus">QSave: <b>empty</b></div>',
        '</div>',

        /* VARS */
        '<div class="pane" data-pane="vars">',
        '<div class="lbl">Source</div>',
        '<div class="slot-bar" id="'+ID+'_slots"></div>',
        '<input class="vsearch" id="'+ID+'_vsearch" placeholder="Filter…" type="search">',
        '<div id="'+ID+'_vlist"><div class="empty">Tap a slot above to load</div></div>',
        '<div class="row">',
        '  <button class="btn sm" id="'+ID+'_vrefresh">↺ Refresh</button>',
        '</div>',
        '</div>',

        '</div>', /* /body */
    ].join('');
    document.body.appendChild(root);

    /* Set max-height after mount so .body can scroll */
    root.style.maxHeight = Math.floor(window.innerHeight * 0.88) + 'px';

    /* ── CLOSE — remove panel entirely so next open gets a fresh instance ─ */
    document.getElementById(ID+'_close').addEventListener('click', function() {
        root.remove();
    });

    var activePaneName = 'speed';

    /* ── BODY SCROLL — manual scroll beats TyranoBuilder touch capture ── */
    (function() {
        var body = root.querySelector('.body');
        var touchY0 = 0, scrollY0 = 0, active = false;
        function isInteractive(el) {
            while (el && el !== body) {
                var t = el.tagName;
                if (t === 'INPUT' || t === 'BUTTON' || t === 'SELECT') return true;
                el = el.parentElement;
            }
            return false;
        }
        body.addEventListener('touchstart', function(e) {
            if (isInteractive(e.target)) return;
            touchY0 = e.touches[0].clientY;
            scrollY0 = body.scrollTop;
            active = true;
            e.stopPropagation();
        }, {capture: true, passive: true});
        body.addEventListener('touchmove', function(e) {
            if (!active) return;
            body.scrollTop = scrollY0 + (touchY0 - e.touches[0].clientY);
            e.stopPropagation();
            e.preventDefault();
        }, {capture: true, passive: false});
        body.addEventListener('touchend', function(e) {
            active = false;
            e.stopPropagation();
        }, {capture: true, passive: true});
    })();

    /* ── TABS ─────────────────────────────────────────────────────────── */
    root.querySelectorAll('.tab').forEach(function(t) {
        t.addEventListener('click', function() {
            root.querySelectorAll('.tab').forEach(function(x){ x.classList.remove('on'); });
            root.querySelectorAll('.pane').forEach(function(x){ x.classList.remove('on'); });
            t.classList.add('on');
            root.querySelector('.pane[data-pane="'+t.dataset.pane+'"]').classList.add('on');
            activePaneName = t.dataset.pane;
            if (t.dataset.pane === 'vars') buildSlots();
            if (t.dataset.pane === 'ctrl') refreshCtrl();
        });
    });

    /* ── DRAG ─────────────────────────────────────────────────────────── */
    (function() {
        var hdr = root.querySelector('.hdr'), ox = 0, oy = 0;
        hdr.addEventListener('pointerdown', function(e) {
            hdr.setPointerCapture(e.pointerId);
            var r = root.getBoundingClientRect();
            ox = e.clientX - r.left; oy = e.clientY - r.top;
            hdr.addEventListener('pointermove', move);
            hdr.addEventListener('pointerup', function() {
                hdr.removeEventListener('pointermove', move);
            }, {once:true});
        });
        function move(e) {
            root.style.left  = Math.max(0, Math.min(e.clientX - ox, window.innerWidth  - root.offsetWidth))  + 'px';
            root.style.top   = Math.max(0, Math.min(e.clientY - oy, window.innerHeight - root.offsetHeight)) + 'px';
            root.style.right = 'auto';
        }
    })();

    /* ── SPEED ────────────────────────────────────────────────────────── */
    function setSpeed(v) {
        var s = stat(); if (s) s.ch_speed = v;
        var sv = Math.min(20, Math.max(0, v));
        document.getElementById(ID+'_slider').value = sv;
        document.getElementById(ID+'_sval').textContent = sv;
        document.getElementById(ID+'_spstatus').innerHTML = 'Current: <b>' + v + '</b>';
    }
    function refreshSpeedStatus() {
        var s = stat(), v = s ? (s.ch_speed || 0) : '—';
        document.getElementById(ID+'_spstatus').innerHTML = 'Current: <b>' + v + '</b>';
        if (s) {
            var sv = Math.min(20, Math.max(0, s.ch_speed || 0));
            document.getElementById(ID+'_slider').value = sv;
            document.getElementById(ID+'_sval').textContent = sv;
        }
    }
    document.getElementById(ID+'_sp0').addEventListener('click', function(){ setSpeed(0); });
    document.getElementById(ID+'_sp1').addEventListener('click', function(){ setSpeed(3); });
    document.getElementById(ID+'_sp5').addEventListener('click', function(){ setSpeed(10); });
    (function() {
        var sl = document.getElementById(ID+'_slider'), sv = document.getElementById(ID+'_sval');
        sl.addEventListener('input', function(){ sv.textContent = sl.value; setSpeed(+sl.value); });
    })();
    function setAutoSpd(ms) {
        var k = kag(); if (!k) return;
        try { k.setConfig && k.setConfig('autoSpeed', ms); } catch(e) {}
        try { if (k.stat) k.stat.auto_speed = ms; } catch(e) {}
    }
    document.getElementById(ID+'_auto50').addEventListener('click',  function(){ setAutoSpd(50); });
    document.getElementById(ID+'_auto100').addEventListener('click', function(){ setAutoSpd(100); });
    document.getElementById(ID+'_auto200').addEventListener('click', function(){ setAutoSpd(200); });

    /* ── CONTROLS ─────────────────────────────────────────────────────── */
    function tryAutoOn()  { var k=kag();if(!k)return;try{k.stat&&(k.stat.is_auto_mode=true);}catch(e){}try{k.autoPlay&&k.autoPlay();}catch(e){}try{k.ftag&&k.ftag.startTag('auto',{});}catch(e){} }
    function tryAutoOff() { var k=kag();if(!k)return;try{k.stat&&(k.stat.is_auto_mode=false);}catch(e){}try{k.cancelAuto&&k.cancelAuto();}catch(e){} }
    function trySkipOn()  { var k=kag();if(!k)return;try{k.stat&&(k.stat.is_skip=true);}catch(e){}try{k.startSkipMode&&k.startSkipMode();}catch(e){}try{k.ftag&&k.ftag.startTag('skip',{mode:'on'});}catch(e){} }
    function trySkipOff() { var k=kag();if(!k)return;try{k.stat&&(k.stat.is_skip=false);}catch(e){}try{k.cancelSkip&&k.cancelSkip();}catch(e){} }
    function tryNext()    { var k=kag();if(!k)return;try{k.clickGlyphStart&&k.clickGlyphStart();}catch(e){}try{k.endClickGlyph&&k.endClickGlyph();}catch(e){}try{(document.getElementById('tyrano_base')||document.body).dispatchEvent(new MouseEvent('click',{bubbles:true}));}catch(e){} }
    function refreshCtrl() {
        var s=stat(),el=document.getElementById(ID+'_ctrlstatus'); if(!el) return;
        el.innerHTML = s ? 'Auto: <b>'+(s.is_auto_mode?'ON':'OFF')+'</b>  ·  Skip: <b>'+(s.is_skip?'ON':'OFF')+'</b>' : 'Tyrano not ready';
    }
    document.getElementById(ID+'_autoOn').addEventListener('click',  function(){ tryAutoOn();  refreshCtrl(); });
    document.getElementById(ID+'_autoOff').addEventListener('click', function(){ tryAutoOff(); refreshCtrl(); });
    document.getElementById(ID+'_skipOn').addEventListener('click',  function(){ trySkipOn();  refreshCtrl(); });
    document.getElementById(ID+'_skipOff').addEventListener('click', function(){ trySkipOff(); refreshCtrl(); });
    document.getElementById(ID+'_next').addEventListener('click',    tryNext);
    document.getElementById(ID+'_hideMsg').addEventListener('click', function() {
        var k=kag();try{k&&k.hideMessageCanvas&&k.hideMessageCanvas();}catch(e){}
        try{var el=document.getElementById('message_area_wrap')||document.getElementsByClassName('message_area')[0];if(el)el.style.display='none';}catch(e){}
    });
    document.getElementById(ID+'_showMsg').addEventListener('click', function() {
        var k=kag();try{k&&k.showMessageCanvas&&k.showMessageCanvas();}catch(e){}
        try{var el=document.getElementById('message_area_wrap')||document.getElementsByClassName('message_area')[0];if(el)el.style.display='';}catch(e){}
    });

    /* ── SAVE ─────────────────────────────────────────────────────────── */
    var qsaveData = null;
    document.getElementById(ID+'_save').addEventListener('click', function(){ var k=kag();try{k&&k.menu&&k.menu.displaySave();}catch(e){}try{k&&k.showSave&&k.showSave();}catch(e){} });
    document.getElementById(ID+'_load').addEventListener('click', function(){ var k=kag();try{k&&k.menu&&k.menu.displayLoad();}catch(e){}try{k&&k.showLoad&&k.showLoad();}catch(e){} });
    document.getElementById(ID+'_qsave').addEventListener('click', function() {
        var s=stat(); if(!s) return;
        try{ qsaveData=JSON.stringify(s.f); document.getElementById(ID+'_savestatus').innerHTML='QSave: <b>'+new Date().toLocaleTimeString()+'</b>'; }catch(e){}
    });
    document.getElementById(ID+'_qload').addEventListener('click', function() {
        if(!qsaveData) return; var s=stat(); if(!s) return;
        try{ Object.assign(s.f, JSON.parse(qsaveData)); document.getElementById(ID+'_savestatus').innerHTML='QLoad: <b>restored</b>'; }catch(e){}
    });

    /* ── VARS ─────────────────────────────────────────────────────────── */
    var activeSlot = null;

    function findSaveKeys() {
        var keys = [];
        try {
            for (var i = 0; i < localStorage.length; i++) {
                var k = localStorage.key(i); if (!k) continue;
                if (/save/i.test(k)) {
                    try { var raw = localStorage.getItem(k); if (raw && raw.charAt(0)==='{') keys.push(k); } catch(e) {}
                }
            }
        } catch(e) {}
        return keys.sort();
    }

    function parseSaveVars(key) {
        try {
            var obj = JSON.parse(localStorage.getItem(key)||'');
            if (obj.stat && obj.stat.f) return obj.stat.f;
            if (obj.f && typeof obj.f==='object') return obj.f;
            if (obj.variables) return obj.variables;
        } catch(e) {}
        return null;
    }

    function buildSlots() {
        var bar = document.getElementById(ID+'_slots');
        if (!bar) return;
        bar.innerHTML = '';
        function makeChip(label, key, cls, title) {
            var c = document.createElement('span');
            c.className = 'chip ' + cls + (activeSlot === key ? ' on' : '');
            c.textContent = label; if (title) c.title = title;
            if (key !== '__dim__') {
                c.addEventListener('click', function() {
                    activeSlot = key;
                    bar.querySelectorAll('.chip').forEach(function(x){ x.classList.remove('on'); });
                    c.classList.add('on');
                    refreshVars();
                });
            }
            bar.appendChild(c);
        }
        makeChip('▶ Runtime', null, 'rt', 'Current runtime variables');
        var keys = findSaveKeys();
        if (!keys.length) makeChip('no saves', '__dim__', 'dim');
        else keys.forEach(function(k) { makeChip(k.replace(/tyrano_?/i,'').replace(/_/g,' ')||k, k, '', k); });
        refreshVars();
    }

    function getSourceVars() {
        if (activeSlot === null) { var s=stat(); return s ? s.f : null; }
        var saveF = parseSaveVars(activeSlot);
        if (!saveF) return null;
        var s = stat();
        return Object.assign({}, saveF, s ? s.f : {});
    }

    function refreshVars() {
        var list   = document.getElementById(ID+'_vlist');
        if (!list) return;
        var search = (document.getElementById(ID+'_vsearch').value || '').toLowerCase();
        var f = getSourceVars();
        if (!f) {
            list.innerHTML = '<div class="empty">' + (activeSlot ? 'Cannot parse "'+activeSlot+'"' : 'Tyrano not ready') + '</div>';
            return;
        }
        var keys = Object.keys(f).filter(function(k) {
            if (!search) return true;
            return k.toLowerCase().indexOf(search) !== -1 || String(f[k]).toLowerCase().indexOf(search) !== -1;
        }).sort(function(a, b) {
            var ta = guessTag(a) ? 0 : 1, tb = guessTag(b) ? 0 : 1;
            return ta - tb || a.localeCompare(b);
        });
        if (!keys.length) { list.innerHTML = '<div class="empty">No match</div>'; return; }

        list.innerHTML = '';
        var frag = document.createDocumentFragment();
        keys.forEach(function(key) {
            var tag = guessTag(key);
            var row = document.createElement('div');
            row.className = 'vrow';
            if (tag) row.style.borderLeftColor = tag.color;

            var kEl = document.createElement('span'); kEl.className = 'vkey';
            kEl.textContent = key; kEl.title = key;

            var inp = document.createElement('input'); inp.className = 'vinp';
            inp.value = String(f[key]); inp.type = 'text';

            var btn = document.createElement('button'); btn.className = 'vset'; btn.textContent = 'Set';
            btn.addEventListener('click', function() {
                var s2 = stat(); if (!s2) return;
                var raw = inp.value;
                s2.f[key] = raw === 'true' ? true : raw === 'false' ? false : (raw !== '' && !isNaN(raw)) ? Number(raw) : raw;
                btn.textContent = '✓';
                setTimeout(function(){ btn.textContent = 'Set'; }, 900);
            });

            row.appendChild(kEl); row.appendChild(inp); row.appendChild(btn);
            frag.appendChild(row);
        });
        list.appendChild(frag);
    }

    document.getElementById(ID+'_vrefresh').addEventListener('click', function() { activeSlot = null; buildSlots(); });
    document.getElementById(ID+'_vsearch').addEventListener('input', refreshVars);

    /* ── Init ─────────────────────────────────────────────────────────── */
    refreshSpeedStatus();
})();
