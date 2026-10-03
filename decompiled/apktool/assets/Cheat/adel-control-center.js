/*
 * ADEL9st Control Center v1.4.0
 * Built: 2026-05-22T17:24:13
 * Generated from src/adel-control-center.js and @adel-include modules
 */
/*
 * ADEL9st Control Center
 * Clean-room RPG Maker MV/MZ runtime.
 */
(function () {
    'use strict'

    const GLOBAL_KEY = '__ADEL9ST_CONTROL_CENTER__'
    const VERSION = '1.4.0'
    const PROFILE_KEY = 'adel9st.control-center.profiles'
    const TRANSLATE_CACHE_KEY = 'adel9st.control-center.translate-cache'
    const mapPathCache = {}



    if (window[GLOBAL_KEY]) {
        return
    }

const state = {
    visible: false,
    speed: 1,
    speedCarry: 0,
    speedPatch: null,
    noClip: false,
    encounterDisabled: false,
    encounterPatch: null,
    goldFreeze: false,
    goldLock: 0,
    variableLocks: {},
    switchLocks: {},
    snapshot: null,
    changes: {variables: 0, switches: 0, rows: []},
    activeTab: 'deck',
    command: '',
    variableQuery: '',
    variableValue: '0',
    switchQuery: '',
    inventoryKind: 'items',
    inventoryQuery: '',
    inventoryAmount: '99',
    translateProvider: 'libre',
    translateTarget: 'tr',
    translateSource: 'auto',
    uiLanguage: 'auto',
    uiSizeMode: 'auto',
    translateInput: '',
    translateOutput: '',
    translateStatus: 'Translator idle.',
    translateBusy: false,
    translateEndpoint: 'http://localhost:5000/translate',
    translateModel: 'qwen2.5:3b',
    translateCache: {},
    slot: 1,
    host: null,
    root: null,
    app: null,
    log: ['ADEL9st runtime loaded. Press key under ESC ("), F10 or Ctrl+C.'],
    profiles: [],
    uiLayout: {
        viewportWidth: 1280,
        viewportHeight: 720,
        inset: 24,
        fontScale: 1,
        shellWidth: 1060,
        shellHeight: 680,
        compact: false,
        cramped: false
    },

    // New features state
    godModeActors: {},
    freezeList: {},
    automations: [],
    history: [],
    macroRunning: false,
    messageSkip: false,
    playerSpeedFix: false,
    playerSpeedVal: 4,
    battleHpVal: '1',
    actorEditorSubTab: 'stats',
    actorSkillsQuery: '',
    actorEquipSearchQuery: '',
    actorSelectedEquipSlot: null,
    activeEvents: [],
    eventHistoryLog: [],
    eventTracerEnabled: true,

    // Dense debugger filters
    variableFilter: 'all',
    variableSort: 'idAsc',
    variableNameless: false,
    variableBatchOp: 'set',
    variableBatchVal: '0',
    variableSelected: {},
    variablePage: 1,
    variableRowsPerPage: 5,

    switchFilter: 'all',
    switchNameless: false,
    switchSelected: {},
    switchPage: 1,
    switchRowsPerPage: 5,

    inventoryPage: 1,
    inventoryRowsPerPage: 5,
    selectedActorId: null,
    partyStatsDrafts: {},
    partyExpDrafts: {},

    // Map/Teleport state
    mapSearch: '',
    teleportX: '0',
    teleportY: '0',
    locationAliasInput: '',
    locationSearch: '',
    savedLocations: [],
    mapPage: 1,
    mapRowsPerPage: 5,

    // Party / script / automation state
    partySearch: '',
    partyLevelDrafts: {},
    scriptCode: "// Example: heal the full party\n$gameParty.members().forEach(actor => actor.recoverAll())\nreturn 'Party healed'",
    scriptOutput: '',
    scriptConfigText: '',
    inventoryDrafts: {},
    customAutomationName: 'Custom automation',
    customAutomationInterval: '1000',
    customAutomationAction: 'healParty',
    customAutomationParamId: '1',
    customAutomationParamValue: '1',
    customAutomationParamBool: true,
    macroAction: 'healParty',
    macroDelay: '250',
    macroParamId: '1',
    macroParamValue: '1',
    macroParamBool: true,
    macroSteps: [],
    macroStepIndex: -1,

    // Shortcut manager state
    shortcutRecording: null,
    shortcutQuery: '',

    // Game translate state
    gameTranslateEnabled: false,
    choiceTranslateEnabled: false,
    scrollTranslateEnabled: false,
    gameTranslateTargetLang: 'tr',
    gameTranslateProvider: 'google',
    gameTranslateEndpoint: 'https://translate.googleapis.com',
    gameTranslateModel: 'qwen2.5:3b',
    gameTranslateCustomMethod: 'GET',
    gameTranslateCustomUrlPattern: 'http://localhost:5000/translate?text=${TEXT}',
    gameTranslateCustomBody: '${TEXT}',

    translateTargetLang: 'tr',
    translateEnabled: false,
    translateTargets: {
        variables: false,
        switches: false,
        items: false,
        maps: false
    },
    translateBulkChunkSize: 100,

    // Legacy integrated features
    speedSceneFilter: 'all',
    variableLockResults: false,
    variableLockedIds: null,
    batchRandomMin: '0',
    batchRandomMax: '100',
    inventoryExcludeNameless: false,
    inventoryOnlyOwned: false,
    translateCustomMethod: 'GET',
    translateCustomUrlPattern: 'http://localhost:5000/translate?text=${TEXT}',
    translateCustomBody: '${TEXT}'
}

function exists (name) {
    return typeof window[name] !== 'undefined' && window[name] !== null
}

function clamp (value, min, max, fallback) {
    const numberValue = Number(value)
    if (!Number.isFinite(numberValue)) {
        return fallback
    }
    return Math.min(Math.max(numberValue, min), max)
}

function text (value) {
    return String(value === undefined || value === null ? '' : value)
}

function esc (value) {
    return text(value).replace(/[&<>"']/g, character => ({
        '&': '&amp;',
        '<': '&lt;',
        '>': '&gt;',
        '"': '&quot;',
        "'": '&#39;'
    })[character])
}

function log (message) {
    state.log.unshift(`[${new Date().toLocaleTimeString()}] ${message}`)
    state.log = state.log.slice(0, 10)
    refreshDynamic()
}

function runtimeName () {
    if (exists('Utils') && Utils.RPGMAKER_NAME) {
        return Utils.RPGMAKER_NAME
    }
    if (exists('PluginManager') && typeof PluginManager.registerCommand === 'function') {
        return 'MZ'
    }
    return 'MV/MZ'
}

function mapName () {
    if (exists('$gameMap') && exists('$dataMapInfos')) {
        const id = $gameMap.mapId()
        return $dataMapInfos[id] ? $dataMapInfos[id].name : `Map ${id}`
    }
    return 'No map'
}

function playerPosition () {
    if (!exists('$gamePlayer')) {
        return '0, 0'
    }
    return `${$gamePlayer.x}, ${$gamePlayer.y}`
}

function partyMembers () {
    if (!exists('$gameParty') || typeof $gameParty.members !== 'function') {
        return []
    }
    return $gameParty.members()
}

function actorKey (actor, index) {
    if (actor && typeof actor.actorId === 'function') {
        return actor.actorId()
    }
    return actor && actor._actorId ? actor._actorId : index + 1
}

function actorDisplayName (actor, index) {
    if (actor && typeof actor.name === 'function') {
        return actor.name()
    }
    return actor && actor._name ? actor._name : `Actor ${actorKey(actor, index)}`
}

function editableEventTarget (event) {
    if (state.root && state.root.activeElement) {
        const activeNode = state.root.activeElement
        const tag = (activeNode.tagName || '').toUpperCase()
        if (['INPUT', 'TEXTAREA', 'SELECT'].includes(tag) || activeNode.isContentEditable) {
            return activeNode
        }
    }
    const path = typeof event.composedPath === 'function' ? event.composedPath() : [event.target]
    return path.find(node => {
        if (!node || !node.tagName) {
            return false
        }
        return ['INPUT', 'TEXTAREA', 'SELECT'].includes(node.tagName) || node.isContentEditable
    }) || null
}

function partyHpPercent () {
    const members = partyMembers()
    if (!members.length) {
        return 0
    }

    let hp = 0
    let mhp = 0
    members.forEach(member => {
        hp += Number(member.hp || 0)
        mhp += Number(member.mhp || 0)
    })

    return mhp > 0 ? Math.round((hp / mhp) * 100) : 0
}

function compareValues (a, b) {
    const na = Number(a)
    const nb = Number(b)
    if (Number.isFinite(na) && Number.isFinite(nb)) return na - nb
    return String(a).localeCompare(String(b))
}

function sleep (ms) {
    return new Promise(resolve => setTimeout(resolve, Math.max(0, Number(ms) || 0)))
}

function positiveInt (value, fallback) {
    const numberValue = Math.floor(Number(value))
    return Number.isFinite(numberValue) && numberValue > 0 ? numberValue : fallback
}

function pageCount (totalRows, rowsPerPage) {
    return Math.max(1, Math.ceil(Math.max(0, totalRows) / Math.max(1, rowsPerPage)))
}

function clampPage (page, totalPages) {
    return Math.min(Math.max(positiveInt(page, 1), 1), Math.max(1, totalPages))
}

function paginateRows (rows, page, rowsPerPage) {
    const totalRows = rows.length
    const safeRowsPerPage = rowsPerPage === 'all' ? Math.max(1, totalRows) : positiveInt(rowsPerPage, 50)
    const totalPages = pageCount(totalRows, safeRowsPerPage)
    const safePage = clampPage(page, totalPages)
    const startIndex = totalRows === 0 ? 0 : (safePage - 1) * safeRowsPerPage
    const endIndex = Math.min(totalRows, startIndex + safeRowsPerPage)
    return {
        rows: rows.slice(startIndex, endIndex),
        totalRows,
        rowsPerPage: rowsPerPage === 'all' ? 'all' : safeRowsPerPage,
        page: safePage,
        totalPages,
        startLabel: totalRows === 0 ? 0 : startIndex + 1,
        endLabel: endIndex
    }
}
function gold () {
    if (!exists('$gameParty') || typeof $gameParty.gold !== 'function') {
        return 0
    }
    return $gameParty.gold()
}

function setGold (amount) {
    if (!exists('$gameParty')) {
        log('Gold failed: party is not ready.')
        return
    }

    const nextGold = clamp(amount, 0, 999999999, gold())
    const diff = nextGold - gold()
    if (diff > 0 && typeof $gameParty.gainGold === 'function') {
        $gameParty.gainGold(diff)
    } else if (diff < 0 && typeof $gameParty.loseGold === 'function') {
        $gameParty.loseGold(-diff)
    }
    state.goldLock = nextGold
    log(`Gold set to ${nextGold}.`)
}

function setGoldFreeze (enabled, amount) {
    const key = 'gold:0'
    if (!enabled) {
        delete state.freezeList[key]
        state.goldFreeze = false
        log('Gold freeze disabled.')
    } else {
        if (amount !== undefined) {
            setGold(amount)
        }
        const val = gold()
        state.freezeList[key] = {
            key: key,
            type: 'gold',
            id: 0,
            value: val,
            name: 'Gold',
            enabled: true
        }
        state.goldFreeze = true
        log(`Gold freeze enabled at ${val}.`)
    }
    saveState()
}

function healParty () {
    const members = partyMembers()
    members.forEach(member => {
        if (typeof member.recoverAll === 'function') {
            member.recoverAll()
        } else {
            if (typeof member.setHp === 'function') {
                member.setHp(member.mhp || 9999)
            }
            if (typeof member.setMp === 'function') {
                member.setMp(member.mmp || 9999)
            }
            if (typeof member.setTp === 'function') {
                member.setTp(typeof member.maxTp === 'function' ? member.maxTp() : 100)
            }
        }
    })
    log(`Party restored (${members.length} member${members.length === 1 ? '' : 's'}).`)
}

function setNoClip (enabled) {
    state.noClip = !!enabled
    if (exists('$gamePlayer')) {
        $gamePlayer._through = state.noClip
    }
    log(`No clip ${state.noClip ? 'enabled' : 'disabled'}.`)
}

function ensureEncounterPatch () {
    if (!exists('$gamePlayer') || typeof $gamePlayer.canEncounter !== 'function') {
        return
    }

    if (state.encounterPatch && state.encounterPatch.player === $gamePlayer) {
        return
    }

    const original = $gamePlayer.canEncounter
    state.encounterPatch = {
        player: $gamePlayer,
        original: original
    }

    $gamePlayer.canEncounter = function () {
        if (state.encounterDisabled) {
            return false
        }
        return original.apply(this, arguments)
    }
}

function setEncounters (enabled) {
    state.encounterDisabled = !enabled
    ensureEncounterPatch()
    log(`Random encounters ${enabled ? 'enabled' : 'disabled'}.`)
}

function ensureSpeedPatch () {
    if (!exists('SceneManager')) {
        return
    }

    const target = SceneManager
    const method = typeof target.updateScene === 'function'
        ? 'updateScene'
        : (typeof target.updateMain === 'function' ? 'updateMain' : null)

    if (!method) {
        return
    }

    if (state.speedPatch && state.speedPatch.target === target && state.speedPatch.method === method) {
        return
    }

    const original = target[method]
    state.speedPatch = {target: target, method: method, original: original}

    target[method] = function () {
        const isBattleOnly = state.speedSceneFilter === 'battle'
        const isBattleScene = exists('SceneManager') && exists('Scene_Battle') && SceneManager._scene instanceof Scene_Battle
        const rate = (isBattleOnly && !isBattleScene) ? 1 : clamp(state.speed, 0.1, 10, 1)
        if (rate === 1) {
            return original.apply(this, arguments)
        }

        state.speedCarry += rate
        let loops = Math.floor(state.speedCarry)
        state.speedCarry -= loops
        loops = Math.min(Math.max(loops, 0), 8)

        let result
        for (let i = 0; i < loops; ++i) {
            result = original.apply(this, arguments)
        }
        return result
    }
}

function setSpeed (rate) {
    state.speed = clamp(rate, 0.1, 10, 1)
    ensureSpeedPatch()
    log(`Game speed set to x${state.speed.toFixed(1)}.`)
}

function showScene (name) {
    if (!exists('SceneManager')) {
        log(`${name} scene failed: SceneManager is not ready.`)
        return
    }

    const scene = window[name]
    if (!scene) {
        log(`${name} scene is not available.`)
        return
    }

    if (typeof SceneManager.push === 'function') {
        SceneManager.push(scene)
    } else if (typeof SceneManager.goto === 'function') {
        SceneManager.goto(scene)
    }
    log(`${name.replace('Scene_', '')} scene opened.`)
}

function gotoTitle () {
    if (exists('SceneManager') && exists('Scene_Title') && typeof SceneManager.goto === 'function') {
        SceneManager.goto(Scene_Title)
        log('Title scene opened.')
    }
}

function quickSave (slot) {
    const targetSlot = Math.max(1, Number(slot) || state.slot || 1)
    if (!exists('DataManager') || typeof DataManager.saveGame !== 'function') {
        log('Quick save failed: DataManager is not ready.')
        return
    }
    if (exists('$gameSystem') && typeof $gameSystem.onBeforeSave === 'function') {
        $gameSystem.onBeforeSave()
    }
    const result = DataManager.saveGame(targetSlot)
    if (result && typeof result.then === 'function') {
        result.then(() => log(`Quick saved slot ${targetSlot}.`))
    } else {
        log(`Quick saved slot ${targetSlot}.`)
    }
}

function quickLoad (slot) {
    const targetSlot = Math.max(1, Number(slot) || state.slot || 1)
    if (!exists('DataManager') || typeof DataManager.loadGame !== 'function') {
        log('Quick load failed: DataManager is not ready.')
        return
    }
    const result = DataManager.loadGame(targetSlot)
    const finish = () => {
        if (exists('SceneManager') && exists('Scene_Map') && typeof SceneManager.goto === 'function') {
            SceneManager.goto(Scene_Map)
        }
        log(`Quick loaded slot ${targetSlot}.`)
    }
    if (result && typeof result.then === 'function') {
        result.then(finish)
    } else {
        finish()
    }
}

function captureSnapshot () {
    const variables = {}
    const switches = {}

    if (exists('$dataSystem') && exists('$gameVariables')) {
        for (let i = 1; i < ($dataSystem.variables || []).length; ++i) {
            variables[i] = $gameVariables.value(i)
        }
    }

    if (exists('$dataSystem') && exists('$gameSwitches')) {
        for (let i = 1; i < ($dataSystem.switches || []).length; ++i) {
            switches[i] = $gameSwitches.value(i)
        }
    }

    state.snapshot = {
        at: Date.now(),
        variables: variables,
        switches: switches
    }
    refreshChanges()
    log('Variable and switch snapshot captured.')
}

function variableRowsData () {
    if (!exists('$dataSystem') || !exists('$gameVariables')) {
        return []
    }

    if (state.variableLockResults && state.variableLockedIds) {
        const variables = $dataSystem.variables || []
        const rows = []
        for (const id of state.variableLockedIds) {
            if (id < 1 || id >= variables.length) continue
            const name = variables[id] || ''
            const displayName = name || `Variable ${id}`
            const value = $gameVariables.value(id)
            const changed = !!state.snapshot && state.snapshot.variables[id] !== value
            const locked = Object.prototype.hasOwnProperty.call(state.freezeList, `variable:${id}`)
            rows.push({id, name: displayName, value, changed, locked})
        }
        return rows
    }

    const query = state.variableQuery.toLowerCase()
    const variables = $dataSystem.variables || []
    let rows = []

    for (let id = 1; id < variables.length; ++id) {
        const name = variables[id] || ''
        if (!state.variableNameless && !name) {
            continue
        }

        const displayName = name || `Variable ${id}`
        const value = $gameVariables.value(id)
        const changed = !!state.snapshot && state.snapshot.variables[id] !== value
        const locked = Object.prototype.hasOwnProperty.call(state.freezeList, `variable:${id}`)

        if (state.variableFilter === 'nonzero' && Number(value) === 0) continue
        if (state.variableFilter === 'frozen' && !locked) continue
        if (state.variableFilter === 'changed' && !changed) continue

        const haystack = `${id} ${displayName} ${value}`.toLowerCase()
        if (query && !haystack.includes(query)) {
            continue
        }

        rows.push({id, name: displayName, value, changed, locked})
    }

    return sortVariables(rows)
}

function sortVariables (rows) {
    return rows.sort((a, b) => {
        if (state.variableSort === 'idDesc') return b.id - a.id
        if (state.variableSort === 'valueAsc') return compareValues(a.value, b.value)
        if (state.variableSort === 'valueDesc') return compareValues(b.value, a.value)
        if (state.variableSort === 'nameAsc') return String(a.name).localeCompare(String(b.name))
        if (state.variableSort === 'nameDesc') return String(b.name).localeCompare(String(a.name))
        return a.id - b.id
    })
}

function variablePageData () {
    const pageData = paginateRows(variableRowsData(), state.variablePage, state.variableRowsPerPage)
    state.variablePage = pageData.page
    state.variableRowsPerPage = pageData.rowsPerPage
    return pageData
}

function switchPageData () {
    const pageData = paginateRows(switchRowsData(), state.switchPage, state.switchRowsPerPage)
    state.switchPage = pageData.page
    state.switchRowsPerPage = pageData.rowsPerPage
    return pageData
}

function switchRowsData () {
    if (!exists('$dataSystem') || !exists('$gameSwitches')) {
        return []
    }

    const query = state.switchQuery.toLowerCase()
    const switches = $dataSystem.switches || []
    const rows = []

    for (let id = 1; id < switches.length; ++id) {
        const name = switches[id] || ''
        if (!state.switchNameless && !name) {
            continue
        }

        const displayName = name || `Switch ${id}`
        const value = !!$gameSwitches.value(id)
        const changed = !!state.snapshot && state.snapshot.switches[id] !== value
        const locked = Object.prototype.hasOwnProperty.call(state.freezeList, `switch:${id}`)

        if (state.switchFilter === 'on' && !value) continue
        if (state.switchFilter === 'off' && value) continue
        if (state.switchFilter === 'frozen' && !locked) continue
        if (state.switchFilter === 'changed' && !changed) continue

        const haystack = `${id} ${displayName} ${value ? 'on true open acik' : 'off false closed kapali'}`.toLowerCase()
        if (query && !haystack.includes(query)) {
            continue
        }

        rows.push({id, name: displayName, value, changed, locked})
    }

    return rows
}

function itemTable (kind) {
    if (kind === 'weapons' && exists('$dataWeapons')) {
        return $dataWeapons
    }
    if (kind === 'armors' && exists('$dataArmors')) {
        return $dataArmors
    }
    if (exists('$dataItems')) {
        return $dataItems
    }
    return []
}

function inventoryRowsData () {
    if (!exists('$gameParty')) {
        return []
    }

    const table = itemTable(state.inventoryKind)
    const query = state.inventoryQuery.toLowerCase()
    const rows = []

    for (let id = 1; id < table.length; ++id) {
        const item = table[id]
        if (!item) {
            continue
        }

        const name = item.name || ''
        if (state.inventoryExcludeNameless && !name.trim()) {
            continue
        }

        const count = typeof $gameParty.numItems === 'function' ? $gameParty.numItems(item) : 0
        if (state.inventoryOnlyOwned && count <= 0) {
            continue
        }

        const displayName = name || `${state.inventoryKind} ${id}`
        const description = item.description || ''
        const haystack = `${id} ${displayName} ${description} ${count}`.toLowerCase()

        if (query && !haystack.includes(query)) {
            continue
        }

        rows.push({id, item, name: displayName, count, description})
    }

    return rows
}

function inventoryPageData () {
    const pageData = paginateRows(inventoryRowsData(), state.inventoryPage, state.inventoryRowsPerPage)
    state.inventoryPage = pageData.page
    state.inventoryRowsPerPage = pageData.rowsPerPage
    return pageData
}

function setVariableValue (id, value, skipHistory = false) {
    if (!exists('$gameVariables')) {
        log('Variable edit failed: variables are not ready.')
        return
    }
    const numId = Number(id)
    const oldValue = $gameVariables.value(numId)
    const nextValue = Number.isFinite(Number(value)) ? Number(value) : value
    if (oldValue !== nextValue) {
        $gameVariables.setValue(numId, nextValue)
        if (!skipHistory) {
            pushHistory('variables', [{ id: numId, oldValue, newValue: nextValue }])
        }
        log(`Variable ${numId} set to ${nextValue}.`)
    }
}

function operateVariableValue (id, operation, amount) {
    if (!exists('$gameVariables')) {
        return
    }

    const oldValue = Number($gameVariables.value(Number(id))) || 0
    const value = Number(amount) || 0
    let nextValue = value

    if (operation === 'add') {
        nextValue = oldValue + value
    } else if (operation === 'sub') {
        nextValue = oldValue - value
    } else if (operation === 'mul') {
        nextValue = oldValue * value
    } else if (operation === 'random') {
        const min = Number.isFinite(Number(state.batchRandomMin)) ? Number(state.batchRandomMin) : 0
        const max = Number.isFinite(Number(state.batchRandomMax)) ? Number(state.batchRandomMax) : 100
        const range = Math.max(0, max - min)
        nextValue = Math.floor(Math.random() * (range + 1)) + min
    }

    $gameVariables.setValue(Number(id), nextValue)
    log(`Variable ${id} ${operation} -> ${nextValue}.`)
}

function toggleVariableLock (id) {
    const key = `variable:${id}`
    if (state.freezeList[key]) {
        delete state.freezeList[key]
        log(`Variable ${id} unlocked.`)
    } else if (exists('$gameVariables')) {
        const val = $gameVariables.value(Number(id))
        const name = exists('$dataSystem') ? ($dataSystem.variables[id] || `Variable ${id}`) : `Variable ${id}`
        state.freezeList[key] = {
            key: key,
            type: 'variable',
            id: Number(id),
            value: val,
            name: name,
            enabled: true
        }
        log(`Variable ${id} locked at ${val}.`)
    }
    saveState()
}

function setSwitchValue (id, value, skipHistory = false) {
    if (!exists('$gameSwitches')) {
        log('Switch edit failed: switches are not ready.')
        return
    }
    const numId = Number(id)
    const oldValue = !!$gameSwitches.value(numId)
    const newValue = !!value
    if (oldValue !== newValue) {
        $gameSwitches.setValue(numId, newValue)
        if (!skipHistory) {
            pushHistory('switches', [{ id: numId, oldValue, newValue }])
        }
        log(`Switch ${numId} set ${newValue ? 'ON' : 'OFF'}.`)
    }
}

function toggleSwitchLock (id) {
    const key = `switch:${id}`
    if (state.freezeList[key]) {
        delete state.freezeList[key]
        log(`Switch ${id} unlocked.`)
    } else if (exists('$gameSwitches')) {
        const val = !!$gameSwitches.value(Number(id))
        const name = exists('$dataSystem') ? ($dataSystem.switches[id] || `Switch ${id}`) : `Switch ${id}`
        state.freezeList[key] = {
            key: key,
            type: 'switch',
            id: Number(id),
            value: val,
            name: name,
            enabled: true
        }
        log(`Switch ${id} locked ${val ? 'ON' : 'OFF'}.`)
    }
    saveState()
}

function setInventoryAmount (kind, id, amount, skipHistory = false) {
    if (!exists('$gameParty') || typeof $gameParty.gainItem !== 'function') {
        log('Inventory edit failed: party inventory is not ready.')
        return
    }

    const table = itemTable(kind)
    const item = table[Number(id)]
    if (!item) {
        log(`Inventory item not found: ${kind} ${id}.`)
        return
    }

    const current = typeof $gameParty.numItems === 'function' ? $gameParty.numItems(item) : 0
    const nextAmount = clamp(amount, 0, 999, current)
    if (current !== nextAmount) {
        $gameParty.gainItem(item, nextAmount - current, true)
        state.inventoryDrafts[Number(id)] = String(nextAmount)
        if (!skipHistory) {
            pushHistory('inventory', [{ id: Number(id), kind: kind, oldValue: current, newValue: nextAmount }])
        }
        log(`${item.name || kind + ' ' + id} set to ${nextAmount}.`)
    }
}

function setVisibleInventoryAmount (amount) {
    if (!exists('$gameParty')) return
    const rows = inventoryRowsData()
    const changes = []
    rows.forEach(row => {
        const table = itemTable(state.inventoryKind)
        const item = table[row.id]
        if (item) {
            const oldVal = typeof $gameParty.numItems === 'function' ? $gameParty.numItems(item) : 0
            setInventoryAmount(state.inventoryKind, row.id, amount, true)
            const newVal = typeof $gameParty.numItems === 'function' ? $gameParty.numItems(item) : 0
            changes.push({ id: row.id, kind: state.inventoryKind, oldValue: oldVal, newValue: newVal })
        }
    })
    if (changes.length) {
        pushHistory('inventory', changes)
    }
    log(`${rows.length} visible inventory row(s) updated.`)
}
function translateCacheKey (provider, source, target, value) {
    return `${provider}|${source}|${target}|${value}`
}

function loadTranslateCache () {
    try {
        state.translateCache = JSON.parse(localStorage.getItem(TRANSLATE_CACHE_KEY) || '{}')
    } catch (err) {
        state.translateCache = {}
    }
}

function saveTranslateCache () {
    const keys = Object.keys(state.translateCache)
    if (keys.length > 400) {
        const trimmed = {}
        keys.slice(keys.length - 400).forEach(key => {
            trimmed[key] = state.translateCache[key]
        })
        state.translateCache = trimmed
    }
    localStorage.setItem(TRANSLATE_CACHE_KEY, JSON.stringify(state.translateCache))
}

function protectTextCodes (value) {
    const tokens = []
    const protectedText = text(value).replace(/\\[A-Za-z]+\[[^\]]*\]|\\[A-Za-z]+|[%$#@!&][0-9]+/g, match => {
        const token = `[[_EC_${tokens.length}]]`
        tokens.push({token, value: match})
        return token
    })
    return {text: protectedText, tokens: tokens}
}

function restoreTextCodes (value, tokens) {
    let output = text(value)
    tokens.forEach((item, index) => {
        const regexDouble = new RegExp(`\\[\\s*\\[\\s*_[Ee][Cc]_\\s*${index}\\s*\\]\\s*\\]`, 'g')
        output = output.replace(regexDouble, item.value)

        const regexSingle = new RegExp(`\\[\\s*_[Ee][Cc]_\\s*${index}\\s*\\]`, 'g')
        output = output.replace(regexSingle, item.value)

        const regexNone = new RegExp(`\\b_[Ee][Cc]_\\s*${index}\\b`, 'g')
        output = output.replace(regexNone, item.value)
    })
    tokens.forEach((item, index) => {
        const regexDouble = new RegExp(`__\\s*ADEL_TOKEN_\\s*${index}\\s*__`, 'gi')
        output = output.replace(regexDouble, item.value)

        const regexNone = new RegExp(`\\bADEL_TOKEN_\\s*${index}\\b`, 'gi')
        output = output.replace(regexNone, item.value)
    })
    return output
}

function extractTranslatedText (data) {
    if (typeof data === 'string') {
        return data
    }
    if (!data) {
        return ''
    }
    if (typeof data.translatedText === 'string') {
        return data.translatedText
    }
    if (typeof data.translation === 'string') {
        return data.translation
    }
    if (typeof data.response === 'string') {
        return data.response
    }
    if (Array.isArray(data) && data[0] && Array.isArray(data[0])) {
        return data[0].map(part => part[0]).join('')
    }
    return JSON.stringify(data)
}

function fetchJsonOrText (url, options = {}) {
    return new Promise((resolve, reject) => {
        const xhr = new XMLHttpRequest()
        const method = options.method || 'GET'
        xhr.open(method, url, true)
        if (options.headers) {
            for (const key in options.headers) {
                if (options.headers.hasOwnProperty(key)) {
                    xhr.setRequestHeader(key, options.headers[key])
                }
            }
        }
        xhr.onload = function () {
            if (xhr.status >= 200 && xhr.status < 300) {
                const contentType = xhr.getResponseHeader('content-type') || ''
                if (contentType.indexOf('application/json') !== -1) {
                    try {
                        resolve(JSON.parse(xhr.responseText))
                    } catch (e) {
                        resolve(xhr.responseText)
                    }
                } else {
                    resolve(xhr.responseText)
                }
            } else {
                reject(new Error(`HTTP ${xhr.status}: ${xhr.statusText}`))
            }
        }
        xhr.onerror = function () {
            reject(new Error('Network error'))
        }
        xhr.send(options.body || null)
    })
}

const translationCache = {}
let isDatabaseTranslated = false

async function translateSingleText (value, sourceLang, targetLang, useGameConfig = false) {
    const source = sourceLang || state.translateSource || 'auto'
    const target = targetLang || (useGameConfig ? state.gameTranslateTargetLang : (state.translateTarget || 'tr'))

    const provider = useGameConfig ? state.gameTranslateProvider : state.translateProvider
    const endpoint = useGameConfig ? state.gameTranslateEndpoint : state.translateEndpoint
    const model = useGameConfig ? state.gameTranslateModel : state.translateModel
    const customMethod = useGameConfig ? state.gameTranslateCustomMethod : state.translateCustomMethod
    const customUrlPattern = useGameConfig ? state.gameTranslateCustomUrlPattern : state.translateCustomUrlPattern
    const customBody = useGameConfig ? state.gameTranslateCustomBody : state.translateCustomBody

    const cacheKey = translateCacheKey(provider, source, target, value)
    if (state.translateCache[cacheKey]) {
        return state.translateCache[cacheKey]
    }

    const protectedValue = protectTextCodes(value)

    let raw
    if (provider === 'libre') {
        raw = extractTranslatedText(await fetchJsonOrText(endpoint || 'http://localhost:5000/translate', {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify({
                q: protectedValue.text,
                source: source,
                target: target,
                format: 'text'
            })
        }))
    } else if (provider === 'ollama') {
        const prompt = `Translate to ${target}. Preserve RPG Maker control tokens exactly. Return only the translated text:\n\n${protectedValue.text}`
        raw = extractTranslatedText(await fetchJsonOrText(endpoint || 'http://localhost:11434/api/generate', {
            method: 'POST',
            headers: {'Content-Type': 'application/json'},
            body: JSON.stringify({
                model: model || 'qwen2.5:3b',
                prompt: prompt,
                stream: false
            })
        }))
    } else if (provider === 'google') {
        const url = `https://translate.googleapis.com/translate_a/single?client=gtx&sl=${encodeURIComponent(source)}&tl=${encodeURIComponent(target)}&dt=t&q=${encodeURIComponent(protectedValue.text)}`
        raw = extractTranslatedText(await fetchJsonOrText(url, {method: 'GET'}))
    } else if (provider === 'ezTransWeb') {
        const pattern = endpoint || 'http://localhost:5000/translate?text=${TEXT}'
        const url = pattern.replace(/\${TEXT}/g, encodeURIComponent(protectedValue.text))
        raw = extractTranslatedText(await fetchJsonOrText(url, {method: 'GET'}))
    } else if (provider === 'ezTransServer') {
        const url = endpoint || 'http://localhost:8000'
        raw = extractTranslatedText(await fetchJsonOrText(url, {
            method: 'POST',
            body: protectedValue.text
        }))
    } else if (provider === 'custom') {
        const method = (customMethod || 'GET').toUpperCase()
        const urlPattern = customUrlPattern || 'http://localhost:5000/translate?text=${TEXT}'
        const url = urlPattern.replace(/\${TEXT}/g, encodeURIComponent(protectedValue.text))
        const options = { method: method }
        if (method === 'POST') {
            const bodyPattern = customBody || '${TEXT}'
            const replacedBody = bodyPattern.replace(/\${TEXT}/g, protectedValue.text)
            if (bodyPattern.trim().startsWith('{') || bodyPattern.trim().startsWith('[')) {
                try {
                    JSON.parse(replacedBody)
                    options.headers = { 'Content-Type': 'application/json' }
                    options.body = replacedBody
                } catch (e) {
                    options.body = replacedBody
                }
            } else {
                options.body = replacedBody
            }
        }
        raw = extractTranslatedText(await fetchJsonOrText(url, options))
    } else {
        const separator = (endpoint || '').includes('?') ? '&' : '?'
        const url = `${endpoint || ''}${separator}text=${encodeURIComponent(protectedValue.text)}&source=${encodeURIComponent(source)}&target=${encodeURIComponent(target)}`
        raw = extractTranslatedText(await fetchJsonOrText(url, {method: 'GET'}))
    }

    const translated = restoreTextCodes(raw, protectedValue.tokens)
    state.translateCache[cacheKey] = translated
    saveTranslateCache()
    return translated
}

async function translateBulkText (texts, sourceLang, targetLang) {
    const source = sourceLang || state.translateSource || 'auto'
    const target = targetLang || state.translateTarget || 'tr'

    const uniqueTexts = [...new Set(texts.map(t => (t || '').trim()).filter(Boolean))]
    if (uniqueTexts.length === 0) return []

    const results = {}
    const toTranslate = []

    for (const t of uniqueTexts) {
        const cacheKey = translateCacheKey(state.translateProvider, source, target, t)
        if (state.translateCache[cacheKey]) {
            results[t] = state.translateCache[cacheKey]
        } else {
            toTranslate.push(t)
        }
    }

    if (toTranslate.length > 0) {
        const chunkSize = Math.max(1, Number(state.translateBulkChunkSize) || 100)
        for (let i = 0; i < toTranslate.length; i += chunkSize) {
            const chunk = toTranslate.slice(i, i + chunkSize)
            try {
                const joined = chunk.join('\n')
                const translatedJoined = await translateSingleText(joined, source, target)
                const translatedParts = translatedJoined.split('\n')
                for (let j = 0; j < chunk.length; j++) {
                    const original = chunk[j]
                    const translated = (translatedParts[j] || original).trim()
                    results[original] = translated
                    const cacheKey = translateCacheKey(state.translateProvider, source, target, original)
                    state.translateCache[cacheKey] = translated
                }
            } catch (err) {
                console.error('Bulk translate chunk failed:', err)
                for (const original of chunk) {
                    try {
                        const translated = await translateSingleText(original, source, target)
                        results[original] = translated
                    } catch (e) {
                        results[original] = original
                    }
                }
            }
        }
        saveTranslateCache()
    }

    return texts.map(t => results[(t || '').trim()] || t)
}

async function translateText (value) {
    const sourceText = text(value).trim()
    if (!sourceText) {
        state.translateStatus = uiText('translate.status.nothing')
        draw()
        return ''
    }

    state.translateBusy = true
    state.translateStatus = uiText('translate.status.translating')
    draw()

    try {
        const translated = await translateSingleText(sourceText)
        state.translateOutput = translated
        state.translateStatus = uiText('translate.status.complete')
        log(uiText('translate.status.complete'))
        return translated
    } catch (err) {
        state.translateStatus = uiText('translate.status.failed', {message: err.message})
        log(state.translateStatus)
        return ''
    } finally {
        state.translateBusy = false
        draw()
    }
}

const originalDatabaseNames = {
    variables: null,
    switches: null,
    items: null,
    weapons: null,
    armors: null,
    maps: null
}

function backupDatabaseNames () {
    if (!exists('$dataSystem')) return
    if (!originalDatabaseNames.variables) {
        originalDatabaseNames.variables = [...$dataSystem.variables]
        originalDatabaseNames.switches = [...$dataSystem.switches]
    }
    if (!originalDatabaseNames.items && exists('$dataItems')) {
        originalDatabaseNames.items = $dataItems.map(item => item ? item.name : null)
    }
    if (!originalDatabaseNames.weapons && exists('$dataWeapons')) {
        originalDatabaseNames.weapons = $dataWeapons.map(item => item ? item.name : null)
    }
    if (!originalDatabaseNames.armors && exists('$dataArmors')) {
        originalDatabaseNames.armors = $dataArmors.map(item => item ? item.name : null)
    }
    if (!originalDatabaseNames.maps && exists('$dataMapInfos')) {
        originalDatabaseNames.maps = $dataMapInfos.map(m => m ? m.name : null)
    }
}

async function translateDatabase () {
    if (!state.translateEnabled) {
        restoreDatabase()
        return
    }

    if (!exists('$dataSystem')) return

    backupDatabaseNames()

    const source = state.translateSource || 'auto'
    const target = state.translateTargetLang || 'tr'

    state.translateStatus = uiText('translate.status.dbTranslating')
    draw()

    try {
        if (state.translateTargets.variables) {
            const varsToTranslate = []
            const indexMap = []
            for (let i = 1; i < $dataSystem.variables.length; i++) {
                const name = originalDatabaseNames.variables[i]
                if (name && name.trim()) {
                    varsToTranslate.push(name)
                    indexMap.push(i)
                }
            }
            if (varsToTranslate.length > 0) {
                const translated = await translateBulkText(varsToTranslate, source, target)
                for (let j = 0; j < varsToTranslate.length; j++) {
                    $dataSystem.variables[indexMap[j]] = translated[j]
                }
            }
        } else {
            for (let i = 1; i < $dataSystem.variables.length; i++) {
                $dataSystem.variables[i] = originalDatabaseNames.variables[i]
            }
        }

        if (state.translateTargets.switches) {
            const switchesToTranslate = []
            const indexMap = []
            for (let i = 1; i < $dataSystem.switches.length; i++) {
                const name = originalDatabaseNames.switches[i]
                if (name && name.trim()) {
                    switchesToTranslate.push(name)
                    indexMap.push(i)
                }
            }
            if (switchesToTranslate.length > 0) {
                const translated = await translateBulkText(switchesToTranslate, source, target)
                for (let j = 0; j < switchesToTranslate.length; j++) {
                    $dataSystem.switches[indexMap[j]] = translated[j]
                }
            }
        } else {
            for (let i = 1; i < $dataSystem.switches.length; i++) {
                $dataSystem.switches[i] = originalDatabaseNames.switches[i]
            }
        }

        if (state.translateTargets.items && exists('$dataItems')) {
            const itemsToTranslate = []
            const indexMap = []
            for (let i = 1; i < $dataItems.length; i++) {
                if ($dataItems[i]) {
                    const name = originalDatabaseNames.items[i]
                    if (name && name.trim()) {
                        itemsToTranslate.push(name)
                        indexMap.push(i)
                    }
                }
            }
            if (itemsToTranslate.length > 0) {
                const translated = await translateBulkText(itemsToTranslate, source, target)
                for (let j = 0; j < itemsToTranslate.length; j++) {
                    $dataItems[indexMap[j]].name = translated[j]
                }
            }
        } else if (exists('$dataItems') && originalDatabaseNames.items) {
            for (let i = 1; i < $dataItems.length; i++) {
                if ($dataItems[i] && originalDatabaseNames.items[i] !== undefined) {
                    $dataItems[i].name = originalDatabaseNames.items[i]
                }
            }
        }

        if (state.translateTargets.items && exists('$dataWeapons')) {
            const weaponsToTranslate = []
            const indexMap = []
            for (let i = 1; i < $dataWeapons.length; i++) {
                if ($dataWeapons[i]) {
                    const name = originalDatabaseNames.weapons[i]
                    if (name && name.trim()) {
                        weaponsToTranslate.push(name)
                        indexMap.push(i)
                    }
                }
            }
            if (weaponsToTranslate.length > 0) {
                const translated = await translateBulkText(weaponsToTranslate, source, target)
                for (let j = 0; j < weaponsToTranslate.length; j++) {
                    $dataWeapons[indexMap[j]].name = translated[j]
                }
            }
        } else if (exists('$dataWeapons') && originalDatabaseNames.weapons) {
            for (let i = 1; i < $dataWeapons.length; i++) {
                if ($dataWeapons[i] && originalDatabaseNames.weapons[i] !== undefined) {
                    $dataWeapons[i].name = originalDatabaseNames.weapons[i]
                }
            }
        }

        if (state.translateTargets.items && exists('$dataArmors')) {
            const armorsToTranslate = []
            const indexMap = []
            for (let i = 1; i < $dataArmors.length; i++) {
                if ($dataArmors[i]) {
                    const name = originalDatabaseNames.armors[i]
                    if (name && name.trim()) {
                        armorsToTranslate.push(name)
                        indexMap.push(i)
                    }
                }
            }
            if (armorsToTranslate.length > 0) {
                const translated = await translateBulkText(armorsToTranslate, source, target)
                for (let j = 0; j < armorsToTranslate.length; j++) {
                    $dataArmors[indexMap[j]].name = translated[j]
                }
            }
        } else if (exists('$dataArmors') && originalDatabaseNames.armors) {
            for (let i = 1; i < $dataArmors.length; i++) {
                if ($dataArmors[i] && originalDatabaseNames.armors[i] !== undefined) {
                    $dataArmors[i].name = originalDatabaseNames.armors[i]
                }
            }
        }

        if (state.translateTargets.maps && exists('$dataMapInfos')) {
            const mapsToTranslate = []
            const indexMap = []
            for (let i = 1; i < $dataMapInfos.length; i++) {
                if ($dataMapInfos[i]) {
                    const name = originalDatabaseNames.maps[i]
                    if (name && name.trim()) {
                        mapsToTranslate.push(name)
                        indexMap.push(i)
                    }
                }
            }
            if (mapsToTranslate.length > 0) {
                const translated = await translateBulkText(mapsToTranslate, source, target)
                for (let j = 0; j < mapsToTranslate.length; j++) {
                    $dataMapInfos[indexMap[j]].name = translated[j]
                }
            }
        } else if (exists('$dataMapInfos') && originalDatabaseNames.maps) {
            for (let i = 1; i < $dataMapInfos.length; i++) {
                if ($dataMapInfos[i] && originalDatabaseNames.maps[i] !== undefined) {
                    $dataMapInfos[i].name = originalDatabaseNames.maps[i]
                }
            }
        }

        isDatabaseTranslated = true
        state.translateStatus = uiText('translate.status.dbComplete')
        log(state.translateStatus)
    } catch (err) {
        state.translateStatus = uiText('translate.status.dbFailed', {message: err.message})
        log(state.translateStatus)
    } finally {
        draw()
    }
}

function restoreDatabase () {
    if (!originalDatabaseNames.variables) return

    if (exists('$dataSystem')) {
        for (let i = 1; i < $dataSystem.variables.length; i++) {
            $dataSystem.variables[i] = originalDatabaseNames.variables[i]
        }
        for (let i = 1; i < $dataSystem.switches.length; i++) {
            $dataSystem.switches[i] = originalDatabaseNames.switches[i]
        }
    }

    if (exists('$dataItems') && originalDatabaseNames.items) {
        for (let i = 1; i < $dataItems.length; i++) {
            if ($dataItems[i] && originalDatabaseNames.items[i] !== undefined) {
                $dataItems[i].name = originalDatabaseNames.items[i]
            }
        }
    }

    if (exists('$dataWeapons') && originalDatabaseNames.weapons) {
        for (let i = 1; i < $dataWeapons.length; i++) {
            if ($dataWeapons[i] && originalDatabaseNames.weapons[i] !== undefined) {
                $dataWeapons[i].name = originalDatabaseNames.weapons[i]
            }
        }
    }

    if (exists('$dataArmors') && originalDatabaseNames.armors) {
        for (let i = 1; i < $dataArmors.length; i++) {
            if ($dataArmors[i] && originalDatabaseNames.armors[i] !== undefined) {
                $dataArmors[i].name = originalDatabaseNames.armors[i]
            }
        }
    }

    if (exists('$dataMapInfos') && originalDatabaseNames.maps) {
        for (let i = 1; i < $dataMapInfos.length; i++) {
            if ($dataMapInfos[i] && originalDatabaseNames.maps[i] !== undefined) {
                $dataMapInfos[i].name = originalDatabaseNames.maps[i]
            }
        }
    }

    isDatabaseTranslated = false
    state.translateStatus = uiText('translate.status.dbRestored')
    draw()
}

function collectNamesForTranslation (kind) {
    if (kind === 'variables') {
        return variableRowsData().map(row => row.name).filter(Boolean).slice(0, 20)
    }
    if (kind === 'switches') {
        return switchRowsData().map(row => row.name).filter(Boolean).slice(0, 20)
    }
    if (kind === 'inventory') {
        return inventoryRowsData().map(row => row.name).filter(Boolean).slice(0, 20)
    }
    if (kind === 'events') {
        return mapEvents().map(row => row.name).filter(Boolean).slice(0, 20)
    }
    return []
}

async function translateVisibleNames (kind) {
    const names = collectNamesForTranslation(kind)
    const kindLabel = uiText(`translate.kind.${kind}`)
    if (!names.length) {
        state.translateStatus = uiText('translate.status.namesNone', {kind: kindLabel})
        draw()
        return
    }

    state.translateBusy = true
    state.translateStatus = uiText('translate.status.namesTranslating')
    draw()

    try {
        const translated = await translateBulkText(names)
        const results = []
        for (let i = 0; i < names.length; i++) {
            results.push(`${names[i]} -> ${translated[i] || '(failed)'}`)
        }
        state.translateInput = names.join('\n')
        state.translateOutput = results.join('\n')
        state.translateStatus = uiText('translate.status.namesComplete', {count: results.length, kind: kindLabel})
    } catch (e) {
        state.translateStatus = uiText('translate.status.bulkFailed', {message: e.message})
    } finally {
        state.translateBusy = false
        draw()
    }
}
function refreshChanges () {
    if (!state.snapshot) {
        state.changes = {variables: 0, switches: 0, rows: []}
        return
    }

    const rows = []
    let variableCount = 0
    let switchCount = 0

    if (exists('$gameVariables')) {
        Object.keys(state.snapshot.variables).forEach(id => {
            const oldValue = state.snapshot.variables[id]
            const newValue = $gameVariables.value(Number(id))
            if (oldValue !== newValue) {
                ++variableCount
                rows.push({type: 'V', id: id, oldValue: oldValue, newValue: newValue})
            }
        })
    }

    if (exists('$gameSwitches')) {
        Object.keys(state.snapshot.switches).forEach(id => {
            const oldValue = state.snapshot.switches[id]
            const newValue = $gameSwitches.value(Number(id))
            if (oldValue !== newValue) {
                ++switchCount
                rows.push({type: 'S', id: id, oldValue: oldValue, newValue: newValue})
            }
        })
    }

    state.changes = {
        variables: variableCount,
        switches: switchCount,
        rows: rows.slice(0, 10)
    }
}

function mapEvents () {
    if (!exists('$gameMap') || typeof $gameMap.events !== 'function') {
        return []
    }

    return $gameMap.events().slice(0, 30).map(event => {
        let name = `Event ${event.eventId ? event.eventId() : '?'}`
        try {
            if (typeof event.event === 'function' && event.event()) {
                name = event.event().name || name
            }
        } catch (err) {
            // Ignore event metadata issues.
        }

        return {
            id: typeof event.eventId === 'function' ? event.eventId() : 0,
            name: name,
            x: event.x,
            y: event.y
        }
    })
}

function allMapsData () {
    if (!exists('$dataMapInfos')) return []
    const query = state.mapSearch.toLowerCase()
    const maps = []
    for (let i = 1; i < $dataMapInfos.length; ++i) {
        const info = $dataMapInfos[i]
        if (!info) continue
        const name = info.name || `Map ${i}`
        const path = buildMapPath(i)
        const haystack = `${i} ${name} ${path}`.toLowerCase()
        if (query && !haystack.includes(query)) continue
        maps.push({ id: i, name: name, path: path })
    }
    return maps
}

function mapPageData () {
    const pageData = paginateRows(allMapsData(), state.mapPage, state.mapRowsPerPage)
    state.mapPage = pageData.page
    state.mapRowsPerPage = pageData.rowsPerPage
    return pageData
}

function buildMapPath (id) {
    if (!exists('$dataMapInfos')) return ''
    if (mapPathCache[id] !== undefined) {
        return mapPathCache[id]
    }
    const parts = []
    let current = id
    let depth = 0
    while (current && $dataMapInfos[current] && depth < 10) {
        parts.unshift($dataMapInfos[current].name || `Map ${current}`)
        current = $dataMapInfos[current].parentId
        depth++
    }
    mapPathCache[id] = parts.join(' / ')
    return mapPathCache[id]
}

function teleportToMap (mapId, x, y) {
    if (!exists('$gamePlayer')) {
        log('Teleport failed: player is not ready.')
        return
    }
    const tx = Number(x) || 0
    const ty = Number(y) || 0
    if (typeof $gamePlayer.reserveTransfer === 'function') {
        $gamePlayer.reserveTransfer(Number(mapId), tx, ty, $gamePlayer.direction ? $gamePlayer.direction() : 2, 0)
        log(`Teleporting to Map ${mapId} at ${tx}, ${ty}.`)
    } else {
        log('Teleport function not available.')
    }
}

function teleportTo (x, y) {
    if (!exists('$gamePlayer')) {
        log('Teleport failed: player is not ready.')
        return
    }
    if (typeof $gamePlayer.locate === 'function') {
        $gamePlayer.locate(Number(x), Number(y))
    } else {
        $gamePlayer.x = Number(x)
        $gamePlayer.y = Number(y)
    }
    log(`Teleported to ${x}, ${y}.`)
}

function loadSavedLocations () {
    try {
        state.savedLocations = JSON.parse(localStorage.getItem('adel9st.control-center.locations') || '[]')
    } catch (err) {
        state.savedLocations = []
    }
}

function saveSavedLocations () {
    try {
        localStorage.setItem('adel9st.control-center.locations', JSON.stringify(state.savedLocations))
    } catch (err) {
        // ignore
    }
}

function filteredSavedLocations () {
    const query = text(state.locationSearch).trim().toLowerCase()
    return (state.savedLocations || []).filter(location => {
        const haystack = `${location.name || ''} ${location.mapName || ''} ${location.mapId || ''} ${location.x || 0} ${location.y || 0}`.toLowerCase()
        return !query || haystack.includes(query)
    })
}

function addCurrentLocation (alias) {
    if (!exists('$gamePlayer') || !exists('$gameMap')) {
        log('Location save failed: game map is not ready.')
        return
    }

    const mapId = typeof $gameMap.mapId === 'function' ? $gameMap.mapId() : 0
    const item = {
        id: Date.now() + Math.floor(Math.random() * 1000),
        name: text(alias).trim() || `${mapName()} @ ${playerPosition()}`,
        mapId: mapId,
        mapName: buildMapPath(mapId) || mapName(),
        x: Number($gamePlayer.x) || 0,
        y: Number($gamePlayer.y) || 0
    }
    state.savedLocations.unshift(item)
    state.savedLocations = state.savedLocations.slice(0, 80)
    saveSavedLocations()
    log(`Saved location: ${item.name}.`)
}

function removeSavedLocation (id) {
    state.savedLocations = state.savedLocations.filter(item => String(item.id) !== String(id))
    saveSavedLocations()
    log('Saved location removed.')
}

function teleportToSavedLocation (id) {
    const item = state.savedLocations.find(location => String(location.id) === String(id))
    if (!item) {
        log('Saved location not found.')
        return
    }
    teleportToMap(item.mapId, item.x, item.y)
}

function applyLoadout (id) {
    if (id === 'ghost') {
        setNoClip(true)
        setEncounters(false)
        setSpeed(1.6)
        log('Ghost Walk loaded.')
    } else if (id === 'rush') {
        setSpeed(3)
        log('Rush Mode loaded.')
    } else if (id === 'vault') {
        setGold(999999)
        setGoldFreeze(true)
        log('Vault Lock loaded.')
    } else if (id === 'clean') {
        setSpeed(1)
        setNoClip(false)
        setEncounters(true)
        setGoldFreeze(false)
        state.playerSpeedFix = false
        state.playerSpeedVal = 4
        saveState()
        log('Clean Reset loaded.')
    } else if (id === 'panic') {
        setSpeed(1)
        setNoClip(false)
        setEncounters(true)
        setGoldFreeze(false)
        state.playerSpeedFix = false
        state.playerSpeedVal = 4
        state.visible = false
        saveState()
        log('Panic mode applied and panel hidden.')
    }
    draw()
}
function loadProfiles () {
    try {
        state.profiles = JSON.parse(localStorage.getItem(PROFILE_KEY) || '[]')
    } catch (err) {
        state.profiles = []
    }
}

function loadPersistentState () {
    loadProfiles()
    loadTranslateCache()
    loadSavedLocations()

    try {
        state.godModeActors = JSON.parse(localStorage.getItem('adel9st.control-center.god-mode') || '{}')
        state.automations = JSON.parse(localStorage.getItem('adel9st.control-center.automations') || '[]')
        state.freezeList = JSON.parse(localStorage.getItem('adel9st.control-center.freeze-list') || '{}')
        state.playerSpeedFix = localStorage.getItem('adel9st.control-center.player-speed-fix') === 'true'
        state.playerSpeedVal = Number(localStorage.getItem('adel9st.control-center.player-speed-val') || '4')
        state.eventTracerEnabled = localStorage.getItem('adel9st.control-center.event-tracer-enabled') !== 'false'
        state.messageSkip = localStorage.getItem('adel9st.control-center.message-skip') === 'true'
        state.gameTranslateEnabled = localStorage.getItem('adel9st.control-center.game-translate') === 'true'
        state.choiceTranslateEnabled = localStorage.getItem('adel9st.control-center.choice-translate') === 'true'
        state.scrollTranslateEnabled = localStorage.getItem('adel9st.control-center.scroll-translate') === 'true'

        state.translateProvider = localStorage.getItem('adel9st.control-center.translate-provider') || 'google'
        state.translateEndpoint = localStorage.getItem('adel9st.control-center.translate-endpoint') || 'https://translate.googleapis.com'
        state.translateModel = localStorage.getItem('adel9st.control-center.translate-model') || 'qwen2.5:3b'
        state.translateSource = localStorage.getItem('adel9st.control-center.translate-source') || 'auto'
        state.translateTarget = localStorage.getItem('adel9st.control-center.translate-target') || 'tr'
        state.uiLanguage = localStorage.getItem(UI_LANGUAGE_STORAGE_KEY) || 'auto'
        state.uiSizeMode = localStorage.getItem(UI_SIZE_MODE_STORAGE_KEY) || 'auto'
        state.translateTargetLang = localStorage.getItem('adel9st.control-center.translate-target-lang') || 'tr'
        state.translateEnabled = localStorage.getItem('adel9st.control-center.translate-enabled') === 'true'
        state.translateTargets = JSON.parse(localStorage.getItem('adel9st.control-center.translate-targets') || '{"variables":false,"switches":false,"items":false,"maps":false}')
        state.translateBulkChunkSize = Number(localStorage.getItem('adel9st.control-center.translate-chunk-size') || '100')

        // Game translate persistence
        state.gameTranslateTargetLang = localStorage.getItem('adel9st.control-center.game-translate-target-lang') || 'tr'
        state.gameTranslateProvider = localStorage.getItem('adel9st.control-center.game-translate-provider') || 'google'
        state.gameTranslateEndpoint = localStorage.getItem('adel9st.control-center.game-translate-endpoint') || 'https://translate.googleapis.com'
        state.gameTranslateModel = localStorage.getItem('adel9st.control-center.game-translate-model') || 'qwen2.5:3b'
        state.gameTranslateCustomMethod = localStorage.getItem('adel9st.control-center.game-translate-custom-method') || 'GET'
        state.gameTranslateCustomUrlPattern = localStorage.getItem('adel9st.control-center.game-translate-custom-url-pattern') || 'http://localhost:5000/translate?text=${TEXT}'
        state.gameTranslateCustomBody = localStorage.getItem('adel9st.control-center.game-translate-custom-body') || '${TEXT}'

        // Integrated features persistence
        state.speedSceneFilter = localStorage.getItem('adel9st.control-center.speed-scene-filter') || 'all'
        state.inventoryExcludeNameless = localStorage.getItem('adel9st.control-center.inventory-exclude-nameless') === 'true'
        state.inventoryOnlyOwned = localStorage.getItem('adel9st.control-center.inventory-only-owned') === 'true'
        state.translateCustomMethod = localStorage.getItem('adel9st.control-center.translate-custom-method') || 'GET'
        state.translateCustomUrlPattern = localStorage.getItem('adel9st.control-center.translate-custom-url-pattern') || 'http://localhost:5000/translate?text=${TEXT}'
        state.translateCustomBody = localStorage.getItem('adel9st.control-center.translate-custom-body') || '${TEXT}'
    } catch (e) {
        // ignore
    }
}

function saveState () {
    try {
        localStorage.setItem('adel9st.control-center.god-mode', JSON.stringify(state.godModeActors))
        localStorage.setItem('adel9st.control-center.automations', JSON.stringify(state.automations))
        localStorage.setItem('adel9st.control-center.freeze-list', JSON.stringify(state.freezeList))
        localStorage.setItem('adel9st.control-center.player-speed-fix', state.playerSpeedFix)
        localStorage.setItem('adel9st.control-center.player-speed-val', state.playerSpeedVal)
        localStorage.setItem('adel9st.control-center.event-tracer-enabled', state.eventTracerEnabled)
        localStorage.setItem('adel9st.control-center.message-skip', state.messageSkip)
        localStorage.setItem('adel9st.control-center.game-translate', state.gameTranslateEnabled)
        localStorage.setItem('adel9st.control-center.choice-translate', state.choiceTranslateEnabled)
        localStorage.setItem('adel9st.control-center.scroll-translate', state.scrollTranslateEnabled)

        localStorage.setItem('adel9st.control-center.translate-provider', state.translateProvider)
        localStorage.setItem('adel9st.control-center.translate-endpoint', state.translateEndpoint)
        localStorage.setItem('adel9st.control-center.translate-model', state.translateModel)
        localStorage.setItem('adel9st.control-center.translate-source', state.translateSource)
        localStorage.setItem('adel9st.control-center.translate-target', state.translateTarget)
        localStorage.setItem(UI_LANGUAGE_STORAGE_KEY, state.uiLanguage)
        localStorage.setItem(UI_SIZE_MODE_STORAGE_KEY, state.uiSizeMode)
        localStorage.setItem('adel9st.control-center.translate-target-lang', state.translateTargetLang)
        localStorage.setItem('adel9st.control-center.translate-enabled', state.translateEnabled)
        localStorage.setItem('adel9st.control-center.translate-targets', JSON.stringify(state.translateTargets))
        localStorage.setItem('adel9st.control-center.translate-chunk-size', state.translateBulkChunkSize)

        // Game translate persistence
        localStorage.setItem('adel9st.control-center.game-translate-target-lang', state.gameTranslateTargetLang)
        localStorage.setItem('adel9st.control-center.game-translate-provider', state.gameTranslateProvider)
        localStorage.setItem('adel9st.control-center.game-translate-endpoint', state.gameTranslateEndpoint)
        localStorage.setItem('adel9st.control-center.game-translate-model', state.gameTranslateModel)
        localStorage.setItem('adel9st.control-center.game-translate-custom-method', state.gameTranslateCustomMethod)
        localStorage.setItem('adel9st.control-center.game-translate-custom-url-pattern', state.gameTranslateCustomUrlPattern)
        localStorage.setItem('adel9st.control-center.game-translate-custom-body', state.gameTranslateCustomBody)

        // Integrated features persistence
        localStorage.setItem('adel9st.control-center.speed-scene-filter', state.speedSceneFilter)
        localStorage.setItem('adel9st.control-center.inventory-exclude-nameless', state.inventoryExcludeNameless)
        localStorage.setItem('adel9st.control-center.inventory-only-owned', state.inventoryOnlyOwned)
        localStorage.setItem('adel9st.control-center.translate-custom-method', state.translateCustomMethod)
        localStorage.setItem('adel9st.control-center.translate-custom-url-pattern', state.translateCustomUrlPattern)
        localStorage.setItem('adel9st.control-center.translate-custom-body', state.translateCustomBody)
    } catch (e) {
        // ignore
    }
}

function saveProfiles () {
    localStorage.setItem(PROFILE_KEY, JSON.stringify(state.profiles))
}

function saveProfile () {
    const name = prompt('Profile name', `ADEL ${new Date().toLocaleTimeString()}`)
    if (!name) {
        return
    }

    state.profiles.unshift({
        id: Date.now(),
        name: name,
        speed: state.speed,
        noClip: state.noClip,
        encounterDisabled: state.encounterDisabled,
        goldFreeze: state.goldFreeze,
        goldLock: state.goldFreeze ? state.goldLock : gold()
    })
    state.profiles = state.profiles.slice(0, 8)
    saveProfiles()
    log(`Profile saved: ${name}.`)
    draw()
}

function applyProfile (id) {
    const profile = state.profiles.find(item => String(item.id) === String(id))
    if (!profile) {
        return
    }

    setSpeed(profile.speed)
    setNoClip(profile.noClip)
    setEncounters(!profile.encounterDisabled)
    if (profile.goldFreeze) {
        setGoldFreeze(true, profile.goldLock)
    } else {
        setGoldFreeze(false)
    }
    log(`Profile applied: ${profile.name}.`)
    draw()
}

function removeProfile (id) {
    state.profiles = state.profiles.filter(item => String(item.id) !== String(id))
    saveProfiles()
    log('Profile removed.')
    draw()
}
const UI_LANGUAGE_STORAGE_KEY = 'adel9st.control-center.ui-language'

const UI_LANGUAGES = [
    {value: 'en', label: 'English', match: ['en']},
    {value: 'tr', label: 'Türkçe', match: ['tr']},
    {value: 'es', label: 'Español', match: ['es']},
    {value: 'pt-BR', label: 'Português (Brasil)', match: ['pt-br', 'pt']},
    {value: 'fr', label: 'Français', match: ['fr']},
    {value: 'ru', label: 'Русский', match: ['ru']},
    {value: 'ar', label: 'العربية', match: ['ar']},
    {value: 'hi', label: 'हिन्दी', match: ['hi']},
    {value: 'zh-CN', label: '简体中文', match: ['zh-cn', 'zh-sg', 'zh-hans', 'zh']},
    {value: 'ko', label: '한국어', match: ['ko']},
    {value: 'ja', label: '日本語', match: ['ja']}
]

const UI_DICTIONARY = {
    en: {
        'language.title': 'Language',
        'language.active': 'Current UI language',
        'language.select': 'Interface language',
        'language.hint': 'Changes the Control Center language without affecting game translation tools.',
        'language.auto': 'Auto (browser)',
        'language.saved': 'Interface language set to {name}.',
        'uiSize.title': 'UI Size',
        'uiSize.active': 'Current layout mode',
        'uiSize.select': 'Panel size mode',
        'uiSize.hint': 'Lets you keep the panel compact or expanded regardless of the current game resolution.',
        'uiSize.saved': 'Panel size mode set to {name}.',
        'uiSize.auto': 'Auto',
        'uiSize.compact': 'Compact',
        'uiSize.normal': 'Normal',
        'uiSize.large': 'Large',
        'uiSize.max': 'Max',
        'nav.control': 'Control',
        'nav.gameplay': 'Gameplay',
        'nav.utilities': 'Utilities',
        'tab.deck.title': 'Control Center',
        'tab.deck.desc': 'Live overview and quick actions',
        'tab.variables.title': 'Variables',
        'tab.variables.desc': 'Dense runtime variable editor',
        'tab.switches.title': 'Switches',
        'tab.switches.desc': 'Fast on/off and freeze state',
        'tab.inventory.title': 'Inventory',
        'tab.inventory.desc': 'Items, weapons, and armors',
        'tab.battle.title': 'Battle',
        'tab.battle.desc': 'HP, god mode, and battle exit',
        'tab.party.title': 'Party',
        'tab.party.desc': 'Party membership and level editing',
        'tab.events.title': 'Maps & Events',
        'tab.events.desc': 'Teleport and event routing',
        'tab.watcher.title': 'Watcher',
        'tab.watcher.desc': 'Snapshot change tracking',
        'tab.automation.title': 'Automation',
        'tab.automation.desc': 'Preset loops and keepers',
        'tab.script.title': 'Script Lab',
        'tab.script.desc': 'Run JS and import config',
        'tab.shortcuts.title': 'Shortcuts',
        'tab.shortcuts.desc': 'Manage shortcut bindings',
        'tab.translate.title': 'Translate',
        'tab.translate.desc': 'Panel and database translation',
        'tab.profiles.title': 'Profiles',
        'tab.profiles.desc': 'Save and replay session configurations',
        'tab.settings.title': 'Settings',
        'tab.settings.desc': 'Runtime toggles and cleanup',
        'settings.runtime.title': 'Runtime',
        'settings.runtime.desc': 'ADEL9st Control Center {version}',
        'settings.runtime.clean': 'Clean reset',
        'settings.runtime.panic': 'Panic',
        'settings.runtime.titleScene': 'Title',
        'settings.runtime.quickSave': 'Quick save',
        'settings.runtime.quickLoad': 'Quick load',
        'settings.runtime.clearLocks': 'Clear locks',
        'settings.runtime.slot': 'slot',
        'settings.translation.title': 'Language & Translation',
        'settings.translation.desc': 'Translation tools and settings',
        'settings.translation.open': 'Open ADEL Translate',
        'settings.translation.panel': 'Panel translate enabled',
        'settings.translation.dialogue': 'Dialogue translate',
        'settings.translation.choice': 'Choice translate',
        'settings.translation.scroll': 'Scroll translate',
        'settings.utilities.title': 'Developer Controls & Utilities',
        'settings.utilities.undo': 'Undo Last Action',
        'settings.utilities.speedOn': 'Speed Lock On',
        'settings.utilities.speedOff': 'Speed Lock Off',
        'settings.utilities.speedPlaceholder': 'Multiplier (e.g. 2.0)',
        'settings.utilities.speedTarget': 'Target',
        'settings.utilities.speedTargetAll': 'All Scenes',
        'settings.utilities.speedTargetBattle': 'Battle Only',
        'settings.locks.title': 'Active Locks (Freeze List)',
        'settings.locks.count': '{count} active',
        'settings.locks.empty': 'No active locks.',
        'settings.locks.unlock': 'Unlock',
        'settings.locks.type': 'Type',
        'settings.locks.value': 'Value',
        'settings.log.title': 'Log',
        'settings.log.desc': 'Last actions',
        'variables.lockResults': 'Lock Search',
        'inventory.hideNameless': 'Hide Nameless',
        'inventory.onlyOwned': 'Only Owned',
        'translate.customMethod': 'Method',
        'translate.customUrl': 'URL Pattern',
        'translate.customBody': 'POST Body'
    },
    tr: {
        'language.title': 'Dil',
        'language.active': 'Geçerli arayüz dili',
        'language.select': 'Arayüz dili',
        'language.hint': 'Control Center arayüz dilini değiştirir; oyun çeviri araçlarını etkilemez.',
        'language.auto': 'Otomatik (tarayıcı)',
        'language.saved': 'Arayüz dili {name} olarak ayarlandı.',
        'uiSize.title': 'Arayüz Boyutu',
        'uiSize.active': 'Geçerli yerleşim modu',
        'uiSize.select': 'Panel boyut modu',
        'uiSize.hint': 'Paneli mevcut oyun çözünürlüğünden bağımsız olarak kompakt ya da geniş kullanmanızı sağlar.',
        'uiSize.saved': 'Panel boyut modu {name} olarak ayarlandı.',
        'uiSize.auto': 'Otomatik',
        'uiSize.compact': 'Kompakt',
        'uiSize.normal': 'Normal',
        'uiSize.large': 'Geniş',
        'uiSize.max': 'Maksimum',
        'nav.control': 'Kontrol',
        'nav.gameplay': 'Oynanış',
        'nav.utilities': 'Araçlar',
        'tab.deck.title': 'Kontrol Merkezi',
        'tab.deck.desc': 'Canlı genel görünüm ve hızlı aksiyonlar',
        'tab.variables.title': 'Değişkenler',
        'tab.variables.desc': 'Yoğun çalışma zamanı değişken editörü',
        'tab.switches.title': 'Switchler',
        'tab.switches.desc': 'Hızlı aç/kapat ve dondurma durumu',
        'tab.inventory.title': 'Envanter',
        'tab.inventory.desc': 'Eşyalar, silahlar ve zırhlar',
        'tab.battle.title': 'Savaş',
        'tab.battle.desc': 'HP, tanrı modu ve savaştan çıkış',
        'tab.party.title': 'Parti',
        'tab.party.desc': 'Parti üyeleri ve seviye düzenleme',
        'tab.events.title': 'Haritalar ve Eventler',
        'tab.events.desc': 'Işınlanma ve event yönlendirme',
        'tab.watcher.title': 'İzleyici',
        'tab.watcher.desc': 'Anlık görüntü değişim takibi',
        'tab.automation.title': 'Otomasyon',
        'tab.automation.desc': 'Hazır döngüler ve koruyucular',
        'tab.script.title': 'Script Lab',
        'tab.script.desc': 'JS çalıştır ve yapılandırma içe aktar',
        'tab.shortcuts.title': 'Kısayollar',
        'tab.shortcuts.desc': 'Kısayol atamalarını yönet',
        'tab.translate.title': 'Çeviri',
        'tab.translate.desc': 'Panel ve veritabanı çevirisi',
        'tab.profiles.title': 'Profiller',
        'tab.profiles.desc': 'Oturum yapılandırmalarını kaydet ve yeniden uygula',
        'tab.settings.title': 'Ayarlar',
        'tab.settings.desc': 'Çalışma zamanı anahtarları ve temizlik',
        'settings.runtime.title': 'Runtime',
        'settings.runtime.desc': 'ADEL9st Control Center {version}',
        'settings.runtime.clean': 'Temiz sıfırlama',
        'settings.runtime.panic': 'Panik',
        'settings.runtime.titleScene': 'Başlık',
        'settings.runtime.quickSave': 'Hızlı kaydet',
        'settings.runtime.quickLoad': 'Hızlı yükle',
        'settings.runtime.clearLocks': 'Kilitleri temizle',
        'settings.runtime.slot': 'slot',
        'settings.translation.title': 'Dil ve Çeviri',
        'settings.translation.desc': 'Çeviri araçları ve ayarları',
        'settings.translation.open': 'ADEL Çeviri sekmesini aç',
        'settings.translation.panel': 'Panel çevirisi açık',
        'settings.translation.dialogue': 'Diyalog çevirisi',
        'settings.translation.choice': 'Seçenek çevirisi',
        'settings.translation.scroll': 'Kayan yazı çevirisi',
        'settings.utilities.title': 'Geliştirici Kontrolleri ve Araçları',
        'settings.utilities.undo': 'Son işlemi geri al',
        'settings.utilities.speedOn': 'Hız kilidi açık',
        'settings.utilities.speedOff': 'Hız kilidi kapalı',
        'settings.utilities.speedPlaceholder': 'Çarpan (örn. 2.0)',
        'settings.utilities.speedTarget': 'Hedef',
        'settings.utilities.speedTargetAll': 'Tüm sahneler',
        'settings.utilities.speedTargetBattle': 'Sadece savaş',
        'settings.locks.title': 'Aktif Kilitler (Freeze List)',
        'settings.locks.count': '{count} aktif',
        'settings.locks.empty': 'Aktif kilit yok.',
        'settings.locks.unlock': 'Kilidi aç',
        'settings.locks.type': 'Tür',
        'settings.locks.value': 'Değer',
        'settings.log.title': 'Kayıt',
        'settings.log.desc': 'Son işlemler',
        'variables.lockResults': 'Arama sonuçlarını kilitle',
        'inventory.hideNameless': 'İsimsizleri gizle',
        'inventory.onlyOwned': 'Sadece sahip olunanlar',
        'translate.customMethod': 'Metot',
        'translate.customUrl': 'URL şablonu',
        'translate.customBody': 'POST gövdesi'
    },
    es: {
        'language.title': 'Idioma',
        'language.active': 'Idioma actual de la interfaz',
        'language.select': 'Idioma de la interfaz',
        'language.hint': 'Cambia el idioma del Control Center sin afectar las herramientas de traducción del juego.',
        'language.auto': 'Automático (navegador)',
        'language.saved': 'El idioma de la interfaz se cambió a {name}.',
        'uiSize.title': 'Tamaño de la interfaz',
        'uiSize.active': 'Modo de diseño actual',
        'uiSize.select': 'Modo de tamaño del panel',
        'uiSize.hint': 'Permite mantener el panel compacto o ampliado sin depender de la resolución actual del juego.',
        'uiSize.saved': 'El modo de tamaño del panel se cambió a {name}.',
        'uiSize.auto': 'Automático',
        'uiSize.compact': 'Compacto',
        'uiSize.normal': 'Normal',
        'uiSize.large': 'Grande',
        'uiSize.max': 'Máximo',
        'nav.control': 'Control',
        'nav.gameplay': 'Juego',
        'nav.utilities': 'Utilidades',
        'tab.deck.title': 'Centro de control',
        'tab.deck.desc': 'Vista en vivo y acciones rápidas',
        'tab.variables.title': 'Variables',
        'tab.variables.desc': 'Editor intensivo de variables en tiempo real',
        'tab.switches.title': 'Interruptores',
        'tab.switches.desc': 'Activación rápida y estado congelado',
        'tab.inventory.title': 'Inventario',
        'tab.inventory.desc': 'Objetos, armas y armaduras',
        'tab.battle.title': 'Batalla',
        'tab.battle.desc': 'PS, modo dios y salida de batalla',
        'tab.party.title': 'Grupo',
        'tab.party.desc': 'Miembros del grupo y edición de nivel',
        'tab.events.title': 'Mapas y eventos',
        'tab.events.desc': 'Teletransporte y rutas de eventos',
        'tab.watcher.title': 'Monitor',
        'tab.watcher.desc': 'Seguimiento de cambios en instantáneas',
        'tab.automation.title': 'Automatización',
        'tab.automation.desc': 'Bucles predefinidos y mantenedores',
        'tab.script.title': 'Script Lab',
        'tab.script.desc': 'Ejecuta JS e importa configuración',
        'tab.shortcuts.title': 'Atajos',
        'tab.shortcuts.desc': 'Administra las teclas rápidas',
        'tab.translate.title': 'Traducir',
        'tab.translate.desc': 'Traducción del panel y de la base de datos',
        'tab.profiles.title': 'Perfiles',
        'tab.profiles.desc': 'Guarda y reaplica configuraciones de sesión',
        'tab.settings.title': 'Ajustes',
        'tab.settings.desc': 'Controles de runtime y limpieza',
        'settings.runtime.title': 'Runtime',
        'settings.runtime.desc': 'ADEL9st Control Center {version}',
        'settings.runtime.clean': 'Reinicio limpio',
        'settings.runtime.panic': 'Pánico',
        'settings.runtime.titleScene': 'Título',
        'settings.runtime.quickSave': 'Guardado rápido',
        'settings.runtime.quickLoad': 'Carga rápida',
        'settings.runtime.clearLocks': 'Quitar bloqueos',
        'settings.runtime.slot': 'slot',
        'settings.translation.title': 'Idioma y traducción',
        'settings.translation.desc': 'Herramientas y ajustes de traducción',
        'settings.translation.open': 'Abrir ADEL Translate',
        'settings.translation.panel': 'Traducción del panel activada',
        'settings.translation.dialogue': 'Traducción de diálogos',
        'settings.translation.choice': 'Traducción de opciones',
        'settings.translation.scroll': 'Traducción de texto desplazable',
        'settings.utilities.title': 'Controles de desarrollador y utilidades',
        'settings.utilities.undo': 'Deshacer la última acción',
        'settings.utilities.speedOn': 'Bloqueo de velocidad activado',
        'settings.utilities.speedOff': 'Bloqueo de velocidad desactivado',
        'settings.utilities.speedPlaceholder': 'Multiplicador (p. ej. 2.0)',
        'settings.utilities.speedTarget': 'Objetivo',
        'settings.utilities.speedTargetAll': 'Todas las escenas',
        'settings.utilities.speedTargetBattle': 'Solo batalla',
        'settings.locks.title': 'Bloqueos activos (lista freeze)',
        'settings.locks.count': '{count} activos',
        'settings.locks.empty': 'No hay bloqueos activos.',
        'settings.locks.unlock': 'Desbloquear',
        'settings.locks.type': 'Tipo',
        'settings.locks.value': 'Valor',
        'settings.log.title': 'Registro',
        'settings.log.desc': 'Últimas acciones',
        'variables.lockResults': 'Bloquear búsqueda',
        'inventory.hideNameless': 'Ocultar sin nombre',
        'inventory.onlyOwned': 'Solo poseídos',
        'translate.customMethod': 'Método',
        'translate.customUrl': 'Patrón de URL',
        'translate.customBody': 'Cuerpo POST'
    },
    'pt-BR': {
        'language.title': 'Idioma',
        'language.active': 'Idioma atual da interface',
        'language.select': 'Idioma da interface',
        'language.hint': 'Muda o idioma do Control Center sem afetar as ferramentas de tradução do jogo.',
        'language.auto': 'Automático (navegador)',
        'language.saved': 'O idioma da interface foi definido para {name}.',
        'uiSize.title': 'Tamanho da interface',
        'uiSize.active': 'Modo de layout atual',
        'uiSize.select': 'Modo de tamanho do painel',
        'uiSize.hint': 'Permite manter o painel compacto ou expandido independentemente da resolução atual do jogo.',
        'uiSize.saved': 'O modo de tamanho do painel foi definido para {name}.',
        'uiSize.auto': 'Automático',
        'uiSize.compact': 'Compacto',
        'uiSize.normal': 'Normal',
        'uiSize.large': 'Grande',
        'uiSize.max': 'Máximo',
        'nav.control': 'Controle',
        'nav.gameplay': 'Jogabilidade',
        'nav.utilities': 'Utilitários',
        'tab.deck.title': 'Central de controle',
        'tab.deck.desc': 'Visão geral ao vivo e ações rápidas',
        'tab.variables.title': 'Variáveis',
        'tab.variables.desc': 'Editor denso de variáveis em runtime',
        'tab.switches.title': 'Interruptores',
        'tab.switches.desc': 'Liga/desliga rápido e estado congelado',
        'tab.inventory.title': 'Inventário',
        'tab.inventory.desc': 'Itens, armas e armaduras',
        'tab.battle.title': 'Batalha',
        'tab.battle.desc': 'HP, modo deus e saída de batalha',
        'tab.party.title': 'Grupo',
        'tab.party.desc': 'Membros do grupo e edição de nível',
        'tab.events.title': 'Mapas e eventos',
        'tab.events.desc': 'Teleporte e roteamento de eventos',
        'tab.watcher.title': 'Monitor',
        'tab.watcher.desc': 'Rastreamento de mudanças do snapshot',
        'tab.automation.title': 'Automação',
        'tab.automation.desc': 'Loops predefinidos e preservadores',
        'tab.script.title': 'Script Lab',
        'tab.script.desc': 'Execute JS e importe configuração',
        'tab.shortcuts.title': 'Atalhos',
        'tab.shortcuts.desc': 'Gerencie combinações de teclas',
        'tab.translate.title': 'Tradução',
        'tab.translate.desc': 'Tradução do painel e do banco de dados',
        'tab.profiles.title': 'Perfis',
        'tab.profiles.desc': 'Salve e reaplique configurações de sessão',
        'tab.settings.title': 'Configurações',
        'tab.settings.desc': 'Controles de runtime e limpeza',
        'settings.runtime.title': 'Runtime',
        'settings.runtime.desc': 'ADEL9st Control Center {version}',
        'settings.runtime.clean': 'Reset limpo',
        'settings.runtime.panic': 'Pânico',
        'settings.runtime.titleScene': 'Título',
        'settings.runtime.quickSave': 'Salvamento rápido',
        'settings.runtime.quickLoad': 'Carregamento rápido',
        'settings.runtime.clearLocks': 'Limpar travas',
        'settings.runtime.slot': 'slot',
        'settings.translation.title': 'Idioma e tradução',
        'settings.translation.desc': 'Ferramentas e ajustes de tradução',
        'settings.translation.open': 'Abrir ADEL Translate',
        'settings.translation.panel': 'Tradução do painel ativada',
        'settings.translation.dialogue': 'Tradução de diálogos',
        'settings.translation.choice': 'Tradução de escolhas',
        'settings.translation.scroll': 'Tradução de rolagem',
        'settings.utilities.title': 'Controles de desenvolvedor e utilitários',
        'settings.utilities.undo': 'Desfazer última ação',
        'settings.utilities.speedOn': 'Bloqueio de velocidade ligado',
        'settings.utilities.speedOff': 'Bloqueio de velocidade desligado',
        'settings.utilities.speedPlaceholder': 'Multiplicador (ex.: 2.0)',
        'settings.utilities.speedTarget': 'Alvo',
        'settings.utilities.speedTargetAll': 'Todas as cenas',
        'settings.utilities.speedTargetBattle': 'Somente batalha',
        'settings.locks.title': 'Travas ativas (lista freeze)',
        'settings.locks.count': '{count} ativas',
        'settings.locks.empty': 'Nenhuma trava ativa.',
        'settings.locks.unlock': 'Destravar',
        'settings.locks.type': 'Tipo',
        'settings.locks.value': 'Valor',
        'settings.log.title': 'Log',
        'settings.log.desc': 'Últimas ações',
        'variables.lockResults': 'Travar busca',
        'inventory.hideNameless': 'Ocultar sem nome',
        'inventory.onlyOwned': 'Somente possuídos',
        'translate.customMethod': 'Método',
        'translate.customUrl': 'Padrão de URL',
        'translate.customBody': 'Corpo POST'
    },
    fr: {
        'language.title': 'Langue',
        'language.active': 'Langue actuelle de l’interface',
        'language.select': 'Langue de l’interface',
        'language.hint': 'Change la langue du Control Center sans affecter les outils de traduction du jeu.',
        'language.auto': 'Automatique (navigateur)',
        'language.saved': 'La langue de l’interface a été définie sur {name}.',
        'uiSize.title': 'Taille de l’interface',
        'uiSize.active': 'Mode de mise en page actuel',
        'uiSize.select': 'Mode de taille du panneau',
        'uiSize.hint': 'Permet de garder le panneau compact ou étendu quelle que soit la résolution actuelle du jeu.',
        'uiSize.saved': 'Le mode de taille du panneau a été défini sur {name}.',
        'uiSize.auto': 'Automatique',
        'uiSize.compact': 'Compact',
        'uiSize.normal': 'Normal',
        'uiSize.large': 'Grand',
        'uiSize.max': 'Max',
        'nav.control': 'Contrôle',
        'nav.gameplay': 'Gameplay',
        'nav.utilities': 'Utilitaires',
        'tab.deck.title': 'Centre de contrôle',
        'tab.deck.desc': 'Vue en direct et actions rapides',
        'tab.variables.title': 'Variables',
        'tab.variables.desc': 'Éditeur dense de variables runtime',
        'tab.switches.title': 'Interrupteurs',
        'tab.switches.desc': 'Activation rapide et état figé',
        'tab.inventory.title': 'Inventaire',
        'tab.inventory.desc': 'Objets, armes et armures',
        'tab.battle.title': 'Combat',
        'tab.battle.desc': 'PV, mode dieu et sortie de combat',
        'tab.party.title': 'Équipe',
        'tab.party.desc': 'Membres du groupe et édition des niveaux',
        'tab.events.title': 'Cartes et événements',
        'tab.events.desc': 'Téléportation et routage des événements',
        'tab.watcher.title': 'Observateur',
        'tab.watcher.desc': 'Suivi des changements de snapshot',
        'tab.automation.title': 'Automatisation',
        'tab.automation.desc': 'Boucles prédéfinies et gardiens',
        'tab.script.title': 'Script Lab',
        'tab.script.desc': 'Exécuter du JS et importer une configuration',
        'tab.shortcuts.title': 'Raccourcis',
        'tab.shortcuts.desc': 'Gérer les raccourcis',
        'tab.translate.title': 'Traduction',
        'tab.translate.desc': 'Traduction du panneau et de la base de données',
        'tab.profiles.title': 'Profils',
        'tab.profiles.desc': 'Enregistrer et rejouer des configurations de session',
        'tab.settings.title': 'Paramètres',
        'tab.settings.desc': 'Bascules runtime et nettoyage',
        'settings.runtime.title': 'Runtime',
        'settings.runtime.desc': 'ADEL9st Control Center {version}',
        'settings.runtime.clean': 'Réinitialisation propre',
        'settings.runtime.panic': 'Panique',
        'settings.runtime.titleScene': 'Titre',
        'settings.runtime.quickSave': 'Sauvegarde rapide',
        'settings.runtime.quickLoad': 'Chargement rapide',
        'settings.runtime.clearLocks': 'Effacer les verrous',
        'settings.runtime.slot': 'slot',
        'settings.translation.title': 'Langue et traduction',
        'settings.translation.desc': 'Outils et réglages de traduction',
        'settings.translation.open': 'Ouvrir ADEL Translate',
        'settings.translation.panel': 'Traduction du panneau activée',
        'settings.translation.dialogue': 'Traduction des dialogues',
        'settings.translation.choice': 'Traduction des choix',
        'settings.translation.scroll': 'Traduction du texte défilant',
        'settings.utilities.title': 'Contrôles de développeur et utilitaires',
        'settings.utilities.undo': 'Annuler la dernière action',
        'settings.utilities.speedOn': 'Verrouillage de vitesse activé',
        'settings.utilities.speedOff': 'Verrouillage de vitesse désactivé',
        'settings.utilities.speedPlaceholder': 'Multiplicateur (ex. 2.0)',
        'settings.utilities.speedTarget': 'Cible',
        'settings.utilities.speedTargetAll': 'Toutes les scènes',
        'settings.utilities.speedTargetBattle': 'Combat uniquement',
        'settings.locks.title': 'Verrous actifs (liste freeze)',
        'settings.locks.count': '{count} actifs',
        'settings.locks.empty': 'Aucun verrou actif.',
        'settings.locks.unlock': 'Déverrouiller',
        'settings.locks.type': 'Type',
        'settings.locks.value': 'Valeur',
        'settings.log.title': 'Journal',
        'settings.log.desc': 'Dernières actions',
        'variables.lockResults': 'Verrouiller la recherche',
        'inventory.hideNameless': 'Masquer sans nom',
        'inventory.onlyOwned': 'Seulement possédés',
        'translate.customMethod': 'Méthode',
        'translate.customUrl': 'Modèle d’URL',
        'translate.customBody': 'Corps POST'
    },
    ru: {
        'language.title': 'Язык',
        'language.active': 'Текущий язык интерфейса',
        'language.select': 'Язык интерфейса',
        'language.hint': 'Меняет язык Control Center, не затрагивая инструменты перевода игры.',
        'language.auto': 'Авто (браузер)',
        'language.saved': 'Язык интерфейса изменён на {name}.',
        'uiSize.title': 'Размер интерфейса',
        'uiSize.active': 'Текущий режим макета',
        'uiSize.select': 'Режим размера панели',
        'uiSize.hint': 'Позволяет держать панель компактной или расширенной независимо от текущего разрешения игры.',
        'uiSize.saved': 'Режим размера панели изменён на {name}.',
        'uiSize.auto': 'Авто',
        'uiSize.compact': 'Компактный',
        'uiSize.normal': 'Обычный',
        'uiSize.large': 'Большой',
        'uiSize.max': 'Максимум',
        'nav.control': 'Управление',
        'nav.gameplay': 'Игровой процесс',
        'nav.utilities': 'Утилиты',
        'tab.deck.title': 'Центр управления',
        'tab.deck.desc': 'Живой обзор и быстрые действия',
        'tab.variables.title': 'Переменные',
        'tab.variables.desc': 'Плотный редактор переменных runtime',
        'tab.switches.title': 'Переключатели',
        'tab.switches.desc': 'Быстрое вкл/выкл и заморозка',
        'tab.inventory.title': 'Инвентарь',
        'tab.inventory.desc': 'Предметы, оружие и броня',
        'tab.battle.title': 'Бой',
        'tab.battle.desc': 'HP, режим бога и выход из боя',
        'tab.party.title': 'Группа',
        'tab.party.desc': 'Состав группы и редактирование уровней',
        'tab.events.title': 'Карты и события',
        'tab.events.desc': 'Телепорт и маршрутизация событий',
        'tab.watcher.title': 'Наблюдатель',
        'tab.watcher.desc': 'Отслеживание изменений снимка',
        'tab.automation.title': 'Автоматизация',
        'tab.automation.desc': 'Готовые циклы и хранители',
        'tab.script.title': 'Script Lab',
        'tab.script.desc': 'Запуск JS и импорт конфигурации',
        'tab.shortcuts.title': 'Горячие клавиши',
        'tab.shortcuts.desc': 'Управление привязками клавиш',
        'tab.translate.title': 'Перевод',
        'tab.translate.desc': 'Перевод панели и базы данных',
        'tab.profiles.title': 'Профили',
        'tab.profiles.desc': 'Сохранение и повторное применение конфигураций сессии',
        'tab.settings.title': 'Настройки',
        'tab.settings.desc': 'Переключатели runtime и очистка',
        'settings.runtime.title': 'Runtime',
        'settings.runtime.desc': 'ADEL9st Control Center {version}',
        'settings.runtime.clean': 'Чистый сброс',
        'settings.runtime.panic': 'Паника',
        'settings.runtime.titleScene': 'Титул',
        'settings.runtime.quickSave': 'Быстрое сохранение',
        'settings.runtime.quickLoad': 'Быстрая загрузка',
        'settings.runtime.clearLocks': 'Снять блокировки',
        'settings.runtime.slot': 'slot',
        'settings.translation.title': 'Язык и перевод',
        'settings.translation.desc': 'Инструменты и настройки перевода',
        'settings.translation.open': 'Открыть ADEL Translate',
        'settings.translation.panel': 'Перевод панели включён',
        'settings.translation.dialogue': 'Перевод диалогов',
        'settings.translation.choice': 'Перевод выборов',
        'settings.translation.scroll': 'Перевод прокрутки',
        'settings.utilities.title': 'Инструменты разработчика и утилиты',
        'settings.utilities.undo': 'Отменить последнее действие',
        'settings.utilities.speedOn': 'Фиксация скорости включена',
        'settings.utilities.speedOff': 'Фиксация скорости выключена',
        'settings.utilities.speedPlaceholder': 'Множитель (например, 2.0)',
        'settings.utilities.speedTarget': 'Цель',
        'settings.utilities.speedTargetAll': 'Все сцены',
        'settings.utilities.speedTargetBattle': 'Только бой',
        'settings.locks.title': 'Активные блокировки (Freeze List)',
        'settings.locks.count': '{count} активно',
        'settings.locks.empty': 'Нет активных блокировок.',
        'settings.locks.unlock': 'Разблокировать',
        'settings.locks.type': 'Тип',
        'settings.locks.value': 'Значение',
        'settings.log.title': 'Журнал',
        'settings.log.desc': 'Последние действия',
        'variables.lockResults': 'Фиксировать поиск',
        'inventory.hideNameless': 'Скрыть безымянные',
        'inventory.onlyOwned': 'Только имеющиеся',
        'translate.customMethod': 'Метод',
        'translate.customUrl': 'Шаблон URL',
        'translate.customBody': 'POST-тело'
    },
    ar: {
        'language.title': 'اللغة',
        'language.active': 'لغة الواجهة الحالية',
        'language.select': 'لغة الواجهة',
        'language.hint': 'يغيّر لغة Control Center من دون التأثير على أدوات ترجمة اللعبة.',
        'language.auto': 'تلقائي (المتصفح)',
        'language.saved': 'تم ضبط لغة الواجهة على {name}.',
        'uiSize.title': 'حجم الواجهة',
        'uiSize.active': 'وضع التخطيط الحالي',
        'uiSize.select': 'وضع حجم اللوحة',
        'uiSize.hint': 'يسمح لك بالحفاظ على اللوحة مدمجة أو موسعة بغض النظر عن دقة اللعبة الحالية.',
        'uiSize.saved': 'تم ضبط وضع حجم اللوحة على {name}.',
        'uiSize.auto': 'تلقائي',
        'uiSize.compact': 'مدمج',
        'uiSize.normal': 'عادي',
        'uiSize.large': 'كبير',
        'uiSize.max': 'أقصى',
        'nav.control': 'التحكم',
        'nav.gameplay': 'اللعب',
        'nav.utilities': 'الأدوات',
        'tab.deck.title': 'مركز التحكم',
        'tab.deck.desc': 'نظرة مباشرة وإجراءات سريعة',
        'tab.variables.title': 'المتغيرات',
        'tab.variables.desc': 'محرر كثيف لمتغيرات وقت التشغيل',
        'tab.switches.title': 'المفاتيح',
        'tab.switches.desc': 'تشغيل وإيقاف سريع وحالة تجميد',
        'tab.inventory.title': 'الجرد',
        'tab.inventory.desc': 'العناصر والأسلحة والدروع',
        'tab.battle.title': 'المعركة',
        'tab.battle.desc': 'نقاط الصحة ووضع الإله والخروج من المعركة',
        'tab.party.title': 'الفريق',
        'tab.party.desc': 'أعضاء الفريق وتحرير المستوى',
        'tab.events.title': 'الخرائط والأحداث',
        'tab.events.desc': 'الانتقال ومسارات الأحداث',
        'tab.watcher.title': 'المراقب',
        'tab.watcher.desc': 'تتبع تغييرات اللقطات',
        'tab.automation.title': 'الأتمتة',
        'tab.automation.desc': 'حلقات جاهزة وحافظات',
        'tab.script.title': 'Script Lab',
        'tab.script.desc': 'تشغيل JS واستيراد الإعدادات',
        'tab.shortcuts.title': 'الاختصارات',
        'tab.shortcuts.desc': 'إدارة ربط الاختصارات',
        'tab.translate.title': 'الترجمة',
        'tab.translate.desc': 'ترجمة اللوحة وقاعدة البيانات',
        'tab.profiles.title': 'الملفات الشخصية',
        'tab.profiles.desc': 'حفظ إعدادات الجلسة وإعادة تطبيقها',
        'tab.settings.title': 'الإعدادات',
        'tab.settings.desc': 'مفاتيح وقت التشغيل والتنظيف',
        'settings.runtime.title': 'Runtime',
        'settings.runtime.desc': 'ADEL9st Control Center {version}',
        'settings.runtime.clean': 'إعادة ضبط نظيفة',
        'settings.runtime.panic': 'ذعر',
        'settings.runtime.titleScene': 'العنوان',
        'settings.runtime.quickSave': 'حفظ سريع',
        'settings.runtime.quickLoad': 'تحميل سريع',
        'settings.runtime.clearLocks': 'مسح الأقفال',
        'settings.runtime.slot': 'slot',
        'settings.translation.title': 'اللغة والترجمة',
        'settings.translation.desc': 'أدوات وإعدادات الترجمة',
        'settings.translation.open': 'فتح ADEL Translate',
        'settings.translation.panel': 'ترجمة اللوحة مفعلة',
        'settings.translation.dialogue': 'ترجمة الحوارات',
        'settings.translation.choice': 'ترجمة الخيارات',
        'settings.translation.scroll': 'ترجمة النص المتحرك',
        'settings.utilities.title': 'أدوات المطور وعناصر التحكم',
        'settings.utilities.undo': 'التراجع عن آخر إجراء',
        'settings.utilities.speedOn': 'قفل السرعة مفعّل',
        'settings.utilities.speedOff': 'قفل السرعة معطّل',
        'settings.utilities.speedPlaceholder': 'المضاعف (مثال 2.0)',
        'settings.utilities.speedTarget': 'الهدف',
        'settings.utilities.speedTargetAll': 'كل المشاهد',
        'settings.utilities.speedTargetBattle': 'المعركة فقط',
        'settings.locks.title': 'الأقفال النشطة (Freeze List)',
        'settings.locks.count': '{count} نشط',
        'settings.locks.empty': 'لا توجد أقفال نشطة.',
        'settings.locks.unlock': 'إلغاء القفل',
        'settings.locks.type': 'النوع',
        'settings.locks.value': 'القيمة',
        'settings.log.title': 'السجل',
        'settings.log.desc': 'آخر الإجراءات',
        'variables.lockResults': 'قفل البحث',
        'inventory.hideNameless': 'إخفاء غير المسماة',
        'inventory.onlyOwned': 'المملوك فقط',
        'translate.customMethod': 'الطريقة',
        'translate.customUrl': 'نمط URL',
        'translate.customBody': 'نص POST'
    },
    hi: {
        'language.title': 'भाषा',
        'language.active': 'वर्तमान UI भाषा',
        'language.select': 'इंटरफ़ेस भाषा',
        'language.hint': 'यह Control Center की भाषा बदलता है, लेकिन गेम के अनुवाद टूल्स को प्रभावित नहीं करता।',
        'language.auto': 'ऑटो (ब्राउज़र)',
        'language.saved': 'इंटरफ़ेस भाषा {name} पर सेट की गई।',
        'uiSize.title': 'UI आकार',
        'uiSize.active': 'वर्तमान लेआउट मोड',
        'uiSize.select': 'पैनल आकार मोड',
        'uiSize.hint': 'यह पैनल को वर्तमान गेम रिज़ॉल्यूशन से अलग कॉम्पैक्ट या बड़ा बनाए रखने देता है।',
        'uiSize.saved': 'पैनल आकार मोड {name} पर सेट किया गया।',
        'uiSize.auto': 'ऑटो',
        'uiSize.compact': 'कॉम्पैक्ट',
        'uiSize.normal': 'सामान्य',
        'uiSize.large': 'बड़ा',
        'uiSize.max': 'अधिकतम',
        'nav.control': 'नियंत्रण',
        'nav.gameplay': 'गेमप्ले',
        'nav.utilities': 'उपयोगिताएँ',
        'tab.deck.title': 'कंट्रोल सेंटर',
        'tab.deck.desc': 'लाइव ओवरव्यू और त्वरित क्रियाएँ',
        'tab.variables.title': 'वेरिएबल्स',
        'tab.variables.desc': 'घना रनटाइम वेरिएबल संपादक',
        'tab.switches.title': 'स्विच',
        'tab.switches.desc': 'तेज़ ऑन/ऑफ और फ़्रीज़ स्थिति',
        'tab.inventory.title': 'इन्वेंटरी',
        'tab.inventory.desc': 'आइटम, हथियार और कवच',
        'tab.battle.title': 'युद्ध',
        'tab.battle.desc': 'HP, गॉड मोड और युद्ध से बाहर निकलना',
        'tab.party.title': 'पार्टी',
        'tab.party.desc': 'पार्टी सदस्य और लेवल संपादन',
        'tab.events.title': 'मैप और इवेंट्स',
        'tab.events.desc': 'टेलीपोर्ट और इवेंट रूटिंग',
        'tab.watcher.title': 'वॉचर',
        'tab.watcher.desc': 'स्नैपशॉट बदलाव ट्रैकिंग',
        'tab.automation.title': 'ऑटोमेशन',
        'tab.automation.desc': 'प्रीसेट लूप और कीपर',
        'tab.script.title': 'Script Lab',
        'tab.script.desc': 'JS चलाएँ और कॉन्फ़िग आयात करें',
        'tab.shortcuts.title': 'शॉर्टकट्स',
        'tab.shortcuts.desc': 'शॉर्टकट बाइंडिंग्स प्रबंधित करें',
        'tab.translate.title': 'अनुवाद',
        'tab.translate.desc': 'पैनल और डेटाबेस अनुवाद',
        'tab.profiles.title': 'प्रोफाइल',
        'tab.profiles.desc': 'सत्र कॉन्फ़िगरेशन सहेजें और दोबारा चलाएँ',
        'tab.settings.title': 'सेटिंग्स',
        'tab.settings.desc': 'रनटाइम टॉगल और सफाई',
        'settings.runtime.title': 'Runtime',
        'settings.runtime.desc': 'ADEL9st Control Center {version}',
        'settings.runtime.clean': 'क्लीन रीसेट',
        'settings.runtime.panic': 'पैनिक',
        'settings.runtime.titleScene': 'शीर्षक',
        'settings.runtime.quickSave': 'क्विक सेव',
        'settings.runtime.quickLoad': 'क्विक लोड',
        'settings.runtime.clearLocks': 'लॉक्स साफ़ करें',
        'settings.runtime.slot': 'slot',
        'settings.translation.title': 'भाषा और अनुवाद',
        'settings.translation.desc': 'अनुवाद टूल और सेटिंग्स',
        'settings.translation.open': 'ADEL Translate खोलें',
        'settings.translation.panel': 'पैनल अनुवाद सक्षम',
        'settings.translation.dialogue': 'संवाद अनुवाद',
        'settings.translation.choice': 'चॉइस अनुवाद',
        'settings.translation.scroll': 'स्क्रोल अनुवाद',
        'settings.utilities.title': 'डेवलपर नियंत्रण और उपयोगिताएँ',
        'settings.utilities.undo': 'पिछली क्रिया पूर्ववत करें',
        'settings.utilities.speedOn': 'स्पीड लॉक चालू',
        'settings.utilities.speedOff': 'स्पीड लॉक बंद',
        'settings.utilities.speedPlaceholder': 'गुणक (जैसे 2.0)',
        'settings.utilities.speedTarget': 'लक्ष्य',
        'settings.utilities.speedTargetAll': 'सभी दृश्य',
        'settings.utilities.speedTargetBattle': 'केवल युद्ध',
        'settings.locks.title': 'सक्रिय लॉक (Freeze List)',
        'settings.locks.count': '{count} सक्रिय',
        'settings.locks.empty': 'कोई सक्रिय लॉक नहीं।',
        'settings.locks.unlock': 'अनलॉक',
        'settings.locks.type': 'प्रकार',
        'settings.locks.value': 'मान',
        'settings.log.title': 'लॉग',
        'settings.log.desc': 'हाल की क्रियाएँ',
        'variables.lockResults': 'खोज लॉक करें',
        'inventory.hideNameless': 'बिना नाम वाले छिपाएँ',
        'inventory.onlyOwned': 'केवल स्वामित्व वाले',
        'translate.customMethod': 'मेथड',
        'translate.customUrl': 'URL पैटर्न',
        'translate.customBody': 'POST बॉडी'
    },
    'zh-CN': {
        'language.title': '语言',
        'language.active': '当前界面语言',
        'language.select': '界面语言',
        'language.hint': '只会改变 Control Center 的界面语言，不影响游戏翻译工具。',
        'language.auto': '自动（浏览器）',
        'language.saved': '界面语言已设置为 {name}。',
        'uiSize.title': '界面大小',
        'uiSize.active': '当前布局模式',
        'uiSize.select': '面板大小模式',
        'uiSize.hint': '无论当前游戏分辨率如何，都可以让面板保持紧凑或扩展状态。',
        'uiSize.saved': '面板大小模式已设置为 {name}。',
        'uiSize.auto': '自动',
        'uiSize.compact': '紧凑',
        'uiSize.normal': '标准',
        'uiSize.large': '大',
        'uiSize.max': '最大',
        'nav.control': '控制',
        'nav.gameplay': '玩法',
        'nav.utilities': '工具',
        'tab.deck.title': '控制中心',
        'tab.deck.desc': '实时总览与快捷操作',
        'tab.variables.title': '变量',
        'tab.variables.desc': '高密度运行时变量编辑器',
        'tab.switches.title': '开关',
        'tab.switches.desc': '快速开关与冻结状态',
        'tab.inventory.title': '物品栏',
        'tab.inventory.desc': '道具、武器与护甲',
        'tab.battle.title': '战斗',
        'tab.battle.desc': 'HP、无敌模式与战斗退出',
        'tab.party.title': '队伍',
        'tab.party.desc': '队伍成员与等级编辑',
        'tab.events.title': '地图与事件',
        'tab.events.desc': '传送与事件路由',
        'tab.watcher.title': '监视器',
        'tab.watcher.desc': '快照变化追踪',
        'tab.automation.title': '自动化',
        'tab.automation.desc': '预设循环与保持器',
        'tab.script.title': 'Script Lab',
        'tab.script.desc': '运行 JS 并导入配置',
        'tab.shortcuts.title': '快捷键',
        'tab.shortcuts.desc': '管理快捷键绑定',
        'tab.translate.title': '翻译',
        'tab.translate.desc': '面板与数据库翻译',
        'tab.profiles.title': '配置档',
        'tab.profiles.desc': '保存并重放会话配置',
        'tab.settings.title': '设置',
        'tab.settings.desc': '运行时开关与清理',
        'settings.runtime.title': 'Runtime',
        'settings.runtime.desc': 'ADEL9st Control Center {version}',
        'settings.runtime.clean': '干净重置',
        'settings.runtime.panic': '紧急',
        'settings.runtime.titleScene': '标题',
        'settings.runtime.quickSave': '快速保存',
        'settings.runtime.quickLoad': '快速读取',
        'settings.runtime.clearLocks': '清除锁定',
        'settings.runtime.slot': 'slot',
        'settings.translation.title': '语言与翻译',
        'settings.translation.desc': '翻译工具与设置',
        'settings.translation.open': '打开 ADEL Translate',
        'settings.translation.panel': '启用面板翻译',
        'settings.translation.dialogue': '对话翻译',
        'settings.translation.choice': '选项翻译',
        'settings.translation.scroll': '滚动文本翻译',
        'settings.utilities.title': '开发人员控制与工具',
        'settings.utilities.undo': '撤销上一步',
        'settings.utilities.speedOn': '速度锁定已开启',
        'settings.utilities.speedOff': '速度锁定已关闭',
        'settings.utilities.speedPlaceholder': '倍率（例如 2.0）',
        'settings.utilities.speedTarget': '目标',
        'settings.utilities.speedTargetAll': '全部场景',
        'settings.utilities.speedTargetBattle': '仅战斗',
        'settings.locks.title': '活动锁定（Freeze List）',
        'settings.locks.count': '{count} 个活动',
        'settings.locks.empty': '没有活动锁定。',
        'settings.locks.unlock': '解锁',
        'settings.locks.type': '类型',
        'settings.locks.value': '值',
        'settings.log.title': '日志',
        'settings.log.desc': '最近操作',
        'variables.lockResults': '锁定搜索',
        'inventory.hideNameless': '隐藏无名项',
        'inventory.onlyOwned': '仅显示已拥有',
        'translate.customMethod': '方法',
        'translate.customUrl': 'URL 模式',
        'translate.customBody': 'POST 请求体'
    },
    ja: {
        'language.title': '言語',
        'language.active': '現在のUI言語',
        'language.select': 'インターフェース言語',
        'language.hint': 'ゲーム翻訳ツールに影響を与えることなく、コントロールセンターの言語を変更します。',
        'language.auto': '自動 (ブラウザ)',
        'language.saved': 'インターフェース言語を {name} に設定しました。',
        'uiSize.title': 'UIサイズ',
        'uiSize.active': '現在のレイアウトモード',
        'uiSize.select': 'パネルサイズモード',
        'uiSize.hint': 'ゲーム解像度に関係なく、パネルをコンパクトまたは拡大した状態に保つことができます。',
        'uiSize.saved': 'パネルサイズモードを {name} に設定しました。',
        'uiSize.auto': '自動',
        'uiSize.compact': 'コンパクト',
        'uiSize.normal': '標準',
        'uiSize.large': '大',
        'uiSize.max': '最大',
        'nav.control': 'コントロール',
        'nav.gameplay': 'ゲームプレイ',
        'nav.utilities': 'ユーティリティ',
        'tab.deck.title': 'コントロールセンター',
        'tab.deck.desc': 'ライブ概要とクイックアクション',
        'tab.variables.title': '変数',
        'tab.variables.desc': '高密度ランタイム変数エディタ',
        'tab.switches.title': 'スイッチ',
        'tab.switches.desc': '高速オン/オフとフリーズ状態',
        'tab.inventory.title': 'インベントリ',
        'tab.inventory.desc': 'アイテム、武器、防具',
        'tab.battle.title': '戦闘',
        'tab.battle.desc': 'HP、ゴッドモード、戦闘離脱',
        'tab.party.title': 'パーティ',
        'tab.party.desc': 'パーティメンバーとレベル編集',
        'tab.events.title': 'マップ＆イベント',
        'tab.events.desc': 'テレポートとイベントルーティング',
        'tab.watcher.title': 'ウォッチャー',
        'tab.watcher.desc': 'スナップショット変更の追跡',
        'tab.automation.title': '自動化',
        'tab.automation.desc': 'プリセットループとキーパー',
        'tab.script.title': 'スクリプトラボ',
        'tab.script.desc': 'JSの実行と設定のインポート',
        'tab.shortcuts.title': 'ショートカット',
        'tab.shortcuts.desc': 'ショートカットキー割り当ての管理',
        'tab.translate.title': '翻訳',
        'tab.translate.desc': 'パネルとデータベースの翻訳',
        'tab.profiles.title': 'プロファイル',
        'tab.profiles.desc': 'セッション設定の保存と再適用',
        'tab.settings.title': '設定',
        'tab.settings.desc': 'ランタイム切り替えとクリーンアップ',
        'settings.runtime.title': 'ランタイム',
        'settings.runtime.desc': 'ADEL9st コントロールセンター {version}',
        'settings.runtime.clean': 'クリーンリセット',
        'settings.runtime.panic': 'パニック',
        'settings.runtime.titleScene': 'タイトル',
        'settings.runtime.quickSave': 'クイックセーブ',
        'settings.runtime.quickLoad': 'クイックロード',
        'settings.runtime.clearLocks': 'ロック解除',
        'settings.runtime.slot': 'slot',
        'settings.translation.title': '言語と言語翻訳',
        'settings.translation.desc': '翻訳ツールと設定',
        'settings.translation.open': 'ADEL翻訳を開く',
        'settings.translation.panel': 'パネル翻訳の有効化',
        'settings.translation.dialogue': '会話翻訳',
        'settings.translation.choice': '選択肢翻訳',
        'settings.translation.scroll': 'スクロールテキスト翻訳',
        'settings.utilities.title': 'デベロッパーコントロール＆ユーティリティ',
        'settings.utilities.undo': '最後のアクションを取り消す',
        'settings.utilities.speedOn': 'スピードロック有効',
        'settings.utilities.speedOff': 'スピードロック無効',
        'settings.utilities.speedPlaceholder': '倍率 (例: 2.0)',
        'settings.utilities.speedTarget': 'ターゲット',
        'settings.utilities.speedTargetAll': 'すべてのシーン',
        'settings.utilities.speedTargetBattle': '戦闘のみ',
        'settings.locks.title': 'アクティブなロック (フリーズリスト)',
        'settings.locks.count': '{count} 個アクティブ',
        'settings.locks.empty': 'アクティブなロックはありません。',
        'settings.locks.unlock': 'ロック解除',
        'settings.locks.type': 'タイプ',
        'settings.locks.value': '値',
        'settings.log.title': 'ログ',
        'settings.log.desc': '最近のアクション',
        'variables.lockResults': '検索ロック',
        'inventory.hideNameless': '名前なしを非表示',
        'inventory.onlyOwned': '所持品のみ',
        'translate.customMethod': 'メソッド',
        'translate.customUrl': 'URLパターン',
        'translate.customBody': 'POSTボディ'
    },
    ko: {
        'language.title': '언어',
        'language.active': '현재 UI 언어',
        'language.select': '인터페이스 언어',
        'language.hint': '게임 번역 도구에 영향을 주지 않고 컨트롤 센터의 언어를 변경합니다.',
        'language.auto': '자동 (브라우저)',
        'language.saved': '인터페이스 언어가 {name}(으)로 설정되었습니다.',
        'uiSize.title': 'UI 크기',
        'uiSize.active': '현재 레이아웃 모드',
        'uiSize.select': '패널 크기 모드',
        'uiSize.hint': '게임 해상도에 관계없이 패널을 축소하거나 확대하여 유지할 수 있습니다.',
        'uiSize.saved': '패널 크기 모드가 {name}(으)로 설정되었습니다.',
        'uiSize.auto': '자동',
        'uiSize.compact': '축소',
        'uiSize.normal': '보통',
        'uiSize.large': '크게',
        'uiSize.max': '최대',
        'nav.control': '제어',
        'nav.gameplay': '게임플레이',
        'nav.utilities': '유틸리티',
        'tab.deck.title': '컨트롤 센터',
        'tab.deck.desc': '실시간 개요 및 빠른 작업',
        'tab.variables.title': '변수',
        'tab.variables.desc': '고밀도 런타임 변수 편집기',
        'tab.switches.title': '스위치',
        'tab.switches.desc': '빠른 온/오프 및 고정 상태',
        'tab.inventory.title': '인벤토리',
        'tab.inventory.desc': '아이템, 무기 및 방어구',
        'tab.battle.title': '전투',
        'tab.battle.desc': 'HP, 무적 모드 및 전투 이탈',
        'tab.party.title': '파티',
        'tab.party.desc': '파티원 및 레벨 편집',
        'tab.events.title': '맵 & 이벤트',
        'tab.events.desc': '텔레포트 및 이벤트 라우팅',
        'tab.watcher.title': '감시자',
        'tab.watcher.desc': '스냅샷 변경 사항 추적',
        'tab.automation.title': '자동화',
        'tab.automation.desc': '프리셋 루프 및 유지 관리자',
        'tab.script.title': '스크립트 랩',
        'tab.script.desc': 'JS 실행 및 설정 가져오기',
        'tab.shortcuts.title': '단축키',
        'tab.shortcuts.desc': '단축키 바인딩 관리',
        'tab.translate.title': '번역',
        'tab.translate.desc': '패널 및 데이터베이스 번역',
        'tab.profiles.title': '프로필',
        'tab.profiles.desc': '세션 설정 저장 및 재적용',
        'tab.settings.title': '설정',
        'tab.settings.desc': '런타임 스위치 및 정리',
        'settings.runtime.title': '런타임',
        'settings.runtime.desc': 'ADEL9st 컨트롤 센터 {version}',
        'settings.runtime.clean': '클린 초기화',
        'settings.runtime.panic': '패닉',
        'settings.runtime.titleScene': '타이틀',
        'settings.runtime.quickSave': '빠른 저장',
        'settings.runtime.quickLoad': '빠른 불러오기',
        'settings.runtime.clearLocks': '잠금 해제',
        'settings.runtime.slot': 'slot',
        'settings.translation.title': '언어 및 번역',
        'settings.translation.desc': '번역 도구 및 설정',
        'settings.translation.open': 'ADEL 번역 열기',
        'settings.translation.panel': '패널 번역 활성화됨',
        'settings.translation.dialogue': '대화 번역',
        'settings.translation.choice': '선택지 번역',
        'settings.translation.scroll': '스크롤 텍스트 번역',
        'settings.utilities.title': '개발자 제어 및 유틸리티',
        'settings.utilities.undo': '마지막 작업 실행 취소',
        'settings.utilities.speedOn': '속도 고정 켬',
        'settings.utilities.speedOff': '속도 고정 끎',
        'settings.utilities.speedPlaceholder': '배율 (예: 2.0)',
        'settings.utilities.speedTarget': '대상',
        'settings.utilities.speedTargetAll': '모든 장면',
        'settings.utilities.speedTargetBattle': '전투만',
        'settings.locks.title': '활성 잠금 (고정 목록)',
        'settings.locks.count': '{count}개 활성화됨',
        'settings.locks.empty': '활성화된 잠금이 없습니다.',
        'settings.locks.unlock': '잠금 해제',
        'settings.locks.type': '유형',
        'settings.locks.value': '값',
        'settings.log.title': '로그',
        'settings.log.desc': '최근 작업',
        'variables.lockResults': '검색 잠금',
        'inventory.hideNameless': '이름 없는 항목 숨기기',
        'inventory.onlyOwned': '보유한 항목만',
        'translate.customMethod': '메서드',
        'translate.customUrl': 'URL 패턴',
        'translate.customBody': 'POST 본문'
    }
}

const UI_EXTENDED_DICTIONARY = {
    en: {
        'common.refresh': 'Refresh',
        'common.apply': 'Apply',
        'common.clear': 'Clear',
        'common.delete': 'Delete',
        'common.save': 'Save',
        'common.load': 'Load',
        'common.import': 'Import',
        'common.export': 'Export',
        'common.translate': 'Translate',
        'common.translating': 'Translating...',
        'common.copyOutputToInput': 'Copy Output To Input',
        'common.enabled': 'Enabled',
        'common.disabled': 'Disabled',
        'common.provider': 'Provider',
        'common.targetLanguage': 'Target Language',
        'common.endpointUrl': 'Endpoint URL',
        'common.chunkSize': 'Chunk Size',
        'common.model': 'Model',
        'common.method': 'Method',
        'common.urlPattern': 'URL Pattern',
        'common.postBodyPattern': 'POST Body Pattern',
        'common.name': 'Name',
        'common.description': 'Description',
        'common.value': 'Value',
        'common.state': 'State',
        'common.actions': 'Actions',
        'common.addr': 'Addr',
        'common.id': 'ID',
        'common.page': 'Page',
        'common.go': 'Go',
        'common.status': 'Status',
        'common.output': 'Output',
        'common.history': 'History',
        'common.on': 'ON',
        'common.off': 'OFF',
        'common.frozen': 'Frozen',
        'common.changed': 'Changed',
        'common.all': 'All',
        'common.set': 'Set',
        'common.add': 'Add',
        'common.remove': 'Remove',
        'common.total': 'total',
        'common.locked': 'locked',
        'common.takeSnapshot': 'Take Snapshot',
        'common.clearSnapshot': 'Clear Snapshot',
        'common.lockFreeze': 'Lock/Freeze',
        'common.selectAll': 'Select All',
        'common.selectForBatch': 'Select for batch edit',
        'common.pageSummary': 'Rows {start}-{end} of {total} / Page {page} of {pages}',
        'common.pageSize': '{count} / page',
        'inventory.title': 'Inventory',
        'inventory.summaryVisible': '{count} visible / {kind}',
        'inventory.helper': 'Dense inventory table with row-level amount actions.',
        'inventory.kind.items': 'Items',
        'inventory.kind.weapons': 'Weapons',
        'inventory.kind.armors': 'Armors',
        'inventory.searchPlaceholder': 'Search item name, ID, description',
        'inventory.amountPlaceholder': 'amount',
        'inventory.applyVisible': 'Apply amount to visible',
        'inventory.setVisible99': 'Set visible 99',
        'inventory.clearVisible': 'Clear visible',
        'inventory.owned': 'Owned',
        'inventory.empty': 'No inventory rows found.',
        'inventory.noDescription': 'No description',
        'inventory.meta.searchable': 'searchable text',
        'variables.summary': '{total} total / {locked} locked',
        'variables.helper': 'Dense variable table with batch edits, inline values, and lock state.',
        'variables.searchPlaceholder': 'Search ID, name, value...',
        'variables.filter.all': 'All',
        'variables.filter.nonzero': 'Non-Zero',
        'variables.filter.frozen': 'Frozen',
        'variables.filter.changed': 'Changed',
        'variables.sort.idAsc': 'ID Asc',
        'variables.sort.idDesc': 'ID Desc',
        'variables.sort.valueAsc': 'Value Asc',
        'variables.sort.valueDesc': 'Value Desc',
        'variables.sort.nameAsc': 'Name Asc',
        'variables.sort.nameDesc': 'Name Desc',
        'variables.nameless': 'Nameless',
        'variables.batch.set': 'Set',
        'variables.batch.add': 'Add',
        'variables.batch.sub': 'Sub',
        'variables.batch.mul': 'Mul',
        'variables.batch.random': 'Random',
        'variables.batch.min': 'Min',
        'variables.batch.max': 'Max',
        'variables.batch.valuePlaceholder': 'value',
        'variables.batch.apply': 'Apply ({count})',
        'variables.empty': 'No variables found.',
        'variables.meta.snapshotChanged': 'snapshot changed',
        'variables.meta.stable': 'stable value',
        'switches.summary': '{total} total / {locked} locked',
        'switches.helper': 'Dense switch table with fast ON/OFF changes and lock state.',
        'switches.searchPlaceholder': 'Search ID, name, state...',
        'switches.filter.all': 'All',
        'switches.filter.on': 'ON',
        'switches.filter.off': 'OFF',
        'switches.filter.frozen': 'Frozen',
        'switches.filter.changed': 'Changed',
        'switches.nameless': 'Nameless',
        'switches.batch.on': 'Set ON ({count})',
        'switches.batch.off': 'Set OFF',
        'switches.batch.toggle': 'Toggle',
        'switches.empty': 'No switches found.',
        'switches.meta.snapshotChanged': 'snapshot changed',
        'switches.meta.currentOn': 'current on',
        'switches.meta.currentOff': 'current off',
        'translate.centerTitle': 'Translate Center',
        'translate.clearCache': 'Clear Cache ({count})',
        'translate.dbPanelTitle': 'Database & Panel Translation',
        'translate.dbPanelDesc': 'Labels & Data',
        'translate.enablePanelLabels': 'Enable translated panel labels',
        'translate.endpointPlaceholder': 'Provider URL',
        'translate.chunkPlaceholder': 'Chunk Size',
        'translate.modelPlaceholder': 'Model (e.g. qwen2.5:3b)',
        'translate.chooseTargets': 'Choose which database names should be translated:',
        'translate.targets.variables': 'Variable names',
        'translate.targets.switches': 'Switch names',
        'translate.targets.items': 'Item & weapon names',
        'translate.targets.maps': 'Map names',
        'translate.gameTitle': 'Dialogue & Choice Translation',
        'translate.gameDesc': 'Live Game',
        'translate.realtimeHooks': 'REAL-TIME HOOKS:',
        'translate.dialogues': 'Dialogues',
        'translate.choices': 'Choices',
        'translate.scrollText': 'Scroll text',
        'translate.manualTitle': 'Manual Translation',
        'translate.manualDesc': 'Paste text and translate',
        'translate.inputPlaceholder': 'Paste RPG Maker text here...',
        'translate.outputPlaceholder': 'Translation output...',
        'translate.status.idle': 'Translator idle.',
        'translate.status.nothing': 'Nothing to translate.',
        'translate.status.translating': 'Translating...',
        'translate.status.complete': 'Translation complete.',
        'translate.status.failed': 'Translate failed: {message}',
        'translate.status.dbTranslating': 'Translating database...',
        'translate.status.dbComplete': 'Database translated successfully.',
        'translate.status.dbFailed': 'Database translation failed: {message}',
        'translate.status.dbRestored': 'Database restored to original.',
        'translate.status.cacheCleared': 'Translation cache cleared.',
        'translate.status.outputCopied': 'Output copied to input.',
        'translate.status.namesNone': 'No {kind} names to translate.',
        'translate.status.namesTranslating': 'Translating names...',
        'translate.status.namesComplete': '{count} {kind} names translated.',
        'translate.status.bulkFailed': 'Bulk translate failed: {message}',
        'translate.kind.variables': 'variable',
        'translate.kind.switches': 'switch',
        'translate.kind.inventory': 'inventory',
        'translate.kind.events': 'event',
        'log.shortcutsReset': 'Shortcuts restored to defaults.',
        'log.snapshotCleared': 'Snapshot cleared.',
        'log.locksCleared': 'All locks cleared.',
        'log.messageSkip': 'Message skip {state}.',
        'log.godModeActor': 'God mode for actor {id} set to {state}.',
        'log.playerSpeedLock': 'Player speed lock {state}.',
        'log.lockRemoved': 'Lock {key} removed.',
        'log.playerSpeedSet': 'Player speed set to x{value} and locked.',
        'shortcuts.title': 'Shortcut Manager',
        'shortcuts.summary': '{count} actions defined',
        'shortcuts.resetAll': 'Reset to Default',
        'shortcuts.helper': 'Click a row, then press the key combination you want. Custom shortcuts can also run JS code.',
        'shortcuts.recordingActive': 'Recording mode active',
        'shortcuts.recordingHint': 'Press a key combination (ESC = cancel, Delete/Backspace = clear)',
        'shortcuts.cancel': 'Cancel',
        'shortcuts.searchPlaceholder': 'Search: action name, key...',
        'shortcuts.empty': 'No matching shortcuts found.',
        'shortcuts.headers.action': 'Action',
        'shortcuts.headers.description': 'Description',
        'shortcuts.headers.assignedKey': 'Assigned Key',
        'shortcuts.headers.operations': 'Actions',
        'shortcuts.required': 'required',
        'shortcuts.waiting': 'waiting...',
        'shortcuts.conflict': 'Conflict',
        'shortcuts.assign': 'Assign',
        'shortcuts.clearKey': 'Clear',
        'shortcuts.group.panel': 'Panel',
        'shortcuts.group.speed': 'Speed',
        'shortcuts.group.movement': 'Movement',
        'shortcuts.group.party': 'Party',
        'shortcuts.group.save': 'Save',
        'shortcuts.group.battle': 'Battle',
        'shortcuts.group.other': 'Other',
        'shortcuts.group.custom': 'Custom',
        'shortcuts.def.togglePanel.label': 'Toggle Panel',
        'shortcuts.def.togglePanel.desc': 'Show or hide the Control Center',
        'shortcuts.def.speed1x.label': 'Speed x1 (Normal)',
        'shortcuts.def.speed1x.desc': 'Set game speed to x1',
        'shortcuts.def.speed2x.label': 'Speed x2',
        'shortcuts.def.speed2x.desc': 'Set game speed to x2',
        'shortcuts.def.speed3x.label': 'Speed x3',
        'shortcuts.def.speed3x.desc': 'Set game speed to x3',
        'shortcuts.def.speed5x.label': 'Speed x5',
        'shortcuts.def.speed5x.desc': 'Set game speed to x5',
        'shortcuts.def.speedReset.label': 'Reset Speed',
        'shortcuts.def.speedReset.desc': 'Return game speed to x1',
        'shortcuts.def.noClip.label': 'Toggle No Clip',
        'shortcuts.def.noClip.desc': 'Enable or disable walking through walls',
        'shortcuts.def.encounterToggle.label': 'Toggle Encounters',
        'shortcuts.def.encounterToggle.desc': 'Enable or disable random encounters',
        'shortcuts.def.healParty.label': 'Heal Party',
        'shortcuts.def.healParty.desc': 'Restore HP/MP for the full party',
        'shortcuts.def.quickSave.label': 'Quick Save',
        'shortcuts.def.quickSave.desc': 'Instantly save to the selected slot',
        'shortcuts.def.quickLoad.label': 'Quick Load',
        'shortcuts.def.quickLoad.desc': 'Instantly load from the selected slot',
        'shortcuts.def.forceVictory.label': 'Force Victory',
        'shortcuts.def.forceVictory.desc': 'Win the current battle immediately',
        'shortcuts.def.forceDefeat.label': 'Force Defeat',
        'shortcuts.def.forceDefeat.desc': 'Lose the current battle immediately',
        'shortcuts.def.forceEscape.label': 'Force Escape',
        'shortcuts.def.forceEscape.desc': 'Escape from the current battle immediately',
        'shortcuts.def.woundAllEnemies.label': 'All Enemies to 1 HP',
        'shortcuts.def.woundAllEnemies.desc': 'Set every enemy HP to 1 in battle',
        'shortcuts.def.recoverParty.label': 'Fully Recover Party',
        'shortcuts.def.recoverParty.desc': 'Restore all HP and MP',
        'shortcuts.def.snapshot.label': 'Take Snapshot',
        'shortcuts.def.snapshot.desc': 'Capture current variable and switch values',
        'shortcuts.def.custom.label': 'Custom Shortcut {index}',
        'shortcuts.def.custom.desc': 'Empty slot: run user-defined JS code'
    },
    tr: {
        'common.refresh': 'Yenile',
        'common.apply': 'Uygula',
        'common.clear': 'Temizle',
        'common.delete': 'Sil',
        'common.save': 'Kaydet',
        'common.load': 'Yükle',
        'common.import': 'İçe aktar',
        'common.export': 'Dışa aktar',
        'common.translate': 'Çevir',
        'common.translating': 'Çevriliyor...',
        'common.copyOutputToInput': 'Çıktıyı girdiye kopyala',
        'common.enabled': 'Açık',
        'common.disabled': 'Kapalı',
        'common.provider': 'Sağlayıcı',
        'common.targetLanguage': 'Hedef dil',
        'common.endpointUrl': 'Endpoint URL',
        'common.chunkSize': 'Parça boyutu',
        'common.model': 'Model',
        'common.method': 'Metot',
        'common.urlPattern': 'URL şablonu',
        'common.postBodyPattern': 'POST gövde şablonu',
        'common.name': 'Ad',
        'common.description': 'Açıklama',
        'common.value': 'Değer',
        'common.state': 'Durum',
        'common.actions': 'İşlemler',
        'common.addr': 'Adres',
        'common.id': 'ID',
        'common.page': 'Sayfa',
        'common.go': 'Git',
        'common.status': 'Durum',
        'common.output': 'Çıktı',
        'common.history': 'Geçmiş',
        'common.on': 'AÇIK',
        'common.off': 'KAPALI',
        'common.frozen': 'Donmuş',
        'common.changed': 'Değişti',
        'common.all': 'Tümü',
        'common.set': 'Ayarla',
        'common.add': 'Ekle',
        'common.remove': 'Kaldır',
        'common.total': 'toplam',
        'common.locked': 'kilitli',
        'common.takeSnapshot': 'Anlık görüntü al',
        'common.clearSnapshot': 'Anlık görüntüyü temizle',
        'common.lockFreeze': 'Kilitle/Dondur',
        'common.selectAll': 'Tümünü seç',
        'common.selectForBatch': 'Toplu düzenleme için seç',
        'common.pageSummary': '{total} içinden satırlar {start}-{end} / Sayfa {page} / {pages}',
        'common.pageSize': '{count} / sayfa',
        'inventory.title': 'Envanter',
        'inventory.summaryVisible': '{count} görünür / {kind}',
        'inventory.helper': 'Satır bazlı miktar işlemlerine sahip yoğun envanter tablosu.',
        'inventory.kind.items': 'Eşyalar',
        'inventory.kind.weapons': 'Silahlar',
        'inventory.kind.armors': 'Zırhlar',
        'inventory.searchPlaceholder': 'Eşya adı, ID, açıklama ara',
        'inventory.amountPlaceholder': 'miktar',
        'inventory.applyVisible': 'Görünürlere miktar uygula',
        'inventory.setVisible99': 'Görünürleri 99 yap',
        'inventory.clearVisible': 'Görünürleri temizle',
        'inventory.owned': 'Sahip olunan',
        'inventory.empty': 'Envanter satırı bulunamadı.',
        'inventory.noDescription': 'Açıklama yok',
        'inventory.meta.searchable': 'aranabilir metin',
        'variables.summary': '{total} toplam / {locked} kilitli',
        'variables.helper': 'Toplu düzenleme, satır içi değerler ve kilit durumu olan yoğun değişken tablosu.',
        'variables.searchPlaceholder': 'ID, ad, değer ara...',
        'variables.filter.all': 'Tümü',
        'variables.filter.nonzero': 'Sıfır değil',
        'variables.filter.frozen': 'Donmuş',
        'variables.filter.changed': 'Değişti',
        'variables.sort.idAsc': 'ID artan',
        'variables.sort.idDesc': 'ID azalan',
        'variables.sort.valueAsc': 'Değer artan',
        'variables.sort.valueDesc': 'Değer azalan',
        'variables.sort.nameAsc': 'Ad A-Z',
        'variables.sort.nameDesc': 'Ad Z-A',
        'variables.nameless': 'İsimsiz',
        'variables.batch.set': 'Ayarla',
        'variables.batch.add': 'Ekle',
        'variables.batch.sub': 'Çıkar',
        'variables.batch.mul': 'Çarp',
        'variables.batch.random': 'Rastgele',
        'variables.batch.min': 'Min',
        'variables.batch.max': 'Maks',
        'variables.batch.valuePlaceholder': 'değer',
        'variables.batch.apply': 'Uygula ({count})',
        'variables.empty': 'Değişken bulunamadı.',
        'variables.meta.snapshotChanged': 'anlık görüntüden değişti',
        'variables.meta.stable': 'kararlı değer',
        'switches.summary': '{total} toplam / {locked} kilitli',
        'switches.helper': 'Hızlı aç/kapat ve kilit durumu içeren yoğun switch tablosu.',
        'switches.searchPlaceholder': 'ID, ad, durum ara...',
        'switches.filter.all': 'Tümü',
        'switches.filter.on': 'AÇIK',
        'switches.filter.off': 'KAPALI',
        'switches.filter.frozen': 'Donmuş',
        'switches.filter.changed': 'Değişti',
        'switches.nameless': 'İsimsiz',
        'switches.batch.on': 'AÇIK yap ({count})',
        'switches.batch.off': 'KAPALI yap',
        'switches.batch.toggle': 'Ters çevir',
        'switches.empty': 'Switch bulunamadı.',
        'switches.meta.snapshotChanged': 'anlık görüntüden değişti',
        'switches.meta.currentOn': 'şu an açık',
        'switches.meta.currentOff': 'şu an kapalı',
        'translate.centerTitle': 'Çeviri Merkezi',
        'translate.clearCache': 'Önbelleği temizle ({count})',
        'translate.dbPanelTitle': 'Veritabanı ve Panel Çevirisi',
        'translate.dbPanelDesc': 'Etiketler ve veriler',
        'translate.enablePanelLabels': 'Panel etiketlerini çevir',
        'translate.endpointPlaceholder': 'Sağlayıcı URL',
        'translate.chunkPlaceholder': 'Parça boyutu',
        'translate.modelPlaceholder': 'Model (örn. qwen2.5:3b)',
        'translate.chooseTargets': 'Hangi veritabanı adlarının çevrileceğini seçin:',
        'translate.targets.variables': 'Değişken adları',
        'translate.targets.switches': 'Switch adları',
        'translate.targets.items': 'Eşya ve silah adları',
        'translate.targets.maps': 'Harita adları',
        'translate.gameTitle': 'Diyalog ve Seçenek Çevirisi',
        'translate.gameDesc': 'Canlı oyun',
        'translate.realtimeHooks': 'GERÇEK ZAMANLI HOOKLAR:',
        'translate.dialogues': 'Diyaloglar',
        'translate.choices': 'Seçenekler',
        'translate.scrollText': 'Kayan metin',
        'translate.manualTitle': 'Manuel Çeviri',
        'translate.manualDesc': 'Metni yapıştır ve çevir',
        'translate.inputPlaceholder': 'RPG Maker metnini buraya yapıştırın...',
        'translate.outputPlaceholder': 'Çeviri çıktısı...',
        'translate.status.idle': 'Çevirici boşta.',
        'translate.status.nothing': 'Çevrilecek metin yok.',
        'translate.status.translating': 'Çevriliyor...',
        'translate.status.complete': 'Çeviri tamamlandı.',
        'translate.status.failed': 'Çeviri başarısız: {message}',
        'translate.status.dbTranslating': 'Veritabanı çevriliyor...',
        'translate.status.dbComplete': 'Veritabanı başarıyla çevrildi.',
        'translate.status.dbFailed': 'Veritabanı çevirisi başarısız: {message}',
        'translate.status.dbRestored': 'Veritabanı orijinaline geri döndürüldü.',
        'translate.status.cacheCleared': 'Çeviri önbelleği temizlendi.',
        'translate.status.outputCopied': 'Çıktı girdiye kopyalandı.',
        'translate.status.namesNone': 'Çevrilecek {kind} adı yok.',
        'translate.status.namesTranslating': 'Adlar çevriliyor...',
        'translate.status.namesComplete': '{count} {kind} adı çevrildi.',
        'translate.status.bulkFailed': 'Toplu çeviri başarısız: {message}',
        'translate.kind.variables': 'değişken',
        'translate.kind.switches': 'switch',
        'translate.kind.inventory': 'envanter',
        'translate.kind.events': 'event',
        'log.shortcutsReset': 'Kısayollar varsayılana döndürüldü.',
        'log.snapshotCleared': 'Anlık görüntü temizlendi.',
        'log.locksCleared': 'Tüm kilitler temizlendi.',
        'log.messageSkip': 'Mesaj atlama {state}.',
        'log.godModeActor': 'Aktör {id} için tanrı modu {state} oldu.',
        'log.playerSpeedLock': 'Oyuncu hız kilidi {state}.',
        'log.lockRemoved': '{key} kilidi kaldırıldı.',
        'log.playerSpeedSet': 'Oyuncu hızı x{value} olarak ayarlandı ve kilitlendi.',
        'shortcuts.title': 'Kısayol Yöneticisi',
        'shortcuts.summary': '{count} eylem tanımlı',
        'shortcuts.resetAll': 'Varsayılana dön',
        'shortcuts.helper': 'Bir satıra tıklayın, ardından istediğiniz tuş kombinasyonuna basın. Özel kısayollar JS kodu da çalıştırabilir.',
        'shortcuts.recordingActive': 'Kayıt modu aktif',
        'shortcuts.recordingHint': 'Bir tuş kombinasyonuna basın (ESC = iptal, Delete/Backspace = temizle)',
        'shortcuts.cancel': 'İptal',
        'shortcuts.searchPlaceholder': 'Ara: eylem adı, tuş...',
        'shortcuts.empty': 'Eşleşen kısayol bulunamadı.',
        'shortcuts.headers.action': 'Eylem',
        'shortcuts.headers.description': 'Açıklama',
        'shortcuts.headers.assignedKey': 'Atanmış tuş',
        'shortcuts.headers.operations': 'İşlemler',
        'shortcuts.required': 'zorunlu',
        'shortcuts.waiting': 'bekliyor...',
        'shortcuts.conflict': 'Çakışma',
        'shortcuts.assign': 'Ata',
        'shortcuts.clearKey': 'Sil',
        'shortcuts.group.panel': 'Panel',
        'shortcuts.group.speed': 'Hız',
        'shortcuts.group.movement': 'Hareket',
        'shortcuts.group.party': 'Parti',
        'shortcuts.group.save': 'Kayıt',
        'shortcuts.group.battle': 'Savaş',
        'shortcuts.group.other': 'Diğer',
        'shortcuts.group.custom': 'Özel',
        'shortcuts.def.togglePanel.label': 'Paneli Aç/Kapat',
        'shortcuts.def.togglePanel.desc': 'Control Center’ı göster veya gizle',
        'shortcuts.def.speed1x.label': 'Hız x1 (Normal)',
        'shortcuts.def.speed1x.desc': 'Oyun hızını x1 yap',
        'shortcuts.def.speed2x.label': 'Hız x2',
        'shortcuts.def.speed2x.desc': 'Oyun hızını x2 yap',
        'shortcuts.def.speed3x.label': 'Hız x3',
        'shortcuts.def.speed3x.desc': 'Oyun hızını x3 yap',
        'shortcuts.def.speed5x.label': 'Hız x5',
        'shortcuts.def.speed5x.desc': 'Oyun hızını x5 yap',
        'shortcuts.def.speedReset.label': 'Hızı Sıfırla',
        'shortcuts.def.speedReset.desc': 'Oyun hızını x1’e döndür',
        'shortcuts.def.noClip.label': 'No-Clip Geçiş',
        'shortcuts.def.noClip.desc': 'Duvarlardan geçme modunu aç/kapat',
        'shortcuts.def.encounterToggle.label': 'Karşılaşmaları Aç/Kapat',
        'shortcuts.def.encounterToggle.desc': 'Rastgele karşılaşmaları aç/kapat',
        'shortcuts.def.healParty.label': 'Partiyi İyileştir',
        'shortcuts.def.healParty.desc': 'Tüm partinin HP/MP’sini doldur',
        'shortcuts.def.quickSave.label': 'Hızlı Kaydet',
        'shortcuts.def.quickSave.desc': 'Seçili slota anında kaydet',
        'shortcuts.def.quickLoad.label': 'Hızlı Yükle',
        'shortcuts.def.quickLoad.desc': 'Seçili slottan anında yükle',
        'shortcuts.def.forceVictory.label': 'Zafer Zorla',
        'shortcuts.def.forceVictory.desc': 'Mevcut savaşı anında kazan',
        'shortcuts.def.forceDefeat.label': 'Yenilgi Zorla',
        'shortcuts.def.forceDefeat.desc': 'Mevcut savaşı anında kaybet',
        'shortcuts.def.forceEscape.label': 'Kaçışı Zorla',
        'shortcuts.def.forceEscape.desc': 'Mevcut savaştan anında kaç',
        'shortcuts.def.woundAllEnemies.label': 'Tüm Düşmanları 1 HP Yap',
        'shortcuts.def.woundAllEnemies.desc': 'Savaştaki tüm düşmanların HP’sini 1 yap',
        'shortcuts.def.recoverParty.label': 'Partiyi Tam İyileştir',
        'shortcuts.def.recoverParty.desc': 'Tüm HP ve MP’yi doldur',
        'shortcuts.def.snapshot.label': 'Anlık Görüntü Al',
        'shortcuts.def.snapshot.desc': 'Mevcut değişken ve switch değerlerini kaydet',
        'shortcuts.def.custom.label': 'Özel Kısayol {index}',
        'shortcuts.def.custom.desc': 'Boş yuva: kullanıcı tanımlı JS kodu çalıştır'
    },
    es: {
        'common.refresh': 'Actualizar',
        'common.apply': 'Aplicar',
        'common.clear': 'Limpiar',
        'common.delete': 'Eliminar',
        'common.save': 'Guardar',
        'common.load': 'Cargar',
        'common.import': 'Importar',
        'common.export': 'Exportar',
        'common.translate': 'Traducir',
        'common.translating': 'Traduciendo...',
        'common.copyOutputToInput': 'Copiar salida a entrada',
        'common.enabled': 'Activado',
        'common.disabled': 'Desactivado',
        'common.provider': 'Proveedor',
        'common.targetLanguage': 'Idioma de destino',
        'common.endpointUrl': 'URL del endpoint',
        'common.chunkSize': 'Tamaño del bloque',
        'common.model': 'Modelo',
        'common.method': 'Método',
        'common.urlPattern': 'Patrón de URL',
        'common.postBodyPattern': 'Patrón del cuerpo POST',
        'common.name': 'Nombre',
        'common.description': 'Descripción',
        'common.value': 'Valor',
        'common.state': 'Estado',
        'common.actions': 'Acciones',
        'common.addr': 'Dir',
        'common.id': 'ID',
        'common.page': 'Página',
        'common.go': 'Ir',
        'common.status': 'Estado',
        'common.output': 'Salida',
        'common.history': 'Historial',
        'common.on': 'ON',
        'common.off': 'OFF',
        'common.frozen': 'Congelado',
        'common.changed': 'Cambiado',
        'common.all': 'Todo',
        'common.set': 'Ajustar',
        'common.add': 'Añadir',
        'common.remove': 'Quitar',
        'common.takeSnapshot': 'Capturar',
        'common.clearSnapshot': 'Borrar captura',
        'common.lockFreeze': 'Bloquear/Congelar',
        'common.selectAll': 'Seleccionar todo',
        'common.selectForBatch': 'Seleccionar para edición por lote',
        'common.pageSummary': 'Filas {start}-{end} de {total} / Página {page} de {pages}',
        'common.pageSize': '{count} / página',
        'inventory.title': 'Inventario',
        'inventory.kind.items': 'Objetos',
        'inventory.kind.weapons': 'Armas',
        'inventory.kind.armors': 'Armaduras',
        'inventory.searchPlaceholder': 'Buscar nombre, ID o descripción',
        'inventory.amountPlaceholder': 'cantidad',
        'inventory.applyVisible': 'Aplicar cantidad a visibles',
        'inventory.setVisible99': 'Poner visibles en 99',
        'inventory.clearVisible': 'Limpiar visibles',
        'inventory.owned': 'Poseídos',
        'inventory.empty': 'No se encontraron filas de inventario.',
        'translate.centerTitle': 'Centro de traducción',
        'translate.clearCache': 'Limpiar caché ({count})',
        'translate.dbPanelTitle': 'Traducción de base de datos y panel',
        'translate.dbPanelDesc': 'Etiquetas y datos',
        'translate.enablePanelLabels': 'Activar etiquetas traducidas del panel',
        'translate.chooseTargets': 'Elige qué nombres de la base de datos se deben traducir:',
        'translate.targets.variables': 'Nombres de variables',
        'translate.targets.switches': 'Nombres de interruptores',
        'translate.targets.items': 'Nombres de objetos y armas',
        'translate.targets.maps': 'Nombres de mapas',
        'translate.gameTitle': 'Traducción de diálogos y opciones',
        'translate.gameDesc': 'Juego en vivo',
        'translate.realtimeHooks': 'HOOKS EN TIEMPO REAL:',
        'translate.dialogues': 'Diálogos',
        'translate.choices': 'Opciones',
        'translate.scrollText': 'Texto desplazable',
        'translate.manualTitle': 'Traducción manual',
        'translate.manualDesc': 'Pega texto y tradúcelo',
        'translate.inputPlaceholder': 'Pega aquí el texto de RPG Maker...',
        'translate.outputPlaceholder': 'Salida de traducción...',
        'translate.status.idle': 'Traductor inactivo.',
        'translate.status.nothing': 'No hay texto para traducir.',
        'translate.status.translating': 'Traduciendo...',
        'translate.status.complete': 'Traducción completada.',
        'translate.status.cacheCleared': 'Caché de traducción limpiada.',
        'translate.status.outputCopied': 'La salida se copió a la entrada.'
    },
    'pt-BR': {
        'common.refresh': 'Atualizar',
        'common.apply': 'Aplicar',
        'common.clear': 'Limpar',
        'common.delete': 'Excluir',
        'common.save': 'Salvar',
        'common.load': 'Carregar',
        'common.import': 'Importar',
        'common.export': 'Exportar',
        'common.translate': 'Traduzir',
        'common.translating': 'Traduzindo...',
        'common.copyOutputToInput': 'Copiar saída para entrada',
        'common.enabled': 'Ativado',
        'common.disabled': 'Desativado',
        'common.provider': 'Provedor',
        'common.targetLanguage': 'Idioma de destino',
        'common.endpointUrl': 'URL do endpoint',
        'common.chunkSize': 'Tamanho do bloco',
        'common.model': 'Modelo',
        'common.method': 'Método',
        'common.urlPattern': 'Padrão de URL',
        'common.postBodyPattern': 'Padrão do corpo POST',
        'common.name': 'Nome',
        'common.description': 'Descrição',
        'common.value': 'Valor',
        'common.state': 'Estado',
        'common.actions': 'Ações',
        'common.addr': 'End',
        'common.id': 'ID',
        'common.page': 'Página',
        'common.go': 'Ir',
        'common.status': 'Status',
        'common.output': 'Saída',
        'common.history': 'Histórico',
        'common.on': 'ON',
        'common.off': 'OFF',
        'common.frozen': 'Congelado',
        'common.changed': 'Alterado',
        'common.all': 'Tudo',
        'common.set': 'Definir',
        'common.add': 'Adicionar',
        'common.remove': 'Remover',
        'common.takeSnapshot': 'Capturar',
        'common.clearSnapshot': 'Limpar captura',
        'common.lockFreeze': 'Travar/Congelar',
        'common.selectAll': 'Selecionar tudo',
        'common.selectForBatch': 'Selecionar para edição em lote',
        'common.pageSummary': 'Linhas {start}-{end} de {total} / Página {page} de {pages}',
        'common.pageSize': '{count} / página',
        'inventory.title': 'Inventário',
        'inventory.kind.items': 'Itens',
        'inventory.kind.weapons': 'Armas',
        'inventory.kind.armors': 'Armaduras',
        'inventory.searchPlaceholder': 'Buscar nome, ID ou descrição',
        'inventory.amountPlaceholder': 'quantidade',
        'inventory.applyVisible': 'Aplicar quantidade aos visíveis',
        'inventory.setVisible99': 'Definir visíveis para 99',
        'inventory.clearVisible': 'Limpar visíveis',
        'inventory.owned': 'Possuídos',
        'inventory.empty': 'Nenhuma linha de inventário encontrada.',
        'translate.centerTitle': 'Central de tradução',
        'translate.clearCache': 'Limpar cache ({count})',
        'translate.dbPanelTitle': 'Tradução de banco e painel',
        'translate.dbPanelDesc': 'Rótulos e dados',
        'translate.enablePanelLabels': 'Ativar rótulos traduzidos do painel',
        'translate.chooseTargets': 'Escolha quais nomes do banco devem ser traduzidos:',
        'translate.targets.variables': 'Nomes de variáveis',
        'translate.targets.switches': 'Nomes de interruptores',
        'translate.targets.items': 'Nomes de itens e armas',
        'translate.targets.maps': 'Nomes de mapas',
        'translate.gameTitle': 'Tradução de diálogos e escolhas',
        'translate.gameDesc': 'Jogo ao vivo',
        'translate.realtimeHooks': 'HOOKS EM TEMPO REAL:',
        'translate.dialogues': 'Diálogos',
        'translate.choices': 'Escolhas',
        'translate.scrollText': 'Texto rolante',
        'translate.manualTitle': 'Tradução manual',
        'translate.manualDesc': 'Cole texto e traduza',
        'translate.inputPlaceholder': 'Cole aqui o texto do RPG Maker...',
        'translate.outputPlaceholder': 'Saída da tradução...',
        'translate.status.idle': 'Tradutor inativo.',
        'translate.status.nothing': 'Nada para traduzir.',
        'translate.status.translating': 'Traduzindo...',
        'translate.status.complete': 'Tradução concluída.',
        'translate.status.cacheCleared': 'Cache de tradução limpo.',
        'translate.status.outputCopied': 'Saída copiada para a entrada.'
    },
    fr: {
        'common.refresh': 'Actualiser',
        'common.apply': 'Appliquer',
        'common.clear': 'Effacer',
        'common.delete': 'Supprimer',
        'common.save': 'Enregistrer',
        'common.load': 'Charger',
        'common.import': 'Importer',
        'common.export': 'Exporter',
        'common.translate': 'Traduire',
        'common.translating': 'Traduction...',
        'common.copyOutputToInput': 'Copier la sortie vers l’entrée',
        'common.enabled': 'Activé',
        'common.disabled': 'Désactivé',
        'common.provider': 'Fournisseur',
        'common.targetLanguage': 'Langue cible',
        'common.endpointUrl': 'URL de l’endpoint',
        'common.chunkSize': 'Taille du lot',
        'common.model': 'Modèle',
        'common.method': 'Méthode',
        'common.urlPattern': 'Modèle d’URL',
        'common.postBodyPattern': 'Modèle de corps POST',
        'common.name': 'Nom',
        'common.description': 'Description',
        'common.value': 'Valeur',
        'common.state': 'État',
        'common.actions': 'Actions',
        'common.addr': 'Adr',
        'common.id': 'ID',
        'common.page': 'Page',
        'common.go': 'Aller',
        'common.status': 'Statut',
        'common.output': 'Sortie',
        'common.history': 'Historique',
        'common.on': 'ON',
        'common.off': 'OFF',
        'common.frozen': 'Gelé',
        'common.changed': 'Modifié',
        'common.all': 'Tout',
        'common.set': 'Définir',
        'common.add': 'Ajouter',
        'common.remove': 'Retirer',
        'common.takeSnapshot': 'Capturer',
        'common.clearSnapshot': 'Effacer la capture',
        'common.lockFreeze': 'Verrouiller/Geler',
        'common.selectAll': 'Tout sélectionner',
        'common.selectForBatch': 'Sélectionner pour lot',
        'common.pageSummary': 'Lignes {start}-{end} sur {total} / Page {page} sur {pages}',
        'common.pageSize': '{count} / page',
        'inventory.title': 'Inventaire',
        'inventory.kind.items': 'Objets',
        'inventory.kind.weapons': 'Armes',
        'inventory.kind.armors': 'Armures',
        'inventory.searchPlaceholder': 'Rechercher nom, ID ou description',
        'inventory.amountPlaceholder': 'quantité',
        'inventory.applyVisible': 'Appliquer aux visibles',
        'inventory.setVisible99': 'Mettre les visibles à 99',
        'inventory.clearVisible': 'Effacer visibles',
        'inventory.owned': 'Possédés',
        'inventory.empty': 'Aucune ligne d’inventaire trouvée.',
        'translate.centerTitle': 'Centre de traduction',
        'translate.clearCache': 'Vider le cache ({count})',
        'translate.manualTitle': 'Traduction manuelle',
        'translate.manualDesc': 'Collez du texte et traduisez',
        'translate.inputPlaceholder': 'Collez ici le texte RPG Maker...',
        'translate.outputPlaceholder': 'Résultat de traduction...',
        'translate.status.idle': 'Traducteur inactif.',
        'translate.status.nothing': 'Rien à traduire.',
        'translate.status.translating': 'Traduction...',
        'translate.status.complete': 'Traduction terminée.',
        'translate.status.cacheCleared': 'Cache de traduction vidé.',
        'translate.status.outputCopied': 'La sortie a été copiée vers l’entrée.'
    },
    ru: {
        'common.refresh': 'Обновить',
        'common.apply': 'Применить',
        'common.clear': 'Очистить',
        'common.delete': 'Удалить',
        'common.save': 'Сохранить',
        'common.load': 'Загрузить',
        'common.import': 'Импорт',
        'common.export': 'Экспорт',
        'common.translate': 'Перевести',
        'common.translating': 'Перевод...',
        'common.copyOutputToInput': 'Копировать вывод во ввод',
        'common.enabled': 'Включено',
        'common.disabled': 'Выключено',
        'common.provider': 'Провайдер',
        'common.targetLanguage': 'Целевой язык',
        'common.endpointUrl': 'URL endpoint',
        'common.chunkSize': 'Размер блока',
        'common.model': 'Модель',
        'common.method': 'Метод',
        'common.urlPattern': 'Шаблон URL',
        'common.postBodyPattern': 'Шаблон POST-тела',
        'common.name': 'Имя',
        'common.description': 'Описание',
        'common.value': 'Значение',
        'common.state': 'Состояние',
        'common.actions': 'Действия',
        'common.addr': 'Адр',
        'common.id': 'ID',
        'common.page': 'Страница',
        'common.go': 'Перейти',
        'common.status': 'Статус',
        'common.output': 'Вывод',
        'common.history': 'История',
        'common.on': 'ВКЛ',
        'common.off': 'ВЫКЛ',
        'common.frozen': 'Заморожено',
        'common.changed': 'Изменено',
        'common.all': 'Все',
        'common.set': 'Задать',
        'common.add': 'Добавить',
        'common.remove': 'Убрать',
        'common.takeSnapshot': 'Снимок',
        'common.clearSnapshot': 'Очистить снимок',
        'common.lockFreeze': 'Блок/Фриз',
        'common.selectAll': 'Выбрать все',
        'common.selectForBatch': 'Выбрать для пакета',
        'common.pageSummary': 'Строки {start}-{end} из {total} / Страница {page} из {pages}',
        'common.pageSize': '{count} / стр.',
        'inventory.title': 'Инвентарь',
        'inventory.kind.items': 'Предметы',
        'inventory.kind.weapons': 'Оружие',
        'inventory.kind.armors': 'Броня',
        'inventory.searchPlaceholder': 'Поиск по имени, ID или описанию',
        'inventory.amountPlaceholder': 'кол-во',
        'inventory.applyVisible': 'Применить к видимым',
        'inventory.setVisible99': 'Поставить видимым 99',
        'inventory.clearVisible': 'Очистить видимые',
        'inventory.owned': 'Есть',
        'inventory.empty': 'Строки инвентаря не найдены.',
        'translate.centerTitle': 'Центр перевода',
        'translate.clearCache': 'Очистить кэш ({count})',
        'translate.manualTitle': 'Ручной перевод',
        'translate.manualDesc': 'Вставьте текст и переведите',
        'translate.inputPlaceholder': 'Вставьте сюда текст RPG Maker...',
        'translate.outputPlaceholder': 'Результат перевода...',
        'translate.status.idle': 'Переводчик ожидает.',
        'translate.status.nothing': 'Нечего переводить.',
        'translate.status.translating': 'Перевод...',
        'translate.status.complete': 'Перевод завершён.',
        'translate.status.cacheCleared': 'Кэш перевода очищен.',
        'translate.status.outputCopied': 'Вывод скопирован во ввод.'
    },
    ar: {
        'common.refresh': 'تحديث',
        'common.apply': 'تطبيق',
        'common.clear': 'مسح',
        'common.delete': 'حذف',
        'common.save': 'حفظ',
        'common.load': 'تحميل',
        'common.import': 'استيراد',
        'common.export': 'تصدير',
        'common.translate': 'ترجمة',
        'common.translating': 'جارٍ الترجمة...',
        'common.copyOutputToInput': 'نسخ المخرجات إلى الإدخال',
        'common.enabled': 'مفعّل',
        'common.disabled': 'معطّل',
        'common.provider': 'المزوّد',
        'common.targetLanguage': 'اللغة الهدف',
        'common.endpointUrl': 'رابط الخدمة',
        'common.chunkSize': 'حجم الدفعة',
        'common.model': 'النموذج',
        'common.method': 'الطريقة',
        'common.urlPattern': 'نمط URL',
        'common.postBodyPattern': 'نمط جسم POST',
        'common.name': 'الاسم',
        'common.description': 'الوصف',
        'common.value': 'القيمة',
        'common.state': 'الحالة',
        'common.actions': 'الإجراءات',
        'common.addr': 'العنوان',
        'common.id': 'المعرف',
        'common.page': 'الصفحة',
        'common.go': 'اذهب',
        'common.status': 'الحالة',
        'common.output': 'المخرجات',
        'common.history': 'السجل',
        'common.on': 'تشغيل',
        'common.off': 'إيقاف',
        'common.frozen': 'مجمّد',
        'common.changed': 'متغيّر',
        'common.all': 'الكل',
        'common.set': 'تعيين',
        'common.add': 'إضافة',
        'common.remove': 'إزالة',
        'common.takeSnapshot': 'التقاط',
        'common.clearSnapshot': 'مسح اللقطة',
        'common.lockFreeze': 'قفل/تجميد',
        'common.selectAll': 'تحديد الكل',
        'common.selectForBatch': 'تحديد للتعديل الجماعي',
        'common.pageSummary': 'الصفوف {start}-{end} من {total} / الصفحة {page} من {pages}',
        'common.pageSize': '{count} / صفحة',
        'inventory.title': 'الجرد',
        'inventory.kind.items': 'العناصر',
        'inventory.kind.weapons': 'الأسلحة',
        'inventory.kind.armors': 'الدروع',
        'inventory.searchPlaceholder': 'ابحث بالاسم أو المعرف أو الوصف',
        'inventory.amountPlaceholder': 'الكمية',
        'inventory.applyVisible': 'تطبيق على الظاهر',
        'inventory.setVisible99': 'تعيين الظاهر إلى 99',
        'inventory.clearVisible': 'مسح الظاهر',
        'inventory.owned': 'المملوك',
        'inventory.empty': 'لم يتم العثور على صفوف جرد.',
        'translate.centerTitle': 'مركز الترجمة',
        'translate.clearCache': 'مسح التخزين المؤقت ({count})',
        'translate.manualTitle': 'ترجمة يدوية',
        'translate.manualDesc': 'الصق النص وترجمه',
        'translate.inputPlaceholder': 'الصق نص RPG Maker هنا...',
        'translate.outputPlaceholder': 'مخرجات الترجمة...',
        'translate.status.idle': 'المترجم في وضع الانتظار.',
        'translate.status.nothing': 'لا يوجد شيء للترجمة.',
        'translate.status.translating': 'جارٍ الترجمة...',
        'translate.status.complete': 'اكتملت الترجمة.',
        'translate.status.cacheCleared': 'تم مسح ذاكرة الترجمة المؤقتة.',
        'translate.status.outputCopied': 'تم نسخ المخرجات إلى الإدخال.'
    },
    hi: {
        'common.refresh': 'रीफ़्रेश',
        'common.apply': 'लागू करें',
        'common.clear': 'साफ़ करें',
        'common.delete': 'हटाएँ',
        'common.save': 'सहेजें',
        'common.load': 'लोड करें',
        'common.import': 'आयात',
        'common.export': 'निर्यात',
        'common.translate': 'अनुवाद',
        'common.translating': 'अनुवाद हो रहा है...',
        'common.copyOutputToInput': 'आउटपुट को इनपुट में कॉपी करें',
        'common.enabled': 'सक्रिय',
        'common.disabled': 'निष्क्रिय',
        'common.provider': 'प्रदाता',
        'common.targetLanguage': 'लक्ष्य भाषा',
        'common.endpointUrl': 'एंडपॉइंट URL',
        'common.chunkSize': 'चंक आकार',
        'common.model': 'मॉडल',
        'common.method': 'मेथड',
        'common.urlPattern': 'URL पैटर्न',
        'common.postBodyPattern': 'POST बॉडी पैटर्न',
        'common.name': 'नाम',
        'common.description': 'विवरण',
        'common.value': 'मान',
        'common.state': 'स्थिति',
        'common.actions': 'क्रियाएँ',
        'common.addr': 'पता',
        'common.id': 'ID',
        'common.page': 'पृष्ठ',
        'common.go': 'जाएँ',
        'common.status': 'स्थिति',
        'common.output': 'आउटपुट',
        'common.history': 'इतिहास',
        'common.on': 'चालू',
        'common.off': 'बंद',
        'common.frozen': 'जमा हुआ',
        'common.changed': 'बदला हुआ',
        'common.all': 'सभी',
        'common.set': 'सेट',
        'common.add': 'जोड़ें',
        'common.remove': 'हटाएँ',
        'common.takeSnapshot': 'स्नैपशॉट लें',
        'common.clearSnapshot': 'स्नैपशॉट साफ़ करें',
        'common.lockFreeze': 'लॉक/फ़्रीज़',
        'common.selectAll': 'सभी चुनें',
        'common.selectForBatch': 'बैच संपादन के लिए चुनें',
        'common.pageSummary': 'पंक्तियाँ {start}-{end} / {total} / पृष्ठ {page} / {pages}',
        'common.pageSize': '{count} / पृष्ठ',
        'inventory.title': 'इन्वेंटरी',
        'inventory.kind.items': 'आइटम',
        'inventory.kind.weapons': 'हथियार',
        'inventory.kind.armors': 'कवच',
        'inventory.searchPlaceholder': 'नाम, ID या विवरण खोजें',
        'inventory.amountPlaceholder': 'मात्रा',
        'inventory.applyVisible': 'दिखाई दे रहे पर लागू करें',
        'inventory.setVisible99': 'दिखाई दे रहे को 99 करें',
        'inventory.clearVisible': 'दिखाई दे रहे साफ़ करें',
        'inventory.owned': 'मालिकाना',
        'inventory.empty': 'कोई इन्वेंटरी पंक्ति नहीं मिली।',
        'translate.centerTitle': 'अनुवाद केंद्र',
        'translate.clearCache': 'कैश साफ़ करें ({count})',
        'translate.manualTitle': 'मैनुअल अनुवाद',
        'translate.manualDesc': 'टेक्स्ट पेस्ट करें और अनुवाद करें',
        'translate.inputPlaceholder': 'RPG Maker टेक्स्ट यहाँ पेस्ट करें...',
        'translate.outputPlaceholder': 'अनुवाद आउटपुट...',
        'translate.status.idle': 'अनुवादक खाली है।',
        'translate.status.nothing': 'अनुवाद के लिए कुछ नहीं है।',
        'translate.status.translating': 'अनुवाद हो रहा है...',
        'translate.status.complete': 'अनुवाद पूरा हुआ।',
        'translate.status.cacheCleared': 'अनुवाद कैश साफ़ किया गया।',
        'translate.status.outputCopied': 'आउटपुट को इनपुट में कॉपी किया गया।'
    },
    'zh-CN': {
        'common.refresh': '刷新',
        'common.apply': '应用',
        'common.clear': '清除',
        'common.delete': '删除',
        'common.save': '保存',
        'common.load': '加载',
        'common.import': '导入',
        'common.export': '导出',
        'common.translate': '翻译',
        'common.translating': '翻译中...',
        'common.copyOutputToInput': '将输出复制到输入',
        'common.enabled': '已启用',
        'common.disabled': '已禁用',
        'common.provider': '提供方',
        'common.targetLanguage': '目标语言',
        'common.endpointUrl': '接口 URL',
        'common.chunkSize': '分块大小',
        'common.model': '模型',
        'common.method': '方法',
        'common.urlPattern': 'URL 模式',
        'common.postBodyPattern': 'POST 请求体模式',
        'common.name': '名称',
        'common.description': '说明',
        'common.value': '值',
        'common.state': '状态',
        'common.actions': '操作',
        'common.addr': '地址',
        'common.id': 'ID',
        'common.page': '页',
        'common.go': '前往',
        'common.status': '状态',
        'common.output': '输出',
        'common.history': '历史',
        'common.on': '开',
        'common.off': '关',
        'common.frozen': '冻结',
        'common.changed': '已变化',
        'common.all': '全部',
        'common.set': '设置',
        'common.add': '添加',
        'common.remove': '移除',
        'common.takeSnapshot': '拍摄快照',
        'common.clearSnapshot': '清除快照',
        'common.lockFreeze': '锁定/冻结',
        'common.selectAll': '全选',
        'common.selectForBatch': '选择用于批量编辑',
        'common.pageSummary': '第 {start}-{end} 行，共 {total} 行 / 第 {page}/{pages} 页',
        'common.pageSize': '{count} / 页',
        'inventory.title': '物品栏',
        'inventory.kind.items': '道具',
        'inventory.kind.weapons': '武器',
        'inventory.kind.armors': '护甲',
        'inventory.searchPlaceholder': '搜索名称、ID 或描述',
        'inventory.amountPlaceholder': '数量',
        'inventory.applyVisible': '应用到可见项',
        'inventory.setVisible99': '将可见项设为 99',
        'inventory.clearVisible': '清除可见项',
        'inventory.owned': '拥有',
        'inventory.empty': '未找到物品栏行。',
        'translate.centerTitle': '翻译中心',
        'translate.clearCache': '清除缓存 ({count})',
        'translate.manualTitle': '手动翻译',
        'translate.manualDesc': '粘贴文本并翻译',
        'translate.inputPlaceholder': '在这里粘贴 RPG Maker 文本...',
        'translate.outputPlaceholder': '翻译输出...',
        'translate.status.idle': '翻译器空闲。',
        'translate.status.nothing': '没有可翻译的内容。',
        'translate.status.translating': '翻译中...',
        'translate.status.complete': '翻译完成。',
        'translate.status.cacheCleared': '翻译缓存已清除。',
        'translate.status.outputCopied': '已将输出复制到输入。'
    },
    ja: {
        'common.refresh': '更新',
        'common.apply': '適用',
        'common.clear': 'クリア',
        'common.delete': '削除',
        'common.save': '保存',
        'common.load': '読み込み',
        'common.import': 'インポート',
        'common.export': 'エクスポート',
        'common.translate': '翻訳',
        'common.translating': '翻訳中...',
        'common.copyOutputToInput': '出力を入力にコピー',
        'common.enabled': '有効',
        'common.disabled': '無効',
        'common.provider': 'プロバイダー',
        'common.targetLanguage': '対象言語',
        'common.endpointUrl': 'エンドポイントURL',
        'common.chunkSize': 'チャンクサイズ',
        'common.model': 'モデル',
        'common.method': 'メソッド',
        'common.urlPattern': 'URLパターン',
        'common.postBodyPattern': 'POSTボディパターン',
        'common.name': '名前',
        'common.description': '説明',
        'common.value': '値',
        'common.state': '状態',
        'common.actions': 'アクション',
        'common.addr': 'アドレス',
        'common.id': 'ID',
        'common.page': 'ページ',
        'common.go': '移動',
        'common.status': 'ステータス',
        'common.output': '出力',
        'common.history': '履歴',
        'common.on': 'オン',
        'common.off': 'オフ',
        'common.frozen': 'フリーズ中',
        'common.changed': '変更あり',
        'common.all': 'すべて',
        'common.set': '設定',
        'common.add': '追加',
        'common.remove': '削除',
        'common.total': '合計',
        'common.locked': 'ロック中',
        'common.takeSnapshot': 'スナップショット作成',
        'common.clearSnapshot': 'スナップショット削除',
        'common.lockFreeze': 'ロック/フリーズ',
        'common.selectAll': 'すべて選択',
        'common.selectForBatch': '一括編集用に選択',
        'common.pageSummary': '{total} 件中 {start}-{end} 行目 / {page} ページ中 {pages} ページ目',
        'common.pageSize': '{count} 件 / ページ',
        'inventory.title': 'インベントリ',
        'inventory.summaryVisible': '表示中: {count} / 種類: {kind}',
        'inventory.helper': '行レベルの数量操作が可能な高密度インベントリテーブル。',
        'inventory.kind.items': 'アイテム',
        'inventory.kind.weapons': '武器',
        'inventory.kind.armors': '防具',
        'inventory.searchPlaceholder': 'アイテム名、ID、説明で検索',
        'inventory.amountPlaceholder': '数量',
        'inventory.applyVisible': '表示中の項目に数量を適用',
        'inventory.setVisible99': '表示中の項目を99個にする',
        'inventory.clearVisible': '表示中の項目をクリア',
        'inventory.owned': '所持中',
        'inventory.empty': 'インベントリ行が見つかりません。',
        'inventory.noDescription': '説明なし',
        'inventory.meta.searchable': '検索テキスト',
        'variables.summary': '合計: {total} / ロック中: {locked}',
        'variables.helper': '一括編集、インライン値、ロック状態を備えた高密度変数テーブル。',
        'variables.searchPlaceholder': 'ID、名前、値で検索...',
        'variables.filter.all': 'すべて',
        'variables.filter.nonzero': '非ゼロ',
        'variables.filter.frozen': 'フリーズ中',
        'variables.filter.changed': '変更あり',
        'variables.sort.idAsc': 'ID 昇順',
        'variables.sort.idDesc': 'ID 降順',
        'variables.sort.valueAsc': '値 昇順',
        'variables.sort.valueDesc': '値 降順',
        'variables.sort.nameAsc': '名前 昇順',
        'variables.sort.nameDesc': '名前 降順',
        'variables.nameless': '名前なし',
        'variables.batch.set': '設定',
        'variables.batch.add': '加算',
        'variables.batch.sub': '減算',
        'variables.batch.mul': '乗算',
        'variables.batch.random': 'ランダム',
        'variables.batch.min': '最小値',
        'variables.batch.max': '最大値',
        'variables.batch.valuePlaceholder': '値',
        'variables.batch.apply': '適用 ({count})',
        'variables.empty': '変数が見つかりません。',
        'variables.meta.snapshotChanged': 'スナップショットから変更',
        'variables.meta.stable': '安定値',
        'switches.summary': '合計: {total} / ロック中: {locked}',
        'switches.helper': '高速オン/オフとロック状態を備えた高密度スイッチテーブル。',
        'switches.searchPlaceholder': 'ID、名前、状態で検索...',
        'switches.filter.all': 'すべて',
        'switches.filter.on': 'オン',
        'switches.filter.off': 'オフ',
        'switches.filter.frozen': 'フリーズ中',
        'switches.filter.changed': '変更あり',
        'switches.nameless': '名前なし',
        'switches.batch.on': 'オンにする ({count})',
        'switches.batch.off': 'オフにする',
        'switches.batch.toggle': '切り替え',
        'switches.empty': 'スイッチが見つかりません。',
        'switches.meta.snapshotChanged': 'スナップショットから変更',
        'switches.meta.currentOn': '現在オン',
        'switches.meta.currentOff': '現在オフ',
        'translate.centerTitle': '翻訳センター',
        'translate.clearCache': 'キャッシュをクリア ({count})',
        'translate.dbPanelTitle': 'データベース＆パネル翻訳',
        'translate.dbPanelDesc': 'ラベルとデータ',
        'translate.enablePanelLabels': 'パネルの翻訳ラベルを有効化',
        'translate.endpointPlaceholder': 'プロバイダーURL',
        'translate.chunkPlaceholder': 'チャンクサイズ',
        'translate.modelPlaceholder': 'モデル (例: qwen2.5:3b)',
        'translate.chooseTargets': '翻訳するデータベース名を選択してください:',
        'translate.targets.variables': '変数名',
        'translate.targets.switches': 'スイッチ名',
        'translate.targets.items': 'アイテム＆武器名',
        'translate.targets.maps': 'マップ名',
        'translate.gameTitle': '会話＆選択肢翻訳',
        'translate.gameDesc': 'リアルタイムゲーム',
        'translate.realtimeHooks': 'リアルタイムフック:',
        'translate.dialogues': '会話',
        'translate.choices': '選択肢',
        'translate.scrollText': 'スクロールテキスト',
        'translate.manualTitle': '手動翻訳',
        'translate.manualDesc': 'テキストを貼り付けて翻訳する',
        'translate.inputPlaceholder': 'ここにRPG Makerのテキストを貼り付け...',
        'translate.outputPlaceholder': '翻訳結果...',
        'translate.status.idle': '翻訳機アイドル中。',
        'translate.status.nothing': '翻訳する内容がありません。',
        'translate.status.translating': '翻訳中...',
        'translate.status.complete': '翻訳完了。',
        'translate.status.failed': '翻訳失敗: {message}',
        'translate.status.dbTranslating': 'データベース翻訳中...',
        'translate.status.dbComplete': 'データベース翻訳が成功しました。',
        'translate.status.dbFailed': 'データベース翻訳失敗: {message}',
        'translate.status.dbRestored': 'データベースを元に戻しました。',
        'translate.status.cacheCleared': '翻訳キャッシュをクリアしました。',
        'translate.status.outputCopied': '出力を入力にコピーしました。',
        'translate.status.namesNone': '翻訳する {kind} 名がありません。',
        'translate.status.namesTranslating': '名前翻訳中...',
        'translate.status.namesComplete': '{count} 個の {kind} 名を翻訳しました。',
        'translate.status.bulkFailed': '一括翻訳失敗: {message}',
        'translate.kind.variables': '変数',
        'translate.kind.switches': 'スイッチ',
        'translate.kind.inventory': 'インベントリ',
        'translate.kind.events': 'イベント',
        'log.shortcutsReset': 'ショートカットを初期設定に戻しました。',
        'log.snapshotCleared': 'スナップショットをクリアしました。',
        'log.locksCleared': 'すべてのロックをクリアしました。',
        'log.messageSkip': 'メッセージスキップ: {state}',
        'log.godModeActor': 'アクター {id} のゴッドモードを {state} に設定しました。',
        'log.playerSpeedLock': 'プレイヤースピードロック: {state}',
        'log.lockRemoved': 'ロック {key} を削除しました。',
        'log.playerSpeedSet': 'プレイヤースピードを x{value} に設定してロックしました。',
        'shortcuts.title': 'ショートカットマネージャー',
        'shortcuts.summary': '{count} 個のアクションが定義されています',
        'shortcuts.resetAll': 'デフォルトに戻す',
        'shortcuts.helper': '行をクリックしてから設定したいキーの組み合わせを押します。カスタムショートカットはJSコードも実行できます。',
        'shortcuts.recordingActive': '記録モード有効',
        'shortcuts.recordingHint': 'キーの組み合わせを押してください (ESC = キャンセル, Delete/Backspace = クリア)',
        'shortcuts.cancel': 'キャンセル',
        'shortcuts.searchPlaceholder': '検索: アクション名、キー...',
        'shortcuts.empty': '一致するショートカットが見つかりません。',
        'shortcuts.headers.action': 'アクション',
        'shortcuts.headers.description': '説明',
        'shortcuts.headers.assignedKey': '割り当てキー',
        'shortcuts.headers.operations': '操作',
        'shortcuts.required': '必須',
        'shortcuts.waiting': '待機中...',
        'shortcuts.conflict': '競合',
        'shortcuts.assign': '割り当て',
        'shortcuts.clearKey': 'クリア',
        'shortcuts.group.panel': 'パネル',
        'shortcuts.group.speed': '速度',
        'shortcuts.group.movement': '移動',
        'shortcuts.group.party': 'パーティ',
        'shortcuts.group.save': 'セーブ',
        'shortcuts.group.battle': '戦闘',
        'shortcuts.group.other': 'その他',
        'shortcuts.group.custom': 'カスタム',
        'shortcuts.def.togglePanel.label': 'パネル表示切替',
        'shortcuts.def.togglePanel.desc': 'コントロールセンターを表示または非表示にします',
        'shortcuts.def.speed1x.label': '速度 x1 (標準)',
        'shortcuts.def.speed1x.desc': 'ゲーム速度を x1 に設定します',
        'shortcuts.def.speed2x.label': '速度 x2',
        'shortcuts.def.speed2x.desc': 'ゲーム速度を x2 に設定します',
        'shortcuts.def.speed3x.label': '速度 x3',
        'shortcuts.def.speed3x.desc': 'ゲーム速度を x3 に設定します',
        'shortcuts.def.speed5x.label': '速度 x5',
        'shortcuts.def.speed5x.desc': 'ゲーム速度を x5 に設定します',
        'shortcuts.def.speedReset.label': '速度リセット',
        'shortcuts.def.speedReset.desc': 'ゲーム速度を x1 に戻します',
        'shortcuts.def.noClip.label': '壁抜け切り替え',
        'shortcuts.def.noClip.desc': '壁を通り抜けて歩く機能を有効または無効にします',
        'shortcuts.def.encounterToggle.label': 'エンカウント切り替え',
        'shortcuts.def.encounterToggle.desc': 'ランダムエンカウントを有効または無効にします',
        'shortcuts.def.healParty.label': 'パーティ回復',
        'shortcuts.def.healParty.desc': 'パーティ全員のHP/MPを回復します',
        'shortcuts.def.quickSave.label': 'クイックセーブ',
        'shortcuts.def.quickSave.desc': '選択したスロットに即座に保存します',
        'shortcuts.def.quickLoad.label': 'クイックロード',
        'shortcuts.def.quickLoad.desc': '選択したスロットから即座に読み込みます',
        'shortcuts.def.forceVictory.label': '強制勝利',
        'shortcuts.def.forceVictory.desc': '現在の戦闘に即座に勝利します',
        'shortcuts.def.forceDefeat.label': '強制敗北',
        'shortcuts.def.forceDefeat.desc': '現在の戦闘に即座に敗北します',
        'shortcuts.def.forceEscape.label': '強制逃走',
        'shortcuts.def.forceEscape.desc': '現在の戦闘から即座に逃走します',
        'shortcuts.def.woundAllEnemies.label': '敵のHPを1にする',
        'shortcuts.def.woundAllEnemies.desc': '戦闘中のすべての敵のHPを1に設定します',
        'shortcuts.def.recoverParty.label': 'パーティ完全全快',
        'shortcuts.def.recoverParty.desc': 'すべてのHPとMPを回復します',
        'shortcuts.def.snapshot.label': 'スナップショット作成',
        'shortcuts.def.snapshot.desc': '現在の変数とスイッチの値をキャプチャします',
        'shortcuts.def.custom.label': 'カスタムショートカット {index}',
        'shortcuts.def.custom.desc': '空スロット: ユーザー定義のJSコードを実行します'
    },
    ko: {
        'common.refresh': '새로고침',
        'common.apply': '적용',
        'common.clear': '지우기',
        'common.delete': '삭제',
        'common.save': '저장',
        'common.load': '불러오기',
        'common.import': '가져오기',
        'common.export': '내보내기',
        'common.translate': '번역',
        'common.translating': '번역 중...',
        'common.copyOutputToInput': '출력을 입력으로 복사',
        'common.enabled': '활성화됨',
        'common.disabled': '비활성화됨',
        'common.provider': '제공자',
        'common.targetLanguage': '대상 언어',
        'common.endpointUrl': '엔드포인트 URL',
        'common.chunkSize': '청크 크기',
        'common.model': '모델',
        'common.method': '메서드',
        'common.urlPattern': 'URL 패턴',
        'common.postBodyPattern': 'POST 본문 패턴',
        'common.name': '이름',
        'common.description': '설명',
        'common.value': '값',
        'common.state': '상태',
        'common.actions': '작업',
        'common.addr': '주소',
        'common.id': 'ID',
        'common.page': '페이지',
        'common.go': '이동',
        'common.status': '상태',
        'common.output': '출력',
        'common.history': '기록',
        'common.on': '켜짐',
        'common.off': '꺼짐',
        'common.frozen': '고정됨',
        'common.changed': '변경됨',
        'common.all': '전체',
        'common.set': '설정',
        'common.add': '추가',
        'common.remove': '제거',
        'common.total': '합계',
        'common.locked': '잠금됨',
        'common.takeSnapshot': '스냅샷 캡처',
        'common.clearSnapshot': '스냅샷 지우기',
        'common.lockFreeze': '잠금/고정',
        'common.selectAll': '전체 선택',
        'common.selectForBatch': '일괄 편집용 선택',
        'common.pageSummary': '{total}개 중 {start}-{end} 행 / {pages} 페이지 중 {page} 페이지',
        'common.pageSize': '{count}개 / 페이지',
        'inventory.title': '인벤토리',
        'inventory.summaryVisible': '{count}개 표시됨 / 종류: {kind}',
        'inventory.helper': '행 수준의 수량 작업이 가능한 고밀도 인벤토리 테이블.',
        'inventory.kind.items': '아이템',
        'inventory.kind.weapons': '무기',
        'inventory.kind.armors': '방어구',
        'inventory.searchPlaceholder': '아이템 이름, ID, 설명 검색',
        'inventory.amountPlaceholder': '수량',
        'inventory.applyVisible': '표시된 항목에 수량 적용',
        'inventory.setVisible99': '표시된 항목을 99로 설정',
        'inventory.clearVisible': '표시된 항목 비우기',
        'inventory.owned': '보유함',
        'inventory.empty': '인벤토리 행을 찾을 수 없습니다.',
        'inventory.noDescription': '설명 없음',
        'inventory.meta.searchable': '검색 가능한 텍스트',
        'variables.summary': '총: {total} / 잠금: {locked}',
        'variables.helper': '일괄 편집, 인라인 값 및 잠금 상태를 지원하는 고밀도 변수 테이블.',
        'variables.searchPlaceholder': 'ID, 이름, 값 검색...',
        'variables.filter.all': '전체',
        'variables.filter.nonzero': '0이 아님',
        'variables.filter.frozen': '고정됨',
        'variables.filter.changed': '변경됨',
        'variables.sort.idAsc': 'ID 오름차순',
        'variables.sort.idDesc': 'ID 내림차순',
        'variables.sort.valueAsc': '값 오름차순',
        'variables.sort.valueDesc': '값 내림차순',
        'variables.sort.nameAsc': '이름 오름차순',
        'variables.sort.nameDesc': '이름 내림차순',
        'variables.nameless': '이름 없음',
        'variables.batch.set': '설정',
        'variables.batch.add': '더하기',
        'variables.batch.sub': '빼기',
        'variables.batch.mul': '곱하기',
        'variables.batch.random': '무작위',
        'variables.batch.min': '최소값',
        'variables.batch.max': '최대값',
        'variables.batch.valuePlaceholder': '값',
        'variables.batch.apply': '적용 ({count})',
        'variables.empty': '변수를 찾을 수 없습니다.',
        'variables.meta.snapshotChanged': '스냅샷 이후 변경됨',
        'variables.meta.stable': '안정된 값',
        'switches.summary': '총: {total} / 잠금: {locked}',
        'switches.helper': '빠른 ON/OFF 변경 및 잠금 상태를 지원하는 고밀도 스위치 테이블.',
        'switches.searchPlaceholder': 'ID, 이름, 상태 검색...',
        'switches.filter.all': '전체',
        'switches.filter.on': '켜짐',
        'switches.filter.off': '꺼짐',
        'switches.filter.frozen': '고정됨',
        'switches.filter.changed': '변경됨',
        'switches.nameless': '이름 없음',
        'switches.batch.on': '켜짐으로 설정 ({count})',
        'switches.batch.off': '꺼짐으로 설정',
        'switches.batch.toggle': '토글',
        'switches.empty': '스위치를 찾을 수 없습니다.',
        'switches.meta.snapshotChanged': '스냅샷 이후 변경됨',
        'switches.meta.currentOn': '현재 켜짐',
        'switches.meta.currentOff': '현재 꺼짐',
        'translate.centerTitle': '번역 센터',
        'translate.clearCache': '캐시 지우기 ({count})',
        'translate.dbPanelTitle': '데이터베이스 & 패널 번역',
        'translate.dbPanelDesc': '레이블 & 데이터',
        'translate.enablePanelLabels': '번역된 패널 레이블 활성화',
        'translate.endpointPlaceholder': '제공자 URL',
        'translate.chunkPlaceholder': '청크 크기',
        'translate.modelPlaceholder': '모델 (예: qwen2.5:3b)',
        'translate.chooseTargets': '번역할 데이터베이스 이름을 선택하세요:',
        'translate.targets.variables': '변수 이름',
        'translate.targets.switches': '스위치 이름',
        'translate.targets.items': '아이템 & 무기 이름',
        'translate.targets.maps': '맵 이름',
        'translate.gameTitle': '대화 & 선택지 번역',
        'translate.gameDesc': '실시간 게임',
        'translate.realtimeHooks': '실시간 훅:',
        'translate.dialogues': '대화',
        'translate.choices': '선택지',
        'translate.scrollText': '스크롤 텍스트',
        'translate.manualTitle': '수동 번역',
        'translate.manualDesc': '텍스트를 붙여넣고 번역',
        'translate.inputPlaceholder': '여기에 RPG Maker 텍스트를 붙여넣으세요...',
        'translate.outputPlaceholder': '번역 결과...',
        'translate.status.idle': '번역기 대기 중.',
        'translate.status.nothing': '번역할 내용이 없습니다.',
        'translate.status.translating': '번역 중...',
        'translate.status.complete': '번역 완료.',
        'translate.status.failed': '번역 실패: {message}',
        'translate.status.dbTranslating': '데이터베이스 번역 중...',
        'translate.status.dbComplete': '데이터베이스 번역 성공.',
        'translate.status.dbFailed': '데이터베이스 번역 실패: {message}',
        'translate.status.dbRestored': '데이터베이스가 원래대로 복원되었습니다.',
        'translate.status.cacheCleared': '번역 캐시가 삭제되었습니다.',
        'translate.status.outputCopied': '출력이 입력으로 복사되었습니다.',
        'translate.status.namesNone': '번역할 {kind} 이름이 없습니다.',
        'translate.status.namesTranslating': '이름 번역 중...',
        'translate.status.namesComplete': '{count}개의 {kind} 이름이 번역되었습니다.',
        'translate.status.bulkFailed': '일괄 번역 실패: {message}',
        'translate.kind.variables': '변수',
        'translate.kind.switches': '스위치',
        'translate.kind.inventory': '인벤토리',
        'translate.kind.events': '이벤트',
        'log.shortcutsReset': '단축키가 기본값으로 복원되었습니다.',
        'log.snapshotCleared': '스냅샷이 삭제되었습니다.',
        'log.locksCleared': '모든 잠금이 해제되었습니다.',
        'log.messageSkip': '메시지 건너뛰기 {state}.',
        'log.godModeActor': '액터 {id}의 무적 모드가 {state}(으)로 설정되었습니다.',
        'log.playerSpeedLock': '플레이어 속도 고정 {state}.',
        'log.lockRemoved': '잠금 {key}이(가) 해제되었습니다.',
        'log.playerSpeedSet': '플레이어 속도가 x{value}(으)로 설정 및 고정되었습니다.',
        'shortcuts.title': '단축키 관리자',
        'shortcuts.summary': '{count}개의 작업 정의됨',
        'shortcuts.resetAll': '기본값으로 초기화',
        'shortcuts.helper': '행을 클릭한 다음 원하는 키 조합을 누릅니다. 사용자 정의 단축키는 JS 코드를 실행할 수도 있습니다.',
        'shortcuts.recordingActive': '녹화 모드 활성화됨',
        'shortcuts.recordingHint': '키 조합을 누르세요 (ESC = 취소, Delete/Backspace = 지우기)',
        'shortcuts.cancel': '취소',
        'shortcuts.searchPlaceholder': '검색: 작업 이름, 키...',
        'shortcuts.empty': '일치하는 단축키를 찾을 수 없습니다.',
        'shortcuts.headers.action': '작업',
        'shortcuts.headers.description': '설명',
        'shortcuts.headers.assignedKey': '할당된 키',
        'shortcuts.headers.operations': '작업',
        'shortcuts.required': '필수',
        'shortcuts.waiting': '대기 중...',
        'shortcuts.conflict': '충돌',
        'shortcuts.assign': '할당',
        'shortcuts.clearKey': '지우기',
        'shortcuts.group.panel': '패널',
        'shortcuts.group.speed': '속도',
        'shortcuts.group.movement': '이동',
        'shortcuts.group.party': '파티',
        'shortcuts.group.save': '저장',
        'shortcuts.group.battle': '전투',
        'shortcuts.group.other': '기타',
        'shortcuts.group.custom': '사용자 정의',
        'shortcuts.def.togglePanel.label': '패널 토글',
        'shortcuts.def.togglePanel.desc': '컨트롤 센터를 표시하거나 숨깁니다',
        'shortcuts.def.speed1x.label': '속도 x1 (보통)',
        'shortcuts.def.speed1x.desc': '게임 속도를 x1로 설정',
        'shortcuts.def.speed2x.label': '속도 x2',
        'shortcuts.def.speed2x.desc': '게임 속도를 x2로 설정',
        'shortcuts.def.speed3x.label': '속도 x3',
        'shortcuts.def.speed3x.desc': '게임 속도를 x3로 설정',
        'shortcuts.def.speed5x.label': '속도 x5',
        'shortcuts.def.speed5x.desc': '게임 속도를 x5로 설정',
        'shortcuts.def.speedReset.label': '속도 초기화',
        'shortcuts.def.speedReset.desc': '게임 속도를 x1로 복원',
        'shortcuts.def.noClip.label': '통과 모드 토글',
        'shortcuts.def.noClip.desc': '벽 통과 걷기 활성화 또는 비활성화',
        'shortcuts.def.encounterToggle.label': '인카운터 토글',
        'shortcuts.def.encounterToggle.desc': '무작위 인카운터 활성화 또는 비활성화',
        'shortcuts.def.healParty.label': '파티 치유',
        'shortcuts.def.healParty.desc': '전체 파티의 HP/MP 복원',
        'shortcuts.def.quickSave.label': '빠른 저장',
        'shortcuts.def.quickSave.desc': '선택한 슬롯에 즉시 저장',
        'shortcuts.def.quickLoad.label': '빠른 불러오기',
        'shortcuts.def.quickLoad.desc': '선택한 슬롯에서 즉시 불러오기',
        'shortcuts.def.forceVictory.label': '강제 승리',
        'shortcuts.def.forceVictory.desc': '현재 전투에서 즉시 승리',
        'shortcuts.def.forceDefeat.label': '강제 패배',
        'shortcuts.def.forceDefeat.desc': '현재 전투에서 즉시 패배',
        'shortcuts.def.forceEscape.label': '강제 도망',
        'shortcuts.def.forceEscape.desc': '현재 전투에서 즉시 도망',
        'shortcuts.def.woundAllEnemies.label': '모든 적 HP 1로 설정',
        'shortcuts.def.woundAllEnemies.desc': '전투 중인 모든 적의 HP를 1로 설정',
        'shortcuts.def.recoverParty.label': '파티 완전 회복',
        'shortcuts.def.recoverParty.desc': '모든 HP 및 MP 복원',
        'shortcuts.def.snapshot.label': '스냅샷 캡처',
        'shortcuts.def.snapshot.desc': '현재 변수 및 스위치 값 캡처',
        'shortcuts.def.custom.label': '사용자 정의 단축키 {index}',
        'shortcuts.def.custom.desc': '빈 슬롯: 사용자 정의 JS 코드 실행'
    }
}

const UI_PANEL_DICTIONARY = {
    en: {
        'common.cancel': 'Cancel',
        'common.class': 'Class',
        'common.level': 'Level',
        'common.currentValue': 'Current Value',
        'common.newValue': 'New Value',
        'common.empty': 'Empty',
        'common.unknown': 'Unknown',
        'render.brandSubtitle': 'ADEL9st / Runtime Companion',
        'render.badge.offlineCore': 'offline core',
        'render.badge.legacyFlow': 'legacy flow',
        'render.badge.shortcuts': 'F10 / Ctrl+C',
        'render.navFooterTop': 'legacy runtime flow',
        'render.navFooterBottom': 'shadow runtime',
        'render.goldLocked': 'locked',
        'render.goldEditable': 'editable',
        'render.changesLocks': '{changes} changes / {locks} locks',
        'deck.loadout.ghost.title': 'Ghost Walk',
        'deck.loadout.ghost.desc': 'No clip, no encounters, x1.6 speed.',
        'deck.loadout.rush.title': 'Rush Mode',
        'deck.loadout.rush.desc': 'x3 speed for fast routing.',
        'deck.loadout.vault.title': 'Vault Lock',
        'deck.loadout.vault.desc': 'Max gold and freeze wallet.',
        'deck.loadout.clean.title': 'Clean Reset',
        'deck.loadout.clean.desc': 'Normal speed, collision, encounters.',
        'deck.loadout.panic.title': 'Panic',
        'deck.loadout.panic.desc': 'Reset overrides and hide panel.',
        'deck.watcher.noSnapshotTitle': 'No snapshot yet.',
        'deck.watcher.noSnapshotHint': 'Capture one, then play to see changed variables and switches.',
        'deck.watcher.noChangesTitle': 'No changes since snapshot.',
        'deck.watcher.noChangesHint': 'The watcher is armed.',
        'deck.watcher.variable': 'Variable',
        'deck.watcher.switch': 'Switch',
        'deck.events.emptyTitle': 'No map events available.',
        'deck.events.emptyHint': 'Open this tab while on a map.',
        'deck.profiles.emptyTitle': 'No saved profiles.',
        'deck.profiles.emptyHint': 'Save the current state as a reusable profile.',
        'deck.profile.noClip': 'no clip',
        'deck.profile.collision': 'collision',
        'deck.profile.safe': 'safe',
        'deck.profile.encounters': 'encounters',
        'deck.hero.kicker': 'Runtime debugger overview',
        'deck.hero.note': 'Core movement, save/load, and quick interventions live here. Use Variables, Switches, Inventory, and Maps for deeper edits.',
        'deck.hero.partyMembers': '{count} party member(s)',
        'deck.signal.core': 'Core',
        'deck.signal.runtime': 'Runtime',
        'deck.signal.mode': 'Mode',
        'deck.mode.ghost': 'Ghost',
        'deck.mode.rush': 'Rush',
        'deck.mode.normal': 'Normal',
        'deck.command.placeholder': 'heal, ghost, rush, vault, clean, panic, speed 3, gold 999999, save 1, load 1',
        'deck.command.run': 'Run Command',
        'deck.metric.map': 'Map',
        'deck.metric.partyHp': 'Party HP',
        'deck.metric.members': '{count} members',
        'deck.metric.gold': 'Gold',
        'deck.metric.speed': 'Speed',
        'deck.presets.heading': 'Presets',
        'deck.presets.subheading': 'Quick companion presets',
        'deck.presets.helper': 'Load a prepared state first, then fine-tune it from the data tabs.',
        'deck.route.heading': 'Route Controls',
        'deck.route.subheading': 'Movement and session state',
        'deck.route.gameSpeed': 'Game speed',
        'deck.route.gameSpeedDesc': 'World update rate and route pacing.',
        'deck.route.playerSpeed': 'Player speed',
        'deck.route.playerSpeedDesc': 'Speed for player movement. Current: x{value}',
        'deck.route.traversal': 'Traversal',
        'deck.route.collisionDisabled': 'Collision disabled',
        'deck.route.collisionEnabled': 'Collision enabled',
        'deck.route.encountersOff': 'encounters off',
        'deck.route.encountersOn': 'encounters on',
        'deck.route.noClipOn': 'No Clip On',
        'deck.route.noClipOff': 'No Clip Off',
        'deck.route.encountersToggleOff': 'Encounters Off',
        'deck.route.encountersToggleOn': 'Encounters On',
        'deck.route.saveSlot': 'Save slot',
        'deck.route.saveSlotDesc': 'Quick save/load target for the current session.',
        'deck.actions.heading': 'Action Matrix',
        'deck.actions.subheading': 'One-click operations and fast jumps',
        'deck.actions.fullParty': 'Full party',
        'deck.actions.maxGold': 'Max gold',
        'deck.actions.snapshot': 'Snapshot',
        'deck.actions.saveScreen': 'Save screen',
        'deck.actions.loadScreen': 'Load screen',
        'deck.actions.mapsEvents': 'Maps / Events',
        'deck.actions.hide': 'Hide',
        'deck.log.heading': 'Session Log',
        'deck.log.subheading': 'Recent runtime actions',
        'deck.log.empty': 'No activity yet.',
        'deck.utilities.heading': 'Session Utilities',
        'deck.utilities.subheading': 'Scene flow and fallback actions',
        'deck.utilities.hidePanel': 'Hide panel',
        'watcher.summary': '{variables} variables / {switches} switches',
        'battle.subheading': 'Force ending or health control',
        'battle.inBattle': 'in battle',
        'battle.noBattle': 'no battle',
        'battle.forceVictory': 'Force Victory',
        'battle.forceDefeat': 'Force Defeat',
        'battle.forceEscape': 'Force Escape',
        'battle.forceAbort': 'Force Abort',
        'battle.setHp': 'Set HP value',
        'battle.hpPlaceholder': 'value (e.g. 1, 9999)',
        'battle.setPartyHp': 'Set Party HP',
        'battle.setEnemyHp': 'Set Enemy HP',
        'battle.messageSkip': 'Message & Battle Skip',
        'battle.messageSkipOn': 'Message Skip On',
        'battle.messageSkipOff': 'Message Skip Off',
        'battle.godModeActors': 'God Mode Actors',
        'battle.togglePerMember': 'Toggle per member',
        'battle.noPartyTitle': 'No party members found.',
        'battle.noPartyHint': 'Load a game first.',
        'battle.godModeOn': 'God Mode: ON',
        'battle.godModeOff': 'God Mode: OFF',
        'battle.log.notInBattle': 'Not in battle.',
        'battle.log.victory': 'Forced battle victory.',
        'battle.log.defeat': 'Forced battle defeat.',
        'battle.log.escape': 'Forced battle escape.',
        'battle.log.abort': 'Forced battle abort.',
        'battle.log.setHp': 'Set {target} HP to {amount}.',
        'automation.heading': 'Automation',
        'automation.subheading': 'Preset, custom rule, and macro builder',
        'automation.presets.subheading': 'Quick apply',
        'automation.custom.heading': 'Custom automation',
        'automation.custom.subheading': 'Build your own repeat rule',
        'automation.namePlaceholder': 'Automation name',
        'automation.intervalPlaceholder': 'Interval ms',
        'automation.idPlaceholder': 'ID',
        'automation.valuePlaceholder': 'Value',
        'automation.active.heading': 'Active automations',
        'automation.active.subheading': '{count} configured',
        'automation.active.emptyTitle': 'No active automations.',
        'automation.active.emptyHint': 'Create one from presets or the custom builder.',
        'automation.running': 'running',
        'automation.disabled': 'disabled',
        'automation.enable': 'Enable',
        'automation.disable': 'Disable',
        'automation.macro.heading': 'Macro builder',
        'automation.macro.subheading': 'Run ordered steps once',
        'automation.macro.delayPlaceholder': 'Delay ms',
        'automation.macro.addStep': 'Add step',
        'automation.macro.emptyTitle': 'No macro steps yet.',
        'automation.macro.emptyHint': 'Add a few steps and run the sequence.',
        'automation.macro.wait': '{duration}ms wait',
        'automation.macro.delayAfter': 'Delay after step: {duration}ms',
        'automation.macro.run': 'Run macro',
        'automation.macro.running': 'Running...',
        'automation.action.healParty': 'Heal Party',
        'automation.action.gainGold': 'Gain Gold',
        'automation.action.setGold': 'Set Gold',
        'automation.action.setVariable': 'Set Variable',
        'automation.action.setSwitch': 'Set Switch',
        'automation.action.setNoClip': 'Set No Clip',
        'automation.action.setGameSpeed': 'Set Game Speed',
        'automation.action.quickSave': 'Quick Save Slot',
        'automation.action.quickLoad': 'Quick Load Slot',
        'automation.action.noEncounter': 'Disable Encounters',
        'automation.action.wait': 'Wait',
        'automation.preset.autoHealParty.name': 'Auto Heal Party',
        'automation.preset.autoHealParty.desc': 'Fully restores party members health, mana, and TP every 3s.',
        'automation.preset.keepGold.name': 'Keep Gold Max',
        'automation.preset.keepGold.desc': 'Sets and locks gold to 999999 every 500ms.',
        'automation.preset.noEncounter.name': 'No Encounters',
        'automation.preset.noEncounter.desc': 'Disables random battle encounters every 1s.',
        'automation.preset.keepNoClip.name': 'Keep No Clip',
        'automation.preset.keepNoClip.desc': 'Ensures player noclip (no collision) is enabled every 1s.',
        'party.heading': 'Party Editor',
        'party.summary': '{party} in party / {actors} actors listed',
        'party.helper': 'Manage active members and adjust live levels directly from ADEL9st.',
        'party.searchPlaceholder': 'Search actor name, ID, class',
        'party.empty': 'No actor data found.',
        'party.subtab.stats': 'Base Stats',
        'party.subtab.equips': 'Equipment',
        'party.subtab.skills': 'Skills',
        'party.activeActor': 'active actor',
        'party.availableActor': 'available actor',
        'party.databaseClass': 'database class',
        'party.inParty': 'In party',
        'party.standby': 'Standby',
        'party.editor.title': 'Actor Stats Editor',
        'party.editor.emptyHint': 'Select an actor from the list above to edit their stats.',
        'party.editor.unavailable': 'Selected actor (ID: {id}) data is not available.',
        'party.editor.selected': 'Actor Stats Editor: {name}',
        'party.editor.deselect': 'Deselect',
        'party.editor.helper': 'Edit stats, equipment, and learned skills dynamically.',
        'party.base.levelExp': 'Level & EXP',
        'party.base.exp': 'Experience (EXP)',
        'party.base.godMode': 'God Mode',
        'party.base.godModeDesc': 'God Mode (Auto Recover HP/MP/TP)',
        'party.table.active': 'Active',
        'party.table.statName': 'Stat Name',
        'party.equip.slotTitle': 'Equip Slot: {name}',
        'party.equip.searchPlaceholder': 'Search database {kind}...',
        'party.equip.noItems': 'No items match query.',
        'party.equip.equip': 'Equip',
        'party.equip.selectSlot': 'Select an equipment slot',
        'party.equip.selectHint': 'Click the "Change" button on any slot to search and equip weapons or armors from the database.',
        'party.equip.slotType': 'Slot Type',
        'party.equip.equippedItem': 'Equipped Item',
        'party.equip.empty': 'Empty',
        'party.equip.change': 'Change',
        'party.skills.learned': 'Learned Skills',
        'party.skills.active': '{count} active',
        'party.skills.none': 'No skills learned yet.',
        'party.skills.forget': 'Forget',
        'party.skills.learnNew': 'Learn New Skill',
        'party.skills.searchPlaceholder': 'Search database skills...',
        'party.skills.noMatch': 'No skills match query.',
        'party.skills.learnedState': 'Learned',
        'party.skills.learn': 'Learn',
        'party.param.hp': 'HP (Current HP)',
        'party.param.mp': 'MP (Current MP)',
        'party.param.tp': 'TP (Current TP)',
        'party.param.mhp': 'M.HP (Max HP)',
        'party.param.mmp': 'M.MP (Max MP)',
        'party.param.atk': 'ATK (Attack)',
        'party.param.def': 'DEF (Defense)',
        'party.param.mat': 'M.ATK (Magic Atk)',
        'party.param.mdf': 'M.DEF (Magic Def)',
        'party.param.agi': 'AGI (Agility)',
        'party.param.luk': 'LUK (Luck)',
        'script.heading': 'Script Lab',
        'script.subheading': 'Runtime commands and config exchange',
        'script.presets.subheading': '{count} quick scripts',
        'script.runtimeConfig.heading': 'Runtime Config',
        'script.runtimeConfig.subheading': 'Export or import panel state',
        'script.javascript.subheading': 'Ctrl+Enter to run',
        'script.run': 'Run script',
        'script.clearOutput': 'Clear output',
        'script.output.subheading': 'Latest script result',
        'script.output.empty': 'No output yet.',
        'script.log.presetLoaded': 'Preset loaded: {name}',
        'script.log.configExported': 'Runtime config exported to Script Lab.',
        'script.log.configImported': 'Runtime config imported from Script Lab.',
        'script.log.importFailed': 'Runtime config import failed: {message}',
        'script.log.completed': 'Script completed.',
        'script.log.executed': 'Script Lab executed.',
        'script.log.failed': 'Script Lab failed: {message}',
        'script.preset.healParty.name': 'Full Party Heal',
        'script.preset.healParty.desc': 'Recover the full party and return a short status string.',
        'script.preset.allItems99.name': 'All Items 99',
        'script.preset.allItems99.desc': 'Fill every database item entry to 99.',
        'script.preset.clearStates.name': 'Clear States',
        'script.preset.clearStates.desc': 'Remove all states from current party members.',
        'script.preset.commonEvent.name': 'Run Common Event #1',
        'script.preset.commonEvent.desc': 'Reserve a common event directly from the runtime.',
        'profiles.subheading': 'Save and replay your setup',
        'profiles.saveCurrent': 'Save current',
        'events.saved.heading': 'Saved Locations',
        'events.saved.subheading': '{count} stored bookmarks',
        'events.aliasPlaceholder': 'Alias for current map position',
        'events.searchSavedPlaceholder': 'Search saved locations',
        'events.saved.emptyTitle': 'No saved locations yet.',
        'events.saved.emptyHint': 'Save your current position for quick return routes.',
        'events.mapFallback': 'Map {id}',
        'events.teleport': 'Teleport',
        'events.map.heading': 'Map Teleport',
        'events.map.subheading': '{count} maps indexed',
        'events.searchMapPlaceholder': 'Search map name or ID',
        'events.fullPath': 'Full Path',
        'events.map.empty': 'No maps found.',
        'events.current.heading': 'Current Map Events',
        'events.current.subheading': '{map} / {count} entries',
        'events.tracer.heading': 'Live Event Tracer',
        'events.tracer.clear': 'Clear History',
        'events.tracer.activeTitle': 'ACTIVE RUNNING EVENTS (THIS FRAME)',
        'events.tracer.noActive': 'No active running events.',
        'events.tracer.command': 'Cmd: {index}/{total} (Code: {code})',
        'events.tracer.historyTitle': 'EVENT TRIGGER HISTORY LOG (MAX 100)',
        'events.tracer.noHistory': 'No history captured yet.',
        'events.tracer.map': 'Map: {id}'
    },
    tr: {
        'common.cancel': 'Iptal',
        'common.class': 'Sinif',
        'common.level': 'Seviye',
        'common.currentValue': 'Mevcut Deger',
        'common.newValue': 'Yeni Deger',
        'common.empty': 'Bos',
        'common.unknown': 'Bilinmiyor',
        'render.brandSubtitle': 'ADEL9st / Runtime Companion',
        'render.badge.offlineCore': 'offline core',
        'render.badge.legacyFlow': 'legacy flow',
        'render.badge.shortcuts': 'F10 / Ctrl+C',
        'render.navFooterTop': 'legacy runtime flow',
        'render.navFooterBottom': 'shadow runtime',
        'render.goldLocked': 'kilitli',
        'render.goldEditable': 'duzenlenebilir',
        'render.changesLocks': '{changes} degisim / {locks} kilit',
        'deck.loadout.ghost.title': 'Hayalet Yuruyus',
        'deck.loadout.ghost.desc': 'No clip, encounter kapali, x1.6 hiz.',
        'deck.loadout.rush.title': 'Rush Modu',
        'deck.loadout.rush.desc': 'Hizli rota icin x3 hiz.',
        'deck.loadout.vault.title': 'Kasa Kilidi',
        'deck.loadout.vault.desc': 'Altini maxla ve cuzdani dondur.',
        'deck.loadout.clean.title': 'Temiz Sifirla',
        'deck.loadout.clean.desc': 'Normal hiz, carpisma, encounter acik.',
        'deck.loadout.panic.title': 'Panik',
        'deck.loadout.panic.desc': 'Override ayarlarini sifirla ve paneli gizle.',
        'deck.watcher.noSnapshotTitle': 'Henuz anlik goruntu yok.',
        'deck.watcher.noSnapshotHint': 'Bir tane al, sonra degisen degisken ve switchleri izle.',
        'deck.watcher.noChangesTitle': 'Anlik goruntuden beri degisim yok.',
        'deck.watcher.noChangesHint': 'Izleyici hazir.',
        'deck.watcher.variable': 'Degisken',
        'deck.watcher.switch': 'Switch',
        'deck.events.emptyTitle': 'Harita eventi bulunamadi.',
        'deck.events.emptyHint': 'Bu sekmeyi haritadayken ac.',
        'deck.profiles.emptyTitle': 'Kayitli profil yok.',
        'deck.profiles.emptyHint': 'Mevcut durumu tekrar kullanilabilir profil olarak kaydet.',
        'deck.profile.noClip': 'no clip',
        'deck.profile.collision': 'carpisma',
        'deck.profile.safe': 'guvenli',
        'deck.profile.encounters': 'encounter',
        'deck.hero.kicker': 'Runtime hata ayiklama genel gorunumu',
        'deck.hero.note': 'Temel hareket, save/load ve hizli mudahaleler burada. Daha derin duzenleme icin Variables, Switches, Inventory ve Maps sekmelerini kullan.',
        'deck.hero.partyMembers': '{count} parti uyesi',
        'deck.signal.core': 'Core',
        'deck.signal.runtime': 'Runtime',
        'deck.signal.mode': 'Mod',
        'deck.mode.ghost': 'Hayalet',
        'deck.mode.rush': 'Rush',
        'deck.mode.normal': 'Normal',
        'deck.command.placeholder': 'heal, ghost, rush, vault, clean, panic, speed 3, gold 999999, save 1, load 1',
        'deck.command.run': 'Komut Calistir',
        'deck.metric.map': 'Harita',
        'deck.metric.partyHp': 'Parti HP',
        'deck.metric.members': '{count} uye',
        'deck.metric.gold': 'Altin',
        'deck.metric.speed': 'Hiz',
        'deck.presets.heading': 'Hazirlar',
        'deck.presets.subheading': 'Hizli companion presetleri',
        'deck.presets.helper': 'Hazir bir durum yukle, sonra veri sekmelerinden ince ayar yap.',
        'deck.route.heading': 'Rota Kontrolleri',
        'deck.route.subheading': 'Hareket ve oturum durumu',
        'deck.route.gameSpeed': 'Oyun hizi',
        'deck.route.gameSpeedDesc': 'Dunya guncelleme hizi ve rota akisi.',
        'deck.route.playerSpeed': 'Oyuncu hizi',
        'deck.route.playerSpeedDesc': 'Oyuncu hareket hizi. Guncel: x{value}',
        'deck.route.traversal': 'Gecis',
        'deck.route.collisionDisabled': 'Carpisma kapali',
        'deck.route.collisionEnabled': 'Carpisma acik',
        'deck.route.encountersOff': 'encounter kapali',
        'deck.route.encountersOn': 'encounter acik',
        'deck.route.noClipOn': 'No Clip Acik',
        'deck.route.noClipOff': 'No Clip Kapali',
        'deck.route.encountersToggleOff': 'Encounter Kapali',
        'deck.route.encountersToggleOn': 'Encounter Acik',
        'deck.route.saveSlot': 'Kayit slotu',
        'deck.route.saveSlotDesc': 'Mevcut oturum icin hizli save/load hedefi.',
        'deck.actions.heading': 'Aksiyon Matrisi',
        'deck.actions.subheading': 'Tek tikla islem ve hizli gecisler',
        'deck.actions.fullParty': 'Tam parti',
        'deck.actions.maxGold': 'Altini maxla',
        'deck.actions.snapshot': 'Snapshot',
        'deck.actions.saveScreen': 'Ekrani kaydet',
        'deck.actions.loadScreen': 'Ekrani yukle',
        'deck.actions.mapsEvents': 'Haritalar / Eventler',
        'deck.actions.hide': 'Gizle',
        'deck.log.heading': 'Oturum Kaydi',
        'deck.log.subheading': 'Son runtime islemleri',
        'deck.log.empty': 'Henuz aktivite yok.',
        'deck.utilities.heading': 'Oturum Araclari',
        'deck.utilities.subheading': 'Sahne akisi ve yedek eylemler',
        'deck.utilities.hidePanel': 'Paneli gizle',
        'watcher.summary': '{variables} degisken / {switches} switch',
        'battle.subheading': 'Bitis zorlama ve can kontrolu',
        'battle.inBattle': 'savasta',
        'battle.noBattle': 'savas yok',
        'battle.forceVictory': 'Zafer Zorla',
        'battle.forceDefeat': 'Maglubiyet Zorla',
        'battle.forceEscape': 'Kacis Zorla',
        'battle.forceAbort': 'Iptal Zorla',
        'battle.setHp': 'HP degeri ayarla',
        'battle.hpPlaceholder': 'deger (orn. 1, 9999)',
        'battle.setPartyHp': 'Parti HP Ayarla',
        'battle.setEnemyHp': 'Dusman HP Ayarla',
        'battle.messageSkip': 'Mesaj ve Savas Atlama',
        'battle.messageSkipOn': 'Mesaj Atlama Acik',
        'battle.messageSkipOff': 'Mesaj Atlama Kapali',
        'battle.godModeActors': 'Tanri Modu Aktorleri',
        'battle.togglePerMember': 'Uye bazli ac/kapat',
        'battle.noPartyTitle': 'Parti uyesi bulunamadi.',
        'battle.noPartyHint': 'Once bir kayit yukle.',
        'battle.godModeOn': 'Tanri Modu: ACIK',
        'battle.godModeOff': 'Tanri Modu: KAPALI',
        'battle.log.notInBattle': 'Savas icinde degilsin.',
        'battle.log.victory': 'Savas zaferle zorlandi.',
        'battle.log.defeat': 'Savas maglubiyetle zorlandi.',
        'battle.log.escape': 'Savastan kacis zorlandi.',
        'battle.log.abort': 'Savas iptali zorlandi.',
        'battle.log.setHp': '{target} icin HP {amount} olarak ayarlandi.',
        'automation.heading': 'Otomasyon',
        'automation.subheading': 'Preset, ozel kural ve macro olusturucu',
        'automation.presets.subheading': 'Hizli uygula',
        'automation.custom.heading': 'Ozel otomasyon',
        'automation.custom.subheading': 'Kendi tekrar kuralini kur',
        'automation.namePlaceholder': 'Otomasyon adi',
        'automation.intervalPlaceholder': 'Aralik ms',
        'automation.idPlaceholder': 'ID',
        'automation.valuePlaceholder': 'Deger',
        'automation.active.heading': 'Aktif otomasyonlar',
        'automation.active.subheading': '{count} ayarli',
        'automation.active.emptyTitle': 'Aktif otomasyon yok.',
        'automation.active.emptyHint': 'Presetlerden ya da ozel kurucudan bir tane olustur.',
        'automation.running': 'calisiyor',
        'automation.disabled': 'kapali',
        'automation.enable': 'Ac',
        'automation.disable': 'Kapat',
        'automation.macro.heading': 'Macro kurucu',
        'automation.macro.subheading': 'Sirali adimlari bir kez calistir',
        'automation.macro.delayPlaceholder': 'Gecikme ms',
        'automation.macro.addStep': 'Adim ekle',
        'automation.macro.emptyTitle': 'Henuz macro adimi yok.',
        'automation.macro.emptyHint': 'Birkac adim ekle ve sirayi calistir.',
        'automation.macro.wait': '{duration}ms bekle',
        'automation.macro.delayAfter': 'Adim sonrasi gecikme: {duration}ms',
        'automation.macro.run': 'Macro calistir',
        'automation.macro.running': 'Calisiyor...',
        'automation.action.healParty': 'Partiyi Iyilestir',
        'automation.action.gainGold': 'Altin Ekle',
        'automation.action.setGold': 'Altin Ayarla',
        'automation.action.setVariable': 'Degisken Ayarla',
        'automation.action.setSwitch': 'Switch Ayarla',
        'automation.action.setNoClip': 'No Clip Ayarla',
        'automation.action.setGameSpeed': 'Oyun Hizini Ayarla',
        'automation.action.quickSave': 'Hizli Kayit Slotu',
        'automation.action.quickLoad': 'Hizli Yukleme Slotu',
        'automation.action.noEncounter': 'Encounter Kapat',
        'automation.action.wait': 'Bekle',
        'automation.preset.autoHealParty.name': 'Oto Parti Iyilestirme',
        'automation.preset.autoHealParty.desc': 'Her 3 sn tum parti uyelerinin HP, MP ve TP degerlerini yeniler.',
        'automation.preset.keepGold.name': 'Altini Maks Tut',
        'automation.preset.keepGold.desc': 'Her 500 ms altini 999999 yapar ve kilitler.',
        'automation.preset.noEncounter.name': 'Encounter Yok',
        'automation.preset.noEncounter.desc': 'Her 1 sn rastgele savaslari kapatir.',
        'automation.preset.keepNoClip.name': 'No Clip Sabit',
        'automation.preset.keepNoClip.desc': 'Her 1 sn carpisma atlamanin acik kalmasini saglar.',
        'party.heading': 'Parti Editoru',
        'party.summary': '{party} partide / {actors} aktor listelendi',
        'party.helper': 'Aktif uyeleri yonet ve canli seviyeleri dogrudan ADEL9st icinden duzenle.',
        'party.searchPlaceholder': 'Aktor adi, ID, sinif ara',
        'party.empty': 'Aktor verisi bulunamadi.',
        'party.subtab.stats': 'Temel Statlar',
        'party.subtab.equips': 'Ekipman',
        'party.subtab.skills': 'Yetenekler',
        'party.activeActor': 'aktif aktor',
        'party.availableActor': 'hazir aktor',
        'party.databaseClass': 'veritabani sinifi',
        'party.inParty': 'Partide',
        'party.standby': 'Yedekte',
        'party.editor.title': 'Aktor Stat Editoru',
        'party.editor.emptyHint': 'Statlarini duzenlemek icin yukaridan bir aktor sec.',
        'party.editor.unavailable': 'Secilen aktorun (ID: {id}) verisi kullanilabilir degil.',
        'party.editor.selected': 'Aktor Stat Editoru: {name}',
        'party.editor.deselect': 'Secimi kaldir',
        'party.editor.helper': 'Stat, ekipman ve ogrenilen yetenekleri canli olarak duzenle.',
        'party.base.levelExp': 'Seviye ve EXP',
        'party.base.exp': 'Deneyim (EXP)',
        'party.base.godMode': 'Tanri Modu',
        'party.base.godModeDesc': 'Tanri Modu (Oto HP/MP/TP Doldur)',
        'party.table.active': 'Aktif',
        'party.table.statName': 'Stat Adi',
        'party.equip.slotTitle': 'Ekipman Slotu: {name}',
        'party.equip.searchPlaceholder': 'Veritabaninda {kind} ara...',
        'party.equip.noItems': 'Sorguya uyan esya yok.',
        'party.equip.equip': 'Kusandir',
        'party.equip.selectSlot': 'Bir ekipman slotu sec',
        'party.equip.selectHint': 'Silah veya zirh aramak icin herhangi bir slottaki "Degistir" dugmesine tikla.',
        'party.equip.slotType': 'Slot Turu',
        'party.equip.equippedItem': 'Kusanilan Esya',
        'party.equip.empty': 'Bos',
        'party.equip.change': 'Degistir',
        'party.skills.learned': 'Ogrenilen Yetenekler',
        'party.skills.active': '{count} aktif',
        'party.skills.none': 'Henuz ogrenilen yetenek yok.',
        'party.skills.forget': 'Unut',
        'party.skills.learnNew': 'Yeni Yetenek Ogren',
        'party.skills.searchPlaceholder': 'Veritabaninda yetenek ara...',
        'party.skills.noMatch': 'Sorguya uyan yetenek yok.',
        'party.skills.learnedState': 'Ogrenildi',
        'party.skills.learn': 'Ogren',
        'party.param.hp': 'HP (Guncel HP)',
        'party.param.mp': 'MP (Guncel MP)',
        'party.param.tp': 'TP (Guncel TP)',
        'party.param.mhp': 'M.HP (Maks HP)',
        'party.param.mmp': 'M.MP (Maks MP)',
        'party.param.atk': 'ATK (Saldiri)',
        'party.param.def': 'DEF (Savunma)',
        'party.param.mat': 'M.ATK (Buyu Saldirisi)',
        'party.param.mdf': 'M.DEF (Buyu Savunmasi)',
        'party.param.agi': 'AGI (Ceviriklik)',
        'party.param.luk': 'LUK (Sans)',
        'script.heading': 'Script Lab',
        'script.subheading': 'Runtime komutlari ve config aktarimi',
        'script.presets.subheading': '{count} hizli script',
        'script.runtimeConfig.heading': 'Runtime Config',
        'script.runtimeConfig.subheading': 'Panel durumunu disa aktar veya ice al',
        'script.javascript.subheading': 'Calistirmak icin Ctrl+Enter',
        'script.run': 'Script calistir',
        'script.clearOutput': 'Ciktayi temizle',
        'script.output.subheading': 'Son script sonucu',
        'script.output.empty': 'Henuz cikti yok.',
        'script.log.presetLoaded': 'Preset yuklendi: {name}',
        'script.log.configExported': 'Runtime config Script Lab tarafina disa aktarildi.',
        'script.log.configImported': 'Runtime config Script Lab tarafindan ice alindi.',
        'script.log.importFailed': 'Runtime config ice aktarma basarisiz: {message}',
        'script.log.completed': 'Script tamamlandi.',
        'script.log.executed': 'Script Lab calisti.',
        'script.log.failed': 'Script Lab basarisiz: {message}',
        'script.preset.healParty.name': 'Tam Parti Iyilestir',
        'script.preset.healParty.desc': 'Tum partiyi iyilestir ve kisa bir durum metni dondur.',
        'script.preset.allItems99.name': 'Tum Esyalar 99',
        'script.preset.allItems99.desc': 'Veritabanindaki tum esyalari 99 yap.',
        'script.preset.clearStates.name': 'Durumlari Temizle',
        'script.preset.clearStates.desc': 'Mevcut parti uyelerinden tum durumlari kaldir.',
        'script.preset.commonEvent.name': 'Common Event #1 Calistir',
        'script.preset.commonEvent.desc': 'Runtime icinden dogrudan bir common event ayir.',
        'profiles.subheading': 'Kurulumunu kaydet ve tekrar oynat',
        'profiles.saveCurrent': 'Mevcut durumu kaydet',
        'events.saved.heading': 'Kayitli Konumlar',
        'events.saved.subheading': '{count} yer imi',
        'events.aliasPlaceholder': 'Mevcut harita konumu icin takma ad',
        'events.searchSavedPlaceholder': 'Kayitli konumlarda ara',
        'events.saved.emptyTitle': 'Henuz kayitli konum yok.',
        'events.saved.emptyHint': 'Hizli geri donus icin mevcut konumunu kaydet.',
        'events.mapFallback': 'Harita {id}',
        'events.teleport': 'Isinlan',
        'events.map.heading': 'Harita Isinlanma',
        'events.map.subheading': '{count} harita indekslendi',
        'events.searchMapPlaceholder': 'Harita adi veya ID ara',
        'events.fullPath': 'Tam Yol',
        'events.map.empty': 'Harita bulunamadi.',
        'events.current.heading': 'Mevcut Harita Eventleri',
        'events.current.subheading': '{map} / {count} girdi',
        'events.tracer.heading': 'Canli Event Izleyici',
        'events.tracer.clear': 'Gecmisi Temizle',
        'events.tracer.activeTitle': 'AKTIF CALISAN EVENTLER (BU FRAME)',
        'events.tracer.noActive': 'Aktif calisan event yok.',
        'events.tracer.command': 'Komut: {index}/{total} (Kod: {code})',
        'events.tracer.historyTitle': 'EVENT TETIK GECMIS KAYDI (MAKS 100)',
        'events.tracer.noHistory': 'Henuz gecmis yakalanmadi.',
        'events.tracer.map': 'Harita: {id}'
    },
    es: {
        'common.cancel': 'Cancelar',
        'common.class': 'Clase',
        'common.level': 'Nivel',
        'common.currentValue': 'Valor actual',
        'common.newValue': 'Valor nuevo',
        'common.empty': 'Vacio',
        'common.unknown': 'Desconocido',
        'render.brandSubtitle': 'ADEL9st / Runtime Companion',
        'render.badge.offlineCore': 'core offline',
        'render.badge.legacyFlow': 'flujo legacy',
        'render.badge.shortcuts': 'F10 / Ctrl+C',
        'render.navFooterTop': 'flujo runtime legacy',
        'render.navFooterBottom': 'runtime sombra',
        'render.goldLocked': 'bloqueado',
        'render.goldEditable': 'editable',
        'render.changesLocks': '{changes} cambios / {locks} bloqueos',
        'deck.hero.kicker': 'Resumen del depurador runtime',
        'deck.hero.note': 'Movimiento base, guardado/carga e intervenciones rapidas viven aqui. Usa Variables, Interruptores, Inventario y Mapas para ediciones profundas.',
        'deck.hero.partyMembers': '{count} miembros del grupo',
        'deck.command.run': 'Ejecutar comando',
        'deck.metric.map': 'Mapa',
        'deck.metric.partyHp': 'PS del grupo',
        'deck.metric.members': '{count} miembros',
        'deck.metric.gold': 'Oro',
        'deck.metric.speed': 'Velocidad',
        'watcher.summary': '{variables} variables / {switches} interruptores',
        'battle.subheading': 'Final forzado o control de salud',
        'battle.inBattle': 'en batalla',
        'battle.noBattle': 'sin batalla',
        'battle.forceVictory': 'Forzar victoria',
        'battle.forceDefeat': 'Forzar derrota',
        'battle.forceEscape': 'Forzar huida',
        'battle.forceAbort': 'Forzar cancelacion',
        'battle.setHp': 'Definir valor de PS',
        'battle.setPartyHp': 'Definir PS del grupo',
        'battle.setEnemyHp': 'Definir PS del enemigo',
        'battle.messageSkip': 'Omitir mensajes y batalla',
        'battle.godModeActors': 'Actores en modo dios',
        'battle.togglePerMember': 'Cambiar por miembro',
        'automation.heading': 'Automatizacion',
        'automation.subheading': 'Preset, regla personalizada y constructor de macros',
        'party.heading': 'Editor de grupo',
        'party.summary': '{party} en grupo / {actors} actores listados',
        'script.subheading': 'Comandos runtime e intercambio de configuracion',
        'profiles.subheading': 'Guardar y repetir tu configuracion',
        'events.saved.heading': 'Ubicaciones guardadas',
        'events.saved.subheading': '{count} marcadores',
        'events.map.heading': 'Teletransporte de mapa',
        'events.map.subheading': '{count} mapas indexados',
        'events.current.heading': 'Eventos del mapa actual',
        'events.tracer.heading': 'Trazador de eventos en vivo'
    },
    'pt-BR': {
        'common.cancel': 'Cancelar',
        'common.class': 'Classe',
        'common.level': 'Nivel',
        'common.currentValue': 'Valor atual',
        'common.newValue': 'Novo valor',
        'common.empty': 'Vazio',
        'common.unknown': 'Desconhecido',
        'render.brandSubtitle': 'ADEL9st / Runtime Companion',
        'render.badge.offlineCore': 'core offline',
        'render.badge.legacyFlow': 'fluxo legado',
        'render.badge.shortcuts': 'F10 / Ctrl+C',
        'render.navFooterTop': 'fluxo runtime legado',
        'render.navFooterBottom': 'runtime sombra',
        'render.goldLocked': 'travado',
        'render.goldEditable': 'editavel',
        'render.changesLocks': '{changes} mudancas / {locks} travas',
        'deck.hero.kicker': 'Visao geral do depurador runtime',
        'deck.hero.note': 'Movimento base, save/load e intervencoes rapidas vivem aqui. Use Variaveis, Interruptores, Inventario e Mapas para edicoes profundas.',
        'deck.hero.partyMembers': '{count} membros do grupo',
        'deck.command.run': 'Executar comando',
        'deck.metric.map': 'Mapa',
        'deck.metric.partyHp': 'HP do grupo',
        'deck.metric.members': '{count} membros',
        'deck.metric.gold': 'Ouro',
        'deck.metric.speed': 'Velocidade',
        'watcher.summary': '{variables} variaveis / {switches} interruptores',
        'battle.subheading': 'Encerrar a batalha ou controlar HP',
        'battle.inBattle': 'em batalha',
        'battle.noBattle': 'sem batalha',
        'battle.forceVictory': 'Forcar vitoria',
        'battle.forceDefeat': 'Forcar derrota',
        'battle.forceEscape': 'Forcar fuga',
        'battle.forceAbort': 'Forcar aborto',
        'battle.setHp': 'Definir valor de HP',
        'battle.setPartyHp': 'Definir HP do grupo',
        'battle.setEnemyHp': 'Definir HP do inimigo',
        'battle.messageSkip': 'Pular mensagem e batalha',
        'battle.godModeActors': 'Atores em modo deus',
        'battle.togglePerMember': 'Alternar por membro',
        'automation.heading': 'Automacao',
        'automation.subheading': 'Preset, regra personalizada e construtor de macro',
        'party.heading': 'Editor de grupo',
        'party.summary': '{party} no grupo / {actors} atores listados',
        'script.subheading': 'Comandos runtime e troca de configuracao',
        'profiles.subheading': 'Salvar e repetir sua configuracao',
        'events.saved.heading': 'Locais salvos',
        'events.saved.subheading': '{count} favoritos',
        'events.map.heading': 'Teleporte de mapa',
        'events.map.subheading': '{count} mapas indexados',
        'events.current.heading': 'Eventos do mapa atual',
        'events.tracer.heading': 'Rastreador de eventos ao vivo'
    },
    fr: {
        'common.cancel': 'Annuler',
        'common.class': 'Classe',
        'common.level': 'Niveau',
        'common.currentValue': 'Valeur actuelle',
        'common.newValue': 'Nouvelle valeur',
        'common.empty': 'Vide',
        'common.unknown': 'Inconnu',
        'render.brandSubtitle': 'ADEL9st / Runtime Companion',
        'render.badge.offlineCore': 'core hors ligne',
        'render.badge.legacyFlow': 'flux legacy',
        'render.badge.shortcuts': 'F10 / Ctrl+C',
        'render.navFooterTop': 'flux runtime legacy',
        'render.navFooterBottom': 'runtime fantome',
        'render.goldLocked': 'verrouille',
        'render.goldEditable': 'modifiable',
        'render.changesLocks': '{changes} changements / {locks} verrous',
        'deck.hero.kicker': 'Vue generale du debogueur runtime',
        'deck.hero.note': 'Le mouvement de base, save/load et les interventions rapides vivent ici. Utilisez Variables, Interrupteurs, Inventaire et Cartes pour des editions profondes.',
        'deck.hero.partyMembers': '{count} membres du groupe',
        'deck.command.run': 'Executer la commande',
        'deck.metric.map': 'Carte',
        'deck.metric.partyHp': 'PV du groupe',
        'deck.metric.members': '{count} membres',
        'deck.metric.gold': 'Or',
        'deck.metric.speed': 'Vitesse',
        'watcher.summary': '{variables} variables / {switches} interrupteurs',
        'battle.subheading': 'Fin forcee ou controle de sante',
        'battle.inBattle': 'en combat',
        'battle.noBattle': 'pas de combat',
        'battle.forceVictory': 'Forcer la victoire',
        'battle.forceDefeat': 'Forcer la defaite',
        'battle.forceEscape': 'Forcer la fuite',
        'battle.forceAbort': 'Forcer l arret',
        'battle.setHp': 'Definir la valeur HP',
        'battle.setPartyHp': 'Definir les HP du groupe',
        'battle.setEnemyHp': 'Definir les HP ennemis',
        'battle.messageSkip': 'Saut de message et combat',
        'battle.godModeActors': 'Acteurs en mode dieu',
        'battle.togglePerMember': 'Basculer par membre',
        'automation.heading': 'Automatisation',
        'automation.subheading': 'Preset, regle personnalisee et createur de macro',
        'party.heading': 'Editeur d equipe',
        'party.summary': '{party} dans le groupe / {actors} acteurs listes',
        'script.subheading': 'Commandes runtime et echange de configuration',
        'profiles.subheading': 'Enregistrer et rejouer votre configuration',
        'events.saved.heading': 'Lieux enregistres',
        'events.saved.subheading': '{count} marque-pages',
        'events.map.heading': 'Teleportation de carte',
        'events.map.subheading': '{count} cartes indexees',
        'events.current.heading': 'Evenements de la carte actuelle',
        'events.tracer.heading': 'Traceur d evenements en direct'
    },
    ru: {
        'common.cancel': 'Otmena',
        'common.class': 'Klass',
        'common.level': 'Uroven',
        'common.currentValue': 'Tekuschee znachenie',
        'common.newValue': 'Novoe znachenie',
        'common.empty': 'Pusto',
        'common.unknown': 'Neizvestno',
        'render.brandSubtitle': 'ADEL9st / Runtime Companion',
        'render.badge.offlineCore': 'offline core',
        'render.badge.legacyFlow': 'legacy flow',
        'render.badge.shortcuts': 'F10 / Ctrl+C',
        'render.navFooterTop': 'legacy runtime flow',
        'render.navFooterBottom': 'shadow runtime',
        'render.goldLocked': 'zablokirovano',
        'render.goldEditable': 'izmenyaemo',
        'render.changesLocks': '{changes} izmeneniy / {locks} blokirovok',
        'deck.hero.kicker': 'Obzor debuggera runtime',
        'deck.hero.note': 'Baza dvizheniya, save/load i bystrye vmeshatelstva zdes. Dlya glubokogo redaktirovaniya ispolzuyte Variables, Switches, Inventory i Maps.',
        'deck.hero.partyMembers': '{count} uchastnikov partii',
        'deck.command.run': 'Vypolnit komandu',
        'deck.metric.map': 'Karta',
        'deck.metric.partyHp': 'HP partii',
        'deck.metric.members': '{count} uchastnikov',
        'deck.metric.gold': 'Zoloto',
        'deck.metric.speed': 'Skorost',
        'watcher.summary': '{variables} peremennyh / {switches} pereklyuchateley',
        'battle.subheading': 'Prinuditelnoe zavershenie ili kontrol HP',
        'battle.inBattle': 'v boyu',
        'battle.noBattle': 'boia net',
        'battle.forceVictory': 'Prinudit pobedu',
        'battle.forceDefeat': 'Prinudit porazhenie',
        'battle.forceEscape': 'Prinudit begstvo',
        'battle.forceAbort': 'Prinudit otmenu',
        'battle.setHp': 'Ustanovit HP',
        'battle.setPartyHp': 'Ustanovit HP partii',
        'battle.setEnemyHp': 'Ustanovit HP vraga',
        'battle.messageSkip': 'Propusk soobscheniy i boya',
        'battle.godModeActors': 'Aktory rezhima boga',
        'battle.togglePerMember': 'Dlya kazhdogo uchastnika',
        'automation.heading': 'Avtomatizatsiya',
        'automation.subheading': 'Preset, svoe pravilo i konstruktor makrosov',
        'party.heading': 'Redaktor partii',
        'party.summary': '{party} v partii / {actors} akterov v spiske',
        'script.subheading': 'Komandy runtime i obmen konfiguratsiey',
        'profiles.subheading': 'Sohranit i povtorit vashu nastroiku',
        'events.saved.heading': 'Sohranennye tochki',
        'events.saved.subheading': '{count} zakladok',
        'events.map.heading': 'Teleport po karte',
        'events.map.subheading': '{count} kart proindeksirovano',
        'events.current.heading': 'Sobytiya tekuschei karty',
        'events.tracer.heading': 'Zhivoi trasser sobytiy'
    },
    ar: {
        'common.cancel': 'Ilagh',
        'common.class': 'Alfasl',
        'common.level': 'Almustawa',
        'common.currentValue': 'Alqima alhaliia',
        'common.newValue': 'Alqima aljadida',
        'common.empty': 'Farigh',
        'common.unknown': 'Majhool',
        'render.brandSubtitle': 'ADEL9st / Runtime Companion',
        'render.badge.offlineCore': 'offline core',
        'render.badge.legacyFlow': 'legacy flow',
        'render.badge.shortcuts': 'F10 / Ctrl+C',
        'render.navFooterTop': 'legacy runtime flow',
        'render.navFooterBottom': 'shadow runtime',
        'render.goldLocked': 'mughlaq',
        'render.goldEditable': 'qabil liltaedil',
        'render.changesLocks': '{changes} taghyir / {locks} aqfal',
        'deck.hero.kicker': 'nazra amma ldebugger runtime',
        'deck.hero.note': 'Alharaka alasasiya, save/load, waltadakhulat alsariea huna. Istakhdim Variables, Switches, Inventory wa Maps liltaedilat aleamiqa.',
        'deck.hero.partyMembers': '{count} aeda fi alfarika',
        'deck.command.run': 'Tashghil alamr',
        'deck.metric.map': 'Alkhareeta',
        'deck.metric.partyHp': 'HP alfarika',
        'deck.metric.members': '{count} aeda',
        'deck.metric.gold': 'Aldhahab',
        'deck.metric.speed': 'Alsurea',
        'watcher.summary': '{variables} mutaghayir / {switches} muftah',
        'battle.subheading': 'inha qasri aw tahakkum bialsihha',
        'battle.inBattle': 'fi almaeraka',
        'battle.noBattle': 'la maearka',
        'battle.forceVictory': 'ifrid alfawz',
        'battle.forceDefeat': 'ifrid alhazima',
        'battle.forceEscape': 'ifrid alhuroob',
        'battle.forceAbort': 'ifrid aliqaf',
        'battle.setHp': 'taayin qimat HP',
        'battle.setPartyHp': 'taayin HP lilfarika',
        'battle.setEnemyHp': 'taayin HP liladu',
        'battle.messageSkip': 'tajawuz alrisail w almaearka',
        'battle.godModeActors': 'mushariku wade alilh',
        'battle.togglePerMember': 'tabdil likul eudw',
        'automation.heading': 'Altamtata',
        'automation.subheading': 'preset wa qaeida khasah wabani macro',
        'party.heading': 'muharrir alfarika',
        'party.summary': '{party} fi alfarika / {actors} ممثل مدرج',
        'script.subheading': 'awamir runtime watabadul aliidad',
        'profiles.subheading': 'hifz waieadat tashghil iedadak',
        'events.saved.heading': 'amakin mahfuza',
        'events.saved.subheading': '{count} ishara',
        'events.map.heading': 'intiqal alkhareeta',
        'events.map.subheading': '{count} kharita mufahrasah',
        'events.current.heading': 'ahdath alkhareeta alhaliia',
        'events.tracer.heading': 'mutatabie alahdath almubashir'
    },
    hi: {
        'common.cancel': 'Radd',
        'common.class': 'Class',
        'common.level': 'Level',
        'common.currentValue': 'Vartaman maan',
        'common.newValue': 'Naya maan',
        'common.empty': 'Khali',
        'common.unknown': 'Agyat',
        'render.brandSubtitle': 'ADEL9st / Runtime Companion',
        'render.badge.offlineCore': 'offline core',
        'render.badge.legacyFlow': 'legacy flow',
        'render.badge.shortcuts': 'F10 / Ctrl+C',
        'render.navFooterTop': 'legacy runtime flow',
        'render.navFooterBottom': 'shadow runtime',
        'render.goldLocked': 'locked',
        'render.goldEditable': 'editable',
        'render.changesLocks': '{changes} badlav / {locks} lock',
        'deck.hero.kicker': 'runtime debugger overview',
        'deck.hero.note': 'Mool movement, save/load aur fast interventions yahin hain. Gehri editing ke liye Variables, Switches, Inventory aur Maps ka use karein.',
        'deck.hero.partyMembers': '{count} party member',
        'deck.command.run': 'Command chalayen',
        'deck.metric.map': 'Map',
        'deck.metric.partyHp': 'Party HP',
        'deck.metric.members': '{count} members',
        'deck.metric.gold': 'Gold',
        'deck.metric.speed': 'Speed',
        'watcher.summary': '{variables} variables / {switches} switches',
        'battle.subheading': 'Force ending ya health control',
        'battle.inBattle': 'battle mein',
        'battle.noBattle': 'battle nahin',
        'battle.forceVictory': 'Victory force karein',
        'battle.forceDefeat': 'Defeat force karein',
        'battle.forceEscape': 'Escape force karein',
        'battle.forceAbort': 'Abort force karein',
        'battle.setHp': 'HP value set karein',
        'battle.setPartyHp': 'Party HP set karein',
        'battle.setEnemyHp': 'Enemy HP set karein',
        'battle.messageSkip': 'Message aur battle skip',
        'battle.godModeActors': 'God mode actors',
        'battle.togglePerMember': 'Har member ke liye',
        'automation.heading': 'Automation',
        'automation.subheading': 'Preset, custom rule aur macro builder',
        'party.heading': 'Party Editor',
        'party.summary': '{party} party mein / {actors} actors listed',
        'script.subheading': 'Runtime commands aur config exchange',
        'profiles.subheading': 'Apna setup save aur replay karein',
        'events.saved.heading': 'Saved Locations',
        'events.saved.subheading': '{count} bookmarks',
        'events.map.heading': 'Map Teleport',
        'events.map.subheading': '{count} maps indexed',
        'events.current.heading': 'Current Map Events',
        'events.tracer.heading': 'Live Event Tracer'
    },
    'zh-CN': {
        'common.cancel': 'Qu xiao',
        'common.class': 'Zhiye',
        'common.level': 'Dengji',
        'common.currentValue': 'Dangqian zhi',
        'common.newValue': 'Xin zhi',
        'common.empty': 'Kong',
        'common.unknown': 'Weizhi',
        'render.brandSubtitle': 'ADEL9st / Runtime Companion',
        'render.badge.offlineCore': 'offline core',
        'render.badge.legacyFlow': 'legacy flow',
        'render.badge.shortcuts': 'F10 / Ctrl+C',
        'render.navFooterTop': 'legacy runtime flow',
        'render.navFooterBottom': 'shadow runtime',
        'render.goldLocked': 'yisuo ding',
        'render.goldEditable': 'ke bianji',
        'render.changesLocks': '{changes} bianhua / {locks} suoding',
        'deck.hero.kicker': 'runtime tiaoshi zonglan',
        'deck.hero.note': 'Jichu yidong, save/load he kuaisu ganyu dou zai zheli. Geng shenru de bianji qing yong Variables, Switches, Inventory he Maps.',
        'deck.hero.partyMembers': '{count} ming duiwu chengyuan',
        'deck.command.run': 'Yunxing mingling',
        'deck.metric.map': 'Ditu',
        'deck.metric.partyHp': 'Duiwu HP',
        'deck.metric.members': '{count} ming chengyuan',
        'deck.metric.gold': 'Jinbi',
        'deck.metric.speed': 'Sudu',
        'watcher.summary': '{variables} ge bianliang / {switches} ge kaiguan',
        'battle.subheading': 'Qiangzhi jieshu huo HP kongzhi',
        'battle.inBattle': 'zhandou zhong',
        'battle.noBattle': 'mei you zhandou',
        'battle.forceVictory': 'Qiangzhi shengli',
        'battle.forceDefeat': 'Qiangzhi shibai',
        'battle.forceEscape': 'Qiangzhi taopao',
        'battle.forceAbort': 'Qiangzhi zhongzhi',
        'battle.setHp': 'Shezhi HP zhi',
        'battle.setPartyHp': 'Shezhi duiwu HP',
        'battle.setEnemyHp': 'Shezhi diren HP',
        'battle.messageSkip': 'Xiaoxi yu zhandou tiaoguo',
        'battle.godModeActors': 'Wudi moshi juese',
        'battle.togglePerMember': 'An chengyuan qiehuan',
        'automation.heading': 'Zidonghua',
        'automation.subheading': 'Preset, zidingyi guize he macro builder',
        'party.heading': 'Duiwu bianjiqi',
        'party.summary': '{party} zai duiwu zhong / liechu {actors} ge juese',
        'script.subheading': 'Runtime mingling yu peizhi jiaohuan',
        'profiles.subheading': 'Baocun bing chongfang ni de setup',
        'events.saved.heading': 'Yi baocun weizhi',
        'events.saved.subheading': '{count} ge shuqian',
        'events.map.heading': 'Ditu chuansong',
        'events.map.subheading': 'yi suoyin {count} ge ditu',
        'events.current.heading': 'Dangqian ditu shijian',
        'events.tracer.heading': 'Shishi shijian zhuizong'
    },
    ja: {
        'common.cancel': 'キャンセル',
        'common.class': '職業',
        'common.level': 'レベル',
        'common.currentValue': '現在の値',
        'common.newValue': '新しい値',
        'common.empty': '空',
        'common.unknown': '不明',
        'render.brandSubtitle': 'ADEL9st / ランタイムコンパニオン',
        'render.badge.offlineCore': 'オフラインコア',
        'render.badge.legacyFlow': 'レガシーフロー',
        'render.badge.shortcuts': 'F10 / Ctrl+C',
        'render.navFooterTop': 'レガシーランタイムフロー',
        'render.navFooterBottom': 'シャドウランタイム',
        'render.goldLocked': 'ロック中',
        'render.goldEditable': '編集可能',
        'render.changesLocks': '変更 {changes} / ロック {locks}',
        'deck.loadout.ghost.title': 'ゴーストウォーク',
        'deck.loadout.ghost.desc': '壁抜け、エンカウントなし、速度 x1.6。',
        'deck.loadout.rush.title': 'ラッシュモード',
        'deck.loadout.rush.desc': '高速移動のための速度 x3。',
        'deck.loadout.vault.title': '金庫ロック',
        'deck.loadout.vault.desc': '所持金を最大にして固定。',
        'deck.loadout.clean.title': 'クリーンリセット',
        'deck.loadout.clean.desc': '標準速度、当たり判定あり、エンカウントあり。',
        'deck.loadout.panic.title': 'パニック',
        'deck.loadout.panic.desc': '上書き設定をリセットしてパネルを非表示。',
        'deck.watcher.noSnapshotTitle': 'スナップショットがまだありません。',
        'deck.watcher.noSnapshotHint': 'スナップショットを作成してプレイすると、変更された変数やスイッチが表示されます。',
        'deck.watcher.noChangesTitle': 'スナップショットからの変更はありません。',
        'deck.watcher.noChangesHint': 'ウォッチャーは待機中です。',
        'deck.watcher.variable': '変数',
        'deck.watcher.switch': 'スイッチ',
        'deck.events.emptyTitle': '利用可能なマップイベントがありません。',
        'deck.events.emptyHint': 'マップ上でこのタブを開いてください。',
        'deck.profiles.emptyTitle': '保存されたプロファイルがありません。',
        'deck.profiles.emptyHint': '現在の状態を再利用可能なプロファイルとして保存します。',
        'deck.profile.noClip': '壁抜け',
        'deck.profile.collision': '衝突判定',
        'deck.profile.safe': '安全',
        'deck.profile.encounters': 'エンカウント',
        'deck.hero.kicker': 'ランタイムデバッガー概要',
        'deck.hero.note': '基本的な移動、セーブ/ロード、クイック介入はここで行います。より詳細な編集には、変数、スイッチ、インベントリ、マップを使用してください。',
        'deck.hero.partyMembers': 'パーティメンバー {count} 名',
        'deck.signal.core': 'コア',
        'deck.signal.runtime': 'ランタイム',
        'deck.signal.mode': 'モード',
        'deck.mode.ghost': 'ゴースト',
        'deck.mode.rush': 'ラッシュ',
        'deck.mode.normal': 'ノーマル',
        'deck.command.placeholder': 'heal, ghost, rush, vault, clean, panic, speed 3, gold 999999, save 1, load 1',
        'deck.command.run': 'コマンド実行',
        'deck.metric.map': 'マップ',
        'deck.metric.partyHp': 'パーティ HP',
        'deck.metric.members': 'メンバー {count} 名',
        'deck.metric.gold': '所持金',
        'deck.metric.speed': '速度',
        'deck.presets.heading': 'プリセット',
        'deck.presets.subheading': 'クイックコンパニオンプリセット',
        'deck.presets.helper': 'まず用意された状態をロードし、その後データタブから微調整します。',
        'deck.route.heading': 'ルート操作',
        'deck.route.subheading': '移動とセッション状態',
        'deck.route.gameSpeed': 'ゲーム速度',
        'deck.route.gameSpeedDesc': 'ワールドの更新速度と進行ペース。',
        'deck.route.playerSpeed': 'プレイヤースピード',
        'deck.route.playerSpeedDesc': 'プレイヤーの移動速度。現在: x{value}',
        'deck.route.traversal': 'トラバーサル',
        'deck.route.collisionDisabled': '衝突判定無効',
        'deck.route.collisionEnabled': '衝突判定有効',
        'deck.route.encountersOff': 'エンカウント無効',
        'deck.route.encountersOn': 'エンカウント有効',
        'deck.route.noClipOn': '壁抜けオン',
        'deck.route.noClipOff': '壁抜けオフ',
        'deck.route.encountersToggleOff': 'エンカウント無効',
        'deck.route.encountersToggleOn': 'エンカウント有効',
        'deck.route.saveSlot': 'セーブスロット',
        'deck.route.saveSlotDesc': '現在のセッションのクイックセーブ/ロード対象。',
        'deck.actions.heading': 'アクションマトリクス',
        'deck.actions.subheading': 'ワンクリック操作とクイックジャンプ',
        'deck.actions.fullParty': 'パーティ全回復',
        'deck.actions.maxGold': '所持金最大',
        'deck.actions.snapshot': 'スナップショット',
        'deck.actions.saveScreen': 'セーブ画面',
        'deck.actions.loadScreen': 'ロード画面',
        'deck.actions.mapsEvents': 'マップ / イベント',
        'deck.actions.hide': '非表示',
        'deck.log.heading': 'セッションログ',
        'deck.log.subheading': '最近のランタイムアクション',
        'deck.log.empty': 'アクティビティはまだありません。',
        'deck.utilities.heading': 'セッションユーティリティ',
        'deck.utilities.subheading': 'シーンフローとフォールバックアクション',
        'deck.utilities.hidePanel': 'パネルを隠す',
        'watcher.summary': '変数 {variables} / スイッチ {switches}',
        'battle.subheading': '強制終了または体力操作',
        'battle.inBattle': '戦闘中',
        'battle.noBattle': '戦闘なし',
        'battle.forceVictory': '強制勝利',
        'battle.forceDefeat': '強制敗北',
        'battle.forceEscape': '強制逃走',
        'battle.forceAbort': '強制中断',
        'battle.setHp': 'HPの値を設定',
        'battle.hpPlaceholder': '値 (例: 1, 9999)',
        'battle.setPartyHp': '味方HP設定',
        'battle.setEnemyHp': '敵HP設定',
        'battle.messageSkip': 'メッセージ＆戦闘スキップ',
        'battle.messageSkipOn': 'メッセージスキップオン',
        'battle.messageSkipOff': 'メッセージスキップオフ',
        'battle.godModeActors': 'ゴッドモードアクター',
        'battle.togglePerMember': 'メンバーごとに切り替え',
        'battle.noPartyTitle': 'パーティメンバーが見つかりません。',
        'battle.noPartyHint': 'まずゲームをロードしてください。',
        'battle.godModeOn': 'ゴッドモード: オン',
        'battle.godModeOff': 'ゴッドモード: オフ',
        'battle.log.notInBattle': '戦闘中ではありません。',
        'battle.log.victory': '強制的に戦闘に勝利しました。',
        'battle.log.defeat': '強制的に戦闘に敗北しました。',
        'battle.log.escape': '強制的に戦闘から逃走しました。',
        'battle.log.abort': '強制的に戦闘を中断しました。',
        'battle.log.setHp': '{target} の HP を {amount} に設定しました。',
        'automation.heading': '自動化',
        'automation.subheading': 'プリセット、カスタムルール、マクロビルダー',
        'automation.presets.subheading': 'クイック適用',
        'automation.custom.heading': 'カスタム自動化',
        'automation.custom.subheading': '独自の繰り返しルールを作成',
        'automation.namePlaceholder': '自動化名',
        'automation.intervalPlaceholder': '間隔 ms',
        'automation.idPlaceholder': 'ID',
        'automation.valuePlaceholder': '値',
        'automation.active.heading': '有効な自動化',
        'automation.active.subheading': '{count} 個設定済み',
        'automation.active.emptyTitle': '有効な自動化はありません。',
        'automation.active.emptyHint': 'プリセットまたはカスタムビルダーから作成してください。',
        'automation.running': '実行中',
        'automation.disabled': '無効',
        'automation.enable': '有効化',
        'automation.disable': '無効化',
        'automation.macro.heading': 'マクロビルダー',
        'automation.macro.subheading': '順序付けられた手順を1回実行',
        'automation.macro.delayPlaceholder': '遅延 ms',
        'automation.macro.addStep': '手順を追加',
        'automation.macro.emptyTitle': 'マクロ手順がまだありません。',
        'automation.macro.emptyHint': 'いくつかの手順を追加してシーケンスを実行します。',
        'automation.macro.wait': '{duration}ms 待機',
        'automation.macro.delayAfter': '手順後の遅延: {duration}ms',
        'automation.macro.run': 'マクロ実行',
        'automation.macro.running': '実行中...',
        'automation.action.healParty': 'パーティ回復',
        'automation.action.gainGold': 'ゴールド獲得',
        'automation.action.setGold': 'ゴールド設定',
        'automation.action.setVariable': '変数設定',
        'automation.action.setSwitch': 'スイッチ設定',
        'automation.action.setNoClip': '壁抜け設定',
        'automation.action.setGameSpeed': 'ゲーム速度設定',
        'automation.action.quickSave': 'クイックセーブスロット',
        'automation.action.quickLoad': 'クイックロードスロット',
        'automation.action.noEncounter': 'エンカウント無効化',
        'automation.action.wait': '待機',
        'automation.preset.autoHealParty.name': '自動パーティ回復',
        'automation.preset.autoHealParty.desc': '3秒ごとにパーティメンバーのHP、MP、TPを完全に回復します。',
        'automation.preset.keepGold.name': 'ゴールド最大維持',
        'automation.preset.keepGold.desc': '500msごとにゴールドを999999に設定して固定します。',
        'automation.preset.noEncounter.name': 'エンカウントなし',
        'automation.preset.noEncounter.desc': '1秒ごとにランダムエンカウントを無効にします。',
        'automation.preset.keepNoClip.name': '壁抜け維持',
        'automation.preset.keepNoClip.desc': '1秒ごとにプレイヤーの壁抜けが有効であることを確認します。',
        'party.heading': 'パーティエディタ',
        'party.summary': 'パーティ内: {party} / 登録アクター: {actors}',
        'party.helper': 'アクティブメンバーの管理やレベル調整を、ADEL9stから直接行います。',
        'party.searchPlaceholder': 'アクター名、ID、職業で検索',
        'party.empty': 'アクターデータが見つかりません。',
        'party.subtab.stats': '基本ステータス',
        'party.subtab.equips': '装備',
        'party.subtab.skills': 'スキル',
        'party.activeActor': 'アクティブアクター',
        'party.availableActor': '待機アクター',
        'party.databaseClass': 'データベースクラス',
        'party.inParty': 'パーティ내',
        'party.standby': 'スタンドバイ',
        'party.editor.title': 'アクターステータスエディタ',
        'party.editor.emptyHint': '上のリストからアクターを選択してステータスを編集します。',
        'party.editor.unavailable': '選択したアクター (ID: {id}) のデータは利用できません。',
        'party.editor.selected': 'アクター個別編集: {name}',
        'party.editor.deselect': '選択解除',
        'party.editor.helper': 'ステータス、装備、習得スキルを動的に編集します。',
        'party.base.levelExp': 'レベル＆経験値',
        'party.base.exp': '経験値 (EXP)',
        'party.base.godMode': 'ゴッドモード',
        'party.base.godModeDesc': 'ゴッドモード (HP/MP/TP自動全回復)',
        'party.table.active': 'アクティブ',
        'party.table.statName': 'ステータス名',
        'party.equip.slotTitle': '装備スロット: {name}',
        'party.equip.searchPlaceholder': 'データベースの {kind} を検索...',
        'party.equip.noItems': '条件に一致する項目がありません。',
        'party.equip.equip': '装備する',
        'party.equip.selectSlot': '装備スロットを選択してください',
        'party.equip.selectHint': 'スロットの「変更」ボタンをクリックして、データベースから武器や防具を検索し装備します。',
        'party.equip.slotType': 'スロットタイプ',
        'party.equip.equippedItem': '装備中のアイテム',
        'party.equip.empty': '空スロット',
        'party.equip.change': '変更',
        'party.skills.learned': '習得済みスキル',
        'party.skills.active': '有効: {count}',
        'party.skills.none': '習得したスキルはまだありません。',
        'party.skills.forget': '忘れる',
        'party.skills.learnNew': '新しいスキルを習得',
        'party.skills.searchPlaceholder': 'データベーススキルを検索...',
        'party.skills.noMatch': '条件に一致するスキルがありません。',
        'party.skills.learnedState': '習得済み',
        'party.skills.learn': '習得',
        'party.param.hp': 'HP (現在HP)',
        'party.param.mp': 'MP (現在MP)',
        'party.param.tp': 'TP (現在TP)',
        'party.param.mhp': '最大HP',
        'party.param.mmp': '最大MP',
        'party.param.atk': '攻撃力',
        'party.param.def': '防御力',
        'party.param.mat': '魔法力',
        'party.param.mdf': '魔法防御',
        'party.param.agi': '敏捷性',
        'party.param.luk': '運',
        'script.heading': 'スクリプトラボ',
        'script.subheading': 'ランタイムコマンドと設定の交換',
        'script.presets.subheading': 'クイックスクリプト {count} 個',
        'script.runtimeConfig.heading': 'ランタイム設定',
        'script.runtimeConfig.subheading': 'パネル状態のエクスポートまたはインポート',
        'script.javascript.subheading': 'Ctrl+Enterで実行',
        'script.run': 'スクリプト実行',
        'script.clearOutput': '出力をクリア',
        'script.output.subheading': '最新のスクリプト実行結果',
        'script.output.empty': '出力はまだありません。',
        'script.log.presetLoaded': 'プリセットがロードされました: {name}',
        'script.log.configExported': 'ランタイム設定がスクリプトラボにエクスポートされました。',
        'script.log.configImported': 'ランタイム設定がスクリプトラボからインポートされました。',
        'script.log.importFailed': 'ランタイム設定のインポートに失敗しました: {message}',
        'script.log.completed': 'スクリプト完了。',
        'script.log.executed': 'スクリプトラボを実行しました。',
        'script.log.failed': 'スクリプトラボ実行失敗: {message}',
        'script.preset.healParty.name': 'パーティ全回復',
        'script.preset.healParty.desc': 'パーティ全員を回復し、簡易ステータスを返します。',
        'script.preset.allItems99.name': '全アイテム99個',
        'script.preset.allItems99.desc': 'データベースの全アイテムの所持数を99個にします。',
        'script.preset.clearStates.name': 'ステータス異常クリア',
        'script.preset.clearStates.desc': 'パーティ全員からすべてのステータス効果を除去します。',
        'script.preset.commonEvent.name': 'コモンイベント#1呼び出し',
        'script.preset.commonEvent.desc': 'ランタイムから直接コモンイベントを予約します。',
        'profiles.subheading': 'セットアップの保存と再適用',
        'profiles.saveCurrent': '現在の状態を保存',
        'events.saved.heading': '保存された位置',
        'events.saved.subheading': '保存されたブックマーク {count} 件',
        'events.aliasPlaceholder': '現在のマップ位置のエイリアス',
        'events.searchSavedPlaceholder': '保存された位置を検索',
        'events.saved.emptyTitle': '保存された位置はまだありません。',
        'events.saved.emptyHint': 'すばやく戻るために、現在の位置を保存します。',
        'events.mapFallback': 'マップ {id}',
        'events.teleport': 'テレポート',
        'events.map.heading': 'マップテレポート',
        'events.map.subheading': 'インデックスされたマップ {count} 件',
        'events.searchMapPlaceholder': 'マップ名またはIDで検索',
        'events.fullPath': 'フルパス',
        'events.map.empty': 'マップが見つかりません。',
        'events.current.heading': '現在のマップイベント',
        'events.current.subheading': '{map} / {count} エントリ',
        'events.tracer.heading': 'ライブイベントトレーサー',
        'events.tracer.clear': '履歴クリア',
        'events.tracer.activeTitle': 'アクティブ実行中イベント (このフレーム)',
        'events.tracer.noActive': 'アクティブな実行中イベントはありません。',
        'events.tracer.command': 'コマンド: {index}/{total} (コード: {code})',
        'events.tracer.historyTitle': 'イベント起動履歴ログ (最大100)',
        'events.tracer.noHistory': '履歴はまだありません。',
        'events.tracer.map': 'マップ: {id}'
    },
    ko: {
        'common.cancel': '취소',
        'common.class': '직업',
        'common.level': '레벨',
        'common.currentValue': '현재 값',
        'common.newValue': '새 값',
        'common.empty': '비어 있음',
        'common.unknown': '알 수 없음',
        'render.brandSubtitle': 'ADEL9st / 런타임 컴패니언',
        'render.badge.offlineCore': '오프라인 코어',
        'render.badge.legacyFlow': '레거시 흐름',
        'render.badge.shortcuts': 'F10 / Ctrl+C',
        'render.navFooterTop': '레거시 런타임 흐름',
        'render.navFooterBottom': '섀도 런타임',
        'render.goldLocked': '잠금됨',
        'render.goldEditable': '편집 가능',
        'render.changesLocks': '변경 {changes} / 잠금 {locks}',
        'deck.loadout.ghost.title': '유령 걷기',
        'deck.loadout.ghost.desc': '벽 통과, 인카운터 없음, 속도 x1.6.',
        'deck.loadout.rush.title': '러시 모드',
        'deck.loadout.rush.desc': '빠른 이동을 위한 속도 x3.',
        'deck.loadout.vault.title': '금고 잠금',
        'deck.loadout.vault.desc': '소지금을 최대치로 고정.',
        'deck.loadout.clean.title': '클린 초기화',
        'deck.loadout.clean.desc': '일반 속도, 충돌 활성화, 인카운터 활성화.',
        'deck.loadout.panic.title': '패닉',
        'deck.loadout.panic.desc': '덮어쓰기 설정을 초기화하고 패널 숨기기.',
        'deck.watcher.noSnapshotTitle': '아직 스냅샷이 없습니다.',
        'deck.watcher.noSnapshotHint': '스냅샷을 캡처한 후 플레이하여 변경된 변수와 스위치를 확인하세요.',
        'deck.watcher.noChangesTitle': '스냅샷 이후 변경 사항이 없습니다.',
        'deck.watcher.noChangesHint': '감시자가 대기 중입니다.',
        'deck.watcher.variable': '변수',
        'deck.watcher.switch': '스위치',
        'deck.events.emptyTitle': '사용 가능한 맵 이벤트가 없습니다.',
        'deck.events.emptyHint': '맵에 있을 때 이 탭을 여세요.',
        'deck.profiles.emptyTitle': '저장된 프로필이 없습니다.',
        'deck.profiles.emptyHint': '현재 상태를 재사용 가능한 프로필로 저장하세요.',
        'deck.profile.noClip': '벽 통과',
        'deck.profile.collision': '충돌 판정',
        'deck.profile.safe': '안전',
        'deck.profile.encounters': '인카운터',
        'deck.hero.kicker': '런타임 디버거 개요',
        'deck.hero.note': '기본 이동, 저장/불러오기, 빠른 개입이 여기에서 이루어집니다. 더 상세한 편집은 변수, 스위치, 인벤토리, 맵 탭을 사용하세요.',
        'deck.hero.partyMembers': '파티원 {count}명',
        'deck.signal.core': '코어',
        'deck.signal.runtime': '런타임',
        'deck.signal.mode': '모드',
        'deck.mode.ghost': '고스트',
        'deck.mode.rush': '러시',
        'deck.mode.normal': '일반',
        'deck.command.placeholder': 'heal, ghost, rush, vault, clean, panic, speed 3, gold 999999, save 1, load 1',
        'deck.command.run': '명령 실행',
        'deck.metric.map': '맵',
        'deck.metric.partyHp': '파티 HP',
        'deck.metric.members': '파티원 {count}명',
        'deck.metric.gold': '소지금',
        'deck.metric.speed': '속도',
        'deck.presets.heading': '프리셋',
        'deck.presets.subheading': '빠른 컴패니언 프리셋',
        'deck.presets.helper': '준비된 상태를 먼저 불러온 다음, 데이터 탭에서 미세 조정하세요.',
        'deck.route.heading': '경로 제어',
        'deck.route.subheading': '이동 및 세션 상태',
        'deck.route.gameSpeed': '게임 속도',
        'deck.route.gameSpeedDesc': '월드 업데이트 속도 및 이동 페이스.',
        'deck.route.playerSpeed': '플레이어 속도',
        'deck.route.playerSpeedDesc': '플레이어 이동 속도. 현재: x{value}',
        'deck.route.traversal': '이동 방식',
        'deck.route.collisionDisabled': '충돌 비활성화됨',
        'deck.route.collisionEnabled': '충돌 활성화됨',
        'deck.route.encountersOff': '인카운터 비활성화',
        'deck.route.encountersOn': '인카운터 활성화',
        'deck.route.noClipOn': '벽 통과 켬',
        'deck.route.noClipOff': '벽 통과 끎',
        'deck.route.encountersToggleOff': '인카운터 끎',
        'deck.route.encountersToggleOn': '인카운터 켬',
        'deck.route.saveSlot': '저장 슬롯',
        'deck.route.saveSlotDesc': '현재 세션을 위한 빠른 저장/불러오기 대상.',
        'deck.actions.heading': '작업 매트릭스',
        'deck.actions.subheading': '원클릭 작업 및 빠른 이동',
        'deck.actions.fullParty': '파티 전체 회복',
        'deck.actions.maxGold': '소지금 최대',
        'deck.actions.snapshot': '스냅샷',
        'deck.actions.saveScreen': '저장 화면',
        'deck.actions.loadScreen': '불러오기 화면',
        'deck.actions.mapsEvents': '맵 / 이벤트',
        'deck.actions.hide': '숨기기',
        'deck.log.heading': '세션 로그',
        'deck.log.subheading': '최근 런타임 작업',
        'deck.log.empty': '아직 활동 기록이 없습니다.',
        'deck.utilities.heading': '세션 유틸리티',
        'deck.utilities.subheading': '씬 흐름 및 예외 조치',
        'deck.utilities.hidePanel': '패널 숨기기',
        'watcher.summary': '변수 {variables}개 / 스위치 {switches}개',
        'battle.subheading': '강제 종료 또는 체력 제어',
        'battle.inBattle': '전투 중',
        'battle.noBattle': '전투 아님',
        'battle.forceVictory': '강제 승리',
        'battle.forceDefeat': '강제 패배',
        'battle.forceEscape': '강제 도주',
        'battle.forceAbort': '강제 중단',
        'battle.setHp': 'HP 값 설정',
        'battle.hpPlaceholder': '값 (예: 1, 9999)',
        'battle.setPartyHp': '파티 HP 설정',
        'battle.setEnemyHp': '적 HP 설정',
        'battle.messageSkip': '메시지 & 전투 건너뛰기',
        'battle.messageSkipOn': '메시지 건너뛰기 켬',
        'battle.messageSkipOff': '메시지 건너뛰기 끎',
        'battle.godModeActors': '무적 모드 액터',
        'battle.togglePerMember': '멤버별 토글',
        'battle.noPartyTitle': '파티원을 찾을 수 없습니다.',
        'battle.noPartyHint': '게임을 먼저 불러오세요.',
        'battle.godModeOn': '무적 모드: 켜짐',
        'battle.godModeOff': '무적 모드: 꺼짐',
        'battle.log.notInBattle': '전투 중이 아닙니다.',
        'battle.log.victory': '강제로 전투에서 승리했습니다.',
        'battle.log.defeat': '강제로 전투에서 패배했습니다.',
        'battle.log.escape': '강제로 전투에서 도주했습니다.',
        'battle.log.abort': '강제로 전투를 중단했습니다.',
        'battle.log.setHp': '{target}의 HP를 {amount}(으)로 설정했습니다.',
        'automation.heading': '자동화',
        'automation.subheading': '프리셋, 사용자 정의 규칙 및 매크로 빌더',
        'automation.presets.subheading': '빠른 적용',
        'automation.custom.heading': '사용자 정의 자동화',
        'automation.custom.subheading': '나만의 반복 규칙 빌드',
        'automation.namePlaceholder': '자동화 이름',
        'automation.intervalPlaceholder': '주기 ms',
        'automation.idPlaceholder': 'ID',
        'automation.valuePlaceholder': '값',
        'automation.active.heading': '활성 자동화',
        'automation.active.subheading': '{count}개 설정됨',
        'automation.active.emptyTitle': '활성화된 자동화가 없습니다.',
        'automation.active.emptyHint': '프리셋이나 사용자 정의 빌더에서 생성하세요.',
        'automation.running': '실행 중',
        'automation.disabled': '비활성화됨',
        'automation.enable': '활성화',
        'automation.disable': '비활성화',
        'automation.macro.heading': '매크로 빌더',
        'automation.macro.subheading': '순서대로 단계를 한 번 실행',
        'automation.macro.delayPlaceholder': '대기 ms',
        'automation.macro.addStep': '단계 추가',
        'automation.macro.emptyTitle': '아직 매크로 단계가 없습니다.',
        'automation.macro.emptyHint': '단계를 추가하고 시퀀스를 실행하세요.',
        'automation.macro.wait': '{duration}ms 대기',
        'automation.macro.delayAfter': '단계 후 대기: {duration}ms',
        'automation.macro.run': '매크로 실행',
        'automation.macro.running': '실행 중...',
        'automation.action.healParty': '파티 회복',
        'automation.action.gainGold': '골드 획득',
        'automation.action.setGold': '골드 설정',
        'automation.action.setVariable': '변수 설정',
        'automation.action.setSwitch': '스위치 설정',
        'automation.action.setNoClip': '벽 통과 설정',
        'automation.action.setGameSpeed': '게임 속도 설정',
        'automation.action.quickSave': '빠른 저장 슬롯',
        'automation.action.quickLoad': '빠른 불러오기 슬롯',
        'automation.action.noEncounter': '인카운터 비활성화',
        'automation.action.wait': '대기',
        'automation.preset.autoHealParty.name': '자동 파티 회복',
        'automation.preset.autoHealParty.desc': '3초마다 파티원의 HP, MP, TP를 완전히 회복합니다.',
        'automation.preset.keepGold.name': '골드 최대 유지',
        'automation.preset.keepGold.desc': '500ms마다 골드를 999999로 설정 및 고정합니다.',
        'automation.preset.noEncounter.name': '인카운터 없음',
        'automation.preset.noEncounter.desc': '1초마다 무작위 인카운터를 비활성화합니다.',
        'automation.preset.keepNoClip.name': '벽 통과 유지',
        'automation.preset.keepNoClip.desc': '1초마다 플레이어의 벽 통과 상태를 활성화합니다.',
        'party.heading': '파티 편집기',
        'party.summary': '파티 내: {party} / 등록된 액터: {actors}',
        'party.helper': '활성 멤버를 관리하고 레벨을 ADEL9st에서 직접 조정하세요.',
        'party.searchPlaceholder': '액터 이름, ID, 직업 검색',
        'party.empty': '액터 데이터를 찾을 수 없습니다.',
        'party.subtab.stats': '기본 능력치',
        'party.subtab.equips': '장비',
        'party.subtab.skills': '스킬',
        'party.activeActor': '활성 액터',
        'party.availableActor': '대기 액터',
        'party.databaseClass': '데이터베이스 직업',
        'party.inParty': '파티 내',
        'party.standby': '대기',
        'party.editor.title': '액터 능력치 편집기',
        'party.editor.emptyHint': '위 목록에서 액터를 선택하여 능력치를 편집하세요.',
        'party.editor.unavailable': '선택한 액터 (ID: {id})의 데이터를 사용할 수 없습니다.',
        'party.editor.selected': '액터 능력치 편집기: {name}',
        'party.editor.deselect': '선택 취소',
        'party.editor.helper': '능력치, 장비, 습득 스킬을 동적으로 편집합니다.',
        'party.base.levelExp': '레벨 및 경험치',
        'party.base.exp': '경험치 (EXP)',
        'party.base.godMode': '무적 모드',
        'party.base.godModeDesc': '무적 모드 (HP/MP/TP 자동 회복)',
        'party.table.active': '활성',
        'party.table.statName': '능력치 이름',
        'party.equip.slotTitle': '장비 슬롯: {name}',
        'party.equip.searchPlaceholder': '데이터베이스 {kind} 검색...',
        'party.equip.noItems': '일치하는 항목이 없습니다.',
        'party.equip.equip': '장착',
        'party.equip.selectSlot': '장비 슬롯을 선택하세요',
        'party.equip.selectHint': '슬롯의 "변경" 버튼을 클릭하여 데이터베이스에서 무기나 방어구를 검색하고 장착하세요.',
        'party.equip.slotType': '슬롯 유형',
        'party.equip.equippedItem': '장착된 아이템',
        'party.equip.empty': '비어 있음',
        'party.equip.change': '변경',
        'party.skills.learned': '습득한 스킬',
        'party.skills.active': '활성: {count}',
        'party.skills.none': '아직 습득한 스킬이 없습니다.',
        'party.skills.forget': '잊기',
        'party.skills.learnNew': '새 스킬 습득',
        'party.skills.searchPlaceholder': '데이터베이스 스킬 검색...',
        'party.skills.noMatch': '일치하는 스킬이 없습니다.',
        'party.skills.learnedState': '습득함',
        'party.skills.learn': '습득',
        'party.param.hp': 'HP (현재 HP)',
        'party.param.mp': 'MP (현재 MP)',
        'party.param.tp': 'TP (현재 TP)',
        'party.param.mhp': '최대 HP',
        'party.param.mmp': '최대 MP',
        'party.param.atk': '공격력',
        'party.param.def': '방어력',
        'party.param.mat': '마법 공격',
        'party.param.mdf': '마법 방어',
        'party.param.agi': '민첩성',
        'party.param.luk': '운',
        'script.heading': '스크립트 랩',
        'script.subheading': '런타임 명령 및 설정 교환',
        'script.presets.subheading': '빠른 스크립트 {count}개',
        'script.runtimeConfig.heading': '런타임 설정',
        'script.runtimeConfig.subheading': '패널 상태 내보내기 또는 가져오기',
        'script.javascript.subheading': 'Ctrl+Enter로 실행',
        'script.run': '스크립트 실행',
        'script.clearOutput': '출력 지우기',
        'script.output.subheading': '최근 스크립트 결과',
        'script.output.empty': '아직 출력이 없습니다.',
        'script.log.presetLoaded': '프리셋 로드됨: {name}',
        'script.log.configExported': '런타임 설정이 스크립트 랩으로 내보내졌습니다.',
        'script.log.configImported': '런타임 설정이 스크립트 랩에서 가져와졌습니다.',
        'script.log.importFailed': '런타임 설정 가져오기 실패: {message}',
        'script.log.completed': '스크립트 완료.',
        'script.log.executed': '스크립트 랩 실행됨.',
        'script.log.failed': '스크립트 랩 실패: {message}',
        'script.preset.healParty.name': '파티 전체 회복',
        'script.preset.healParty.desc': '파티 전체를 회복하고 짧은 상태 문자열을 반환합니다.',
        'script.preset.allItems99.name': '모든 아이템 99개',
        'script.preset.allItems99.desc': '데이터베이스의 모든 아이템 소지 개수를 99개로 채웁니다.',
        'script.preset.clearStates.name': '상태 이상 해제',
        'script.preset.clearStates.desc': '현재 파티원에게서 모든 상태 효과를 제거합니다.',
        'script.preset.commonEvent.name': '공통 이벤트 #1 실행',
        'script.preset.commonEvent.desc': '런타임에서 직접 공통 이벤트를 예약합니다.',
        'profiles.subheading': '설정 저장 및 다시 불러오기',
        'profiles.saveCurrent': '현재 상태 저장',
        'events.saved.heading': '저장된 위치',
        'events.saved.subheading': '저장된 북마크 {count}개',
        'events.aliasPlaceholder': '현재 맵 위치의 에일리언 명칭',
        'events.searchSavedPlaceholder': '저장된 위치 검색',
        'events.saved.emptyTitle': '아직 저장된 위치가 없습니다.',
        'events.saved.emptyHint': '빠른 복귀를 위해 현재 위치를 저장해 두세요.',
        'events.mapFallback': '맵 {id}',
        'events.teleport': '텔레포트',
        'events.map.heading': '맵 텔레포트',
        'events.map.subheading': '색인된 맵 {count}개',
        'events.searchMapPlaceholder': '맵 이름 또는 ID 검색',
        'events.fullPath': '전체 경로',
        'events.map.empty': '맵을 찾을 수 없습니다.',
        'events.current.heading': '현재 맵 이벤트',
        'events.current.subheading': '{map} / {count}개 항목',
        'events.tracer.heading': '실시간 이벤트 추적기',
        'events.tracer.clear': '기록 지우기',
        'events.tracer.activeTitle': '실시간 실행 중인 이벤트 (현재 프레임)',
        'events.tracer.noActive': '실시간으로 실행 중인 이벤트가 없습니다.',
        'events.tracer.command': '명령: {index}/{total} (코드: {code})',
        'events.tracer.historyTitle': '이벤트 트리거 내역 로그 (최대 100개)',
        'events.tracer.noHistory': '아직 캡처된 기록이 없습니다.',
        'events.tracer.map': '맵: {id}'
    }
}

Object.keys(UI_EXTENDED_DICTIONARY).forEach(lang => {
    UI_DICTIONARY[lang] = UI_DICTIONARY[lang] || {}
    Object.assign(UI_DICTIONARY[lang], UI_EXTENDED_DICTIONARY[lang])
})

Object.keys(UI_PANEL_DICTIONARY).forEach(lang => {
    UI_DICTIONARY[lang] = UI_DICTIONARY[lang] || {}
    Object.assign(UI_DICTIONARY[lang], UI_PANEL_DICTIONARY[lang])
})

function uiPageSummary (pageData) {
    return uiText('common.pageSummary', {
        start: pageData.startLabel,
        end: pageData.endLabel,
        total: pageData.totalRows,
        page: pageData.page,
        pages: pageData.totalPages
    })
}

function uiPageSizeOption (size) {
    if (size === 'all') {
        return uiText('common.all')
    }
    return uiText('common.pageSize', {count: size})
}

function uiInventoryKindName (kind) {
    const key = `inventory.kind.${kind}`
    const value = uiText(key)
    return value === key ? kind : value
}

function uiOnOffLabel (value) {
    return value ? uiText('common.on') : uiText('common.off')
}

function uiEnabledDisabledLabel (value) {
    return value ? uiText('common.enabled') : uiText('common.disabled')
}

function uiLanguageMeta (code) {
    return UI_LANGUAGES.find(meta => meta.value === code) || null
}

function detectBrowserUiLanguage () {
    const browserLang = text((navigator.language || 'en')).toLowerCase()
    for (let i = 0; i < UI_LANGUAGES.length; i++) {
        const meta = UI_LANGUAGES[i]
        if (meta.match.some(prefix => browserLang === prefix || browserLang.indexOf(prefix + '-') === 0)) {
            return meta.value
        }
    }
    return 'en'
}

function currentUiLanguage () {
    let lang = state.uiLanguage || 'auto'
    if (lang === 'auto') {
        lang = detectBrowserUiLanguage()
    }
    return Object.prototype.hasOwnProperty.call(UI_DICTIONARY, lang) ? lang : 'en'
}

function uiLanguageName (code) {
    if (code === 'auto') {
        return uiText('language.auto')
    }
    const meta = uiLanguageMeta(code)
    return meta ? meta.label : 'English'
}

function uiLanguageOptions () {
    return [
        {value: 'auto', label: uiText('language.auto')}
    ].concat(UI_LANGUAGES.map(meta => ({
        value: meta.value,
        label: meta.label
    })))
}

function uiText (key, vars) {
    const lang = currentUiLanguage()
    const table = UI_DICTIONARY[lang] || UI_DICTIONARY.en
    const fallback = UI_DICTIONARY.en[key] || key
    let value = table[key] || fallback
    if (vars && typeof vars === 'object') {
        Object.keys(vars).forEach(name => {
            value = value.replace(new RegExp(`\\{${name}\\}`, 'g'), text(vars[name]))
        })
    }
    return value
}
function allActorsData () {
    if (!exists('$dataActors')) {
        return []
    }

    const query = text(state.partySearch).trim().toLowerCase()
    return $dataActors.filter(actor => actor && actor.name).filter(actor => {
        const className = exists('$dataClasses') && $dataClasses[actor.classId] ? $dataClasses[actor.classId].name : ''
        const haystack = `${actor.id} ${actor.name} ${className}`.toLowerCase()
        return !query || haystack.includes(query)
    })
}

function actorClassName (actor) {
    if (!actor || !exists('$dataClasses')) {
        return 'Unknown'
    }
    return $dataClasses[actor.classId] ? $dataClasses[actor.classId].name : 'Unknown'
}

function partyActorIds () {
    if (!exists('$gameParty')) {
        return []
    }
    const members = typeof $gameParty.allMembers === 'function' ? $gameParty.allMembers() : partyMembers()
    return members.map(actor => actor && typeof actor.actorId === 'function' ? actor.actorId() : actor && actor._actorId).filter(Boolean)
}

function actorInParty (actorId) {
    return partyActorIds().includes(Number(actorId))
}

function actorLevel (actorId) {
    if (!exists('$gameActors')) {
        return 1
    }
    const actor = $gameActors.actor(Number(actorId))
    return actor ? Number(actor.level || 1) : 1
}

function setActorLevel (actorId, level) {
    if (!exists('$gameActors')) {
        log('Actor level change failed: actors are not ready.')
        return
    }

    const actor = $gameActors.actor(Number(actorId))
    const nextLevel = Math.max(1, Math.floor(Number(level) || 1))
    if (!actor || typeof actor.changeLevel !== 'function') {
        log(`Actor ${actorId} cannot change level here.`)
        return
    }

    actor.changeLevel(nextLevel, false)
    log(`Actor ${actorId} level set to ${nextLevel}.`)
}

function actorExp (actorId) {
    if (!exists('$gameActors')) return 0
    const actor = $gameActors.actor(Number(actorId))
    return actor && typeof actor.currentExp === 'function' ? actor.currentExp() : (actor ? (actor._exp && actor._exp[actor._classId] || 0) : 0)
}

function setActorExp (actorId, exp) {
    if (!exists('$gameActors')) {
        log('Actor EXP change failed: actors are not ready.')
        return
    }
    const actor = $gameActors.actor(Number(actorId))
    const nextExp = Math.max(0, Math.floor(Number(exp) || 0))
    if (!actor || typeof actor.changeExp !== 'function') {
        log(`Actor ${actorId} cannot change EXP.`)
        return
    }
    actor.changeExp(nextExp, false)
    log(`Actor ${actorId} EXP set to ${nextExp}.`)
}

function setActorParam (actorId, paramId, newValue) {
    if (!exists('$gameActors')) {
        log('Actor param change failed: actors are not ready.')
        return
    }
    const actor = $gameActors.actor(Number(actorId))
    if (!actor) return
    const val = Number(newValue)
    if (!Number.isFinite(val) || val < 0) return

    if (!actor._paramPlus) {
        actor._paramPlus = [0, 0, 0, 0, 0, 0, 0, 0]
    }

    const currentParam = actor.param(paramId)
    const currentPlus = actor._paramPlus[paramId] || 0
    const diff = val - currentParam

    if (typeof actor.addParam === 'function') {
        actor.addParam(paramId, diff)
    } else {
        actor._paramPlus[paramId] = currentPlus + diff
    }

    if (typeof actor.clearParamCache === 'function') {
        actor.clearParamCache()
    }

    log(`Actor ${actorId} param ${paramId} set to ${val}.`)
}

function toggleActorStatLock (actorId, id, isParam, paramName) {
    const key = isParam ? `actor-param:${actorId}:${id}` : `actor:${actorId}:${id}`
    if (state.freezeList[key]) {
        delete state.freezeList[key]
        log(`Unlocked Actor ${actorId} ${paramName || id}.`)
    } else {
        const actor = exists('$gameActors') ? $gameActors.actor(Number(actorId)) : null
        if (!actor) return
        let val = 0
        if (isParam) {
            val = actor.param(Number(id))
        } else {
            if (id === 'hp') val = actor.hp
            else if (id === 'mp') val = actor.mp
            else if (id === 'tp') val = actor.tp
        }
        state.freezeList[key] = {
            key: key,
            type: isParam ? 'actor-param' : 'actor',
            id: Number(actorId),
            field: isParam ? undefined : id,
            paramId: isParam ? Number(id) : undefined,
            value: val,
            name: `Actor ${actorId} ${paramName || id}`,
            enabled: true
        }
        log(`Locked Actor ${actorId} ${paramName || id} at ${val}.`)
    }
    saveState()
    draw()
}

function addActorToParty (actorId) {
    if (!exists('$gameParty') || typeof $gameParty.addActor !== 'function') {
        log('Party add failed: party is not ready.')
        return
    }
    $gameParty.addActor(Number(actorId))
    log(`Actor ${actorId} added to party.`)
}

function removeActorFromParty (actorId) {
    if (!exists('$gameParty') || typeof $gameParty.removeActor !== 'function') {
        log('Party remove failed: party is not ready.')
        return
    }
    $gameParty.removeActor(Number(actorId))
    log(`Actor ${actorId} removed from party.`)
}

function getActorEquips(actor) {
    if (!actor) return []
    const slots = actor.equipSlots ? actor.equipSlots() : []
    const equips = actor.equips ? actor.equips() : []
    return slots.map((slotType, index) => {
        const item = equips[index] || null
        const slotName = (exists('$dataSystem') && $dataSystem.equipTypes) ? $dataSystem.equipTypes[slotType] : `Slot ${index + 1}`
        const isWeapon = actor.isWeaponSlot ? actor.isWeaponSlot(index) : (index === 0)
        return {
            index: index,
            slotType: slotType,
            slotName: slotName,
            isWeapon: isWeapon,
            item: item ? { id: item.id, name: item.name, iconIndex: item.iconIndex } : null
        }
    })
}

function changeActorEquip(actorId, slotIndex, itemId, isWeapon) {
    if (!exists('$gameActors')) return
    const actor = $gameActors.actor(Number(actorId))
    if (!actor) return
    let item = null
    if (itemId) {
        if (isWeapon) {
            item = exists('$dataWeapons') ? $dataWeapons[Number(itemId)] : null
        } else {
            item = exists('$dataArmors') ? $dataArmors[Number(itemId)] : null
        }
    }
    if (typeof actor.forceChangeEquip === 'function') {
        actor.forceChangeEquip(slotIndex, item)
        log(`Actor ${actorId} equipped ${item ? item.name : 'nothing'} in slot ${slotIndex}.`)
    } else if (typeof actor.changeEquip === 'function') {
        actor.changeEquip(slotIndex, item)
        log(`Actor ${actorId} equipped ${item ? item.name : 'nothing'} in slot ${slotIndex}.`)
    }
}

function getActorSkills(actor) {
    if (!actor || !actor._skills) return []
    return actor._skills.map(skillId => {
        const skill = exists('$dataSkills') ? $dataSkills[skillId] : null
        return {
            id: skillId,
            name: skill ? skill.name : `Skill #${skillId}`,
            iconIndex: skill ? skill.iconIndex : 0,
            description: skill ? skill.description : ''
        }
    }).filter(Boolean)
}

function learnActorSkill(actorId, skillId) {
    if (!exists('$gameActors')) return
    const actor = $gameActors.actor(Number(actorId))
    if (!actor || typeof actor.learnSkill !== 'function') return
    actor.learnSkill(Number(skillId))
    log(`Actor ${actorId} learned skill ${skillId}.`)
}

function forgetActorSkill(actorId, skillId) {
    if (!exists('$gameActors')) return
    const actor = $gameActors.actor(Number(actorId))
    if (!actor || typeof actor.forgetSkill !== 'function') return
    actor.forgetSkill(Number(skillId))
    log(`Actor ${actorId} forgot skill ${skillId}.`)
}
function scriptPresets () {
    return [
        {
            id: 'healParty',
            name: uiText('script.preset.healParty.name'),
            desc: uiText('script.preset.healParty.desc'),
            code: "$gameParty.members().forEach(actor => actor.recoverAll())\nreturn 'Party healed'"
        },
        {
            id: 'allItems99',
            name: uiText('script.preset.allItems99.name'),
            desc: uiText('script.preset.allItems99.desc'),
            code: "$dataItems.forEach(item => {\n    if (!item) return\n    const current = $gameParty.numItems(item)\n    $gameParty.gainItem(item, 99 - current, true)\n})\nreturn 'All items set to 99'"
        },
        {
            id: 'clearStates',
            name: uiText('script.preset.clearStates.name'),
            desc: uiText('script.preset.clearStates.desc'),
            code: "$gameParty.members().forEach(actor => actor.clearStates())\nreturn 'States cleared'"
        },
        {
            id: 'commonEvent',
            name: uiText('script.preset.commonEvent.name'),
            desc: uiText('script.preset.commonEvent.desc'),
            code: "const commonEventId = 1\n$gameTemp.reserveCommonEvent(commonEventId)\nreturn 'Reserved common event #' + commonEventId"
        }
    ]
}

function useScriptPreset (presetId) {
    const preset = scriptPresets().find(item => item.id === presetId)
    if (!preset) {
        return
    }
    state.scriptCode = preset.code
    state.scriptOutput = uiText('script.log.presetLoaded', {name: preset.name})
    draw()
}

function exportRuntimeConfig () {
    state.scriptConfigText = JSON.stringify({
        version: VERSION,
        freezeList: state.freezeList,
        automations: state.automations,
        profiles: state.profiles,
        savedLocations: state.savedLocations,
        translate: {
            provider: state.translateProvider,
            endpoint: state.translateEndpoint,
            model: state.translateModel,
            targetLang: state.translateTargetLang,
            enabled: state.translateEnabled,
            targets: state.translateTargets,
            chunkSize: state.translateBulkChunkSize
        }
    }, null, 2)
    log(uiText('script.log.configExported'))
    draw()
}

function importRuntimeConfig () {
    try {
        const parsed = JSON.parse(state.scriptConfigText)
        if (parsed.freezeList && typeof parsed.freezeList === 'object') {
            state.freezeList = parsed.freezeList
        }
        if (Array.isArray(parsed.automations)) {
            state.automations = parsed.automations
        }
        if (Array.isArray(parsed.profiles)) {
            state.profiles = parsed.profiles
            saveProfiles()
        }
        if (Array.isArray(parsed.savedLocations)) {
            state.savedLocations = parsed.savedLocations
            saveSavedLocations()
        }
        if (parsed.translate && typeof parsed.translate === 'object') {
            state.translateProvider = parsed.translate.provider || state.translateProvider
            state.translateEndpoint = parsed.translate.endpoint || state.translateEndpoint
            state.translateModel = parsed.translate.model || state.translateModel
            state.translateTargetLang = parsed.translate.targetLang || state.translateTargetLang
            state.translateEnabled = !!parsed.translate.enabled
            if (parsed.translate.targets) {
                state.translateTargets = parsed.translate.targets
            }
            state.translateBulkChunkSize = positiveInt(parsed.translate.chunkSize, state.translateBulkChunkSize)
        }
        saveState()
        log(uiText('script.log.configImported'))
        draw()
    } catch (err) {
        state.scriptOutput = err && err.stack ? err.stack : String(err)
        log(uiText('script.log.importFailed', {message: err.message}))
        draw()
    }
}

async function runScriptLab () {
    try {
        const runner = new Function('controlCenter', 'state', `"use strict";\n${state.scriptCode}`)
        let result = runner(window[GLOBAL_KEY], state)
        if (result && typeof result.then === 'function') {
            result = await result
        }
        state.scriptOutput = result === undefined ? uiText('script.log.completed') : text(result)
        log(uiText('script.log.executed'))
    } catch (err) {
        state.scriptOutput = err && err.stack ? err.stack : String(err)
        log(uiText('script.log.failed', {message: err.message}))
    }
    draw()
}

function clearScriptOutput () {
    state.scriptOutput = ''
    draw()
}
function canBattleAction () {
    return exists('BattleManager') && exists('SceneManager') && SceneManager._scene instanceof Scene_Battle
}

function forceVictory () {
    if (!canBattleAction()) { log(uiText('battle.log.notInBattle')); return }
    if (exists('$gameTroop') && typeof $gameTroop.members === 'function') {
        $gameTroop.members().forEach(enemy => {
            if (typeof enemy.addNewState === 'function') {
                enemy.addNewState(enemy.deathStateId())
            }
        })
    }
    BattleManager.processVictory()
    log(uiText('battle.log.victory'))
}

function forceDefeat () {
    if (!canBattleAction()) { log(uiText('battle.log.notInBattle')); return }
    if (exists('$gameParty') && typeof $gameParty.members === 'function') {
        $gameParty.members().forEach(actor => {
            if (typeof actor.addNewState === 'function') {
                actor.addNewState(actor.deathStateId())
            }
        })
    }
    BattleManager.processDefeat()
    log(uiText('battle.log.defeat'))
}

function forceEscape () {
    if (!canBattleAction()) { log(uiText('battle.log.notInBattle')); return }
    if (exists('$gameParty') && typeof $gameParty.performEscape === 'function') {
        $gameParty.performEscape()
    }
    if (exists('SoundManager') && typeof SoundManager.playEscape === 'function') {
        SoundManager.playEscape()
    }
    BattleManager._escaped = true
    BattleManager.processEscape()
    log(uiText('battle.log.escape'))
}

function forceAbort () {
    if (!canBattleAction()) { log(uiText('battle.log.notInBattle')); return }
    if (exists('$gameParty') && typeof $gameParty.performEscape === 'function') {
        $gameParty.performEscape()
    }
    if (exists('SoundManager') && typeof SoundManager.playEscape === 'function') {
        SoundManager.playEscape()
    }
    BattleManager._escaped = true
    BattleManager.processAbort()
    log(uiText('battle.log.abort'))
}

function setBattleHp (target, value) {
    const amount = Number(value) || 1
    if (!canBattleAction()) { log(uiText('battle.log.notInBattle')); return }
    if (target === 'party') {
        if (exists('$gameParty') && typeof $gameParty.members === 'function') {
            $gameParty.members().forEach(member => {
                if (typeof member.setHp === 'function') member.setHp(amount)
            })
        }
    } else {
        if (exists('$gameTroop') && typeof $gameTroop.members === 'function') {
            $gameTroop.members().forEach(member => {
                if (typeof member.setHp === 'function') member.setHp(amount)
            })
        }
    }
    log(uiText('battle.log.setHp', {target: target, amount: amount}))
}
function automationActionOptions () {
    return [
        { id: 'healParty', label: uiText('automation.action.healParty'), param: 'none' },
        { id: 'gainGold', label: uiText('automation.action.gainGold'), param: 'value' },
        { id: 'setGold', label: uiText('automation.action.setGold'), param: 'value' },
        { id: 'setVariable', label: uiText('automation.action.setVariable'), param: 'idValue' },
        { id: 'setSwitch', label: uiText('automation.action.setSwitch'), param: 'idBool' },
        { id: 'setNoClip', label: uiText('automation.action.setNoClip'), param: 'bool' },
        { id: 'setGameSpeed', label: uiText('automation.action.setGameSpeed'), param: 'value' },
        { id: 'quickSave', label: uiText('automation.action.quickSave'), param: 'id' },
        { id: 'quickLoad', label: uiText('automation.action.quickLoad'), param: 'id' },
        { id: 'noEncounter', label: uiText('automation.action.noEncounter'), param: 'none' },
        { id: 'wait', label: uiText('automation.action.wait'), param: 'value' }
    ]
}

function automationActionMeta (actionId) {
    return automationActionOptions().find(item => item.id === actionId) || automationActionOptions()[0]
}

function automationNeedsId (actionId) {
    const mode = automationActionMeta(actionId).param
    return mode === 'id' || mode === 'idValue' || mode === 'idBool'
}

function automationNeedsValue (actionId) {
    const mode = automationActionMeta(actionId).param
    return mode === 'value' || mode === 'idValue'
}

function automationNeedsBool (actionId) {
    const mode = automationActionMeta(actionId).param
    return mode === 'bool' || mode === 'idBool'
}

function buildAutomationParams (actionId, idValue, valueValue, boolValue) {
    if (actionId === 'gainGold' || actionId === 'setGold') {
        return { amount: Number(valueValue) || 0 }
    }
    if (actionId === 'setVariable') {
        return { id: Number(idValue) || 1, value: Number(valueValue) || 0 }
    }
    if (actionId === 'setSwitch') {
        return { id: Number(idValue) || 1, value: !!boolValue }
    }
    if (actionId === 'setNoClip') {
        return { enabled: !!boolValue }
    }
    if (actionId === 'setGameSpeed') {
        return { speed: Number(valueValue) || 1 }
    }
    if (actionId === 'quickSave' || actionId === 'quickLoad') {
        return { slot: Number(idValue) || 1 }
    }
    if (actionId === 'wait') {
        return { duration: Number(valueValue) || 250 }
    }
    return {}
}

function automationActionLabel (actionId, params) {
    const meta = automationActionMeta(actionId)
    if (actionId === 'wait') return `${meta.label} ${params.duration}ms`
    if (params && params.id !== undefined && params.value !== undefined) return `${meta.label} ID ${params.id} = ${params.value}`
    if (params && params.id !== undefined) return `${meta.label} #${params.id}`
    if (params && params.amount !== undefined) return `${meta.label} ${params.amount}`
    if (params && params.speed !== undefined) return `${meta.label} x${params.speed}`
    if (params && params.enabled !== undefined) return `${meta.label} ${params.enabled ? 'ON' : 'OFF'}`
    return meta.label
}

function automationPresets () {
    return [
        { id: 'autoHealParty', name: uiText('automation.preset.autoHealParty.name'), desc: uiText('automation.preset.autoHealParty.desc'), interval: 3000, actionId: 'healParty', params: {} },
        { id: 'keepGold', name: uiText('automation.preset.keepGold.name'), desc: uiText('automation.preset.keepGold.desc'), interval: 500, actionId: 'setGold', params: { amount: 999999 } },
        { id: 'noEncounter', name: uiText('automation.preset.noEncounter.name'), desc: uiText('automation.preset.noEncounter.desc'), interval: 1000, actionId: 'noEncounter', params: {} },
        { id: 'keepNoClip', name: uiText('automation.preset.keepNoClip.name'), desc: uiText('automation.preset.keepNoClip.desc'), interval: 1000, actionId: 'setNoClip', params: { enabled: true } }
    ]
}

function addAutomationFromPreset (presetId) {
    const preset = automationPresets().find(item => item.id === presetId)
    if (!preset) return

    if (state.automations.find(a => a.id === presetId || a.name === preset.name)) {
        log(`Automation ${preset.name} already exists.`)
        return
    }

    state.automations.push({
        id: preset.id,
        name: preset.name,
        interval: preset.interval,
        actionId: preset.actionId,
        params: preset.params,
        enabled: true,
        lastRun: 0
    })
    log(`Automation ${preset.name} added.`)
    saveState()
}

function addCustomAutomation () {
    const actionId = state.customAutomationAction
    const interval = Math.max(250, Number(state.customAutomationInterval) || 1000)
    const name = text(state.customAutomationName).trim() || automationActionMeta(actionId).label
    state.automations.push({
        id: Date.now() + Math.floor(Math.random() * 1000),
        name: name,
        interval: interval,
        actionId: actionId,
        params: buildAutomationParams(actionId, state.customAutomationParamId, state.customAutomationParamValue, state.customAutomationParamBool),
        enabled: true,
        lastRun: 0
    })
    log(`Automation ${name} added.`)
    saveState()
    draw()
}

function toggleAutomation (id) {
    const aut = state.automations.find(a => String(a.id) === String(id))
    if (aut) {
        aut.enabled = !aut.enabled
        log(`Automation ${aut.name} ${aut.enabled ? 'enabled' : 'disabled'}.`)
        saveState()
    }
}

function removeAutomation (id) {
    state.automations = state.automations.filter(a => String(a.id) !== String(id))
    log('Automation removed.')
    saveState()
}

function addMacroStep () {
    const actionId = state.macroAction
    const params = buildAutomationParams(actionId, state.macroParamId, state.macroParamValue, state.macroParamBool)
    state.macroSteps.push({
        id: Date.now() + Math.floor(Math.random() * 1000),
        actionId: actionId,
        params: params,
        delay: Math.max(0, Number(state.macroDelay) || 0),
        label: automationActionLabel(actionId, params)
    })
    draw()
}

function removeMacroStep (id) {
    state.macroSteps = state.macroSteps.filter(step => String(step.id) !== String(id))
    draw()
}

function clearMacroSteps () {
    state.macroSteps = []
    state.macroStepIndex = -1
    draw()
}

async function runMacroSteps () {
    if (state.macroRunning || !state.macroSteps.length) {
        return
    }

    state.macroRunning = true
    state.macroStepIndex = -1
    draw()

    try {
        for (let index = 0; index < state.macroSteps.length; ++index) {
            const step = state.macroSteps[index]
            state.macroStepIndex = index
            draw()
            if (step.actionId === 'wait') {
                await sleep(step.params.duration || step.delay || 250)
            } else {
                runAutomationAction(step.actionId, step.params)
                if (step.delay > 0) {
                    await sleep(step.delay)
                }
            }
        }
        log('Macro finished.')
    } catch (err) {
        log(`Macro failed: ${err.message}`)
    } finally {
        state.macroRunning = false
        state.macroStepIndex = -1
        draw()
    }
}

function checkAutomations () {
    const now = Date.now()
    state.automations.forEach(aut => {
        if (!aut.enabled) return
        if (now - (aut.lastRun || 0) >= aut.interval) {
            try {
                runAutomationAction(aut.actionId, aut.params)
                aut.lastRun = now
            } catch (e) {
                aut.enabled = false
                log(`Automation ${aut.name} error: ${e.message}`)
            }
        }
    })
}

function runAutomationAction (actionId, params) {
    if (actionId === 'healParty') {
        healParty()
    } else if (actionId === 'gainGold') {
        const amount = Number(params.amount || 0)
        setGold(gold() + amount)
    } else if (actionId === 'setGold') {
        setGold(params.amount || 999999)
    } else if (actionId === 'setVariable') {
        setVariableValue(params.id, params.value)
    } else if (actionId === 'setSwitch') {
        setSwitchValue(params.id, params.value)
    } else if (actionId === 'noEncounter') {
        setEncounters(false)
    } else if (actionId === 'setNoClip') {
        setNoClip(!!params.enabled)
    } else if (actionId === 'setGameSpeed') {
        setSpeed(params.speed || 1)
    } else if (actionId === 'quickSave') {
        quickSave(params.slot || 1)
    } else if (actionId === 'quickLoad') {
        quickLoad(params.slot || 1)
    }
}

function tickPlayerSpeed () {
    // Disabled: Handled via Game_Player.prototype.realMoveSpeed hook to prevent save state pollution
}

function pushHistory (type, changes) {
    if (state.history.length > 0) {
        const last = state.history[state.history.length - 1]
        if (last.type === type && last.changes.length === 1 && changes.length === 1 && last.changes[0].id === changes[0].id) {
            if (type !== 'inventory' || last.changes[0].kind === changes[0].kind) {
                const timeDiff = Date.now() - last.id
                if (timeDiff < 3000) {
                    last.changes[0].newValue = changes[0].newValue
                    last.id = Date.now()
                    return
                }
            }
        }
    }

    state.history.push({
        id: Date.now(),
        type: type,
        changes: changes
    })
    if (state.history.length > 50) {
        state.history.shift()
    }
}

function undoLastAction () {
    const last = state.history.pop()
    if (!last) {
        log('Nothing to undo.')
        return
    }

    try {
        if (last.type === 'variables' && exists('$gameVariables')) {
            last.changes.forEach(change => {
                $gameVariables.setValue(Number(change.id), change.oldValue)
            })
            log(`Undid variable change (${last.changes.length} items).`)
        } else if (last.type === 'switches' && exists('$gameSwitches')) {
            last.changes.forEach(change => {
                $gameSwitches.setValue(Number(change.id), change.oldValue)
            })
            log(`Undid switch change (${last.changes.length} items).`)
        } else if (last.type === 'inventory' && exists('$gameParty')) {
            last.changes.forEach(change => {
                const table = itemTable(change.kind)
                const item = table[Number(change.id)]
                if (item) {
                    $gameParty.gainItem(item, change.oldValue - change.newValue, true)
                }
            })
            log(`Undid inventory change (${last.changes.length} items).`)
        }
    } catch (err) {
        log(`Undo failed: ${err.message}`)
    }
    draw()
}

function applyVariableBatch () {
    if (!exists('$gameVariables')) return
    const selectedIds = Object.keys(state.variableSelected).filter(id => state.variableSelected[id])
    if (!selectedIds.length) {
        log('No variables selected.')
        return
    }

    const changes = []
    selectedIds.forEach(id => {
        const numId = Number(id)
        const oldVal = $gameVariables.value(numId)
        operateVariableValue(numId, state.variableBatchOp, state.variableBatchVal)
        const newVal = $gameVariables.value(numId)
        changes.push({ id: numId, oldValue: oldVal, newValue: newVal })
    })

    if (changes.length) {
        pushHistory('variables', changes)
    }

    state.variableSelected = {}
    log(`Applied ${state.variableBatchOp} to ${selectedIds.length} variable(s).`)
    draw()
}

function freezeVariableBatch () {
    const selectedIds = Object.keys(state.variableSelected).filter(id => state.variableSelected[id])
    if (!selectedIds.length) {
        log('No variables selected.')
        return
    }

    selectedIds.forEach(id => {
        const numId = Number(id)
        const key = `variable:${numId}`
        if (exists('$gameVariables')) {
            const val = $gameVariables.value(numId)
            const name = exists('$dataSystem') ? ($dataSystem.variables[numId] || `Variable ${numId}`) : `Variable ${numId}`
            state.freezeList[key] = {
                key: key,
                type: 'variable',
                id: numId,
                value: val,
                name: name,
                enabled: true
            }
        }
    })

    state.variableSelected = {}
    log(`Locked ${selectedIds.length} variable(s).`)
    saveState()
    draw()
}

function applySwitchBatch (value) {
    if (!exists('$gameSwitches')) return
    const selectedIds = Object.keys(state.switchSelected).filter(id => state.switchSelected[id])
    if (!selectedIds.length) {
        log('No switches selected.')
        return
    }

    const changes = []
    selectedIds.forEach(id => {
        const numId = Number(id)
        const oldVal = !!$gameSwitches.value(numId)
        setSwitchValue(numId, value === 'toggle' ? !oldVal : value === 'on', true)
        const newVal = !!$gameSwitches.value(numId)
        changes.push({ id: numId, oldValue: oldVal, newValue: newVal })
    })

    if (changes.length) {
        pushHistory('switches', changes)
    }

    state.switchSelected = {}
    log(`Updated ${selectedIds.length} switch(es).`)
    draw()
}

function freezeSwitchBatch () {
    const selectedIds = Object.keys(state.switchSelected).filter(id => state.switchSelected[id])
    if (!selectedIds.length) {
        log('No switches selected.')
        return
    }

    selectedIds.forEach(id => {
        const numId = Number(id)
        const key = `switch:${numId}`
        if (exists('$gameSwitches')) {
            const val = !!$gameSwitches.value(numId)
            const name = exists('$dataSystem') ? ($dataSystem.switches[numId] || `Switch ${numId}`) : `Switch ${numId}`
            state.freezeList[key] = {
                key: key,
                type: 'switch',
                id: numId,
                value: val,
                name: name,
                enabled: true
            }
        }
    })

    state.switchSelected = {}
    log(`Locked ${selectedIds.length} switch(es).`)
    saveState()
    draw()
}

function runCommand (rawCommand) {
    const raw = text(rawCommand).trim()
    const command = raw.toLowerCase()
    if (!command) {
        return
    }

    if (command === 'heal' || command === 'full') {
        healParty()
    } else if (command === 'ghost') {
        applyLoadout('ghost')
    } else if (command === 'rush') {
        applyLoadout('rush')
    } else if (command === 'vault') {
        applyLoadout('vault')
    } else if (command === 'clean' || command === 'reset') {
        applyLoadout('clean')
    } else if (command === 'panic') {
        applyLoadout('panic')
    } else if (command === 'snapshot') {
        captureSnapshot()
    } else if (command === 'save') {
        quickSave(state.slot)
    } else if (command === 'load') {
        quickLoad(state.slot)
    } else if (command === 'title') {
        gotoTitle()
    } else if (/^save\s+\d+/.test(command)) {
        quickSave(Number(command.split(/\s+/)[1]))
    } else if (/^load\s+\d+/.test(command)) {
        quickLoad(Number(command.split(/\s+/)[1]))
    } else if (/^speed\s+/.test(command)) {
        setSpeed(Number(command.split(/\s+/)[1]))
    } else if (/^gold\s+/.test(command)) {
        setGold(Number(command.split(/\s+/)[1]))
    } else if (/^var\s+\d+\s+/.test(command) || /^variable\s+\d+\s+/.test(command)) {
        const parts = command.split(/\s+/)
        setVariableValue(parts[1], Number(parts[2]))
    } else if (/^switch\s+\d+\s+/.test(command)) {
        const parts = command.split(/\s+/)
        setSwitchValue(parts[1], ['on', 'true', '1'].includes(parts[2]))
    } else if (command === 'items 99') {
        state.inventoryKind = 'items'
        setVisibleInventoryAmount(99)
    } else if (command === 'weapons 99') {
        state.inventoryKind = 'weapons'
        setVisibleInventoryAmount(99)
    } else if (command === 'armors 99') {
        state.inventoryKind = 'armors'
        setVisibleInventoryAmount(99)
    } else if (command === 'translate') {
        state.activeTab = 'translate'
        state.visible = true
    } else if (command.indexOf('translate ') === 0) {
        state.translateInput = raw.replace(/^translate\s+/i, '')
        translateText(state.translateInput)
    } else if (/^freeze\s+gold\s+/.test(command)) {
        setGoldFreeze(true, Number(command.split(/\s+/)[2]))
    } else if (command === 'freeze gold') {
        setGoldFreeze(true)
    } else if (command === 'unfreeze gold') {
        setGoldFreeze(false)
    } else if (command === 'noclip on') {
        setNoClip(true)
    } else if (command === 'noclip off') {
        setNoClip(false)
    } else if (command === 'encounter off') {
        setEncounters(false)
    } else if (command === 'encounter on') {
        setEncounters(true)
    } else if (/^event\s+\d+/.test(command)) {
        const id = Number(command.split(/\s+/)[1])
        const event = mapEvents().find(item => item.id === id)
        if (event) {
            teleportTo(event.x, event.y)
        } else {
            log(`Event ${id} not found.`)
        }
    } else {
        log(`Unknown command: ${raw}.`)
    }

    state.command = ''
    draw()
}
const UI_SIZE_MODE_STORAGE_KEY = 'adel9st.control-center.ui-size-mode'
const UI_BASE_WIDTH = 1060
const UI_BASE_HEIGHT = 680

function sanitizeUiSizeMode (mode) {
    return ['auto', 'compact', 'normal', 'large', 'max'].includes(mode) ? mode : 'auto'
}

function uiSizeModeOptions () {
    return [
        {value: 'auto', label: uiText('uiSize.auto'), short: 'A'},
        {value: 'compact', label: uiText('uiSize.compact'), short: 'C'},
        {value: 'normal', label: uiText('uiSize.normal'), short: 'N'},
        {value: 'large', label: uiText('uiSize.large'), short: 'L'},
        {value: 'max', label: uiText('uiSize.max'), short: 'M'}
    ]
}

function uiSizeModeLabel (mode) {
    return uiText(`uiSize.${sanitizeUiSizeMode(mode)}`)
}

function setUiSizeMode (mode, options) {
    const nextMode = sanitizeUiSizeMode(mode)
    const settings = options || {}
    const changed = state.uiSizeMode !== nextMode
    state.uiSizeMode = nextMode
    saveState()
    updateUiLayout(false)

    if (changed && !settings.silent) {
        log(uiText('uiSize.saved', {name: uiSizeModeLabel(nextMode)}))
    }

    if (!settings.skipDraw) {
        draw()
    }
}

function overlayViewportSize () {
    let width = Math.max(
        Number(window.innerWidth) || 0,
        document.documentElement ? (Number(document.documentElement.clientWidth) || 0) : 0,
        320
    )
    let height = Math.max(
        Number(window.innerHeight) || 0,
        document.documentElement ? (Number(document.documentElement.clientHeight) || 0) : 0,
        240
    )

    const fullscreenParent = document.fullscreenElement ||
        document.webkitFullscreenElement ||
        document.mozFullScreenElement ||
        document.msFullscreenElement

    if (fullscreenParent && fullscreenParent.clientWidth && fullscreenParent.clientHeight) {
        width = Math.min(width, Math.round(fullscreenParent.clientWidth))
        height = Math.min(height, Math.round(fullscreenParent.clientHeight))
    }

    const runtimeCanvas = exists('Graphics') && Graphics && Graphics._canvas
        ? Graphics._canvas
        : document.querySelector('canvas')

    if (runtimeCanvas && typeof runtimeCanvas.getBoundingClientRect === 'function') {
        const rect = runtimeCanvas.getBoundingClientRect()
        if (rect.width >= 320 && rect.height >= 240) {
            width = Math.min(width, Math.round(rect.width))
            height = Math.min(height, Math.round(rect.height))
        }
    }

    return {
        width: Math.max(320, Math.round(width)),
        height: Math.max(240, Math.round(height))
    }
}

function computeUiLayout () {
    const viewport = overlayViewportSize()
    const inset = viewport.width <= 900 || viewport.height <= 700 ? 12 : 24
    const maxWidth = Math.max(360, viewport.width - (inset * 2))
    const maxHeight = Math.max(300, viewport.height - (inset * 2))
    const sizeMode = sanitizeUiSizeMode(state.uiSizeMode)
    const coverageMap = {
        auto: {
            width: viewport.width <= 900 ? 0.84 : 0.9,
            height: viewport.height <= 700 ? 0.78 : 0.84
        },
        compact: {
            width: viewport.width <= 900 ? 0.72 : 0.76,
            height: viewport.height <= 700 ? 0.66 : 0.7
        },
        normal: {
            width: viewport.width <= 900 ? 0.8 : 0.86,
            height: viewport.height <= 700 ? 0.74 : 0.8
        },
        large: {
            width: viewport.width <= 900 ? 0.9 : 0.94,
            height: viewport.height <= 700 ? 0.84 : 0.88
        },
        max: {
            width: viewport.width <= 900 ? 0.96 : 0.98,
            height: viewport.height <= 700 ? 0.92 : 0.94
        }
    }
    const widthCoverage = coverageMap[sizeMode].width
    const heightCoverage = coverageMap[sizeMode].height
    const targetWidth = Math.min(UI_BASE_WIDTH, Math.round(viewport.width * widthCoverage))
    const targetHeight = Math.min(UI_BASE_HEIGHT, Math.round(viewport.height * heightCoverage))
    const shellWidth = Math.max(360, Math.min(maxWidth, targetWidth))
    const shellHeight = Math.max(300, Math.min(maxHeight, targetHeight))
    const ratio = Math.min(shellWidth / UI_BASE_WIDTH, shellHeight / UI_BASE_HEIGHT, 1)
    const compact = sizeMode === 'compact' || shellWidth < 980 || shellHeight < 620 || ratio < 0.94
    const cramped = sizeMode === 'compact' || shellWidth < 760 || shellHeight < 520 || ratio < 0.84
    const fontScale = clamp(0.88 + ((ratio - 0.55) * (0.12 / 0.45)), 0.88, 1, 1)

    return {
        viewportWidth: viewport.width,
        viewportHeight: viewport.height,
        inset: inset,
        sizeMode: sizeMode,
        fontScale: Number(fontScale.toFixed(4)),
        shellWidth: shellWidth,
        shellHeight: shellHeight,
        compact: compact,
        cramped: cramped
    }
}

function uiLayoutChanged (nextLayout, prevLayout) {
    if (!prevLayout) {
        return true
    }

    return nextLayout.viewportWidth !== prevLayout.viewportWidth ||
        nextLayout.viewportHeight !== prevLayout.viewportHeight ||
        nextLayout.inset !== prevLayout.inset ||
        nextLayout.sizeMode !== prevLayout.sizeMode ||
        nextLayout.fontScale !== prevLayout.fontScale ||
        nextLayout.shellWidth !== prevLayout.shellWidth ||
        nextLayout.shellHeight !== prevLayout.shellHeight ||
        nextLayout.compact !== prevLayout.compact ||
        nextLayout.cramped !== prevLayout.cramped
}

function applyUiLayoutVars (layout) {
    if (!state.host) {
        return
    }

    state.host.style.setProperty('--adel-base-width', `${UI_BASE_WIDTH}px`)
    state.host.style.setProperty('--adel-base-height', `${UI_BASE_HEIGHT}px`)
    state.host.style.setProperty('--adel-shell-width', `${layout.shellWidth}px`)
    state.host.style.setProperty('--adel-shell-height', `${layout.shellHeight}px`)
    state.host.style.setProperty('--adel-font-scale', String(layout.fontScale))
    state.host.style.setProperty('--adel-inset', `${layout.inset}px`)
    state.host.style.setProperty('--adel-viewport-width', `${layout.viewportWidth}px`)
    state.host.style.setProperty('--adel-viewport-height', `${layout.viewportHeight}px`)
}

function updateUiLayout (shouldRedraw) {
    const nextLayout = computeUiLayout()
    const changed = uiLayoutChanged(nextLayout, state.uiLayout)
    state.uiLayout = nextLayout
    applyUiLayoutVars(nextLayout)

    if (changed && shouldRedraw && state.app) {
        draw()
    }

    return changed
}
    function css () {
        return `
:host {
    all: initial;
    color-scheme: dark;
    --adel-base-width: 1060px;
    --adel-base-height: 680px;
    --adel-shell-width: 1060px;
    --adel-shell-height: 680px;
    --adel-font-scale: 1;
    --adel-inset: 24px;
    --adel-viewport-width: 1280px;
    --adel-viewport-height: 720px;
}
* { box-sizing: border-box; }
button, input, select { font: inherit; }
.hidden { display: none !important; }
.panel-shell {
    position: fixed;
    left: var(--adel-inset);
    top: var(--adel-inset);
    width: var(--adel-shell-width);
    height: var(--adel-shell-height);
    z-index: 2147483000;
    pointer-events: auto;
}
.panel {
    position: relative;
    width: 100%;
    height: 100%;
    color: #eef2ff;
    font-family: "Segoe UI", Tahoma, Arial, sans-serif;
    font-size: calc(12px * var(--adel-font-scale));
    background:
        linear-gradient(180deg, rgba(7, 13, 24, 0.98), rgba(12, 18, 31, 0.95) 62%, rgba(15, 23, 42, 0.96));
    border: 1px solid rgba(114, 247, 200, 0.18);
    border-radius: 10px;
    box-shadow: 0 24px 72px rgba(0, 0, 0, 0.62);
    overflow: hidden;
    backdrop-filter: blur(16px);
    -webkit-backdrop-filter: blur(16px);
    opacity: 0.58;
    transition: opacity 140ms ease, box-shadow 140ms ease, border-color 140ms ease;
}
.panel-shell:hover .panel,
.panel-shell:focus-within .panel {
    opacity: 1;
    box-shadow: 0 24px 72px rgba(0, 0, 0, 0.74);
    border-color: rgba(114, 247, 200, 0.28);
}
.top {
    align-items: center;
    display: flex;
    gap: 12px;
    justify-content: space-between;
    min-height: 68px;
    padding: 12px 14px;
    background:
        linear-gradient(90deg, rgba(114, 247, 200, 0.12), rgba(255, 207, 90, 0.08), rgba(2, 6, 23, 0.12));
    border-bottom: 1px solid rgba(255,255,255,.08);
}
.brand { align-items: center; display: flex; gap: 10px; min-width: 0; }
.mono {
    align-items: center;
    background: #72f7c8;
    border: 1px solid rgba(255,255,255,.26);
    border-radius: 8px;
    color: #020617;
    display: flex;
    font-family: Consolas, Monaco, monospace;
    font-size: calc(18px * var(--adel-font-scale));
    font-weight: 900;
    height: calc(44px * var(--adel-font-scale));
    justify-content: center;
    width: calc(44px * var(--adel-font-scale));
}
.kicker, .metric span, .section-title span {
    color: #ffcf5a;
    display: block;
    font-family: Consolas, Monaco, monospace;
    font-size: calc(10px * var(--adel-font-scale));
    font-weight: 800;
    letter-spacing: .06em;
    text-transform: uppercase;
}
.title { color: #fff; font-size: calc(20px * var(--adel-font-scale)); font-weight: 900; line-height: 1.1; }
.top-actions {
    align-items: flex-end;
    display: flex;
    flex-direction: column;
    gap: 8px;
}
.size-switch {
    align-items: center;
    display: flex;
    flex-wrap: wrap;
    gap: 6px;
    justify-content: flex-end;
}
.size-chip {
    align-items: center;
    background: rgba(2,6,23,.62);
    border: 1px solid rgba(255,255,255,.12);
    border-radius: 999px;
    color: #cbd5e1;
    cursor: pointer;
    display: inline-flex;
    font-family: Consolas, Monaco, monospace;
    font-size: calc(10px * var(--adel-font-scale));
    font-weight: 900;
    height: calc(26px * var(--adel-font-scale));
    justify-content: center;
    min-width: calc(26px * var(--adel-font-scale));
    padding: 0 8px;
}
.size-chip.active,
.size-chip:hover {
    background: rgba(114,247,200,.12);
    border-color: rgba(114,247,200,.30);
    color: #72f7c8;
}
.badges { display: flex; flex-wrap: wrap; gap: 8px; justify-content: flex-end; }
.badge {
    background: rgba(2,6,23,.62);
    border: 1px solid rgba(255,255,255,.12);
    border-radius: 999px;
    color: #dbeafe;
    font-size: calc(11px * var(--adel-font-scale));
    font-weight: 800;
    padding: 5px 9px;
    text-transform: uppercase;
}
.body { display: grid; grid-template-columns: 236px 1fr; height: calc(100% - 68px); min-height: 0; }
.nav {
    background: rgba(2,6,23,.40);
    border-right: 1px solid rgba(255,255,255,.06);
    display: flex;
    flex-direction: column;
    padding: 12px 10px;
    overflow-y: auto;
}
.nav-group { margin-bottom: 12px; }
.nav-heading {
    color: #72f7c8;
    font-family: Consolas, Monaco, monospace;
    font-size: calc(10px * var(--adel-font-scale));
    font-weight: 900;
    letter-spacing: .06em;
    margin: 0 8px 8px;
    text-transform: uppercase;
}
.nav button {
    align-items: flex-start;
    background: rgba(255,255,255,.01);
    border: 1px solid rgba(255,255,255,.03);
    border-radius: 8px;
    color: #cbd5e1;
    cursor: pointer;
    display: flex;
    gap: 8px;
    font-weight: 800;
    justify-content: flex-start;
    margin-bottom: 6px;
    min-height: 44px;
    padding: 9px 10px;
    text-align: left;
    width: 100%;
}
.nav button span:first-child {
    align-items: center;
    color: #94a3b8;
    display: flex;
    flex: 0 0 26px;
    background: rgba(255,255,255,.03);
    border: 1px solid rgba(255,255,255,.05);
    border-radius: 6px;
    font-family: Consolas, Monaco, monospace;
    font-size: calc(10px * var(--adel-font-scale));
    font-weight: 900;
    height: 24px;
    justify-content: center;
}
.nav-copy {
    flex: 1 1 auto;
    min-width: 0;
}
.nav button strong {
    display: block;
    font-size: calc(12px * var(--adel-font-scale));
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.nav button small {
    color: #94a3b8;
    display: block;
    font-size: calc(10px * var(--adel-font-scale));
    font-weight: 600;
    line-height: 1.35;
    margin-top: 2px;
    white-space: normal;
}
.nav button em {
    color: #475569;
    align-self: center;
    flex: 0 0 auto;
    font-style: normal;
}
.nav button.active, .nav button:hover {
    background: rgba(114,247,200,.10);
    border-color: rgba(114,247,200,.24);
    color: #f8fafc;
    transform: translateX(2px);
}
.nav button.active span:first-child,
.nav button:hover span:first-child,
.nav button.active em,
.nav button:hover em {
    color: #72f7c8;
}
.nav button.active span:first-child,
.nav button:hover span:first-child {
    background: rgba(114,247,200,.18);
    border-color: rgba(114,247,200,.28);
}
.nav-footer {
    border-top: 1px solid rgba(114,247,200,.12);
    color: rgba(114,247,200,.72);
    font-family: Consolas, Monaco, monospace;
    font-size: calc(10px * var(--adel-font-scale));
    font-weight: 700;
    line-height: 1.45;
    margin-top: auto;
    padding: 10px 8px 2px;
    text-transform: uppercase;
}
.content {
    min-height: 0;
    overflow: auto;
    padding: 12px;
    background: linear-gradient(180deg, rgba(15,23,42,.32), rgba(2,6,23,.14));
}
.hero {
    align-items: flex-start;
    background: linear-gradient(135deg, rgba(114,247,200,.10), rgba(2,6,23,.10) 52%, rgba(255,207,90,.08));
    border: 1px solid rgba(255,255,255,.08);
    border-radius: 10px;
    display: flex;
    gap: 14px;
    justify-content: space-between;
    padding: 14px;
}
.hero-copy { min-width: 0; }
.hero h2 { color: #fff; font-size: calc(26px * var(--adel-font-scale)); line-height: 1.05; margin: 4px 0; }
.hero p { color: #94a3b8; font-family: Consolas, Monaco, monospace; font-size: calc(12px * var(--adel-font-scale)); margin: 0; }
.hero-note {
    color: #cbd5e1;
    font-size: calc(12px * var(--adel-font-scale));
    line-height: 1.45;
    margin-top: 10px;
    max-width: 560px;
}
.signals { display: grid; gap: 8px; grid-template-columns: repeat(3, minmax(86px, 1fr)); min-width: 320px; }
.signal, .metric, .section {
    background: rgba(15,23,42,.68);
    border: 1px solid rgba(255,255,255,.08);
    border-radius: 10px;
    padding: 12px;
}
.section:hover, .metric:hover, .signal:hover {
    border-color: rgba(114,247,200,.16);
}
.signal strong, .metric strong, .section-title strong {
    color: #f8fafc;
    display: block;
    font-size: calc(15px * var(--adel-font-scale));
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.grid { display: grid; gap: 8px; }
.metrics { grid-template-columns: repeat(4, minmax(0, 1fr)); margin-top: 10px; }
.metric strong { font-size: calc(22px * var(--adel-font-scale)); font-weight: 900; }
.metric em { color: #ffcf5a; display: block; font-family: Consolas, Monaco, monospace; font-size: calc(11px * var(--adel-font-scale)); font-style: normal; margin-top: 4px; }
.cols { grid-template-columns: 1.1fr .9fr; margin-top: 8px; }
.dashboard-grid { grid-template-columns: 1.1fr .9fr; margin-top: 10px; }
.lower-grid { grid-template-columns: 1.2fr .8fr; margin-top: 10px; }
.section-title { align-items: center; display: flex; justify-content: space-between; margin-bottom: 10px; }
.helper {
    color: #94a3b8;
    font-size: calc(11px * var(--adel-font-scale));
    line-height: 1.45;
}
.cmd { align-items: center; display: flex; gap: 8px; margin-top: 10px; }
.input {
    background: rgba(2,6,23,.82);
    border: 1px solid rgba(114,247,200,.23);
    border-radius: 8px;
    color: #fff;
    height: calc(36px * var(--adel-font-scale));
    outline: none;
    padding: 0 10px;
    width: 100%;
}
.textarea {
    background: rgba(2,6,23,.82);
    border: 1px solid rgba(114,247,200,.20);
    border-radius: 8px;
    color: #fff;
    font: calc(12px * var(--adel-font-scale))/1.45 Consolas, Monaco, monospace;
    min-height: 168px;
    outline: none;
    padding: 10px;
    resize: vertical;
    width: 100%;
}
.textarea[readonly] {
    border-color: rgba(255,207,90,.22);
    color: #dbeafe;
}
.btn {
    background: rgba(255,255,255,.07);
    border: 1px solid rgba(255,255,255,.10);
    border-radius: 8px;
    color: #e2e8f0;
    cursor: pointer;
    font-size: calc(12px * var(--adel-font-scale));
    font-weight: 900;
    min-height: calc(34px * var(--adel-font-scale));
    padding: 8px 10px;
}
.btn:hover { border-color: rgba(20,184,166,.40); transform: translateY(-1px); }
.btn.primary { background: #14b8a6; border-color: #14b8a6; color: #ecfeff; }
.btn.warn { background: #ffcf5a; border-color: #ffcf5a; color: #020617; }
.btn.danger { background: #f43f5e; border-color: #f43f5e; color: #fff; }
.btn[disabled] { opacity: 0.4; cursor: not-allowed; pointer-events: none; }
.loadouts { grid-template-columns: repeat(2, minmax(0, 1fr)); }
.card {
    background: rgba(2,6,23,.50);
    border: 1px solid rgba(255,255,255,.08);
    border-left: 3px solid var(--accent, #72f7c8);
    border-radius: 8px;
    color: #e2e8f0;
    cursor: pointer;
    min-height: 74px;
    padding: 9px 10px;
    text-align: left;
}
.card:hover { background: rgba(255,255,255,.06); border-color: var(--accent, #14b8a6); }
.card strong { color: #fff; display: block; font-size: calc(13px * var(--adel-font-scale)); margin-bottom: 4px; }
.card span { color: #94a3b8; display: block; font-size: calc(11px * var(--adel-font-scale)); line-height: 1.35; }
.actions { grid-template-columns: repeat(3, minmax(0, 1fr)); }
.actions.two { grid-template-columns: repeat(2, minmax(0, 1fr)); }
.actions.four { grid-template-columns: repeat(4, minmax(0, 1fr)); }
.range { width: 100%; accent-color: #14b8a6; }
.control-list { display: grid; gap: 10px; }
.control-line {
    align-items: center;
    background: rgba(2,6,23,.42);
    border: 1px solid rgba(255,255,255,.05);
    border-radius: 8px;
    display: flex;
    gap: 8px;
    justify-content: space-between;
    min-height: 50px;
    padding: 10px;
}
.control-line strong {
    color: #f8fafc;
    display: block;
    font-size: calc(13px * var(--adel-font-scale));
}
.control-line span {
    color: #94a3b8;
    display: block;
    font-size: calc(11px * var(--adel-font-scale));
    line-height: 1.35;
    margin-top: 3px;
}
.button-strip {
    display: flex;
    flex-wrap: wrap;
    gap: 6px;
    justify-content: flex-end;
}
.field-grid {
    align-items: center;
    display: grid;
    gap: 8px;
    grid-template-columns: 90px 1fr;
    margin-top: 10px;
}
.field-grid label {
    color: #cbd5e1;
    font-size: calc(11px * var(--adel-font-scale));
    font-weight: 800;
    letter-spacing: .05em;
    text-transform: uppercase;
}
.log-shell {
    background: rgba(2,6,23,.52);
    border: 1px solid rgba(255,255,255,.05);
    border-radius: 8px;
    max-height: 228px;
    overflow: auto;
}
.log-line {
    border-bottom: 1px solid rgba(255,255,255,.04);
    color: #dbeafe;
    font-family: Consolas, Monaco, monospace;
    font-size: calc(11px * var(--adel-font-scale));
    line-height: 1.45;
    padding: 8px 10px;
    white-space: pre-wrap;
}
.log-line:last-child {
    border-bottom: none;
}
.table { display: grid; gap: 6px; }
.row {
    align-items: center;
    background: rgba(2,6,23,.42);
    border: 1px solid rgba(255,255,255,.06);
    border-radius: 8px;
    display: grid;
    gap: 8px;
    grid-template-columns: 1fr auto;
    min-height: 34px;
    padding: 7px 8px;
}
.row small { color: #94a3b8; display: block; font-family: Consolas, Monaco, monospace; font-size: calc(11px * var(--adel-font-scale)); }
.row > div:last-child { display: flex; flex-wrap: wrap; gap: 5px; justify-content: flex-end; }
.select { min-width: 124px; }

/* Dense Table Layouts */
.table-container { display: flex; flex-direction: column; width: 100%; }
.table-header {
    display: grid;
    grid-template-columns: 36px 72px 1fr 140px 64px;
    font-weight: 800;
    font-size: calc(11px * var(--adel-font-scale));
    text-transform: uppercase;
    color: #ffcf5a;
    background: rgba(2,6,23,.82);
    border: 1px solid rgba(255,255,255,.08);
    border-radius: 8px 8px 0 0;
    padding: 10px;
    align-items: center;
}
.table-body {
    background: rgba(2,6,23,.42);
    border: 1px solid rgba(255,255,255,.08);
    border-top: none;
    border-radius: 0 0 8px 8px;
    max-height: 380px;
    overflow-y: auto;
}
.table-row {
    display: grid;
    grid-template-columns: 36px 72px 1fr 140px 64px;
    padding: 8px 10px;
    align-items: center;
    border-bottom: 1px solid rgba(255,255,255,.04);
}
.table-row:last-child { border-bottom: none; }
.table-row:hover { background: rgba(255,255,255,.04); }
.table-row.active-row { background: rgba(114,247,200,.12) !important; border-color: rgba(114,247,200,.35) !important; }
.table-row.changed { background: rgba(114,247,200,.04); }
.table-row.changed .cell-name { color: #72f7c8; }
.cell-center { display: flex; justify-content: center; align-items: center; }
.cell-name { overflow: hidden; text-overflow: ellipsis; white-space: nowrap; font-weight: 600; font-size: calc(13px * var(--adel-font-scale)); }
.cell-stack { min-width: 0; }
.cell-stack small {
    color: #94a3b8;
    display: block;
    font-family: Consolas, Monaco, monospace;
    font-size: calc(11px * var(--adel-font-scale));
    line-height: 1.35;
    margin-top: 2px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.cell-code { color: #cbd5e1; font-family: Consolas, Monaco, monospace; font-size: calc(12px * var(--adel-font-scale)); }
.table-state-btn { font-size: calc(11px * var(--adel-font-scale)); min-height: calc(28px * var(--adel-font-scale)); padding: 0 10px; width: 100%; }
.table-lock-btn { align-items: center; display: flex; height: 28px; justify-content: center; min-height: 28px; padding: 0; width: 38px; }
.table-empty { color: #94a3b8; font-size: calc(12px * var(--adel-font-scale)); padding: 16px; text-align: center; }
.table-toolbar-note { color: #94a3b8; font-size: calc(11px * var(--adel-font-scale)); margin-bottom: 10px; }
.table-batch-shell {
    background: rgba(255,255,255,.02);
    border: 1px solid rgba(255,255,255,.04);
    border-radius: 8px;
    margin-bottom: 12px;
    padding: 8px;
}
.table-mini-actions { display: flex; gap: 6px; justify-content: flex-end; }
.table-mini-actions .btn { font-size: calc(11px * var(--adel-font-scale)); min-height: calc(28px * var(--adel-font-scale)); padding: 0 10px; }
.table-input {
    background: rgba(15,23,42,.68);
    border: 1px solid rgba(114,247,200,.20);
    border-radius: 6px;
    color: #fff;
    font-size: calc(12px * var(--adel-font-scale));
    height: calc(28px * var(--adel-font-scale));
    padding: 0 6px;
    width: 100%;
}
.table-input:focus { border-color: #14b8a6; outline: none; }
.toolbar-row { display: flex; gap: 8px; align-items: center; margin-bottom: 8px; flex-wrap: wrap; }
.toolbar-row .input { flex: 1; min-width: 120px; }
.toolbar-row .select { max-width: 150px; }
.toolbar-row label {
    display: flex;
    align-items: center;
    gap: 6px;
    font-size: 11px;
    font-weight: 800;
    cursor: pointer;
    user-select: none;
    color: #cbd5e1;
}

.panel-shell.compact .top {
    gap: 10px;
    min-height: 60px;
    padding: 10px 12px;
}
.panel-shell.compact .body {
    grid-template-columns: 198px 1fr;
    height: calc(100% - 60px);
}
.panel-shell.compact .nav {
    padding: 10px 8px;
}
.panel-shell.compact .nav-group {
    margin-bottom: 10px;
}
.panel-shell.compact .nav button {
    gap: 7px;
    margin-bottom: 5px;
    min-height: 40px;
    padding: 8px 9px;
}
.panel-shell.compact .content {
    padding: 10px;
}
.panel-shell.compact .hero,
.panel-shell.compact .signal,
.panel-shell.compact .metric,
.panel-shell.compact .section {
    padding: 10px;
}
.panel-shell.compact .hero h2 {
    font-size: 23px;
}
.panel-shell.compact .signals {
    min-width: 280px;
}
.panel-shell.compact .metric strong {
    font-size: 20px;
}
.panel-shell.compact .table-body {
    max-height: 332px;
}
.panel-shell.compact .table-header,
.panel-shell.compact .table-row {
    padding-left: 8px;
    padding-right: 8px;
}
.panel-shell.compact .badges {
    gap: 6px;
}
.panel-shell.compact .top-actions {
    gap: 6px;
}

.panel-shell.cramped .top {
    gap: 8px;
    min-height: 56px;
    padding: 8px 10px;
}
.panel-shell.cramped .brand {
    gap: 8px;
}
.panel-shell.cramped .body {
    grid-template-columns: 156px 1fr;
    height: calc(100% - 56px);
}
.panel-shell.cramped .badge {
    padding: 4px 7px;
}
.panel-shell.cramped .top-actions,
.panel-shell.cramped .size-switch {
    gap: 4px;
}
.panel-shell.cramped .size-chip {
    min-width: calc(24px * var(--adel-font-scale));
    padding: 0 6px;
}
.panel-shell.cramped .content {
    padding: 8px;
}
.panel-shell.cramped .hero,
.panel-shell.cramped .signal,
.panel-shell.cramped .metric,
.panel-shell.cramped .section,
.panel-shell.cramped .table-batch-shell {
    padding: 8px;
}
.panel-shell.cramped .toolbar-row {
    gap: 6px;
    margin-bottom: 6px;
}
.panel-shell.cramped .table-body {
    max-height: 290px;
}
.panel-shell.cramped .table-header,
.panel-shell.cramped .table-row {
    padding: 7px 6px;
}

.panel-shell.cramped .nav {
    display: flex;
    flex-direction: column;
    gap: 0;
    overflow-y: auto;
    overflow-x: hidden;
    padding: 8px 6px;
}
.panel-shell.cramped .nav-group {
    min-width: 0;
    margin-bottom: 8px;
}
.panel-shell.cramped .nav-heading {
    margin: 0 4px 6px;
}
.panel-shell.cramped .nav button {
    min-width: 0;
    min-height: 36px;
    padding: 7px 8px;
    white-space: normal;
}
.panel-shell.cramped .nav button small {
    display: none;
}
.panel-shell.cramped .nav-footer {
    display: none;
}
.panel-shell.cramped .hero,
.panel-shell.cramped .cmd,
.panel-shell.cramped .control-line {
    flex-direction: column;
}
.panel-shell.cramped .signals,
.panel-shell.cramped .metrics,
.panel-shell.cramped .cols,
.panel-shell.cramped .dashboard-grid,
.panel-shell.cramped .lower-grid,
.panel-shell.cramped .actions,
.panel-shell.cramped .actions.two,
.panel-shell.cramped .actions.four,
.panel-shell.cramped .loadouts {
    grid-template-columns: 1fr;
    min-width: 0;
}
.panel-shell.cramped .field-grid {
    grid-template-columns: 1fr;
}
.panel-shell.cramped .button-strip {
    justify-content: flex-start;
    width: 100%;
}
.panel-shell.cramped .table-header,
.panel-shell.cramped .table-row {
    grid-template-columns: 36px 54px 1fr 90px 48px;
}

@media (max-width: 780px) {
    .panel-shell {
        left: 12px;
        right: 12px;
        top: 12px;
        width: auto;
        height: calc(100vh - 24px);
    }
    .panel-shell .body { grid-template-columns: 148px 1fr; }
    .panel-shell .nav { display: flex; flex-direction: column; gap: 0; overflow-y: auto; overflow-x: hidden; padding: 8px 6px; }
    .panel-shell .nav-group { min-width: 0; margin-bottom: 8px; }
    .panel-shell .nav-heading { display: block; margin: 0 4px 6px; }
    .panel-shell .nav button { min-width: 0; min-height: 36px; padding: 7px 8px; white-space: normal; }
    .panel-shell .nav button small { display: none; }
    .panel-shell .nav-footer { display: none; }
    .panel-shell .hero, .panel-shell .cmd, .panel-shell .control-line { flex-direction: column; }
    .panel-shell .signals, .panel-shell .metrics, .panel-shell .cols, .panel-shell .dashboard-grid, .panel-shell .lower-grid, .panel-shell .actions, .panel-shell .actions.two, .panel-shell .actions.four, .panel-shell .loadouts { grid-template-columns: 1fr; min-width: 0; }
    .panel-shell .field-grid { grid-template-columns: 1fr; }
    .panel-shell .button-strip { justify-content: flex-start; width: 100%; }
    .panel-shell .table-header, .panel-shell .table-row { grid-template-columns: 36px 54px 1fr 90px 48px; }
}
`
    }

function renderCeTableEmpty (message) {
    return `<div class="table-empty">${esc(message)}</div>`
}

function renderCeStackCell (title, meta) {
    return `
        <div class="cell-stack">
            <div class="cell-name" title="${esc(title)}">${esc(title)}</div>
            <small>${esc(meta)}</small>
        </div>
    `
}

function renderCeLockButton (action, id, locked) {
    return `<button class="btn table-lock-btn ${locked ? 'primary' : ''}" data-action="${action}" data-id="${id}">${locked ? 'ON' : 'OFF'}</button>`
}

function renderCeMiniActions (buttons) {
    return `<div class="table-mini-actions">${buttons.join('')}</div>`
}
    function loadoutCards () {
        const items = [
            ['ghost', '#72f7c8'],
            ['rush', '#ffcf5a'],
            ['vault', '#f472b6'],
            ['clean', '#38bdf8'],
            ['panic', '#f43f5e']
        ]
        return items.map(item => `
            <button class="card" style="--accent:${item[1]}" data-action="loadout" data-id="${item[0]}">
                <strong>${uiText(`deck.loadout.${item[0]}.title`)}</strong>
                <span>${uiText(`deck.loadout.${item[0]}.desc`)}</span>
            </button>
        `).join('')
    }

    function changeRows () {
        if (!state.snapshot) {
            return `<div class="row"><div>${uiText('deck.watcher.noSnapshotTitle')}<small>${uiText('deck.watcher.noSnapshotHint')}</small></div></div>`
        }
        if (!state.changes.rows.length) {
            return `<div class="row"><div>${uiText('deck.watcher.noChangesTitle')}<small>${uiText('deck.watcher.noChangesHint')}</small></div></div>`
        }
        return state.changes.rows.map(row => `
            <div class="row">
                <div>${row.type}${row.id}: ${esc(row.oldValue)} -> ${esc(row.newValue)}
                    <small>${row.type === 'V' ? uiText('deck.watcher.variable') : uiText('deck.watcher.switch')}</small>
                </div>
            </div>
        `).join('')
    }

    function eventRows () {
        const events = mapEvents()
        if (!events.length) {
            return `<div class="row"><div>${uiText('deck.events.emptyTitle')}<small>${uiText('deck.events.emptyHint')}</small></div></div>`
        }
        return events.map(event => `
            <div class="row">
                <div>${esc(event.name)}<small>ID ${event.id} / ${event.x}, ${event.y}</small></div>
                <button class="btn primary" data-action="teleport" data-x="${event.x}" data-y="${event.y}">${uiText('common.go')}</button>
            </div>
        `).join('')
    }

    function inventoryRows () {
        const rows = inventoryRowsData()
        if (!rows.length) {
            return `<div class="row"><div>${uiText('inventory.empty')}<small>${uiText('inventory.helper')}</small></div></div>`
        }

        return rows.map(row => `
            <div class="row">
                <div>
                    #${row.id} / ${esc(row.name)}
                    <small>${row.count} ${uiText('inventory.owned').toLowerCase()}${row.description ? ' / ' + esc(row.description) : ''}</small>
                </div>
                <div>
                    <button class="btn primary" data-action="inventory-set" data-id="${row.id}">${uiText('common.set')}</button>
                    <button class="btn warn" data-action="inventory-max" data-id="${row.id}">99</button>
                    <button class="btn" data-action="inventory-clear" data-id="${row.id}">0</button>
                </div>
            </div>
        `).join('')
    }

    function profileRows () {
        if (!state.profiles.length) {
            return `<div class="row"><div>${uiText('deck.profiles.emptyTitle')}<small>${uiText('deck.profiles.emptyHint')}</small></div></div>`
        }
        return state.profiles.map(profile => `
            <div class="row">
                <div>${esc(profile.name)}<small>x${Number(profile.speed).toFixed(1)} / ${profile.noClip ? uiText('deck.profile.noClip') : uiText('deck.profile.collision')} / ${profile.encounterDisabled ? uiText('deck.profile.safe') : uiText('deck.profile.encounters')}</small></div>
                <div>
                    <button class="btn primary" data-action="apply-profile" data-id="${profile.id}">${uiText('common.apply')}</button>
                    <button class="btn" data-action="remove-profile" data-id="${profile.id}">${uiText('common.delete')}</button>
                </div>
            </div>
        `).join('')
    }

    function deckTab () {
        const modeKey = state.noClip && state.encounterDisabled ? 'ghost' : (state.speed > 1.1 ? 'rush' : 'normal')
        const totalLocks = Object.keys(state.freezeList).length
        const playerSpeedLabel = Math.pow(2, state.playerSpeedVal - 4) >= 1
            ? Math.pow(2, state.playerSpeedVal - 4).toFixed(1)
            : Math.pow(2, state.playerSpeedVal - 4).toFixed(2)
        return `
            <div class="hero">
                <div class="hero-copy">
                    <span class="kicker">${uiText('deck.hero.kicker')}</span>
                    <h2>${uiText('tab.deck.title')}</h2>
                    <p>${mapName()} @ ${playerPosition()} | ${uiText('deck.hero.partyMembers', {count: partyMembers().length})}</p>
                    <div class="hero-note">${uiText('deck.hero.note')}</div>
                </div>
                <div class="signals">
                    <div class="signal"><span class="kicker">${uiText('deck.signal.core')}</span><strong>${uiText('render.badge.offlineCore')}</strong></div>
                    <div class="signal"><span class="kicker">${uiText('deck.signal.runtime')}</span><strong>${runtimeName()}</strong></div>
                    <div class="signal"><span class="kicker">${uiText('deck.signal.mode')}</span><strong>${uiText(`deck.mode.${modeKey}`)}</strong></div>
                </div>
            </div>

            <div class="cmd">
                <input class="input" data-field="command" value="${esc(state.command)}" placeholder="${uiText('deck.command.placeholder')}">
                <button class="btn primary" data-action="command">${uiText('deck.command.run')}</button>
            </div>

            <div class="grid metrics">
                <div class="metric"><span>${uiText('deck.metric.map')}</span><strong data-live="map">${mapName()}</strong><em data-live="pos">${playerPosition()}</em></div>
                <div class="metric"><span>${uiText('deck.metric.partyHp')}</span><strong data-live="hp">${partyHpPercent()}%</strong><em>${uiText('deck.metric.members', {count: partyMembers().length})}</em></div>
                <div class="metric"><span>${uiText('deck.metric.gold')}</span><strong data-live="gold">${gold()}</strong><em data-live="gold-lock">${state.goldFreeze ? uiText('render.goldLocked') : uiText('render.goldEditable')}</em></div>
                <div class="metric"><span>${uiText('deck.metric.speed')}</span><strong data-live="speed">x${state.speed.toFixed(1)}</strong><em data-live="changes">${uiText('render.changesLocks', {changes: state.changes.variables + state.changes.switches, locks: totalLocks})}</em></div>
            </div>

            <div class="grid dashboard-grid">
                <div class="section">
                    <div class="section-title"><div><span>${uiText('deck.presets.heading')}</span><strong>${uiText('deck.presets.subheading')}</strong></div></div>
                    <div class="helper">${uiText('deck.presets.helper')}</div>
                    <div class="grid loadouts" style="margin-top:10px;">${loadoutCards()}</div>
                </div>
                <div class="section">
                    <div class="section-title"><div><span>${uiText('deck.route.heading')}</span><strong>${uiText('deck.route.subheading')}</strong></div></div>
                    <div class="control-list">
                        <div class="control-line">
                            <div>
                                <strong>${uiText('deck.route.gameSpeed')}</strong>
                                <span>${uiText('deck.route.gameSpeedDesc')}</span>
                            </div>
                            <div class="button-strip" style="align-items: center; gap: 6px;">
                                <select class="input" data-field="speedSceneFilter" style="max-width: 120px; height: 26px; padding: 0 8px; font-size: 11px; margin-right: 6px; cursor: pointer;">
                                    <option value="all" ${state.speedSceneFilter === 'all' ? 'selected' : ''}>${uiText('settings.utilities.speedTargetAll')}</option>
                                    <option value="battle" ${state.speedSceneFilter === 'battle' ? 'selected' : ''}>${uiText('settings.utilities.speedTargetBattle')}</option>
                                </select>
                                <button class="btn" data-action="speed" data-rate="1">1x</button>
                                <button class="btn" data-action="speed" data-rate="2">2x</button>
                                <button class="btn" data-action="speed" data-rate="3">3x</button>
                                <button class="btn warn" data-action="speed" data-rate="5">5x</button>
                            </div>
                        </div>
                        <input class="range" type="range" min="0.1" max="10" step="0.1" value="${state.speed}" data-field="speed">
                        <div class="control-line">
                            <div>
                                <strong>${uiText('deck.route.playerSpeed')}</strong>
                                <span>${uiText('deck.route.playerSpeedDesc', {value: playerSpeedLabel})}</span>
                            </div>
                            <div class="button-strip" style="align-items: center; gap: 6px;">
                                <button class="btn ${state.playerSpeedFix ? 'primary' : ''}" data-action="speed-fix-toggle">${state.playerSpeedFix ? uiText('settings.utilities.speedOn') : uiText('settings.utilities.speedOff')}</button>
                                <button class="btn" data-action="player-speed-set" data-val="1">1.0x</button>
                                <button class="btn" data-action="player-speed-set" data-val="2">2.0x</button>
                                <button class="btn" data-action="player-speed-set" data-val="4">4.0x</button>
                                <button class="btn warn" data-action="player-speed-set" data-val="8">8.0x</button>
                            </div>
                        </div>
                        <input class="range" type="range" min="0.5" max="10" step="0.1" value="${Math.pow(2, state.playerSpeedVal - 4)}" data-field="playerSpeedMultiplier">
                        <div class="control-line">
                            <div>
                                <strong>${uiText('deck.route.traversal')}</strong>
                                <span>${state.noClip ? uiText('deck.route.collisionDisabled') : uiText('deck.route.collisionEnabled')} / ${state.encounterDisabled ? uiText('deck.route.encountersOff') : uiText('deck.route.encountersOn')}</span>
                            </div>
                            <div class="button-strip">
                                <button class="btn ${state.noClip ? 'primary' : ''}" data-action="noclip">${state.noClip ? uiText('deck.route.noClipOn') : uiText('deck.route.noClipOff')}</button>
                                <button class="btn ${state.encounterDisabled ? 'warn' : ''}" data-action="encounter">${state.encounterDisabled ? uiText('deck.route.encountersToggleOff') : uiText('deck.route.encountersToggleOn')}</button>
                            </div>
                        </div>
                        <div class="control-line">
                            <div>
                                <strong>${uiText('deck.route.saveSlot')}</strong>
                                <span>${uiText('deck.route.saveSlotDesc')}</span>
                            </div>
                            <div class="button-strip">
                                <input class="input" data-field="slot" type="number" min="1" value="${esc(state.slot)}" style="max-width:74px;">
                                <button class="btn primary" data-action="quick-save">${uiText('common.save')}</button>
                                <button class="btn" data-action="quick-load">${uiText('common.load')}</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="grid lower-grid">
                <div class="section">
                    <div class="section-title"><div><span>${uiText('deck.actions.heading')}</span><strong>${uiText('deck.actions.subheading')}</strong></div></div>
                    <div class="grid actions four">
                        <button class="btn primary" data-action="heal">${uiText('deck.actions.fullParty')}</button>
                        <button class="btn ${state.noClip ? 'primary' : ''}" data-action="noclip">${state.noClip ? uiText('deck.route.noClipOff') : uiText('deck.route.noClipOn')}</button>
                        <button class="btn ${state.encounterDisabled ? 'warn' : ''}" data-action="encounter">${state.encounterDisabled ? uiText('deck.route.encountersToggleOn') : uiText('deck.route.encountersToggleOff')}</button>
                        <button class="btn warn" data-action="max-gold">${uiText('deck.actions.maxGold')}</button>
                        <button class="btn" data-action="snapshot">${uiText('deck.actions.snapshot')}</button>
                        <button class="btn" data-action="save-scene">${uiText('deck.actions.saveScreen')}</button>
                        <button class="btn" data-action="load-scene">${uiText('deck.actions.loadScreen')}</button>
                        <button class="btn" data-action="clear-locks">${uiText('settings.runtime.clearLocks')}</button>
                        <button class="btn" data-action="tab" data-tab="variables">${uiText('tab.variables.title')}</button>
                        <button class="btn" data-action="tab" data-tab="switches">${uiText('tab.switches.title')}</button>
                        <button class="btn" data-action="tab" data-tab="inventory">${uiText('tab.inventory.title')}</button>
                        <button class="btn" data-action="tab" data-tab="events">${uiText('deck.actions.mapsEvents')}</button>
                        <button class="btn" data-action="tab" data-tab="party">${uiText('tab.party.title')}</button>
                        <button class="btn" data-action="tab" data-tab="automation">${uiText('tab.automation.title')}</button>
                        <button class="btn" data-action="tab" data-tab="script">${uiText('tab.script.title')}</button>

                        <button class="btn danger" data-action="panic">${uiText('settings.runtime.panic')}</button>
                        <button class="btn" data-action="hide">${uiText('deck.actions.hide')}</button>
                    </div>
                </div>
                <div class="section">
                    <div class="section-title">
                        <div><span>${uiText('deck.log.heading')}</span><strong>${uiText('deck.log.subheading')}</strong></div>
                        <button class="btn" data-action="refresh">${uiText('common.refresh')}</button>
                    </div>
                    <div class="log-shell">
                        ${state.log.length ? state.log.map(item => `<div class="log-line">${esc(item)}</div>`).join('') : `<div class="log-line">${uiText('deck.log.empty')}</div>`}
                    </div>
                </div>
            </div>

            <div class="section" style="margin-top:8px;">
                <div class="section-title"><div><span>${uiText('deck.utilities.heading')}</span><strong>${uiText('deck.utilities.subheading')}</strong></div></div>
                <div class="grid actions two">
                    <button class="btn" data-action="save-scene">${uiText('deck.actions.saveScreen')}</button>
                    <button class="btn" data-action="load-scene">${uiText('deck.actions.loadScreen')}</button>
                    <button class="btn" data-action="title">${uiText('settings.runtime.titleScene')}</button>
                    <button class="btn" data-action="clean">${uiText('settings.runtime.clean')}</button>
                    <button class="btn danger" data-action="panic">${uiText('settings.runtime.panic')}</button>
                    <button class="btn" data-action="hide">${uiText('deck.utilities.hidePanel')}</button>
                </div>
            </div>
        `
    }

    function watcherTab () {
        return `
            <div class="section">
                <div class="section-title">
                    <div><span>${uiText('tab.watcher.title')}</span><strong>${uiText('watcher.summary', {variables: state.changes.variables, switches: state.changes.switches})}</strong></div>
                    <button class="btn primary" data-action="snapshot">${uiText('common.takeSnapshot')}</button>
                </div>
                <div class="table">${changeRows()}</div>
            </div>
        `
    }

    function battleTab () {
        const battleReady = canBattleAction()
        return `
            <div class="section">
                <div class="section-title">
                    <div><span>${uiText('tab.battle.title')}</span><strong>${uiText('battle.subheading')}</strong></div>
                    <span class="badge">${battleReady ? uiText('battle.inBattle') : uiText('battle.noBattle')}</span>
                </div>
                <div class="grid actions" style="margin-bottom:12px">
                    <button class="btn primary" data-action="battle-win">${uiText('battle.forceVictory')}</button>
                    <button class="btn danger" data-action="battle-lose">${uiText('battle.forceDefeat')}</button>
                    <button class="btn warn" data-action="battle-escape">${uiText('battle.forceEscape')}</button>
                    <button class="btn" data-action="battle-abort">${uiText('battle.forceAbort')}</button>
                </div>
                <div class="grid cols" style="margin-bottom:12px">
                    <div class="section">
                        <div class="section-title"><div><span>${uiText('battle.setHp')}</span></div></div>
                        <input class="input" data-field="battleHpVal" value="${esc(state.battleHpVal)}" placeholder="${uiText('battle.hpPlaceholder')}">
                        <div class="grid actions" style="margin-top:8px">
                            <button class="btn primary" data-action="battle-set-hp" data-target="party">${uiText('battle.setPartyHp')}</button>
                            <button class="btn danger" data-action="battle-set-hp" data-target="enemy">${uiText('battle.setEnemyHp')}</button>
                        </div>
                    </div>
                    <div class="section">
                        <div class="section-title"><div><span>${uiText('battle.messageSkip')}</span></div></div>
                        <div class="grid actions">
                            <button class="btn ${state.messageSkip ? 'primary' : ''}" data-action="message-skip-toggle">${state.messageSkip ? uiText('battle.messageSkipOn') : uiText('battle.messageSkipOff')}</button>
                        </div>
                    </div>
                </div>
                <div class="section">
                    <div class="section-title"><div><span>${uiText('battle.godModeActors')}</span><strong>${uiText('battle.togglePerMember')}</strong></div></div>
                    <div class="table">
                        ${partyMembers().length === 0 ? `<div class="row"><div>${uiText('battle.noPartyTitle')}<small>${uiText('battle.noPartyHint')}</small></div></div>` : partyMembers().map((actor, index) => {
                            const id = actorKey(actor, index)
                            const isGod = !!state.godModeActors[id]
                            return `
                                <div class="row">
                                    <div>
                                        ${esc(actorDisplayName(actor, index))}
                                        <small>HP: ${actor.hp || 0}/${actor.mhp || 0} | MP: ${actor.mp || 0}/${actor.mmp || 0}</small>
                                    </div>
                                    <button class="btn ${isGod ? 'primary' : ''}" data-action="god-mode-toggle" data-id="${id}">${isGod ? uiText('battle.godModeOn') : uiText('battle.godModeOff')}</button>
                                </div>
                            `
                        }).join('')}
                    </div>
                </div>
            </div>
        `
    }

    function automationTab () {
        const automations = state.automations || []
        const options = automationActionOptions()
        return `
            <div class="section">
                <div class="section-title">
                    <div><span>${uiText('automation.heading')}</span><strong>${uiText('automation.subheading')}</strong></div>

                </div>
                <div class="grid cols">
                    <div>
                        <div class="section">
                            <div class="section-title">
                                <div><span>${uiText('deck.presets.heading')}</span><strong>${uiText('automation.presets.subheading')}</strong></div>
                            </div>
                            <div class="grid loadouts" style="margin-bottom:12px">
                                ${automationPresets().map((preset, index) => `
                                    <button class="card" style="--accent:${['#72f7c8', '#ffcf5a', '#38bdf8', '#f43f5e'][index % 4]}" data-action="auto-preset" data-id="${preset.id}">
                                        <strong>${esc(preset.name)}</strong>
                                        <span>${esc(preset.desc)}</span>
                                    </button>
                                `).join('')}
                            </div>
                        </div>

                        <div class="section" style="margin-top:8px;">
                            <div class="section-title">
                                <div><span>${uiText('automation.custom.heading')}</span><strong>${uiText('automation.custom.subheading')}</strong></div>
                            </div>
                            <div class="toolbar-row">
                                <input class="input" data-field="customAutomationName" value="${esc(state.customAutomationName)}" placeholder="${uiText('automation.namePlaceholder')}">
                                <input class="input" data-field="customAutomationInterval" value="${esc(state.customAutomationInterval)}" placeholder="${uiText('automation.intervalPlaceholder')}" style="max-width:130px;">
                            </div>
                            <div class="toolbar-row">
                                <select class="input" data-field="customAutomationAction">
                                    ${options.filter(item => item.id !== 'wait').map(option => `<option value="${option.id}" ${state.customAutomationAction === option.id ? 'selected' : ''}>${esc(option.label)}</option>`).join('')}
                                </select>
                                ${automationNeedsId(state.customAutomationAction) ? `<input class="input" data-field="customAutomationParamId" value="${esc(state.customAutomationParamId)}" placeholder="${uiText('automation.idPlaceholder')}" style="max-width:110px;">` : ''}
                                ${automationNeedsValue(state.customAutomationAction) ? `<input class="input" data-field="customAutomationParamValue" value="${esc(state.customAutomationParamValue)}" placeholder="${uiText('automation.valuePlaceholder')}" style="max-width:130px;">` : ''}
                                ${automationNeedsBool(state.customAutomationAction) ? `
                                    <label>
                                        <input type="checkbox" data-field="customAutomationParamBool" ${state.customAutomationParamBool ? 'checked' : ''} style="accent-color:#72f7c8;">
                                        ${uiText('common.enabled')}
                                    </label>
                                ` : ''}
                                <button class="btn primary" data-action="auto-custom-add">${uiText('common.add')}</button>
                            </div>
                        </div>
                    </div>

                    <div>
                        <div class="section">
                            <div class="section-title">
                                <div><span>${uiText('automation.active.heading')}</span><strong>${uiText('automation.active.subheading', {count: automations.length})}</strong></div>
                            </div>
                            <div class="table">
                                ${automations.length === 0 ? `<div class="row"><div>${uiText('automation.active.emptyTitle')}<small>${uiText('automation.active.emptyHint')}</small></div></div>` : automations.map(aut => `
                                    <div class="row">
                                        <div>
                                            ${esc(aut.name)}
                                            <small>${esc(automationActionLabel(aut.actionId, aut.params || {}))} | ${aut.interval}ms | ${aut.enabled ? uiText('automation.running') : uiText('automation.disabled')}</small>
                                        </div>
                                        <div>
                                            <button class="btn ${aut.enabled ? 'primary' : ''}" data-action="auto-toggle" data-id="${aut.id}">${aut.enabled ? uiText('automation.disable') : uiText('automation.enable')}</button>
                                            <button class="btn danger" data-action="auto-remove" data-id="${aut.id}">${uiText('common.remove')}</button>
                                        </div>
                                    </div>
                                `).join('')}
                            </div>
                        </div>

                        <div class="section" style="margin-top:8px;">
                            <div class="section-title">
                                <div><span>${uiText('automation.macro.heading')}</span><strong>${uiText('automation.macro.subheading')}</strong></div>
                            </div>
                            <div class="toolbar-row">
                                <select class="input" data-field="macroAction">
                                    ${options.map(option => `<option value="${option.id}" ${state.macroAction === option.id ? 'selected' : ''}>${esc(option.label)}</option>`).join('')}
                                </select>
                                <input class="input" data-field="macroDelay" value="${esc(state.macroDelay)}" placeholder="${uiText('automation.macro.delayPlaceholder')}" style="max-width:120px;">
                            </div>
                            <div class="toolbar-row">
                                ${automationNeedsId(state.macroAction) ? `<input class="input" data-field="macroParamId" value="${esc(state.macroParamId)}" placeholder="${uiText('automation.idPlaceholder')}" style="max-width:110px;">` : ''}
                                ${automationNeedsValue(state.macroAction) ? `<input class="input" data-field="macroParamValue" value="${esc(state.macroParamValue)}" placeholder="${uiText('automation.valuePlaceholder')}" style="max-width:130px;">` : ''}
                                ${automationNeedsBool(state.macroAction) ? `
                                    <label>
                                        <input type="checkbox" data-field="macroParamBool" ${state.macroParamBool ? 'checked' : ''} style="accent-color:#72f7c8;">
                                        ${uiText('common.enabled')}
                                    </label>
                                ` : ''}
                                <button class="btn" data-action="macro-step-add">${uiText('automation.macro.addStep')}</button>
                            </div>
                            <div class="table">
                                ${state.macroSteps.length === 0 ? `<div class="row"><div>${uiText('automation.macro.emptyTitle')}<small>${uiText('automation.macro.emptyHint')}</small></div></div>` : state.macroSteps.map((step, index) => `
                                    <div class="row ${state.macroStepIndex === index ? 'changed' : ''}">
                                        <div>
                                            ${index + 1}. ${esc(step.label)}
                                            <small>${step.actionId === 'wait' ? uiText('automation.macro.wait', {duration: step.params.duration || 0}) : uiText('automation.macro.delayAfter', {duration: step.delay || 0})}</small>
                                        </div>
                                        <div>
                                            <button class="btn danger" data-action="macro-step-remove" data-id="${step.id}">${uiText('common.remove')}</button>
                                        </div>
                                    </div>
                                `).join('')}
                            </div>
                            <div class="toolbar-row" style="margin-top:8px;">
                                <button class="btn primary" data-action="macro-run" ${state.macroRunning || !state.macroSteps.length ? 'disabled' : ''}>${state.macroRunning ? uiText('automation.macro.running') : uiText('automation.macro.run')}</button>
                                <button class="btn" data-action="macro-clear" ${state.macroRunning ? 'disabled' : ''}>${uiText('common.clear')}</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        `
    }

    function actorBaseStatsTabContent (actor) {
        const actorId = actor.actorId()
        const level = actorLevel(actorId)
        const exp = actorExp(actorId)
        
        const draftLevel = state.partyLevelDrafts[actorId] !== undefined ? state.partyLevelDrafts[actorId] : level
        const draftExp = state.partyExpDrafts[actorId] !== undefined ? state.partyExpDrafts[actorId] : exp

        const params = [
            { id: 'hp', name: uiText('party.param.hp'), isParam: false },
            { id: 'mp', name: uiText('party.param.mp'), isParam: false },
            { id: 'tp', name: uiText('party.param.tp'), isParam: false },
            { id: 0, name: uiText('party.param.mhp'), isParam: true },
            { id: 1, name: uiText('party.param.mmp'), isParam: true },
            { id: 2, name: uiText('party.param.atk'), isParam: true },
            { id: 3, name: uiText('party.param.def'), isParam: true },
            { id: 4, name: uiText('party.param.mat'), isParam: true },
            { id: 5, name: uiText('party.param.mdf'), isParam: true },
            { id: 6, name: uiText('party.param.agi'), isParam: true },
            { id: 7, name: uiText('party.param.luk'), isParam: true }
        ]

        return `
            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 12px; margin-bottom: 12px;">
                <div class="section" style="padding: 10px; background: rgba(2,6,23,.22); border: 1px solid rgba(255,255,255,.05); border-radius: 6px;">
                    <div class="section-title" style="margin-bottom: 8px;"><div><span>${uiText('party.base.levelExp')}</span></div></div>
                    <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 8px;">
                        <div>
                            <label style="display:block; font-size:11px; color:#94a3b8; margin-bottom:4px;">${uiText('common.level')}</label>
                            <div style="display:flex; gap:4px;">
                                <input class="input party-level-input" data-id="${actorId}" value="${esc(draftLevel)}" style="flex:1;">
                                <button class="btn primary" data-action="party-level-apply" data-id="${actorId}">${uiText('common.set')}</button>
                            </div>
                        </div>
                        <div>
                            <label style="display:block; font-size:11px; color:#94a3b8; margin-bottom:4px;">${uiText('party.base.exp')}</label>
                            <div style="display:flex; gap:4px;">
                                <input class="input party-exp-input" data-id="${actorId}" value="${esc(draftExp)}" style="flex:1;">
                                <button class="btn primary" data-action="actor-exp-apply" data-id="${actorId}">${uiText('common.set')}</button>
                            </div>
                        </div>
                    </div>
                </div>
                
                <div class="section" style="padding: 10px; background: rgba(2,6,23,.22); border: 1px solid rgba(255,255,255,.05); border-radius: 6px;">
                    <div class="section-title" style="margin-bottom: 8px;"><div><span>${uiText('party.base.godMode')}</span></div></div>
                    <div style="display:flex; gap:8px; align-items:center; height:100%; padding-bottom:10px;">
                        <label style="display:flex; align-items:center; gap:8px; font-size:12px; font-weight:800; cursor:pointer; color:#cbd5e1;">
                            <input type="checkbox" class="actor-god-checkbox" data-id="${actorId}" ${state.godModeActors[String(actorId)] ? 'checked' : ''} style="accent-color:#72f7c8; width:16px; height:16px;">
                            ${uiText('party.base.godModeDesc')}
                        </label>
                    </div>
                </div>
            </div>

            <div class="table-container">
                <div class="table-header" style="grid-template-columns: 50px 1.5fr 1.5fr 1.5fr 100px;">
                    <div class="cell-center" title="${uiText('common.lockFreeze')}">${uiText('party.table.active')}</div>
                    <div>${uiText('party.table.statName')}</div>
                    <div>${uiText('common.currentValue')}</div>
                    <div>${uiText('common.newValue')}</div>
                    <div class="cell-center">${uiText('common.actions')}</div>
                </div>
                <div class="table-body" style="max-height: 280px; overflow-y: auto;">
                    ${params.map(p => {
                        const key = p.isParam ? `actor-param:${actorId}:${p.id}` : `actor:${actorId}:${p.id}`
                        const isLocked = !!state.freezeList[key]
                        
                        let currentVal = 0
                        if (p.isParam) {
                            currentVal = actor.param(p.id)
                        } else {
                            if (p.id === 'hp') currentVal = actor.hp
                            else if (p.id === 'mp') currentVal = actor.mp
                            else if (p.id === 'tp') currentVal = actor.tp
                        }
                        
                        const draftVal = state.partyStatsDrafts[`${actorId}:${p.id}`] !== undefined ? state.partyStatsDrafts[`${actorId}:${p.id}`] : currentVal
                        return `
                            <div class="table-row" style="grid-template-columns: 50px 1.5fr 1.5fr 1.5fr 100px;">
                                <div class="cell-center">
                                    <input type="checkbox" class="ce-lock-checkbox" data-action="actor-stat-lock" data-actor-id="${actorId}" data-id="${p.id}" data-is-param="${p.isParam}" data-name="${esc(p.name)}" ${isLocked ? 'checked' : ''} style="accent-color:#f59e0b;" title="${uiText('common.lockFreeze')}">
                                </div>
                                <div class="cell-name">${esc(p.name)}</div>
                                <div style="font-family: Consolas, Monaco, monospace; color: #cbd5e1;">${currentVal}</div>
                                <div>
                                    <input class="table-input party-stat-input" data-actor-id="${actorId}" data-param-id="${p.id}" value="${esc(draftVal)}">
                                </div>
                                ${renderCeMiniActions([
                                    `<button class="btn primary" data-action="actor-stat-apply" data-actor-id="${actorId}" data-param-id="${p.id}" data-is-param="${p.isParam}" data-name="${esc(p.name)}">${uiText('common.apply')}</button>`
                                ])}
                            </div>
                        `
                    }).join('')}
                </div>
            </div>
        `
    }

    function actorEquipsTabContent (actor) {
        const actorId = actor.actorId()
        const equips = getActorEquips(actor)
        
        let rightPanelHtml = ''
        if (state.actorSelectedEquipSlot !== null) {
            const slotIndex = state.actorSelectedEquipSlot
            const isWeapon = equips[slotIndex] ? equips[slotIndex].isWeapon : false
            const slotName = equips[slotIndex] ? equips[slotIndex].slotName : `${uiText('party.equip.slotType')} ${slotIndex + 1}`
            
            // Get database items
            let dbItems = []
            if (isWeapon) {
                dbItems = exists('$dataWeapons') ? $dataWeapons.filter(item => item && item.name) : []
            } else {
                dbItems = exists('$dataArmors') ? $dataArmors.filter(item => item && item.name) : []
            }
            
            // Filter by search query
            const query = (state.actorEquipSearchQuery || '').trim().toLowerCase()
            const filteredItems = dbItems.filter(item => {
                const haystack = `${item.id} ${item.name}`.toLowerCase()
                return !query || haystack.includes(query)
            })

            rightPanelHtml = `
                <div class="section" style="padding: 10px; background: rgba(2,6,23,.22); border: 1px solid rgba(255,255,255,.05); border-radius: 6px;">
                    <div class="section-title">
                        <div><span>${uiText('party.equip.slotTitle', {name: slotName})}</span></div>
                        <button class="btn" data-action="actor-equip-cancel">${uiText('common.cancel')}</button>
                    </div>
                    <div class="toolbar-row" style="margin-top: 8px; margin-bottom: 8px;">
                        <input class="input actor-equip-search" data-field="actorEquipSearchQuery" value="${esc(state.actorEquipSearchQuery)}" placeholder="${uiText('party.equip.searchPlaceholder', {kind: isWeapon ? uiText('inventory.kind.weapons').toLowerCase() : uiText('inventory.kind.armors').toLowerCase()})}">
                    </div>
                    <div class="table-container">
                        <div class="table-body" style="max-height: 250px; overflow-y: auto;">
                            ${filteredItems.length === 0 ? `<div class="row"><div>${uiText('party.equip.noItems')}</div></div>` : filteredItems.map(item => `
                                <div class="row" style="padding: 6px 8px;">
                                    <div>#${item.id} ${esc(item.name)}</div>
                                    <button class="btn primary" data-action="actor-equip-select" data-actor-id="${actorId}" data-slot="${slotIndex}" data-item-id="${item.id}" data-is-weapon="${isWeapon}">${uiText('party.equip.equip')}</button>
                                </div>
                            `).join('')}
                        </div>
                    </div>
                </div>
            `
        } else {
            rightPanelHtml = `
                <div style="display:flex; flex-direction:column; align-items:center; justify-content:center; height:100%; border: 1px dashed rgba(255,255,255,.1); border-radius: 6px; padding: 20px; color: #94a3b8; text-align:center;">
                    <strong>${uiText('party.equip.selectSlot')}</strong>
                    <span style="font-size:11px; margin-top:4px;">${uiText('party.equip.selectHint')}</span>
                </div>
            `
        }

        return `
            <div style="display: grid; grid-template-columns: 1.2fr 1fr; gap: 12px;">
                <div class="table-container">
                    <div class="table-header" style="grid-template-columns: 1fr 1.5fr 150px;">
                        <div>${uiText('party.equip.slotType')}</div>
                        <div>${uiText('party.equip.equippedItem')}</div>
                        <div class="cell-center">${uiText('common.actions')}</div>
                    </div>
                    <div class="table-body" style="max-height: 350px;">
                        ${equips.map(eq => {
                            const isSelected = state.actorSelectedEquipSlot === eq.index
                            return `
                                <div class="table-row ${isSelected ? 'active-row' : ''}" style="grid-template-columns: 1fr 1.5fr 150px;">
                                    <div class="cell-name">${esc(eq.slotName)}</div>
                                    <div style="color: ${eq.item ? '#e2e8f0' : '#64748b'};">
                                        ${eq.item ? `#${eq.item.id} ${esc(eq.item.name)}` : uiText('party.equip.empty')}
                                    </div>
                                    <div class="table-mini-actions">
                                        <button class="btn primary" data-action="actor-equip-change-btn" data-slot="${eq.index}">${uiText('party.equip.change')}</button>
                                        <button class="btn danger" data-action="actor-equip-unequip-btn" data-actor-id="${actorId}" data-slot="${eq.index}" ${eq.item ? '' : 'disabled'}>${uiText('common.remove')}</button>
                                    </div>
                                </div>
                            `
                        }).join('')}
                    </div>
                </div>
                <div>
                    ${rightPanelHtml}
                </div>
            </div>
        `
    }

    function actorSkillsTabContent (actor) {
        const actorId = actor.actorId()
        const learned = getActorSkills(actor)
        
        // Get database skills
        const dbSkills = exists('$dataSkills') ? $dataSkills.filter(s => s && s.name && s.name.trim() !== '') : []
        const query = (state.actorSkillsQuery || '').trim().toLowerCase()
        const filteredSkills = dbSkills.filter(s => {
            const haystack = `${s.id} ${s.name}`.toLowerCase()
            return !query || haystack.includes(query)
        })

        return `
            <div style="display: grid; grid-template-columns: 1fr 1fr; gap: 12px;">
                <div class="section" style="padding: 10px; background: rgba(2,6,23,.22); border: 1px solid rgba(255,255,255,.05); border-radius: 6px;">
                    <div class="section-title"><div><span>${uiText('party.skills.learned')}</span><strong>${uiText('party.skills.active', {count: learned.length})}</strong></div></div>
                    <div class="table-container" style="margin-top: 8px;">
                        <div class="table-body" style="max-height: 300px; overflow-y: auto;">
                            ${learned.length === 0 ? `<div class="row"><div>${uiText('party.skills.none')}</div></div>` : learned.map(sk => `
                                <div class="row" style="padding: 6px 8px;">
                                    <div>#${sk.id} ${esc(sk.name)}<small style="display:block; color:#94a3b8; font-size:10px;">${esc(sk.description)}</small></div>
                                    <button class="btn danger" data-action="actor-skill-forget" data-actor-id="${actorId}" data-skill-id="${sk.id}">${uiText('party.skills.forget')}</button>
                                </div>
                            `).join('')}
                        </div>
                    </div>
                </div>
                
                <div class="section" style="padding: 10px; background: rgba(2,6,23,.22); border: 1px solid rgba(255,255,255,.05); border-radius: 6px;">
                    <div class="section-title"><div><span>${uiText('party.skills.learnNew')}</span></div></div>
                    <div class="toolbar-row" style="margin-top: 8px; margin-bottom: 8px;">
                        <input class="input actor-skills-search" data-field="actorSkillsQuery" value="${esc(state.actorSkillsQuery)}" placeholder="${uiText('party.skills.searchPlaceholder')}">
                    </div>
                    <div class="table-container">
                        <div class="table-body" style="max-height: 250px; overflow-y: auto;">
                            ${filteredSkills.length === 0 ? `<div class="row"><div>${uiText('party.skills.noMatch')}</div></div>` : filteredSkills.map(sk => {
                                const isAlreadyLearned = learned.some(l => l.id === sk.id)
                                return `
                                    <div class="row" style="padding: 6px 8px;">
                                        <div>#${sk.id} ${esc(sk.name)}<small style="display:block; color:#94a3b8; font-size:10px;">${esc(sk.description)}</small></div>
                                        <button class="btn primary" data-action="actor-skill-learn" data-actor-id="${actorId}" data-skill-id="${sk.id}" ${isAlreadyLearned ? 'disabled' : ''}>${isAlreadyLearned ? uiText('party.skills.learnedState') : uiText('party.skills.learn')}</button>
                                    </div>
                                `
                            }).join('')}
                        </div>
                    </div>
                </div>
            </div>
        `
    }

    function actorStatsEditor () {
        if (!state.selectedActorId) {
            return `
                <div class="section" style="margin-top: 12px; border-left: 3px solid #64748b;">
                    <div class="section-title"><div><span>${uiText('party.editor.title')}</span></div></div>
                    <div class="table-toolbar-note">${uiText('party.editor.emptyHint')}</div>
                </div>
            `
        }

        const actorId = state.selectedActorId
        const actor = exists('$gameActors') ? $gameActors.actor(actorId) : null
        if (!actor) {
            return `
                <div class="section" style="margin-top: 12px; border-left: 3px solid #ef4444;">
                    <div class="section-title"><div><span>${uiText('party.editor.title')}</span></div></div>
                    <div class="table-toolbar-note">${uiText('party.editor.unavailable', {id: actorId})}</div>
                </div>
            `
        }

        const subTabHtml = `
            <div class="button-strip" style="margin-bottom: 12px; border-bottom: 1px solid rgba(255,255,255,.05); padding-bottom: 8px;">
                <button class="btn ${state.actorEditorSubTab === 'stats' ? 'primary' : ''}" data-action="actor-subtab" data-tab="stats">${uiText('party.subtab.stats')}</button>
                <button class="btn ${state.actorEditorSubTab === 'equips' ? 'primary' : ''}" data-action="actor-subtab" data-tab="equips">${uiText('party.subtab.equips')}</button>
                <button class="btn ${state.actorEditorSubTab === 'skills' ? 'primary' : ''}" data-action="actor-subtab" data-tab="skills">${uiText('party.subtab.skills')}</button>
            </div>
        `

        let contentHtml = ''
        if (state.actorEditorSubTab === 'equips') {
            contentHtml = actorEquipsTabContent(actor)
        } else if (state.actorEditorSubTab === 'skills') {
            contentHtml = actorSkillsTabContent(actor)
        } else {
            contentHtml = actorBaseStatsTabContent(actor)
        }

        return `
            <div class="section" style="margin-top: 12px; border-left: 3px solid #72f7c8;">
                <div class="section-title">
                    <div><span>${uiText('party.editor.selected', {name: actor.name()})}</span><strong>ID: ${actorId}</strong></div>
                    <button class="btn" data-action="deselect-actor">${uiText('party.editor.deselect')}</button>
                </div>
                <div class="table-toolbar-note">${uiText('party.editor.helper')}</div>
                ${subTabHtml}
                ${contentHtml}
            </div>
        `
    }

    function partyTab () {
        const actors = allActorsData()
        const partyIds = partyActorIds()
        return `
            <div class="section">
                <div class="section-title">
                    <div><span>${uiText('party.heading')}</span><strong>${uiText('party.summary', {party: partyIds.length, actors: actors.length})}</strong></div>

                </div>
                <div class="table-toolbar-note">${uiText('party.helper')}</div>
                <div class="toolbar-row">
                    <input class="input" data-field="partySearch" value="${esc(state.partySearch)}" placeholder="${uiText('party.searchPlaceholder')}">
                    <button class="btn" data-action="refresh">${uiText('common.refresh')}</button>
                </div>
                <div class="table-container">
                    <div class="table-header" style="grid-template-columns: 64px 1.15fr 1fr 148px 132px 120px;">
                        <div>${uiText('common.id')}</div>
                        <div>${uiText('common.name')}</div>
                        <div>${uiText('common.class')}</div>
                        <div>${uiText('common.level')}</div>
                        <div>${uiText('common.status')}</div>
                        <div class="cell-center">${uiText('common.actions')}</div>
                    </div>
                    <div class="table-body" style="max-height:420px;">
                        ${actors.length === 0 ? renderCeTableEmpty(uiText('party.empty')) : actors.map(actor => {
                            const inParty = actorInParty(actor.id)
                            const currentLevel = actorLevel(actor.id)
                            const draftLevel = state.partyLevelDrafts[actor.id] !== undefined ? state.partyLevelDrafts[actor.id] : currentLevel
                            const isSelected = state.selectedActorId === actor.id
                            return `
                                <div class="table-row ${isSelected ? 'active-row' : ''}" data-action="select-actor" data-id="${actor.id}" style="grid-template-columns: 64px 1.15fr 1fr 148px 132px 120px; cursor: pointer;">
                                    <div class="cell-code">A${actor.id}</div>
                                    ${renderCeStackCell(actor.name, inParty ? uiText('party.activeActor') : uiText('party.availableActor'))}
                                    ${renderCeStackCell(actorClassName(actor), uiText('party.databaseClass'))}
                                    <div class="table-mini-actions" style="justify-content:flex-start;">
                                        <input class="table-input party-level-input" data-id="${actor.id}" value="${esc(draftLevel)}" ${inParty ? '' : 'disabled'} style="max-width:72px;">
                                        <button class="btn primary" data-action="party-level-apply" data-id="${actor.id}" ${inParty ? '' : 'disabled'}>${uiText('common.set')}</button>
                                    </div>
                                    <div>${inParty ? `<span class="badge">${uiText('party.inParty')}</span>` : `<span class="badge">${uiText('party.standby')}</span>`}</div>
                                    <div class="cell-center">
                                        <button class="btn ${inParty ? 'danger' : 'primary'}" data-action="${inParty ? 'party-remove' : 'party-add'}" data-id="${actor.id}">${inParty ? uiText('common.remove') : uiText('common.add')}</button>
                                    </div>
                                </div>
                            `
                        }).join('')}
                    </div>
                </div>
            </div>
            ${actorStatsEditor()}
        `
    }

    function scriptTab () {
        const presets = scriptPresets()
        return `
            <div class="section">
                <div class="section-title">
                    <div><span>${uiText('tab.script.title')}</span><strong>${uiText('script.subheading')}</strong></div>

                </div>
                <div class="grid cols">
                    <div>
                        <div class="section">
                            <div class="section-title"><div><span>${uiText('deck.presets.heading')}</span><strong>${uiText('script.presets.subheading', {count: presets.length})}</strong></div></div>
                            <div class="table">
                                ${presets.map(preset => `
                                    <div class="row">
                                        <div>
                                            ${esc(preset.name)}
                                            <small>${esc(preset.desc)}</small>
                                        </div>
                                        <button class="btn" data-action="script-preset" data-id="${preset.id}">${uiText('common.load')}</button>
                                    </div>
                                `).join('')}
                            </div>
                        </div>
                        <div class="section" style="margin-top:8px;">
                            <div class="section-title"><div><span>${uiText('script.runtimeConfig.heading')}</span><strong>${uiText('script.runtimeConfig.subheading')}</strong></div></div>
                            <div class="toolbar-row">
                                <button class="btn" data-action="script-export-config">${uiText('common.export')}</button>
                                <button class="btn primary" data-action="script-import-config">${uiText('common.import')}</button>
                            </div>
                            <textarea class="textarea" data-field="scriptConfigText" style="min-height:180px;">${esc(state.scriptConfigText)}</textarea>
                        </div>
                    </div>
                    <div>
                        <div class="section">
                            <div class="section-title"><div><span>JavaScript</span><strong>${uiText('script.javascript.subheading')}</strong></div></div>
                            <textarea class="textarea" data-field="scriptCode" style="min-height:320px;">${esc(state.scriptCode)}</textarea>
                            <div class="toolbar-row" style="margin-top:8px;">
                                <button class="btn primary" data-action="script-run">${uiText('script.run')}</button>
                                <button class="btn" data-action="script-clear-output">${uiText('script.clearOutput')}</button>
                            </div>
                        </div>
                        <div class="section" style="margin-top:8px;">
                            <div class="section-title"><div><span>${uiText('common.output')}</span><strong>${uiText('script.output.subheading')}</strong></div></div>
                            <pre class="log">${esc(state.scriptOutput || uiText('script.output.empty'))}</pre>
                        </div>
                    </div>
                </div>
            </div>
        `
    }

    function profilesTab () {
        return `
            <div class="section">
                <div class="section-title">
                    <div><span>${uiText('tab.profiles.title')}</span><strong>${uiText('profiles.subheading')}</strong></div>
                    <button class="btn primary" data-action="save-profile">${uiText('profiles.saveCurrent')}</button>
                </div>
                <div class="table">${profileRows()}</div>
            </div>
        `
    }


    function eventsTab () {
        const pageData = mapPageData()
        const maps = pageData.rows
        const events = mapEvents()
        const locations = filteredSavedLocations()
        return `
            <div class="grid cols">
                <div class="section">
                    <div class="section-title">
                        <div><span>${uiText('events.saved.heading')}</span><strong>${uiText('events.saved.subheading', {count: locations.length})}</strong></div>

                    </div>
                    <div class="toolbar-row">
                        <input class="input" data-field="locationAliasInput" value="${esc(state.locationAliasInput)}" placeholder="${uiText('events.aliasPlaceholder')}">
                        <button class="btn primary" data-action="saved-location-add">${uiText('profiles.saveCurrent')}</button>
                    </div>
                    <div class="toolbar-row">
                        <input class="input" data-field="locationSearch" value="${esc(state.locationSearch)}" placeholder="${uiText('events.searchSavedPlaceholder')}">
                    </div>
                    <div class="table">
                        ${locations.length === 0 ? `<div class="row"><div>${uiText('events.saved.emptyTitle')}<small>${uiText('events.saved.emptyHint')}</small></div></div>` : locations.map(location => `
                            <div class="row">
                                <div>
                                    ${esc(location.name)}
                                    <small>${esc(location.mapName || uiText('events.mapFallback', {id: location.mapId}))} @ ${location.x}, ${location.y}</small>
                                </div>
                                <div>
                                    <button class="btn primary" data-action="saved-location-teleport" data-id="${location.id}">${uiText('events.teleport')}</button>
                                    <button class="btn danger" data-action="saved-location-remove" data-id="${location.id}">${uiText('common.delete')}</button>
                                </div>
                            </div>
                        `).join('')}
                    </div>
                </div>
                <div class="section">
                    <div class="section-title">
                        <div><span>${uiText('events.map.heading')}</span><strong>${uiText('events.map.subheading', {count: pageData.totalRows})}</strong></div>
                        <button class="btn" data-action="refresh">${uiText('common.refresh')}</button>
                    </div>
                    <div class="toolbar-row">
                        <input class="input" data-field="mapSearch" value="${esc(state.mapSearch)}" placeholder="${uiText('events.searchMapPlaceholder')}" style="flex:1.5;">
                        <input class="input" data-field="teleportX" value="${esc(state.teleportX)}" placeholder="X" style="max-width:80px; text-align:center;">
                        <input class="input" data-field="teleportY" value="${esc(state.teleportY)}" placeholder="Y" style="max-width:80px; text-align:center;">
                    </div>
                    <div class="table-container">
                        <div class="table-header" style="grid-template-columns: 60px 1fr 1.5fr 80px;">
                            <div>${uiText('common.id')}</div>
                            <div>${uiText('deck.metric.map')}</div>
                            <div>${uiText('events.fullPath')}</div>
                            <div class="cell-center">${uiText('common.go')}</div>
                        </div>
                        <div class="table-body" style="max-height:260px;">
                            ${maps.length === 0 ? renderCeTableEmpty(uiText('events.map.empty')) : maps.map(m => `
                                <div class="table-row" style="grid-template-columns: 60px 1fr 1.5fr 80px;">
                                    <div class="cell-code">${m.id}</div>
                                    <div class="cell-name" title="${esc(m.name)}">${esc(m.name)}</div>
                                    <div style="color:#94a3b8; font-size:11px; overflow:hidden; text-overflow:ellipsis; white-space:nowrap;" title="${esc(m.path)}">${esc(m.path)}</div>
                                    <div class="cell-center">
                                        <button class="btn primary" data-action="teleport-map" data-id="${m.id}" style="min-height:26px; height:26px; font-size:10px; padding:0 8px;">${uiText('common.go')}</button>
                                    </div>
                                </div>
                            `).join('')}
                        </div>
                    </div>
                    <div class="toolbar-row" style="justify-content:space-between; margin-top:10px;">
                        <div class="table-toolbar-note">${uiPageSummary(pageData)}</div>
                        <div class="table-mini-actions">
                            <select class="input select" data-field="mapRowsPerPage" style="max-width:110px;">
                                ${[5, 7, 10, 25, 50, 100, 250, 'all'].map(size => `<option value="${size}" ${pageData.rowsPerPage === size ? 'selected' : ''}>${uiPageSizeOption(size)}</option>`).join('')}
                            </select>
                            <input class="input" data-field="mapPage" value="${pageData.page}" style="max-width:72px;" title="${uiText('common.page')}">
                            <button class="btn" data-action="map-page-first" ${pageData.page <= 1 ? 'disabled' : ''}>&lt;&lt;</button>
                            <button class="btn" data-action="map-page-prev" ${pageData.page <= 1 ? 'disabled' : ''}>&lt;</button>
                            <button class="btn" data-action="map-page-next" ${pageData.page >= pageData.totalPages ? 'disabled' : ''}>&gt;</button>
                            <button class="btn" data-action="map-page-last" ${pageData.page >= pageData.totalPages ? 'disabled' : ''}>&gt;&gt;</button>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="grid cols" style="margin-top:8px; grid-template-columns: 1fr 1fr;">
                <div class="section">
                    <div class="section-title">
                        <div><span>${uiText('events.current.heading')}</span><strong>${uiText('events.current.subheading', {map: mapName(), count: events.length})}</strong></div>
                    </div>
                    <div class="table" style="max-height: 380px; overflow-y: auto;">${eventRows()}</div>
                </div>
                <div class="section">
                    <div class="section-title">
                        <div><span>${uiText('events.tracer.heading')}</span></div>
                        <div class="button-strip" style="align-items: center; gap: 8px;">
                            <label style="display:flex; align-items:center; gap:4px; font-size:11px; cursor:pointer; color:#94a3b8;">
                                <input type="checkbox" data-field="eventTracerEnabled" ${state.eventTracerEnabled ? 'checked' : ''} style="accent-color:#72f7c8;">
                                ${uiText('common.enabled')}
                            </label>
                            <button class="btn" data-action="tracer-clear-log">${uiText('events.tracer.clear')}</button>
                        </div>
                    </div>
                    
                    <div class="active-events-box" style="margin-bottom: 8px; padding: 10px; background: rgba(2,6,23,.3); border: 1px solid rgba(255,255,255,.05); border-radius: 6px; min-height: 60px;">
                        <span style="font-size: 11px; color: #94a3b8; font-weight: 800; display: block; margin-bottom: 6px;">${uiText('events.tracer.activeTitle')}</span>
                        ${state.activeEvents.length === 0 ? `<div style="font-size: 11px; color: #64748b;">${uiText('events.tracer.noActive')}</div>` : state.activeEvents.map(ev => `
                            <div style="font-size: 11px; color: #e2e8f0; font-family: monospace; display: flex; justify-content: space-between; margin-bottom: 4px; padding-bottom: 4px; border-bottom: 1px solid rgba(255,255,255,.03);">
                                <div><strong>[${esc(ev.type)}]</strong> ${esc(ev.name)} (ID: ${ev.id})</div>
                                <div style="color: #72f7c8;">${uiText('events.tracer.command', {index: ev.index + 1, total: ev.total, code: ev.code})}</div>
                            </div>
                        `).join('')}
                    </div>

                    <div class="tracer-log-console" style="background: #020617; border: 1px solid rgba(255,255,255,.05); border-radius: 6px; padding: 8px; font-family: Consolas, Monaco, monospace; font-size: 11px; max-height: 280px; overflow-y: auto; color: #a1a1aa; line-height: 1.4;">
                        <span style="font-size: 10px; color: #64748b; font-weight: 800; display: block; margin-bottom: 4px; border-bottom: 1px solid rgba(255,255,255,.05); padding-bottom: 2px;">${uiText('events.tracer.historyTitle')}</span>
                        ${state.eventHistoryLog.length === 0 ? `<div style="color:#64748b;">${uiText('events.tracer.noHistory')}</div>` : state.eventHistoryLog.map(item => `
                            <div style="margin-bottom: 2px;">
                                <span style="color:#64748b;">[${esc(item.time)}]</span> 
                                <span style="color:#72f7c8;">${esc(item.action)}</span> 
                                <span style="color:#e2e8f0;">${esc(item.type)}: ${esc(item.name)} (ID: ${item.id})</span> 
                                <span style="color:#94a3b8;">${uiText('events.tracer.map', {id: item.mapId})}</span>
                            </div>
                        `).join('')}
                    </div>
                </div>
            </div>
        `
    }

    function settingsTab () {
        const languageOptions = uiLanguageOptions()
        const sizeOptions = uiSizeModeOptions()
        return `
            <div class="section">
                <div class="section-title"><div><span>${uiText('settings.runtime.title')}</span><strong>${uiText('settings.runtime.desc', {version: VERSION})}</strong></div></div>
                <div class="grid actions">
                    <button class="btn" data-action="clean">${uiText('settings.runtime.clean')}</button>
                    <button class="btn danger" data-action="panic">${uiText('settings.runtime.panic')}</button>
                    <button class="btn" data-action="title">${uiText('settings.runtime.titleScene')}</button>
                    <button class="btn" data-action="quick-save">${uiText('settings.runtime.quickSave')}</button>
                    <button class="btn" data-action="quick-load">${uiText('settings.runtime.quickLoad')}</button>
                    <button class="btn" data-action="clear-locks">${uiText('settings.runtime.clearLocks')}</button>
                    <input class="input" data-field="slot" value="${state.slot}" placeholder="${uiText('settings.runtime.slot')}">
                </div>

                <div class="section" style="margin-top:8px">
                    <div class="section-title"><div><span>${uiText('language.title')}</span><strong>${uiText('language.active')}: ${esc(uiLanguageName(state.uiLanguage))}</strong></div></div>
                    <div class="toolbar-row">
                        <div class="table-toolbar-note" style="min-width:160px; margin:0;">${uiText('language.select')}</div>
                        <select class="input select" data-field="uiLanguage" style="max-width:220px;">
                            ${languageOptions.map(option => `<option value="${option.value}" ${state.uiLanguage === option.value ? 'selected' : ''}>${esc(option.label)}</option>`).join('')}
                        </select>
                    </div>
                    <div class="table-toolbar-note">${uiText('language.hint')}</div>
                </div>

                <div class="section" style="margin-top:8px">
                    <div class="section-title"><div><span>${uiText('uiSize.title')}</span><strong>${uiText('uiSize.active')}: ${esc(uiSizeModeLabel(state.uiSizeMode))}</strong></div></div>
                    <div class="toolbar-row">
                        <div class="table-toolbar-note" style="min-width:160px; margin:0;">${uiText('uiSize.select')}</div>
                        <select class="input select" data-field="uiSizeMode" style="max-width:220px;">
                            ${sizeOptions.map(option => `<option value="${option.value}" ${state.uiSizeMode === option.value ? 'selected' : ''}>${esc(option.label)}</option>`).join('')}
                        </select>
                    </div>
                    <div class="table-mini-actions" style="justify-content:flex-start; margin-top:8px;">
                        ${sizeOptions.map(option => `
                            <button class="btn ${state.uiSizeMode === option.value ? 'primary' : ''}" data-action="ui-size-mode" data-mode="${option.value}">${esc(option.label)}</button>
                        `).join('')}
                    </div>
                    <div class="table-toolbar-note">${uiText('uiSize.hint')}</div>
                </div>

                <div class="section" style="margin-top:8px">
                    <div class="section-title"><div><span>${uiText('settings.translation.title')}</span><strong>${uiText('settings.translation.desc')}</strong></div></div>
                    <div class="grid actions">
                        <button class="btn" data-action="tab" data-tab="translate">${uiText('settings.translation.open')}</button>
                    </div>
                    <div class="toolbar-row">
                        <label>
                            <input type="checkbox" data-field="translateEnabled" ${state.translateEnabled ? 'checked' : ''} style="accent-color:#72f7c8;">
                            ${uiText('settings.translation.panel')}
                        </label>
                        <label>
                            <input type="checkbox" data-field="gameTranslateEnabled" ${state.gameTranslateEnabled ? 'checked' : ''} style="accent-color:#72f7c8;">
                            ${uiText('settings.translation.dialogue')}
                        </label>
                        <label>
                            <input type="checkbox" data-field="choiceTranslateEnabled" ${state.choiceTranslateEnabled ? 'checked' : ''} style="accent-color:#72f7c8;">
                            ${uiText('settings.translation.choice')}
                        </label>
                        <label>
                            <input type="checkbox" data-field="scrollTranslateEnabled" ${state.scrollTranslateEnabled ? 'checked' : ''} style="accent-color:#72f7c8;">
                            ${uiText('settings.translation.scroll')}
                        </label>
                    </div>
                </div>

                <div class="section" style="margin-top:8px">
                    <div class="section-title"><div><span>${uiText('settings.utilities.title')}</span></div></div>
                    <div class="grid actions">
                        <button class="btn warn" data-action="undo">${uiText('settings.utilities.undo')}</button>
                        <button class="btn ${state.playerSpeedFix ? 'primary' : ''}" data-action="speed-fix-toggle">${state.playerSpeedFix ? uiText('settings.utilities.speedOn') : uiText('settings.utilities.speedOff')}</button>
                        <input class="input" style="max-width:120px" data-field="playerSpeedMultiplier" value="${Math.pow(2, state.playerSpeedVal - 4).toFixed(1)}" placeholder="${uiText('settings.utilities.speedPlaceholder')}">
                    </div>
                </div>

                <div class="section" style="margin-top:8px">
                    <div class="section-title"><div><span>${uiText('settings.locks.title')}</span><strong>${uiText('settings.locks.count', {count: Object.keys(state.freezeList).length})}</strong></div></div>
                    <div class="table">
                        ${Object.keys(state.freezeList).length === 0 ? `<div class="row"><div>${uiText('settings.locks.empty')}</div></div>` : Object.keys(state.freezeList).map(key => {
                            const item = state.freezeList[key]
                            if (!item) return ''
                            return `
                                <div class="row">
                                    <div>
                                        ${esc(item.name)}
                                        <small>${uiText('settings.locks.type')}: ${item.type} | ${uiText('settings.locks.value')}: ${item.value}</small>
                                    </div>
                                    <button class="btn danger" data-action="freeze-remove" data-key="${key}">${uiText('settings.locks.unlock')}</button>
                                </div>
                            `
                        }).join('')}
                    </div>
                </div>

                <div class="section" style="margin-top:8px">
                    <div class="section-title"><div><span>${uiText('settings.log.title')}</span><strong>${uiText('settings.log.desc')}</strong></div></div>
                    <div class="log">${state.log.map(item => text(item)).join('\n')}</div>
                </div>
            </div>
        `
    }

    function tabContent () {
        if (state.activeTab === 'watcher') {
            return watcherTab()
        }
        if (state.activeTab === 'variables') {
            return variablesTabCe()
        }
        if (state.activeTab === 'switches') {
            return switchesTabCe()
        }
        if (state.activeTab === 'inventory') {
            return inventoryTabCe()
        }
        if (state.activeTab === 'translate') {
            return translateTab()
        }
        if (state.activeTab === 'battle') {
            return battleTab()
        }
        if (state.activeTab === 'party') {
            return partyTab()
        }
        if (state.activeTab === 'automation') {
            return automationTab()
        }
        if (state.activeTab === 'script') {
            return scriptTab()
        }
        if (state.activeTab === 'events') {
            return eventsTab()
        }

        if (state.activeTab === 'shortcuts') {
            return shortcutsTab()
        }
        if (state.activeTab === 'profiles') {
            return profilesTab()
        }
        if (state.activeTab === 'settings') {
            return settingsTab()
        }
        return deckTab()
    }

    function tabGroups () {
        return [
            {
                label: uiText('nav.control'),
                tabs: [
                    ['deck', 'CC', uiText('tab.deck.title'), uiText('tab.deck.desc')],
                    ['variables', 'VR', uiText('tab.variables.title'), uiText('tab.variables.desc')],
                    ['switches', 'SW', uiText('tab.switches.title'), uiText('tab.switches.desc')],
                    ['inventory', 'IN', uiText('tab.inventory.title'), uiText('tab.inventory.desc')]
                ]
            },
            {
                label: uiText('nav.gameplay'),
                tabs: [
                    ['battle', 'BT', uiText('tab.battle.title'), uiText('tab.battle.desc')],
                    ['party', 'PT', uiText('tab.party.title'), uiText('tab.party.desc')],
                    ['events', 'TP', uiText('tab.events.title'), uiText('tab.events.desc')],
                    ['watcher', 'WT', uiText('tab.watcher.title'), uiText('tab.watcher.desc')],
                    ['automation', 'AU', uiText('tab.automation.title'), uiText('tab.automation.desc')],
                    ['script', 'SC', uiText('tab.script.title'), uiText('tab.script.desc')]
                ]
            },
            {
                label: uiText('nav.utilities'),
                tabs: [
                    ['shortcuts', 'KY', uiText('tab.shortcuts.title'), uiText('tab.shortcuts.desc')],
                    ['translate', 'TR', uiText('tab.translate.title'), uiText('tab.translate.desc')],
                    ['profiles', 'PF', uiText('tab.profiles.title'), uiText('tab.profiles.desc')],
                    ['settings', 'ST', uiText('tab.settings.title'), uiText('tab.settings.desc')]
                ]
            }
        ]
    }

    function navButtons () {
        return tabGroups().map(group => `
            <div class="nav-group">
                <div class="nav-heading">${group.label}</div>
                ${group.tabs.map(tab => `
                    <button class="${state.activeTab === tab[0] ? 'active' : ''}" data-action="tab" data-tab="${tab[0]}">
                        <span>${tab[1]}</span>
                        <div class="nav-copy">
                            <strong>${tab[2]}</strong>
                            <small>${tab[3]}</small>
                        </div>
                        <em>${state.activeTab === tab[0] ? uiText('common.on') : '>'}</em>
                    </button>
                `).join('')}
            </div>
        `).join('')
    }
function variablesTabCe () {
    const pageData = variablePageData()
    const rows = pageData.rows
    const selectedCount = Object.keys(state.variableSelected).filter(id => state.variableSelected[id]).length
    const totalLocked = Object.keys(state.freezeList).filter(k => k.startsWith('variable:')).length
    const allSelected = rows.length > 0 && rows.every(r => state.variableSelected[r.id])

    return `
        <div class="section">
            <div class="section-title">
                <div>
                    <span>${uiText('tab.variables.title')}</span>
                    <strong>${uiText('variables.summary', {total: pageData.totalRows, locked: totalLocked})}</strong>
                </div>
                <div style="display:flex; gap:8px;">
                    <button class="btn primary" data-action="snapshot">${uiText('common.takeSnapshot')}</button>
                    <button class="btn" data-action="clear-snapshot">${uiText('common.clearSnapshot')}</button>
                </div>
            </div>
            <div class="table-toolbar-note">${uiText('variables.helper')}</div>
            <div class="toolbar-row">
                <input class="input" data-field="variableQuery" value="${esc(state.variableQuery)}" placeholder="${uiText('variables.searchPlaceholder')}" style="flex:1.5;">
                <select class="input select" data-field="variableFilter">
                    <option value="all" ${state.variableFilter === 'all' ? 'selected' : ''}>${uiText('variables.filter.all')}</option>
                    <option value="nonzero" ${state.variableFilter === 'nonzero' ? 'selected' : ''}>${uiText('variables.filter.nonzero')}</option>
                    <option value="frozen" ${state.variableFilter === 'frozen' ? 'selected' : ''}>${uiText('variables.filter.frozen')}</option>
                    <option value="changed" ${state.variableFilter === 'changed' ? 'selected' : ''}>${uiText('variables.filter.changed')}</option>
                </select>
                <select class="input select" data-field="variableSort">
                    <option value="idAsc" ${state.variableSort === 'idAsc' ? 'selected' : ''}>${uiText('variables.sort.idAsc')}</option>
                    <option value="idDesc" ${state.variableSort === 'idDesc' ? 'selected' : ''}>${uiText('variables.sort.idDesc')}</option>
                    <option value="valueAsc" ${state.variableSort === 'valueAsc' ? 'selected' : ''}>${uiText('variables.sort.valueAsc')}</option>
                    <option value="valueDesc" ${state.variableSort === 'valueDesc' ? 'selected' : ''}>${uiText('variables.sort.valueDesc')}</option>
                    <option value="nameAsc" ${state.variableSort === 'nameAsc' ? 'selected' : ''}>${uiText('variables.sort.nameAsc')}</option>
                    <option value="nameDesc" ${state.variableSort === 'nameDesc' ? 'selected' : ''}>${uiText('variables.sort.nameDesc')}</option>
                </select>
                <label style="display:flex; align-items:center; gap:4px; font-size:11px; cursor:pointer;">
                    <input type="checkbox" data-field="variableNameless" ${state.variableNameless ? 'checked' : ''} style="accent-color:#72f7c8;">
                    ${uiText('variables.nameless')}
                </label>
                <label style="display:flex; align-items:center; gap:4px; font-size:11px; cursor:pointer; margin-left:8px;">
                    <input type="checkbox" data-field="variableLockResults" ${state.variableLockResults ? 'checked' : ''} style="accent-color:#72f7c8;">
                    ${uiText('variables.lockResults')}
                </label>
            </div>
            <div class="toolbar-row table-batch-shell">
                <select class="input select" data-field="variableBatchOp" style="max-width:110px;">
                    <option value="set" ${state.variableBatchOp === 'set' ? 'selected' : ''}>${uiText('variables.batch.set')}</option>
                    <option value="add" ${state.variableBatchOp === 'add' ? 'selected' : ''}>${uiText('variables.batch.add')}</option>
                    <option value="sub" ${state.variableBatchOp === 'sub' ? 'selected' : ''}>${uiText('variables.batch.sub')}</option>
                    <option value="mul" ${state.variableBatchOp === 'mul' ? 'selected' : ''}>${uiText('variables.batch.mul')}</option>
                    <option value="random" ${state.variableBatchOp === 'random' ? 'selected' : ''}>${uiText('variables.batch.random')}</option>
                </select>
                ${state.variableBatchOp === 'random' ? `
                    <input class="input" data-field="batchRandomMin" value="${esc(state.batchRandomMin)}" placeholder="${uiText('variables.batch.min')}" style="max-width:60px; text-align:center;">
                    <input class="input" data-field="batchRandomMax" value="${esc(state.batchRandomMax)}" placeholder="${uiText('variables.batch.max')}" style="max-width:60px; text-align:center;">
                ` : `
                    <input class="input" data-field="variableBatchVal" value="${esc(state.variableBatchVal)}" placeholder="${uiText('variables.batch.valuePlaceholder')}" style="max-width:100px;">
                `}
                <button class="btn primary" data-action="variable-batch-apply" ${selectedCount === 0 ? 'disabled' : ''} style="padding:0 12px; font-size:11px; height:34px;">${uiText('variables.batch.apply', {count: selectedCount})}</button>
                <button class="btn warn" data-action="variable-batch-freeze" ${selectedCount === 0 ? 'disabled' : ''} style="padding:0 12px; font-size:11px; height:34px;">${uiText('common.frozen')}</button>
            </div>
            <div class="table-container">
                <div class="table-header" style="grid-template-columns: 50px 70px 1fr 150px 40px;">
                    <div class="cell-center" title="${uiText('common.lockFreeze')}">${uiText('common.status')}</div>
                    <div>${uiText('common.addr')}</div>
                    <div>${uiText('common.description')}</div>
                    <div>${uiText('common.value')}</div>
                    <div class="cell-center">
                        <input type="checkbox" class="header-checkbox" data-type="variable" ${allSelected ? 'checked' : ''} data-action="variable-toggle-all" style="accent-color:#72f7c8;" title="${uiText('common.selectAll')}">
                    </div>
                </div>
                <div class="table-body">
                    ${rows.length === 0 ? renderCeTableEmpty(uiText('variables.empty')) : rows.map(row => {
                        const isSelected = !!state.variableSelected[row.id]
                        return `
                            <div class="table-row ${row.changed ? 'changed' : ''}" style="grid-template-columns: 50px 70px 1fr 150px 40px;">
                                <div class="cell-center">
                                    <input type="checkbox" class="ce-lock-checkbox" data-action="variable-lock" data-id="${row.id}" ${row.locked ? 'checked' : ''} style="accent-color:#f59e0b;" title="${uiText('common.lockFreeze')}">
                                </div>
                                <div class="cell-code">V${row.id}</div>
                                ${renderCeStackCell(row.name, row.changed ? uiText('variables.meta.snapshotChanged') : uiText('variables.meta.stable'))}
                                <div>
                                    <input class="table-input variable-inline-input" data-id="${row.id}" value="${esc(row.value)}" type="text" style="font-family:Consolas, Monaco, monospace;">
                                </div>
                                <div class="cell-center">
                                    <input type="checkbox" class="row-checkbox" data-type="variable" data-id="${row.id}" ${isSelected ? 'checked' : ''} style="accent-color:#72f7c8;" title="${uiText('common.selectForBatch')}">
                                </div>
                            </div>
                        `
                    }).join('')}
                </div>
            </div>
            <div class="toolbar-row" style="justify-content:space-between; margin-top:10px;">
                <div class="table-toolbar-note">${uiPageSummary(pageData)}</div>
                <div class="table-mini-actions">
                    <select class="input select" data-field="variableRowsPerPage" style="max-width:110px;">
                        ${[5, 7, 10, 25, 50, 100, 250, 'all'].map(size => `<option value="${size}" ${pageData.rowsPerPage === size ? 'selected' : ''}>${uiPageSizeOption(size)}</option>`).join('')}
                    </select>
                    <input class="input" data-field="variablePage" value="${pageData.page}" style="max-width:72px;" title="${uiText('common.page')}">
                    <button class="btn" data-action="variable-page-first" ${pageData.page <= 1 ? 'disabled' : ''}>&lt;&lt;</button>
                    <button class="btn" data-action="variable-page-prev" ${pageData.page <= 1 ? 'disabled' : ''}>&lt;</button>
                    <button class="btn" data-action="variable-page-next" ${pageData.page >= pageData.totalPages ? 'disabled' : ''}>&gt;</button>
                    <button class="btn" data-action="variable-page-last" ${pageData.page >= pageData.totalPages ? 'disabled' : ''}>&gt;&gt;</button>
                </div>
            </div>
        </div>
    `
}
function switchesTabCe () {
    const pageData = switchPageData()
    const rows = pageData.rows
    const selectedCount = Object.keys(state.switchSelected).filter(id => state.switchSelected[id]).length
    const totalLocked = Object.keys(state.freezeList).filter(k => k.startsWith('switch:')).length
    const allSelected = rows.length > 0 && rows.every(r => state.switchSelected[r.id])

    return `
        <div class="section">
            <div class="section-title">
                <div>
                    <span>${uiText('tab.switches.title')}</span>
                    <strong>${uiText('switches.summary', {total: pageData.totalRows, locked: totalLocked})}</strong>
                </div>
                <div style="display:flex; gap:8px;">
                    <button class="btn primary" data-action="snapshot">${uiText('common.takeSnapshot')}</button>
                    <button class="btn" data-action="clear-snapshot">${uiText('common.clearSnapshot')}</button>
                </div>
            </div>
            <div class="table-toolbar-note">${uiText('switches.helper')}</div>
            <div class="toolbar-row">
                <input class="input" data-field="switchQuery" value="${esc(state.switchQuery)}" placeholder="${uiText('switches.searchPlaceholder')}" style="flex:1.5;">
                <select class="input select" data-field="switchFilter">
                    <option value="all" ${state.switchFilter === 'all' ? 'selected' : ''}>${uiText('switches.filter.all')}</option>
                    <option value="on" ${state.switchFilter === 'on' ? 'selected' : ''}>${uiText('switches.filter.on')}</option>
                    <option value="off" ${state.switchFilter === 'off' ? 'selected' : ''}>${uiText('switches.filter.off')}</option>
                    <option value="frozen" ${state.switchFilter === 'frozen' ? 'selected' : ''}>${uiText('switches.filter.frozen')}</option>
                    <option value="changed" ${state.switchFilter === 'changed' ? 'selected' : ''}>${uiText('switches.filter.changed')}</option>
                </select>
                <label style="display:flex; align-items:center; gap:4px; font-size:11px; cursor:pointer;">
                    <input type="checkbox" data-field="switchNameless" ${state.switchNameless ? 'checked' : ''} style="accent-color:#72f7c8;">
                    ${uiText('switches.nameless')}
                </label>
            </div>
            <div class="toolbar-row table-batch-shell">
                <button class="btn primary" data-action="switch-batch-on" ${selectedCount === 0 ? 'disabled' : ''} style="padding:0 12px; font-size:11px; height:34px;">${uiText('switches.batch.on', {count: selectedCount})}</button>
                <button class="btn danger" data-action="switch-batch-off" ${selectedCount === 0 ? 'disabled' : ''} style="padding:0 12px; font-size:11px; height:34px;">${uiText('switches.batch.off')}</button>
                <button class="btn warn" data-action="switch-batch-toggle" ${selectedCount === 0 ? 'disabled' : ''} style="padding:0 12px; font-size:11px; height:34px;">${uiText('switches.batch.toggle')}</button>
                <button class="btn" data-action="switch-batch-freeze" ${selectedCount === 0 ? 'disabled' : ''} style="padding:0 12px; font-size:11px; height:34px;">${uiText('common.frozen')}</button>
            </div>
            <div class="table-container">
                <div class="table-header" style="grid-template-columns: 50px 70px 1fr 150px 40px;">
                    <div class="cell-center" title="${uiText('common.lockFreeze')}">${uiText('common.status')}</div>
                    <div>${uiText('common.addr')}</div>
                    <div>${uiText('common.description')}</div>
                    <div>${uiText('common.state')}</div>
                    <div class="cell-center">
                        <input type="checkbox" class="header-checkbox" data-type="switch" ${allSelected ? 'checked' : ''} data-action="switch-toggle-all" style="accent-color:#72f7c8;" title="${uiText('common.selectAll')}">
                    </div>
                </div>
                <div class="table-body">
                    ${rows.length === 0 ? renderCeTableEmpty(uiText('switches.empty')) : rows.map(row => {
                        const isSelected = !!state.switchSelected[row.id]
                        return `
                            <div class="table-row ${row.changed ? 'changed' : ''}" style="grid-template-columns: 50px 70px 1fr 150px 40px;">
                                <div class="cell-center">
                                    <input type="checkbox" class="ce-lock-checkbox" data-action="switch-lock" data-id="${row.id}" ${row.locked ? 'checked' : ''} style="accent-color:#f59e0b;" title="${uiText('common.lockFreeze')}">
                                </div>
                                <div class="cell-code">S${row.id}</div>
                                ${renderCeStackCell(row.name, row.changed ? uiText('switches.meta.snapshotChanged') : (row.value ? uiText('switches.meta.currentOn') : uiText('switches.meta.currentOff')))}
                                <div>
                                    <button class="btn table-state-btn ${row.value ? 'primary' : ''}" data-action="switch-row-toggle" data-id="${row.id}">${row.value ? uiText('common.on') : uiText('common.off')}</button>
                                </div>
                                <div class="cell-center">
                                    <input type="checkbox" class="row-checkbox" data-type="switch" data-id="${row.id}" ${isSelected ? 'checked' : ''} style="accent-color:#72f7c8;" title="${uiText('common.selectForBatch')}">
                                </div>
                            </div>
                        `
                    }).join('')}
                </div>
            </div>
            <div class="toolbar-row" style="justify-content:space-between; margin-top:10px;">
                <div class="table-toolbar-note">${uiPageSummary(pageData)}</div>
                <div class="table-mini-actions">
                    <select class="input select" data-field="switchRowsPerPage" style="max-width:110px;">
                        ${[5, 7, 10, 25, 50, 100, 250, 'all'].map(size => `<option value="${size}" ${pageData.rowsPerPage === size ? 'selected' : ''}>${uiPageSizeOption(size)}</option>`).join('')}
                    </select>
                    <input class="input" data-field="switchPage" value="${pageData.page}" style="max-width:72px;" title="${uiText('common.page')}">
                    <button class="btn" data-action="switch-page-first" ${pageData.page <= 1 ? 'disabled' : ''}>&lt;&lt;</button>
                    <button class="btn" data-action="switch-page-prev" ${pageData.page <= 1 ? 'disabled' : ''}>&lt;</button>
                    <button class="btn" data-action="switch-page-next" ${pageData.page >= pageData.totalPages ? 'disabled' : ''}>&gt;</button>
                    <button class="btn" data-action="switch-page-last" ${pageData.page >= pageData.totalPages ? 'disabled' : ''}>&gt;&gt;</button>
                </div>
            </div>
        </div>
    `
}
function inventoryTabCe () {
    const pageData = inventoryPageData()
    const rows = pageData.rows
    return `
        <div class="section">
            <div class="section-title">
                <div><span>${uiText('inventory.title')}</span><strong>${uiText('inventory.summaryVisible', {count: pageData.totalRows, kind: uiInventoryKindName(state.inventoryKind)})}</strong></div>
                <button class="btn" data-action="refresh">${uiText('common.refresh')}</button>
            </div>
            <div class="table-toolbar-note">${uiText('inventory.helper')}</div>
            <div class="toolbar-row">
                <select class="input select" data-field="inventoryKind">
                    <option value="items" ${state.inventoryKind === 'items' ? 'selected' : ''}>${uiText('inventory.kind.items')}</option>
                    <option value="weapons" ${state.inventoryKind === 'weapons' ? 'selected' : ''}>${uiText('inventory.kind.weapons')}</option>
                    <option value="armors" ${state.inventoryKind === 'armors' ? 'selected' : ''}>${uiText('inventory.kind.armors')}</option>
                </select>
                <input class="input" data-field="inventoryQuery" value="${esc(state.inventoryQuery)}" placeholder="${uiText('inventory.searchPlaceholder')}">
                <input class="input" data-field="inventoryAmount" value="${esc(state.inventoryAmount)}" placeholder="${uiText('inventory.amountPlaceholder')}" style="max-width:110px;">
                <label style="display:flex; align-items:center; gap:4px; font-size:11px; cursor:pointer; margin-left:8px;">
                    <input type="checkbox" data-field="inventoryExcludeNameless" ${state.inventoryExcludeNameless ? 'checked' : ''} style="accent-color:#72f7c8;">
                    ${uiText('inventory.hideNameless')}
                </label>
                <label style="display:flex; align-items:center; gap:4px; font-size:11px; cursor:pointer; margin-left:8px;">
                    <input type="checkbox" data-field="inventoryOnlyOwned" ${state.inventoryOnlyOwned ? 'checked' : ''} style="accent-color:#72f7c8;">
                    ${uiText('inventory.onlyOwned')}
                </label>
            </div>
            <div class="toolbar-row table-batch-shell">
                <button class="btn primary" data-action="inventory-visible" style="padding:0 12px; font-size:11px; height:34px;">${uiText('inventory.applyVisible')}</button>
                <button class="btn warn" data-action="inventory-visible-max" style="padding:0 12px; font-size:11px; height:34px;">${uiText('inventory.setVisible99')}</button>
                <button class="btn" data-action="inventory-visible-clear" style="padding:0 12px; font-size:11px; height:34px;">${uiText('inventory.clearVisible')}</button>
            </div>
            <div class="table-container">
                <div class="table-header" style="grid-template-columns: 80px minmax(120px, 1.15fr) minmax(160px, 1.55fr) 90px 168px;">
                    <div>${uiText('common.addr')}</div>
                    <div>${uiText('common.name')}</div>
                    <div>${uiText('common.description')}</div>
                    <div>${uiText('inventory.owned')}</div>
                    <div class="cell-center">${uiText('common.actions')}</div>
                </div>
                <div class="table-body" style="overflow:auto;">
                    ${rows.length === 0 ? renderCeTableEmpty(uiText('inventory.empty')) : rows.map(row => `
                        <div class="table-row" style="grid-template-columns: 80px minmax(120px, 1.15fr) minmax(160px, 1.55fr) 90px 168px;">
                            <div class="cell-code">${state.inventoryKind.slice(0, 1).toUpperCase()}${row.id}</div>
                            ${renderCeStackCell(row.name, state.inventoryKind)}
                            ${renderCeStackCell(row.description || uiText('inventory.noDescription'), uiText('inventory.meta.searchable'))}
                            <div>
                                <input class="table-input inventory-inline-input" data-id="${row.id}" value="${esc(state.inventoryDrafts[row.id] !== undefined ? state.inventoryDrafts[row.id] : row.count)}">
                            </div>
                            ${renderCeMiniActions([
                                `<button class="btn primary" data-action="inventory-row-apply" data-id="${row.id}">${uiText('common.apply')}</button>`,
                                `<button class="btn warn" data-action="inventory-max" data-id="${row.id}">99</button>`,
                                `<button class="btn" data-action="inventory-clear" data-id="${row.id}">0</button>`
                            ])}
                        </div>
                    `).join('')}
                </div>
            </div>
            <div class="toolbar-row" style="justify-content:space-between; margin-top:10px;">
                <div class="table-toolbar-note">${uiPageSummary(pageData)}</div>
                <div class="table-mini-actions">
                    <select class="input select" data-field="inventoryRowsPerPage" style="max-width:110px;">
                        ${[5, 7, 10, 25, 50, 100, 250, 'all'].map(size => `<option value="${size}" ${pageData.rowsPerPage === size ? 'selected' : ''}>${uiPageSizeOption(size)}</option>`).join('')}
                    </select>
                    <input class="input" data-field="inventoryPage" value="${pageData.page}" style="max-width:72px;" title="${uiText('common.page')}">
                    <button class="btn" data-action="inventory-page-first" ${pageData.page <= 1 ? 'disabled' : ''}>&lt;&lt;</button>
                    <button class="btn" data-action="inventory-page-prev" ${pageData.page <= 1 ? 'disabled' : ''}>&lt;</button>
                    <button class="btn" data-action="inventory-page-next" ${pageData.page >= pageData.totalPages ? 'disabled' : ''}>&gt;</button>
                    <button class="btn" data-action="inventory-page-last" ${pageData.page >= pageData.totalPages ? 'disabled' : ''}>&gt;&gt;</button>
                </div>
            </div>
        </div>
    `
}
function translateTab () {
    return `
        <div class="section">
            <div class="section-title">
                <div><span>${uiText('translate.centerTitle')}</span><strong>${esc(state.translateStatus)}</strong></div>
                <button class="btn" data-action="translate-clear-cache">${uiText('translate.clearCache', {count: Object.keys(state.translateCache).length})}</button>
            </div>

            <div class="grid cols" style="margin-bottom:12px; grid-template-columns: 1fr 1fr; gap: 16px;">
                <!-- Column 1: Database/Panel Translation -->
                <div class="section" style="border-left: 3px solid #ffcf5a; display: flex; flex-direction: column; gap: 10px;">
                    <div class="section-title"><div><span>${uiText('translate.dbPanelTitle')}</span><strong>${uiText('translate.dbPanelDesc')}</strong></div></div>
                    
                    <label style="display:flex; align-items:center; justify-content:space-between; padding:8px 12px; background:rgba(2,6,23,.5); border:1px solid rgba(255,255,255,.05); border-radius:8px; cursor:pointer;">
                        <span style="font-size:12px; font-weight:800; color:#cbd5e1;">${uiText('translate.enablePanelLabels')}</span>
                        <input type="checkbox" data-field="translateEnabled" ${state.translateEnabled ? 'checked' : ''} style="accent-color:#ffcf5a; width:16px; height:16px;">
                    </label>

                    <div style="display:grid; grid-template-columns:1fr 1fr; gap:8px;">
                        <div>
                            <label style="display:block; font-size:10px; color:#94a3b8; margin-bottom:2px;">${uiText('common.provider')}</label>
                            <select class="input" data-field="translateProvider">
                                <option value="google" ${state.translateProvider === 'google' ? 'selected' : ''}>Google Translate</option>
                                <option value="libre" ${state.translateProvider === 'libre' ? 'selected' : ''}>LibreTranslate</option>
                                <option value="ollama" ${state.translateProvider === 'ollama' ? 'selected' : ''}>Ollama</option>
                                <option value="ezTransWeb" ${state.translateProvider === 'ezTransWeb' ? 'selected' : ''}>ezTransWeb</option>
                                <option value="ezTransServer" ${state.translateProvider === 'ezTransServer' ? 'selected' : ''}>ezTransServer</option>
                                <option value="custom" ${state.translateProvider === 'custom' ? 'selected' : ''}>Custom API</option>
                            </select>
                        </div>
                        <div>
                            <label style="display:block; font-size:10px; color:#94a3b8; margin-bottom:2px;">${uiText('common.targetLanguage')}</label>
                            <select class="input" data-field="translateTargetLang">
                                <option value="tr" ${state.translateTargetLang === 'tr' ? 'selected' : ''}>Turkish</option>
                                <option value="en" ${state.translateTargetLang === 'en' ? 'selected' : ''}>English</option>
                                <option value="es" ${state.translateTargetLang === 'es' ? 'selected' : ''}>Spanish</option>
                                <option value="ru" ${state.translateTargetLang === 'ru' ? 'selected' : ''}>Russian</option>
                                <option value="de" ${state.translateTargetLang === 'de' ? 'selected' : ''}>German</option>
                                <option value="fr" ${state.translateTargetLang === 'fr' ? 'selected' : ''}>French</option>
                                <option value="pt" ${state.translateTargetLang === 'pt' ? 'selected' : ''}>Portuguese</option>
                                <option value="ko" ${state.translateTargetLang === 'ko' ? 'selected' : ''}>Korean</option>
                                <option value="ja" ${state.translateTargetLang === 'ja' ? 'selected' : ''}>Japanese</option>
                                <option value="zh-CN" ${state.translateTargetLang === 'zh-CN' ? 'selected' : ''}>Simplified Chinese</option>
                            </select>
                        </div>
                    </div>

                    <div style="display:grid; grid-template-columns:1.5fr 1fr; gap:8px;">
                        <div>
                            <label style="display:block; font-size:10px; color:#94a3b8; margin-bottom:2px;">${uiText('common.endpointUrl')}</label>
                            <input class="input" data-field="translateEndpoint" value="${esc(state.translateEndpoint)}" placeholder="${uiText('translate.endpointPlaceholder')}">
                        </div>
                        <div>
                            <label style="display:block; font-size:10px; color:#94a3b8; margin-bottom:2px;">${uiText('common.chunkSize')}</label>
                            <input class="input" data-field="translateBulkChunkSize" type="number" min="1" value="${state.translateBulkChunkSize}" placeholder="${uiText('translate.chunkPlaceholder')}">
                        </div>
                    </div>

                    ${state.translateProvider === 'ollama' ? `
                        <div>
                            <label style="display:block; font-size:10px; color:#94a3b8; margin-bottom:2px;">${uiText('common.model')}</label>
                            <input class="input" data-field="translateModel" value="${esc(state.translateModel)}" placeholder="${uiText('translate.modelPlaceholder')}">
                        </div>
                    ` : ''}

                    ${state.translateProvider === 'custom' ? `
                        <div style="display:grid; grid-template-columns:100px 1fr; gap:8px;">
                            <div>
                                <label style="display:block; font-size:10px; color:#94a3b8; margin-bottom:2px;">${uiText('common.method')}</label>
                                <select class="input" data-field="translateCustomMethod">
                                    <option value="GET" ${state.translateCustomMethod === 'GET' ? 'selected' : ''}>GET</option>
                                    <option value="POST" ${state.translateCustomMethod === 'POST' ? 'selected' : ''}>POST</option>
                                </select>
                            </div>
                            <div>
                                <label style="display:block; font-size:10px; color:#94a3b8; margin-bottom:2px;">${uiText('common.urlPattern')}</label>
                                <input class="input" data-field="translateCustomUrlPattern" value="${esc(state.translateCustomUrlPattern)}" placeholder="http://localhost:5000/translate?text=\${TEXT}">
                            </div>
                        </div>
                        ${state.translateCustomMethod === 'POST' ? `
                            <div>
                                <label style="display:block; font-size:10px; color:#94a3b8; margin-bottom:2px;">${uiText('common.postBodyPattern')}</label>
                                <textarea class="textarea" data-field="translateCustomBody" style="min-height:50px; height:50px; font-family:Consolas, Monaco, monospace; font-size:11px;">${esc(state.translateCustomBody)}</textarea>
                            </div>
                        ` : ''}
                    ` : ''}

                    <div style="border-top: 1px solid rgba(255,255,255,.05); padding-top:10px; margin-top:5px;">
                        <label style="display:block; font-size:11px; color:#cbd5e1; font-weight:800; margin-bottom:8px;">${uiText('translate.chooseTargets')}</label>
                        <div style="display:grid; grid-template-columns:1fr 1fr; gap:8px;">
                            <label style="display:flex; align-items:center; gap:8px; font-size:11px; font-weight:800; cursor:pointer; color:#cbd5e1; ${!state.translateEnabled ? 'opacity:0.5; pointer-events:none;' : ''}">
                                <input type="checkbox" data-field="translateTargets" data-key="variables" ${state.translateTargets.variables ? 'checked' : ''} style="accent-color:#ffcf5a; width:14px; height:14px;">
                                ${uiText('translate.targets.variables')}
                            </label>
                            <label style="display:flex; align-items:center; gap:8px; font-size:11px; font-weight:800; cursor:pointer; color:#cbd5e1; ${!state.translateEnabled ? 'opacity:0.5; pointer-events:none;' : ''}">
                                <input type="checkbox" data-field="translateTargets" data-key="switches" ${state.translateTargets.switches ? 'checked' : ''} style="accent-color:#ffcf5a; width:14px; height:14px;">
                                ${uiText('translate.targets.switches')}
                            </label>
                            <label style="display:flex; align-items:center; gap:8px; font-size:11px; font-weight:800; cursor:pointer; color:#cbd5e1; ${!state.translateEnabled ? 'opacity:0.5; pointer-events:none;' : ''}">
                                <input type="checkbox" data-field="translateTargets" data-key="items" ${state.translateTargets.items ? 'checked' : ''} style="accent-color:#ffcf5a; width:14px; height:14px;">
                                ${uiText('translate.targets.items')}
                            </label>
                            <label style="display:flex; align-items:center; gap:8px; font-size:11px; font-weight:800; cursor:pointer; color:#cbd5e1; ${!state.translateEnabled ? 'opacity:0.5; pointer-events:none;' : ''}">
                                <input type="checkbox" data-field="translateTargets" data-key="maps" ${state.translateTargets.maps ? 'checked' : ''} style="accent-color:#ffcf5a; width:14px; height:14px;">
                                ${uiText('translate.targets.maps')}
                            </label>
                        </div>
                    </div>
                </div>

                <!-- Column 2: Live Game Dialogue Translation -->
                <div class="section" style="border-left: 3px solid #14b8a6; display: flex; flex-direction: column; gap: 10px;">
                    <div class="section-title"><div><span>${uiText('translate.gameTitle')}</span><strong>${uiText('translate.gameDesc')}</strong></div></div>
                    
                    <div style="display:flex; flex-direction:column; gap:6px; padding:6px 12px; background:rgba(2,6,23,.5); border:1px solid rgba(255,255,255,.05); border-radius:8px;">
                        <div style="font-size:10px; color:#94a3b8; font-weight:800; margin-bottom:2px;">${uiText('translate.realtimeHooks')}</div>
                        <div style="display:grid; grid-template-columns:1fr 1fr; gap:8px;">
                            <label style="display:flex; align-items:center; gap:8px; font-size:11.5px; font-weight:800; cursor:pointer; color:#cbd5e1;">
                                <input type="checkbox" data-field="gameTranslateEnabled" ${state.gameTranslateEnabled ? 'checked' : ''} style="accent-color:#14b8a6; width:15px; height:15px;">
                                ${uiText('translate.dialogues')}
                            </label>
                            <label style="display:flex; align-items:center; gap:8px; font-size:11.5px; font-weight:800; cursor:pointer; color:#cbd5e1;">
                                <input type="checkbox" data-field="choiceTranslateEnabled" ${state.choiceTranslateEnabled ? 'checked' : ''} style="accent-color:#14b8a6; width:15px; height:15px;">
                                ${uiText('translate.choices')}
                            </label>
                            <label style="display:flex; align-items:center; gap:8px; font-size:11.5px; font-weight:800; cursor:pointer; color:#cbd5e1; grid-column: span 2;">
                                <input type="checkbox" data-field="scrollTranslateEnabled" ${state.scrollTranslateEnabled ? 'checked' : ''} style="accent-color:#14b8a6; width:15px; height:15px;">
                                ${uiText('translate.scrollText')}
                            </label>
                        </div>
                    </div>

                    <div style="display:grid; grid-template-columns:1fr 1fr; gap:8px;">
                        <div>
                            <label style="display:block; font-size:10px; color:#94a3b8; margin-bottom:2px;">${uiText('common.provider')}</label>
                            <select class="input" data-field="gameTranslateProvider">
                                <option value="google" ${state.gameTranslateProvider === 'google' ? 'selected' : ''}>Google Translate</option>
                                <option value="libre" ${state.gameTranslateProvider === 'libre' ? 'selected' : ''}>LibreTranslate</option>
                                <option value="ollama" ${state.gameTranslateProvider === 'ollama' ? 'selected' : ''}>Ollama</option>
                                <option value="ezTransWeb" ${state.gameTranslateProvider === 'gameTranslateProvider' ? 'selected' : ''} style="display:none;"></option>
                                <option value="ezTransWeb" ${state.gameTranslateProvider === 'ezTransWeb' ? 'selected' : ''}>ezTransWeb</option>
                                <option value="ezTransServer" ${state.gameTranslateProvider === 'ezTransServer' ? 'selected' : ''}>ezTransServer</option>
                                <option value="custom" ${state.gameTranslateProvider === 'custom' ? 'selected' : ''}>Custom API</option>
                            </select>
                        </div>
                        <div>
                            <label style="display:block; font-size:10px; color:#94a3b8; margin-bottom:2px;">${uiText('common.targetLanguage')}</label>
                            <select class="input" data-field="gameTranslateTargetLang">
                                <option value="tr" ${state.gameTranslateTargetLang === 'tr' ? 'selected' : ''}>Turkish</option>
                                <option value="en" ${state.gameTranslateTargetLang === 'en' ? 'selected' : ''}>English</option>
                                <option value="es" ${state.gameTranslateTargetLang === 'es' ? 'selected' : ''}>Spanish</option>
                                <option value="ru" ${state.gameTranslateTargetLang === 'ru' ? 'selected' : ''}>Russian</option>
                                <option value="de" ${state.gameTranslateTargetLang === 'de' ? 'selected' : ''}>German</option>
                                <option value="fr" ${state.gameTranslateTargetLang === 'fr' ? 'selected' : ''}>French</option>
                                <option value="pt" ${state.gameTranslateTargetLang === 'pt' ? 'selected' : ''}>Portuguese</option>
                                <option value="ko" ${state.gameTranslateTargetLang === 'ko' ? 'selected' : ''}>Korean</option>
                                <option value="ja" ${state.gameTranslateTargetLang === 'ja' ? 'selected' : ''}>Japanese</option>
                                <option value="zh-CN" ${state.gameTranslateTargetLang === 'zh-CN' ? 'selected' : ''}>Simplified Chinese</option>
                            </select>
                        </div>
                    </div>

                    <div>
                        <label style="display:block; font-size:10px; color:#94a3b8; margin-bottom:2px;">${uiText('common.endpointUrl')}</label>
                        <input class="input" data-field="gameTranslateEndpoint" value="${esc(state.gameTranslateEndpoint)}" placeholder="${uiText('translate.endpointPlaceholder')}">
                    </div>

                    ${state.gameTranslateProvider === 'ollama' ? `
                        <div>
                            <label style="display:block; font-size:10px; color:#94a3b8; margin-bottom:2px;">${uiText('common.model')}</label>
                            <input class="input" data-field="gameTranslateModel" value="${esc(state.gameTranslateModel)}" placeholder="${uiText('translate.modelPlaceholder')}">
                        </div>
                    ` : ''}

                    ${state.gameTranslateProvider === 'custom' ? `
                        <div style="display:grid; grid-template-columns:100px 1fr; gap:8px;">
                            <div>
                                <label style="display:block; font-size:10px; color:#94a3b8; margin-bottom:2px;">${uiText('common.method')}</label>
                                <select class="input" data-field="gameTranslateCustomMethod">
                                    <option value="GET" ${state.gameTranslateCustomMethod === 'GET' ? 'selected' : ''}>GET</option>
                                    <option value="POST" ${state.gameTranslateCustomMethod === 'POST' ? 'selected' : ''}>POST</option>
                                </select>
                            </div>
                            <div>
                                <label style="display:block; font-size:10px; color:#94a3b8; margin-bottom:2px;">${uiText('common.urlPattern')}</label>
                                <input class="input" data-field="gameTranslateCustomUrlPattern" value="${esc(state.gameTranslateCustomUrlPattern)}" placeholder="http://localhost:5000/translate?text=\${TEXT}">
                            </div>
                        </div>
                        ${state.gameTranslateCustomMethod === 'POST' ? `
                            <div>
                                <label style="display:block; font-size:10px; color:#94a3b8; margin-bottom:2px;">${uiText('common.postBodyPattern')}</label>
                                <textarea class="textarea" data-field="gameTranslateCustomBody" style="min-height:50px; height:50px; font-family:Consolas, Monaco, monospace; font-size:11px;">${esc(state.gameTranslateCustomBody)}</textarea>
                            </div>
                        ` : ''}
                    ` : ''}
                </div>
            </div>

            <div class="section">
                <div class="section-title"><div><span>${uiText('translate.manualTitle')}</span><strong>${uiText('translate.manualDesc')}</strong></div></div>
                <div class="grid cols">
                    <div>
                        <textarea class="textarea" data-field="translateInput" placeholder="${uiText('translate.inputPlaceholder')}" style="min-height:100px; height:100px;">${esc(state.translateInput)}</textarea>
                    </div>
                    <div>
                        <textarea class="textarea" readonly placeholder="${uiText('translate.outputPlaceholder')}" style="min-height:100px; height:100px;">${esc(state.translateOutput)}</textarea>
                    </div>
                </div>
                <div style="display:flex; gap:8px; margin-top:8px;">
                    <button class="btn primary" data-action="translate-run" style="flex:1;">${state.translateBusy ? uiText('common.translating') : uiText('common.translate')}</button>
                    <button class="btn" data-action="translate-copy-output">${uiText('common.copyOutputToInput')}</button>
                </div>
            </div>
        </div>
    `
}
function shortcutDefinitions () {
    return [
        {
            id: 'togglePanel',
            label: uiText('shortcuts.def.togglePanel.label'),
            desc: uiText('shortcuts.def.togglePanel.desc'),
            group: uiText('shortcuts.group.panel'),
            defaultKey: { key: 'f10', ctrl: false, alt: false, shift: false },
            required: true,
            action: function () {
                state.visible = !state.visible
                draw()
            }
        },
        {
            id: 'speed1x',
            label: uiText('shortcuts.def.speed1x.label'),
            desc: uiText('shortcuts.def.speed1x.desc'),
            group: uiText('shortcuts.group.speed'),
            defaultKey: { key: '1', ctrl: false, alt: true, shift: false },
            action: function () { setSpeed(1) }
        },
        {
            id: 'speed2x',
            label: uiText('shortcuts.def.speed2x.label'),
            desc: uiText('shortcuts.def.speed2x.desc'),
            group: uiText('shortcuts.group.speed'),
            defaultKey: { key: '2', ctrl: false, alt: true, shift: false },
            action: function () { setSpeed(2) }
        },
        {
            id: 'speed3x',
            label: uiText('shortcuts.def.speed3x.label'),
            desc: uiText('shortcuts.def.speed3x.desc'),
            group: uiText('shortcuts.group.speed'),
            defaultKey: { key: '3', ctrl: false, alt: true, shift: false },
            action: function () { setSpeed(3) }
        },
        {
            id: 'speed5x',
            label: uiText('shortcuts.def.speed5x.label'),
            desc: uiText('shortcuts.def.speed5x.desc'),
            group: uiText('shortcuts.group.speed'),
            defaultKey: { key: '5', ctrl: false, alt: true, shift: false },
            action: function () { setSpeed(5) }
        },
        {
            id: 'speedReset',
            label: uiText('shortcuts.def.speedReset.label'),
            desc: uiText('shortcuts.def.speedReset.desc'),
            group: uiText('shortcuts.group.speed'),
            defaultKey: null,
            action: function () { setSpeed(1) }
        },
        {
            id: 'noClip',
            label: uiText('shortcuts.def.noClip.label'),
            desc: uiText('shortcuts.def.noClip.desc'),
            group: uiText('shortcuts.group.movement'),
            defaultKey: { key: 'n', ctrl: true, alt: false, shift: false },
            action: function () { setNoClip(!state.noClip) }
        },
        {
            id: 'encounterToggle',
            label: uiText('shortcuts.def.encounterToggle.label'),
            desc: uiText('shortcuts.def.encounterToggle.desc'),
            group: uiText('shortcuts.group.movement'),
            defaultKey: { key: 'e', ctrl: false, alt: true, shift: false },
            action: function () { setEncounters(state.encounterDisabled) }
        },
        {
            id: 'healParty',
            label: uiText('shortcuts.def.healParty.label'),
            desc: uiText('shortcuts.def.healParty.desc'),
            group: uiText('shortcuts.group.party'),
            defaultKey: { key: 'h', ctrl: false, alt: true, shift: false },
            action: function () { healParty() }
        },
        {
            id: 'quickSave',
            label: uiText('shortcuts.def.quickSave.label'),
            desc: uiText('shortcuts.def.quickSave.desc'),
            group: uiText('shortcuts.group.save'),
            defaultKey: { key: 's', ctrl: true, alt: false, shift: false },
            param: { slot: 1 },
            action: function (def) {
                const slot = (def.param && def.param.slot) ? Number(def.param.slot) : 1
                if (exists('DataManager') && typeof DataManager.saveGame === 'function') {
                    DataManager.saveGame(slot - 1)
                    log(`${uiText('shortcuts.def.quickSave.label')}: slot ${slot}`)
                } else {
                    log(`${uiText('shortcuts.def.quickSave.label')}: DataManager unavailable.`)
                }
            }
        },
        {
            id: 'quickLoad',
            label: uiText('shortcuts.def.quickLoad.label'),
            desc: uiText('shortcuts.def.quickLoad.desc'),
            group: uiText('shortcuts.group.save'),
            defaultKey: { key: 'l', ctrl: true, alt: false, shift: false },
            param: { slot: 1 },
            action: function (def) {
                const slot = (def.param && def.param.slot) ? Number(def.param.slot) : 1
                if (exists('DataManager') && typeof DataManager.loadGame === 'function') {
                    DataManager.loadGame(slot - 1)
                    log(`${uiText('shortcuts.def.quickLoad.label')}: slot ${slot}`)
                } else {
                    log(`${uiText('shortcuts.def.quickLoad.label')}: DataManager unavailable.`)
                }
            }
        },
        {
            id: 'forceVictory',
            label: uiText('shortcuts.def.forceVictory.label'),
            desc: uiText('shortcuts.def.forceVictory.desc'),
            group: uiText('shortcuts.group.battle'),
            defaultKey: { key: 'v', ctrl: false, alt: true, shift: false },
            action: function () {
                if (exists('BattleManager') && typeof BattleManager.processVictory === 'function') {
                    BattleManager.processVictory()
                    log('Victory forced.')
                } else {
                    log('Battle is not active.')
                }
            }
        },
        {
            id: 'forceDefeat',
            label: uiText('shortcuts.def.forceDefeat.label'),
            desc: uiText('shortcuts.def.forceDefeat.desc'),
            group: uiText('shortcuts.group.battle'),
            defaultKey: { key: 'd', ctrl: false, alt: true, shift: false },
            action: function () {
                if (exists('BattleManager') && typeof BattleManager.processDefeat === 'function') {
                    BattleManager.processDefeat()
                    log('Defeat forced.')
                } else {
                    log('Battle is not active.')
                }
            }
        },
        {
            id: 'forceEscape',
            label: uiText('shortcuts.def.forceEscape.label'),
            desc: uiText('shortcuts.def.forceEscape.desc'),
            group: uiText('shortcuts.group.battle'),
            defaultKey: { key: 'x', ctrl: false, alt: true, shift: false },
            action: function () {
                if (exists('BattleManager') && typeof BattleManager.onEscapeSuccess === 'function') {
                    BattleManager.onEscapeSuccess()
                    log('Escape forced.')
                } else {
                    log('Battle is not active.')
                }
            }
        },
        {
            id: 'woundAllEnemies',
            label: uiText('shortcuts.def.woundAllEnemies.label'),
            desc: uiText('shortcuts.def.woundAllEnemies.desc'),
            group: uiText('shortcuts.group.battle'),
            defaultKey: { key: 'f1', ctrl: false, alt: false, shift: false },
            action: function () {
                if (exists('$gameTroop') && $gameTroop.members) {
                    $gameTroop.members().forEach(m => { if (m && m.isAlive()) m.setHp(1) })
                    log('All enemies set to 1 HP.')
                } else {
                    log('Battle is not active.')
                }
            }
        },
        {
            id: 'recoverParty',
            label: uiText('shortcuts.def.recoverParty.label'),
            desc: uiText('shortcuts.def.recoverParty.desc'),
            group: uiText('shortcuts.group.battle'),
            defaultKey: { key: 'f2', ctrl: false, alt: false, shift: false },
            action: function () {
                if (exists('$gameParty') && $gameParty.members) {
                    $gameParty.members().forEach(m => { if (m) m.recoverAll() })
                    log('Party fully recovered.')
                } else {
                    log('Party data is not ready.')
                }
            }
        },
        {
            id: 'snapshot',
            label: uiText('shortcuts.def.snapshot.label'),
            desc: uiText('shortcuts.def.snapshot.desc'),
            group: uiText('shortcuts.group.other'),
            defaultKey: { key: 's', ctrl: false, alt: true, shift: false },
            action: function () { captureSnapshot() }
        },
        {
            id: 'custom1',
            label: uiText('shortcuts.def.custom.label', {index: 1}),
            desc: uiText('shortcuts.def.custom.desc'),
            group: uiText('shortcuts.group.custom'),
            defaultKey: null,
            customCode: '',
            isCustom: true,
            action: function (def) {
                if (def.customCode) {
                    try { eval(def.customCode) } catch (e) { log('Shortcut error: ' + e.message) }
                }
            }
        },
        {
            id: 'custom2',
            label: uiText('shortcuts.def.custom.label', {index: 2}),
            desc: uiText('shortcuts.def.custom.desc'),
            group: uiText('shortcuts.group.custom'),
            defaultKey: null,
            customCode: '',
            isCustom: true,
            action: function (def) {
                if (def.customCode) {
                    try { eval(def.customCode) } catch (e) { log('Shortcut error: ' + e.message) }
                }
            }
        },
        {
            id: 'custom3',
            label: uiText('shortcuts.def.custom.label', {index: 3}),
            desc: uiText('shortcuts.def.custom.desc'),
            group: uiText('shortcuts.group.custom'),
            defaultKey: null,
            customCode: '',
            isCustom: true,
            action: function (def) {
                if (def.customCode) {
                    try { eval(def.customCode) } catch (e) { log('Shortcut error: ' + e.message) }
                }
            }
        }
    ]
}

const SHORTCUT_STORAGE_KEY = 'adel9st.shortcuts'

function shortcutKeyToString (k) {
    if (!k) return ''
    const parts = []
    if (k.ctrl) parts.push('ctrl')
    if (k.alt) parts.push('alt')
    if (k.shift) parts.push('shift')
    parts.push(k.key)
    return parts.join('+')
}

function shortcutKeyFromString (s) {
    if (!s) return null
    const parts = s.toLowerCase().split('+')
    const ctrl = parts.includes('ctrl')
    const alt = parts.includes('alt')
    const shift = parts.includes('shift')
    const key = parts.filter(p => !['ctrl', 'alt', 'shift'].includes(p)).join('+')
    if (!key) return null
    return { key, ctrl, alt, shift }
}

function shortcutKeyDisplayLabel (k) {
    if (!k) return '-'
    const parts = []
    if (k.ctrl) parts.push('Ctrl')
    if (k.alt) parts.push('Alt')
    if (k.shift) parts.push('Shift')
    parts.push(k.key.length === 1 ? k.key.toUpperCase() : k.key.charAt(0).toUpperCase() + k.key.slice(1))
    return parts.join('+')
}

function loadShortcutOverrides () {
    try {
        const raw = localStorage.getItem(SHORTCUT_STORAGE_KEY)
        return raw ? JSON.parse(raw) : {}
    } catch (e) {
        return {}
    }
}

function saveShortcutOverrides (overrides) {
    try {
        localStorage.setItem(SHORTCUT_STORAGE_KEY, JSON.stringify(overrides))
    } catch (e) {}
}

function getShortcutKey (id) {
    const overrides = loadShortcutOverrides()
    if (Object.prototype.hasOwnProperty.call(overrides, id)) {
        return overrides[id] ? shortcutKeyFromString(overrides[id]) : null
    }
    const def = shortcutDefinitions().find(d => d.id === id)
    return def ? def.defaultKey : null
}

function setShortcutKey (id, key) {
    const overrides = loadShortcutOverrides()
    overrides[id] = key ? shortcutKeyToString(key) : ''
    saveShortcutOverrides(overrides)
}

function resetAllShortcuts () {
    localStorage.removeItem(SHORTCUT_STORAGE_KEY)
}

function getShortcutParam (id, paramKey) {
    const overrides = loadShortcutOverrides()
    const paramStore = overrides[`${id}__param`]
    if (paramStore && paramStore[paramKey] !== undefined) return paramStore[paramKey]
    const def = shortcutDefinitions().find(d => d.id === id)
    return (def && def.param) ? def.param[paramKey] : undefined
}

function setShortcutParam (id, paramKey, value) {
    const overrides = loadShortcutOverrides()
    const pkey = `${id}__param`
    if (!overrides[pkey]) overrides[pkey] = {}
    overrides[pkey][paramKey] = value
    saveShortcutOverrides(overrides)
}

function getCustomCode (id) {
    const overrides = loadShortcutOverrides()
    return overrides[`${id}__code`] || ''
}

function setCustomCode (id, code) {
    const overrides = loadShortcutOverrides()
    overrides[`${id}__code`] = code
    saveShortcutOverrides(overrides)
}

function runShortcutAction (event) {
    if (state.visible && editableEventTarget(event)) return false

    const key = (event.key || '').toLowerCase()
    const ctrl = event.ctrlKey || false
    const alt = event.altKey || false
    const shift = event.shiftKey || false

    const defs = shortcutDefinitions()
    for (const def of defs) {
        if (def.required) continue
        const k = getShortcutKey(def.id)
        if (!k) continue
        if (k.key === key && k.ctrl === ctrl && k.alt === alt && k.shift === shift) {
            event.preventDefault()
            event.stopImmediatePropagation()
            try {
                if (def.isCustom) {
                    const code = getCustomCode(def.id)
                    if (code) eval(code)
                } else {
                    def.action(def)
                }
                draw()
            } catch (e) {
                log('Shortcut error: ' + e.message)
            }
            return true
        }
    }
    return false
}

function shortcutsTab () {
    const defs = shortcutDefinitions()
    const query = (state.shortcutQuery || '').toLowerCase()
    const recording = state.shortcutRecording || null

    const groups = {}
    for (const def of defs) {
        const g = def.group || uiText('shortcuts.group.other')
        if (!groups[g]) groups[g] = []

        if (query) {
            const label = (def.label || '').toLowerCase()
            const desc = (def.desc || '').toLowerCase()
            const keyStr = shortcutKeyDisplayLabel(getShortcutKey(def.id)).toLowerCase()
            if (!label.includes(query) && !desc.includes(query) && !keyStr.includes(query)) continue
        }

        groups[g].push(def)
    }

    const groupKeys = Object.keys(groups)
    const conflictKeys = {}
    for (const def of defs) {
        const k = getShortcutKey(def.id)
        if (!k) continue
        const ks = shortcutKeyToString(k)
        if (!conflictKeys[ks]) conflictKeys[ks] = []
        conflictKeys[ks].push(def.id)
    }

    return `
        <div class="section">
            <div class="section-title">
                <div><span>${uiText('shortcuts.title')}</span><strong>${uiText('shortcuts.summary', {count: defs.length})}</strong></div>
                <div style="display:flex; gap:8px;">
                    <button class="btn warn" data-action="shortcut-reset-all">${uiText('shortcuts.resetAll')}</button>
                    <button class="btn" data-action="refresh">${uiText('common.refresh')}</button>
                </div>
            </div>
            <div class="table-toolbar-note">${uiText('shortcuts.helper')}</div>

            ${recording ? `
                <div style="background:#f59e0b22; border:1px solid #f59e0b; border-radius:6px; padding:10px 14px; margin-bottom:10px; display:flex; align-items:center; gap:10px;">
                    <span style="font-size:13px; color:#f59e0b; font-weight:600;">${uiText('shortcuts.recordingActive')}</span>
                    <span style="font-size:12px; color:#aaa;">${uiText('shortcuts.recordingHint')}</span>
                    <button class="btn" data-action="shortcut-cancel-recording" style="margin-left:auto;">${uiText('shortcuts.cancel')}</button>
                </div>
            ` : ''}

            <div class="toolbar-row" style="margin-bottom:10px;">
                <input class="input" data-field="shortcutQuery" value="${esc(state.shortcutQuery || '')}" placeholder="${uiText('shortcuts.searchPlaceholder')}" style="flex:1;">
            </div>

            ${groupKeys.length === 0 ? `<div class="table-toolbar-note">${uiText('shortcuts.empty')}</div>` : groupKeys.map(g => `
                <div class="section" style="margin-bottom:16px;">
                    <div class="section-title" style="margin-bottom:6px;">
                        <div><span>${esc(g)}</span></div>
                    </div>
                    <div class="table-container">
                        <div class="table-header" style="grid-template-columns: 1fr 1fr 180px 120px;">
                            <div>${uiText('shortcuts.headers.action')}</div>
                            <div>${uiText('shortcuts.headers.description')}</div>
                            <div>${uiText('shortcuts.headers.assignedKey')}</div>
                            <div class="cell-center">${uiText('shortcuts.headers.operations')}</div>
                        </div>
                        <div class="table-body">
                            ${groups[g].map(def => {
                                const k = getShortcutKey(def.id)
                                const ks = k ? shortcutKeyToString(k) : ''
                                const hasConflict = ks && conflictKeys[ks] && conflictKeys[ks].length > 1
                                const isRecording = recording === def.id
                                const keyLabel = k ? shortcutKeyDisplayLabel(k) : '-'

                                const paramHtml = (def.param && !def.isCustom) ? Object.keys(def.param).map(pk => {
                                    const v = getShortcutParam(def.id, pk)
                                    return `<div style="display:flex;align-items:center;gap:6px;margin-top:4px;font-size:11px;">
                                        <span style="color:#aaa;">${esc(pk)}:</span>
                                        <input class="table-input shortcut-param-input"
                                            data-shortcut-id="${def.id}"
                                            data-param-key="${esc(pk)}"
                                            value="${esc(String(v !== undefined ? v : def.param[pk]))}"
                                            style="max-width:60px;font-size:11px;">
                                    </div>`
                                }).join('') : ''

                                const customCodeHtml = def.isCustom ? `
                                    <div style="margin-top:6px;">
                                        <textarea class="input shortcut-code-input"
                                            data-shortcut-id="${def.id}"
                                            placeholder="JS code (e.g. $gameParty.gainGold(999))"
                                            style="width:100%;min-height:48px;font-size:11px;font-family:Consolas,monospace;resize:vertical;">${esc(getCustomCode(def.id))}</textarea>
                                    </div>
                                ` : ''

                                return `
                                <div class="table-row ${isRecording ? 'changed' : ''}" style="grid-template-columns: 1fr 1fr 180px 120px; flex-direction:column; display:grid; align-items:start;">
                                    <div style="padding:8px 6px;">
                                        <div style="font-weight:600; font-size:12px;">${esc(def.label)}</div>
                                        ${def.required ? `<span style="font-size:10px; color:#72f7c8; background:#72f7c822; border-radius:3px; padding:1px 5px;">${uiText('shortcuts.required')}</span>` : ''}
                                        ${paramHtml}
                                        ${customCodeHtml}
                                    </div>
                                    <div style="padding:8px 6px; font-size:11px; color:#aaa; align-self:center;">${esc(def.desc)}</div>
                                    <div style="padding:8px 6px; align-self:center;">
                                        ${isRecording
                                            ? `<span style="color:#f59e0b; font-size:13px; font-weight:600; animation: pulse 1s infinite;">${uiText('shortcuts.waiting')}</span>`
                                            : `<span class="shortcut-key-badge ${hasConflict ? 'conflict' : ''}" style="
                                                display:inline-block;
                                                background:${hasConflict ? '#ef444422' : '#1e293b'};
                                                border:1px solid ${hasConflict ? '#ef4444' : '#334155'};
                                                border-radius:5px;
                                                padding:3px 10px;
                                                font-size:12px;
                                                font-family:Consolas,monospace;
                                                color:${hasConflict ? '#ef4444' : '#e2e8f0'};
                                                cursor:${def.required ? 'default' : 'pointer'};
                                            " ${!def.required ? `data-action="shortcut-start-record" data-shortcut-id="${def.id}" title="Click to change"` : ''}>${esc(keyLabel)}</span>
                                            ${hasConflict ? `<div style="font-size:10px;color:#ef4444;margin-top:2px;">${uiText('shortcuts.conflict')}</div>` : ''}`
                                        }
                                    </div>
                                    <div style="padding:8px 6px; align-self:center; display:flex; gap:6px; justify-content:center;">
                                        ${!def.required ? `<button class="btn" data-action="shortcut-start-record" data-shortcut-id="${def.id}" style="font-size:11px; padding:2px 8px;">${uiText('shortcuts.assign')}</button>` : ''}
                                        ${!def.required && k ? `<button class="btn danger" data-action="shortcut-clear" data-shortcut-id="${def.id}" style="font-size:11px; padding:2px 8px;">${uiText('shortcuts.clearKey')}</button>` : ''}
                                    </div>
                                </div>
                            `}).join('')}
                        </div>
                    </div>
                </div>
            `).join('')}
        </div>
    `
}
    function attachHost () {
        if (!state.host) return
        const parent = document.fullscreenElement || 
                       document.webkitFullscreenElement || 
                       document.mozFullScreenElement || 
                       document.msFullscreenElement || 
                       document.body || 
                       document.documentElement
        if (parent && state.host.parentNode !== parent) {
            try {
                parent.appendChild(state.host)
            } catch (e) {
                document.documentElement.appendChild(state.host)
            }
        }
    }

    function draw () {
        if (!state.app) {
            return
        }

        attachHost()
        updateUiLayout(false)
        refreshChanges()

        // Preserve focus and caret/selection positions
        let activeSelector = null
        let activeSelectionStart = 0
        let activeSelectionEnd = 0
        let activeScrollLeft = 0
        let activeScrollTop = 0

        if (state.root && state.root.activeElement) {
            const el = state.root.activeElement
            if (el.tagName === 'INPUT' || el.tagName === 'TEXTAREA' || el.tagName === 'SELECT') {
                const tag = el.tagName.toLowerCase()
                const dataField = el.getAttribute('data-field')
                const dataId = el.getAttribute('data-id')
                const actorId = el.getAttribute('data-actor-id')
                const paramId = el.getAttribute('data-param-id')
                const className = Array.from(el.classList).join('.')
                
                let parts = [tag]
                if (className) parts.push(`.${className}`)
                if (dataField) parts.push(`[data-field="${dataField}"]`)
                if (dataId) parts.push(`[data-id="${dataId}"]`)
                if (actorId) parts.push(`[data-actor-id="${actorId}"]`)
                if (paramId) parts.push(`[data-param-id="${paramId}"]`)
                
                activeSelector = parts.join('')
                
                try {
                    activeSelectionStart = el.selectionStart
                    activeSelectionEnd = el.selectionEnd
                    activeScrollLeft = el.scrollLeft
                    activeScrollTop = el.scrollTop
                } catch (e) {
                    // Ignore selection errors on certain input types
                }
            }
        }

        // Preserve scroll position of scrollable elements
        const navEl = state.root ? state.root.querySelector('.nav') : null
        const savedNavScroll = navEl ? navEl.scrollTop : 0

        const contentEl = state.root ? state.root.querySelector('.content') : null
        const savedScroll = contentEl ? contentEl.scrollTop : 0

        const tableBodyEl = state.root ? state.root.querySelector('.table-body') : null
        const savedTableScroll = tableBodyEl ? tableBodyEl.scrollTop : 0

        const layout = state.uiLayout || computeUiLayout()
        const sizeModes = uiSizeModeOptions()

        let shell = state.app.querySelector('.panel-shell')
        if (!shell) {
            state.app.innerHTML = `
                <div class="panel-shell">
                    <div class="panel"></div>
                </div>
            `
            shell = state.app.querySelector('.panel-shell')
        }

        shell.className = `panel-shell ${state.visible ? '' : 'hidden'} ${layout.compact ? 'compact' : ''} ${layout.cramped ? 'cramped' : ''}`

        const panel = shell.querySelector('.panel')
        panel.innerHTML = `
                <div class="top">
                    <div class="brand">
                        <div class="mono">A9</div>
                        <div><span class="kicker">${uiText('render.brandSubtitle')}</span><div class="title">${uiText('tab.deck.title')}</div></div>
                    </div>
                    <div class="top-actions">
                        <div class="size-switch">
                            ${sizeModes.map(mode => `
                                <button class="size-chip ${layout.sizeMode === mode.value ? 'active' : ''}" data-action="ui-size-mode" data-mode="${mode.value}" title="${esc(mode.label)}">${mode.short}</button>
                            `).join('')}
                        </div>
                        <div class="badges">
                            <span class="badge">${uiText('render.badge.offlineCore')}</span>
                            <span class="badge">${runtimeName()}</span>
                            <span class="badge">${uiText('render.badge.legacyFlow')}</span>
                            <span class="badge">${uiText('render.badge.shortcuts')}</span>
                        </div>
                    </div>
                </div>
                <div class="body">
                    <div class="nav">
                        ${navButtons()}
                        <div class="nav-footer">${uiText('render.navFooterTop')}<br>${uiText('render.navFooterBottom')}</div>
                    </div>
                    <div class="content">${tabContent()}</div>
                </div>
        `

        // Restore scroll position immediately and on next frame to prevent stutter
        const targetNavScroll = savedNavScroll
        const targetScroll = savedScroll
        const targetTableScroll = savedTableScroll

        const newNavEl = state.root ? state.root.querySelector('.nav') : null
        if (newNavEl) {
            newNavEl.scrollTop = targetNavScroll
            requestAnimationFrame(() => {
                if (newNavEl) newNavEl.scrollTop = targetNavScroll
            })
        }

        const newContentEl = state.root ? state.root.querySelector('.content') : null
        if (newContentEl) {
            newContentEl.scrollTop = targetScroll
            requestAnimationFrame(() => {
                if (newContentEl) newContentEl.scrollTop = targetScroll
            })
        }

        const newTableBodyEl = state.root ? state.root.querySelector('.table-body') : null
        if (newTableBodyEl) {
            newTableBodyEl.scrollTop = targetTableScroll
            requestAnimationFrame(() => {
                if (newTableBodyEl) newTableBodyEl.scrollTop = targetTableScroll
            })
        }

        // Restore focus and caret position
        if (state.root && activeSelector) {
            const newEl = state.root.querySelector(activeSelector)
            if (newEl) {
                newEl.focus()
                try {
                    if (typeof activeSelectionStart === 'number') {
                        newEl.selectionStart = activeSelectionStart
                        newEl.selectionEnd = activeSelectionEnd
                    }
                    newEl.scrollLeft = activeScrollLeft
                    newEl.scrollTop = activeScrollTop
                } catch (e) {
                    // Ignore
                }
            }
        }
    }

    function refreshDynamic () {
        if (!state.root) {
            return
        }
        refreshChanges()

        const pairs = {
            map: mapName(),
            pos: playerPosition(),
            hp: `${partyHpPercent()}%`,
            gold: gold(),
            'gold-lock': state.goldFreeze ? uiText('render.goldLocked') : uiText('render.goldEditable'),
            speed: `x${state.speed.toFixed(1)}`,
            'player-speed': `x${(Math.pow(2, state.playerSpeedVal - 4) >= 1 ? Math.pow(2, state.playerSpeedVal - 4).toFixed(1) : Math.pow(2, state.playerSpeedVal - 4).toFixed(2))} (${Number(state.playerSpeedVal).toFixed(1)})`,
            changes: uiText('render.changesLocks', {
                changes: state.changes.variables + state.changes.switches,
                locks: Object.keys(state.freezeList).length
            })
        }

        Object.keys(pairs).forEach(key => {
            state.root.querySelectorAll(`[data-live="${key}"]`).forEach(node => {
                node.textContent = pairs[key]
            })
        })
    }
    function handleClick (event) {
        if (event.target.classList.contains('row-checkbox')) {
            const id = Number(event.target.getAttribute('data-id'))
            const type = event.target.getAttribute('data-type')
            if (type === 'variable') {
                state.variableSelected[id] = event.target.checked
            } else {
                state.switchSelected[id] = event.target.checked
            }
            draw()
            return
        }

        if (event.target.classList.contains('ce-lock-checkbox')) {
            const id = event.target.getAttribute('data-id')
            const action = event.target.getAttribute('data-action')
            if (action === 'variable-lock') {
                toggleVariableLock(id)
            } else if (action === 'switch-lock') {
                toggleSwitchLock(id)
            } else if (action === 'actor-stat-lock') {
                const actorId = Number(event.target.getAttribute('data-actor-id'))
                const isParam = event.target.getAttribute('data-is-param') === 'true'
                const paramName = event.target.getAttribute('data-name')
                toggleActorStatLock(actorId, id, isParam, paramName)
                return
            }
            draw()
            return
        }

        if (event.target.classList.contains('actor-god-checkbox')) {
            const id = Number(event.target.getAttribute('data-id'))
            state.godModeActors[id] = event.target.checked
            saveState()
            draw()
            return
        }

        if (event.target.classList.contains('header-checkbox')) {
            const type = event.target.getAttribute('data-type')
            const action = event.target.getAttribute('data-action')
            if (action === 'variable-toggle-all') {
                const visible = variablePageData().rows
                const allSelected = visible.length > 0 && visible.every(r => state.variableSelected[r.id])
                visible.forEach(row => {
                    if (allSelected) {
                        delete state.variableSelected[row.id]
                    } else {
                        state.variableSelected[row.id] = true
                    }
                })
            } else if (action === 'switch-toggle-all') {
                const visible = switchPageData().rows
                const allSelected = visible.length > 0 && visible.every(r => state.switchSelected[r.id])
                visible.forEach(row => {
                    if (allSelected) {
                        delete state.switchSelected[row.id]
                    } else {
                        state.switchSelected[row.id] = true
                    }
                })
            }
            draw()
            return
        }

        if (event.target.tagName === 'INPUT' || event.target.tagName === 'SELECT' || event.target.tagName === 'TEXTAREA') {
            return
        }

        const button = event.target.closest('[data-action]')
        if (!button) {
            return
        }

        const action = button.getAttribute('data-action')
        if (action === 'show') {
            state.visible = true
        } else if (action === 'hide') {
            state.visible = false
        } else if (action === 'tab') {
            state.activeTab = button.getAttribute('data-tab')
        } else if (action === 'ui-size-mode') {
            setUiSizeMode(button.getAttribute('data-mode'))
            return
        } else if (action === 'command') {
            runCommand(state.command)
        } else if (action === 'loadout') {
            applyLoadout(button.getAttribute('data-id'))
        } else if (action === 'speed') {
            setSpeed(Number(button.getAttribute('data-rate')))
        } else if (action === 'heal') {
            healParty()
        } else if (action === 'noclip') {
            setNoClip(!state.noClip)
        } else if (action === 'encounter') {
            setEncounters(state.encounterDisabled)
        } else if (action === 'max-gold') {
            setGoldFreeze(true, 999999)
        } else if (action === 'snapshot') {
            captureSnapshot()
        } else if (action === 'shortcut-start-record') {
            const sid = button.getAttribute('data-shortcut-id')
            if (sid) {
                state.shortcutRecording = (state.shortcutRecording === sid) ? null : sid
            }
        } else if (action === 'shortcut-cancel-recording') {
            state.shortcutRecording = null
        } else if (action === 'shortcut-clear') {
            const sid = button.getAttribute('data-shortcut-id')
            if (sid) setShortcutKey(sid, null)
        } else if (action === 'shortcut-reset-all') {
            resetAllShortcuts()
            log(uiText('log.shortcutsReset'))
        } else if (action === 'clear-snapshot') {
            state.snapshot = null
            refreshChanges()
            log(uiText('log.snapshotCleared'))
        } else if (action === 'save-scene') {
            showScene('Scene_Save')
        } else if (action === 'load-scene') {
            showScene('Scene_Load')
        } else if (action === 'refresh') {
            refreshChanges()
        } else if (action === 'teleport') {
            teleportTo(button.getAttribute('data-x'), button.getAttribute('data-y'))
        } else if (action === 'variable-lock') {
            toggleVariableLock(button.getAttribute('data-id'))
        } else if (action === 'switch-row-toggle') {
            const id = Number(button.getAttribute('data-id'))
            if (exists('$gameSwitches')) {
                const newVal = !$gameSwitches.value(id)
                setSwitchValue(id, newVal)
                
                const key = `switch:${id}`
                if (state.freezeList[key]) {
                    state.freezeList[key].value = newVal
                    saveState()
                }
            }
        } else if (action === 'switch-lock') {
            toggleSwitchLock(button.getAttribute('data-id'))
        } else if (action === 'inventory-set') {
            setInventoryAmount(state.inventoryKind, button.getAttribute('data-id'), state.inventoryAmount)
        } else if (action === 'inventory-max') {
            setInventoryAmount(state.inventoryKind, button.getAttribute('data-id'), 99)
        } else if (action === 'inventory-clear') {
            setInventoryAmount(state.inventoryKind, button.getAttribute('data-id'), 0)
        } else if (action === 'inventory-visible') {
            setVisibleInventoryAmount(state.inventoryAmount)
        } else if (action === 'inventory-visible-max') {
            setVisibleInventoryAmount(99)
        } else if (action === 'inventory-visible-clear') {
            setVisibleInventoryAmount(0)
        } else if (action === 'translate-run') {
            translateText(state.translateInput)
        } else if (action === 'translate-visible') {
            translateVisibleNames(button.getAttribute('data-kind'))
        } else if (action === 'translate-clear-cache') {
            state.translateCache = {}
            saveTranslateCache()
            state.translateStatus = uiText('translate.status.cacheCleared')
            log(uiText('translate.status.cacheCleared'))
        } else if (action === 'translate-copy-output') {
            state.translateInput = state.translateOutput
            state.translateStatus = uiText('translate.status.outputCopied')
        } else if (action === 'save-profile') {
            saveProfile()
            return
        } else if (action === 'apply-profile') {
            applyProfile(button.getAttribute('data-id'))
            return
        } else if (action === 'remove-profile') {
            removeProfile(button.getAttribute('data-id'))
            return
        } else if (action === 'clean') {
            applyLoadout('clean')
            return
        } else if (action === 'panic') {
            applyLoadout('panic')
            return
        } else if (action === 'title') {
            gotoTitle()
        } else if (action === 'quick-save') {
            quickSave(state.slot)
        } else if (action === 'quick-load') {
            quickLoad(state.slot)
        } else if (action === 'clear-locks') {
            state.goldFreeze = false
            state.freezeList = {}
            log(uiText('log.locksCleared'))
            saveState()
        } else if (action === 'battle-win') {
            forceVictory()
        } else if (action === 'battle-lose') {
            forceDefeat()
        } else if (action === 'battle-escape') {
            forceEscape()
        } else if (action === 'battle-abort') {
            forceAbort()
        } else if (action === 'battle-set-hp') {
            setBattleHp(button.getAttribute('data-target'), state.battleHpVal)
        } else if (action === 'message-skip-toggle') {
            state.messageSkip = !state.messageSkip
            log(uiText('log.messageSkip', {state: state.messageSkip ? uiText('common.enabled') : uiText('common.disabled')}))
            saveState()
        } else if (action === 'god-mode-toggle') {
            const id = button.getAttribute('data-id')
            state.godModeActors[id] = !state.godModeActors[id]
            log(uiText('log.godModeActor', {id: id, state: state.godModeActors[id] ? uiText('common.on') : uiText('common.off')}))
            saveState()
        } else if (action === 'auto-preset') {
            addAutomationFromPreset(button.getAttribute('data-id'))
        } else if (action === 'auto-toggle') {
            toggleAutomation(button.getAttribute('data-id'))
        } else if (action === 'auto-remove') {
            removeAutomation(button.getAttribute('data-id'))
        } else if (action === 'undo') {
            undoLastAction()
        } else if (action === 'speed-fix-toggle') {
            state.playerSpeedFix = !state.playerSpeedFix
            log(uiText('log.playerSpeedLock', {state: state.playerSpeedFix ? uiText('common.enabled') : uiText('common.disabled')}))
            saveState()
        } else if (action === 'freeze-remove') {
            const key = button.getAttribute('data-key')
            delete state.freezeList[key]
            log(uiText('log.lockRemoved', {key: key}))
            saveState()
        } else if (action === 'variable-batch-apply') {
            applyVariableBatch()
        } else if (action === 'variable-batch-freeze') {
            freezeVariableBatch()
        } else if (action === 'switch-batch-on') {
            applySwitchBatch('on')
        } else if (action === 'switch-batch-off') {
            applySwitchBatch('off')
        } else if (action === 'switch-batch-toggle') {
            applySwitchBatch('toggle')
        } else if (action === 'switch-batch-freeze') {
            freezeSwitchBatch()
        } else if (action === 'teleport-map') {
            teleportToMap(button.getAttribute('data-id'), state.teleportX, state.teleportY)
        } else if (action === 'auto-custom-add') {
            addCustomAutomation()
        } else if (action === 'macro-step-add') {
            addMacroStep()
        } else if (action === 'macro-step-remove') {
            removeMacroStep(button.getAttribute('data-id'))
        } else if (action === 'macro-run') {
            runMacroSteps()
        } else if (action === 'macro-clear') {
            clearMacroSteps()
        } else if (action === 'saved-location-add') {
            addCurrentLocation(state.locationAliasInput)

            state.locationAliasInput = ''
        } else if (action === 'saved-location-remove') {
            removeSavedLocation(button.getAttribute('data-id'))
        } else if (action === 'saved-location-teleport') {
            teleportToSavedLocation(button.getAttribute('data-id'))
        } else if (action === 'party-add') {
            addActorToParty(button.getAttribute('data-id'))
        } else if (action === 'party-remove') {
            removeActorFromParty(button.getAttribute('data-id'))
        } else if (action === 'party-level-apply') {
            const id = Number(button.getAttribute('data-id'))
            const value = state.partyLevelDrafts[id] !== undefined ? state.partyLevelDrafts[id] : actorLevel(id)
            setActorLevel(id, value)
        } else if (action === 'select-actor') {
            state.selectedActorId = Number(button.getAttribute('data-id')) || null
            state.actorSelectedEquipSlot = null
        } else if (action === 'deselect-actor') {
            state.selectedActorId = null
            state.actorSelectedEquipSlot = null
        } else if (action === 'actor-exp-apply') {
            const id = Number(button.getAttribute('data-id'))
            const value = state.partyExpDrafts[id] !== undefined ? state.partyExpDrafts[id] : actorExp(id)
            setActorExp(id, value)
        } else if (action === 'actor-stat-apply') {
            const actorId = Number(button.getAttribute('data-actor-id'))
            const paramId = Number(button.getAttribute('data-param-id'))
            const key = `${actorId}:${paramId}`
            const actor = exists('$gameActors') ? $gameActors.actor(actorId) : null
            const value = state.partyStatsDrafts[key] !== undefined ? state.partyStatsDrafts[key] : (actor ? actor.param(paramId) : 0)
            setActorParam(actorId, paramId, value)
        } else if (action === 'actor-subtab') {
            state.actorEditorSubTab = button.getAttribute('data-tab')
            state.actorSelectedEquipSlot = null
            state.actorEquipSearchQuery = ''
        } else if (action === 'actor-equip-change-btn') {
            state.actorSelectedEquipSlot = Number(button.getAttribute('data-slot'))
            state.actorEquipSearchQuery = ''
        } else if (action === 'actor-equip-unequip-btn') {
            const actorId = Number(button.getAttribute('data-actor-id'))
            const slot = Number(button.getAttribute('data-slot'))
            changeActorEquip(actorId, slot, null, false)
        } else if (action === 'actor-equip-select') {
            const actorId = Number(button.getAttribute('data-actor-id'))
            const slot = Number(button.getAttribute('data-slot'))
            const itemId = Number(button.getAttribute('data-item-id'))
            const isWeapon = button.getAttribute('data-is-weapon') === 'true'
            changeActorEquip(actorId, slot, itemId, isWeapon)
            state.actorSelectedEquipSlot = null
        } else if (action === 'actor-equip-cancel') {
            state.actorSelectedEquipSlot = null
        } else if (action === 'actor-skill-learn') {
            const actorId = Number(button.getAttribute('data-actor-id'))
            const skillId = Number(button.getAttribute('data-skill-id'))
            learnActorSkill(actorId, skillId)
        } else if (action === 'actor-skill-forget') {
            const actorId = Number(button.getAttribute('data-actor-id'))
            const skillId = Number(button.getAttribute('data-skill-id'))
            forgetActorSkill(actorId, skillId)
        } else if (action === 'tracer-clear-log') {
            state.eventHistoryLog = []
        } else if (action === 'player-speed-set') {
            const val = Number(button.getAttribute('data-val'))
            state.playerSpeedVal = 4 + Math.log2(val)
            state.playerSpeedFix = true
            log(uiText('log.playerSpeedSet', {value: val.toFixed(1)}))
            saveState()
        } else if (action === 'script-run') {
            runScriptLab()
        } else if (action === 'script-clear-output') {
            clearScriptOutput()
        } else if (action === 'script-preset') {
            useScriptPreset(button.getAttribute('data-id'))
        } else if (action === 'script-export-config') {
            exportRuntimeConfig()
        } else if (action === 'script-import-config') {
            importRuntimeConfig()

        } else if (action === 'variable-page-first') {
            state.variablePage = 1
        } else if (action === 'variable-page-prev') {
            state.variablePage = Math.max(1, state.variablePage - 1)
        } else if (action === 'variable-page-next') {
            state.variablePage = state.variablePage + 1
        } else if (action === 'variable-page-last') {
            state.variablePage = variablePageData().totalPages
        } else if (action === 'switch-page-first') {
            state.switchPage = 1
        } else if (action === 'switch-page-prev') {
            state.switchPage = Math.max(1, state.switchPage - 1)
        } else if (action === 'switch-page-next') {
            state.switchPage = state.switchPage + 1
        } else if (action === 'switch-page-last') {
            state.switchPage = switchPageData().totalPages
        } else if (action === 'inventory-page-first') {
            state.inventoryPage = 1
        } else if (action === 'inventory-page-prev') {
            state.inventoryPage = Math.max(1, state.inventoryPage - 1)
        } else if (action === 'inventory-page-next') {
            state.inventoryPage = state.inventoryPage + 1
        } else if (action === 'inventory-page-last') {
            state.inventoryPage = inventoryPageData().totalPages
        } else if (action === 'map-page-first') {
            state.mapPage = 1
        } else if (action === 'map-page-prev') {
            state.mapPage = Math.max(1, state.mapPage - 1)
        } else if (action === 'map-page-next') {
            state.mapPage = state.mapPage + 1
        } else if (action === 'map-page-last') {
            state.mapPage = mapPageData().totalPages
        } else if (action === 'inventory-row-apply') {
            const id = Number(button.getAttribute('data-id'))
            const value = state.inventoryDrafts[id] !== undefined ? state.inventoryDrafts[id] : state.inventoryAmount
            setInventoryAmount(state.inventoryKind, id, value)
        }

        draw()
    }

    function syncInlineDraft (target) {
        if (!target || !target.classList) return false

        if (target.classList.contains('inventory-inline-input')) {
            const id = Number(target.getAttribute('data-id'))
            if (Number.isFinite(id)) {
                state.inventoryDrafts[id] = target.value
            }
            return true
        }

        if (target.classList.contains('party-level-input')) {
            const id = Number(target.getAttribute('data-id'))
            if (Number.isFinite(id)) {
                state.partyLevelDrafts[id] = target.value
            }
            return true
        }

        if (target.classList.contains('party-exp-input')) {
            const id = Number(target.getAttribute('data-id'))
            if (Number.isFinite(id)) {
                state.partyExpDrafts[id] = target.value
            }
            return true
        }

        if (target.classList.contains('party-stat-input')) {
            const actorId = Number(target.getAttribute('data-actor-id'))
            const paramId = Number(target.getAttribute('data-param-id'))
            if (Number.isFinite(actorId) && Number.isFinite(paramId)) {
                state.partyStatsDrafts[`${actorId}:${paramId}`] = target.value
            }
            return true
        }

        if (target.classList.contains('shortcut-param-input')) {
            const shortcutId = target.getAttribute('data-shortcut-id')
            const paramKey = target.getAttribute('data-param-key')
            if (shortcutId && paramKey) {
                setShortcutParam(shortcutId, paramKey, target.value)
            }
            return true
        }

        if (target.classList.contains('shortcut-code-input')) {
            const shortcutId = target.getAttribute('data-shortcut-id')
            if (shortcutId) {
                setCustomCode(shortcutId, target.value)
            }
            return true
        }

        return false
    }

    function handleChange (event) {
        const target = event.target
        if (!target) return

        if (target.getAttribute) {
            const field = target.getAttribute('data-field')
            if (field === 'speed') {
                setSpeed(Number(target.value))
                return
            } else if (field === 'playerSpeedMultiplier') {
                const mult = clamp(Number(target.value) || 1.0, 0.1, 16, 1)
                state.playerSpeedVal = 4 + Math.log2(mult)
                state.playerSpeedFix = true
                saveState()
                draw()
                return
            } else if (field === 'playerSpeedVal') {
                state.playerSpeedVal = clamp(target.value, 1, 8, 4)
                state.playerSpeedFix = true
                saveState()
                draw()
                return
            }
        }

        if (target.classList && target.classList.contains('variable-inline-input')) {
            const id = Number(target.getAttribute('data-id'))
            if (Number.isFinite(id)) {
                setVariableValue(id, target.value)
                draw()
            }
            return
        }

        const tagName = target.tagName ? target.tagName.toLowerCase() : ''
        const type = target.type ? target.type.toLowerCase() : ''
        const field = target.getAttribute ? target.getAttribute('data-field') : null

        if (field && (type === 'checkbox' || type === 'radio' || type === 'number' || tagName === 'select')) {
            handleInput(event)
        }
    }

    function handleInput (event) {
        if (syncInlineDraft(event.target)) {
            return
        }

        const field = event.target.getAttribute('data-field')
        if (!field) return

        if (field === 'command') {
            state.command = event.target.value
        } else if (field === 'speed') {
            state.speed = clamp(event.target.value, 0.1, 10, 1)
            ensureSpeedPatch()
            refreshDynamic()
        } else if (field === 'variableQuery') {
            state.variableQuery = event.target.value
            state.variablePage = 1
            draw()
        } else if (field === 'variableFilter') {
            state.variableFilter = event.target.value
            state.variablePage = 1
            draw()
        } else if (field === 'variableSort') {
            state.variableSort = event.target.value
            state.variablePage = 1
            draw()
        } else if (field === 'variableNameless') {
            state.variableNameless = event.target.checked
            state.variablePage = 1
            draw()
        } else if (field === 'variableRowsPerPage') {
            state.variableRowsPerPage = event.target.value === 'all' ? 'all' : positiveInt(event.target.value, 5)
            state.variablePage = 1
            draw()
        } else if (field === 'variablePage') {
            state.variablePage = positiveInt(event.target.value, 1)
            draw()
        } else if (field === 'variableBatchOp') {
            state.variableBatchOp = event.target.value
            draw()
        } else if (field === 'variableBatchVal') {
            state.variableBatchVal = event.target.value
        } else if (field === 'switchQuery') {
            state.switchQuery = event.target.value
            state.switchPage = 1
            draw()
        } else if (field === 'switchFilter') {
            state.switchFilter = event.target.value
            state.switchPage = 1
            draw()
        } else if (field === 'switchNameless') {
            state.switchNameless = event.target.checked
            state.switchPage = 1
            draw()
        } else if (field === 'switchRowsPerPage') {
            state.switchRowsPerPage = event.target.value === 'all' ? 'all' : positiveInt(event.target.value, 5)
            state.switchPage = 1
            draw()
        } else if (field === 'switchPage') {
            state.switchPage = positiveInt(event.target.value, 1)
            draw()
        } else if (field === 'inventoryKind') {
            state.inventoryKind = event.target.value
            state.inventoryPage = 1
            state.inventoryDrafts = {}
            draw()
        } else if (field === 'inventoryQuery') {
            state.inventoryQuery = event.target.value
            state.inventoryPage = 1
            state.inventoryDrafts = {}
            draw()
        } else if (field === 'shortcutQuery') {
            state.shortcutQuery = event.target.value
            draw()
        } else if (field === 'inventoryRowsPerPage') {
            state.inventoryRowsPerPage = event.target.value === 'all' ? 'all' : positiveInt(event.target.value, 5)
            state.inventoryPage = 1
            draw()
        } else if (field === 'inventoryPage') {
            state.inventoryPage = positiveInt(event.target.value, 1)
            draw()
        } else if (field === 'inventoryAmount') {
            state.inventoryAmount = event.target.value
        } else if (field === 'locationAliasInput') {
            state.locationAliasInput = event.target.value
        } else if (field === 'locationSearch') {
            state.locationSearch = event.target.value
            draw()
        } else if (field === 'partySearch') {
            state.partySearch = event.target.value
            draw()
        } else if (field === 'scriptCode') {
            state.scriptCode = event.target.value
        } else if (field === 'scriptConfigText') {
            state.scriptConfigText = event.target.value
        } else if (field === 'customAutomationName') {
            state.customAutomationName = event.target.value
        } else if (field === 'customAutomationInterval') {
            state.customAutomationInterval = event.target.value
        } else if (field === 'customAutomationAction') {
            state.customAutomationAction = event.target.value
            draw()
        } else if (field === 'customAutomationParamId') {
            state.customAutomationParamId = event.target.value
        } else if (field === 'customAutomationParamValue') {
            state.customAutomationParamValue = event.target.value
        } else if (field === 'customAutomationParamBool') {
            state.customAutomationParamBool = event.target.checked
        } else if (field === 'macroAction') {
            state.macroAction = event.target.value
            draw()
        } else if (field === 'macroDelay') {
            state.macroDelay = event.target.value
        } else if (field === 'macroParamId') {
            state.macroParamId = event.target.value
        } else if (field === 'macroParamValue') {
            state.macroParamValue = event.target.value
        } else if (field === 'macroParamBool') {
            state.macroParamBool = event.target.checked
        } else if (field === 'translateProvider') {
            state.translateProvider = event.target.value
            if (state.translateProvider === 'libre') {
                state.translateEndpoint = 'http://localhost:5000/translate'
            } else if (state.translateProvider === 'ollama') {
                state.translateEndpoint = 'http://localhost:11434/api/generate'
            } else if (state.translateProvider === 'ezTransWeb') {
                state.translateEndpoint = 'http://localhost:5000/translate?text=${TEXT}'
            } else if (state.translateProvider === 'ezTransServer') {
                state.translateEndpoint = 'http://localhost:8000'
            } else if (state.translateProvider === 'custom') {
                state.translateEndpoint = state.translateEndpoint || 'http://localhost:5000/translate?text=${TEXT}'
            }
            saveState()
            draw()
        } else if (field === 'translateSource') {
            state.translateSource = event.target.value
            saveState()
        } else if (field === 'uiLanguage') {
            state.uiLanguage = event.target.value || 'auto'
            saveState()
            log(uiText('language.saved', {name: uiLanguageName(state.uiLanguage)}))
            draw()
        } else if (field === 'uiSizeMode') {
            setUiSizeMode(event.target.value || 'auto')
        } else if (field === 'translateTarget') {
            state.translateTarget = event.target.value
            saveState()
        } else if (field === 'translateEndpoint') {
            state.translateEndpoint = event.target.value
            saveState()
        } else if (field === 'translateModel') {
            state.translateModel = event.target.value
            saveState()
        } else if (field === 'translateInput') {
            state.translateInput = event.target.value
        } else if (field === 'translateEnabled') {
            state.translateEnabled = event.target.checked
            translateDatabase()
            saveState()
            draw()
        } else if (field === 'translateTargets') {
            const key = event.target.getAttribute('data-key')
            state.translateTargets[key] = event.target.checked
            translateDatabase()
            saveState()
            draw()
        } else if (field === 'translateBulkChunkSize') {
            state.translateBulkChunkSize = Math.max(1, Number(event.target.value) || 100)
            saveState()
        } else if (field === 'slot') {
            state.slot = Math.max(1, Number(event.target.value) || 1)
        } else if (field === 'playerSpeedMultiplier') {
            const mult = clamp(Number(event.target.value) || 1.0, 0.1, 16, 1)
            state.playerSpeedVal = 4 + Math.log2(mult)
            state.playerSpeedFix = true
            saveState()
            refreshDynamic()
        } else if (field === 'playerSpeedVal') {
            state.playerSpeedVal = clamp(event.target.value, 1, 8, 4)
            state.playerSpeedFix = true
            saveState()
            refreshDynamic()
        } else if (field === 'battleHpVal') {
            state.battleHpVal = event.target.value
        } else if (field === 'mapSearch') {
            state.mapSearch = event.target.value
            state.mapPage = 1
            draw()
        } else if (field === 'mapRowsPerPage') {
            state.mapRowsPerPage = event.target.value === 'all' ? 'all' : positiveInt(event.target.value, 5)
            state.mapPage = 1
            draw()
        } else if (field === 'mapPage') {
            state.mapPage = positiveInt(event.target.value, 1)
            draw()
        } else if (field === 'teleportX') {
            state.teleportX = event.target.value
        } else if (field === 'teleportY') {
            state.teleportY = event.target.value
        } else if (field === 'translateTargetLang') {
            state.translateTargetLang = event.target.value
            state.translateTarget = event.target.value
            translateDatabase()
            saveState()
            draw()
        } else if (field === 'gameTranslateEnabled') {
            state.gameTranslateEnabled = event.target.checked
            saveState()
        } else if (field === 'choiceTranslateEnabled') {
            state.choiceTranslateEnabled = event.target.checked
            saveState()
        } else if (field === 'scrollTranslateEnabled') {
            state.scrollTranslateEnabled = event.target.checked
            saveState()
        } else if (field === 'speedSceneFilter') {
            state.speedSceneFilter = event.target.value
            saveState()
            ensureSpeedPatch()
            draw()
        } else if (field === 'variableLockResults') {
            state.variableLockResults = event.target.checked
            if (state.variableLockResults) {
                state.variableLockedIds = variableRowsData().map(r => r.id)
            } else {
                state.variableLockedIds = null
            }
            draw()
        } else if (field === 'batchRandomMin') {
            state.batchRandomMin = event.target.value
        } else if (field === 'batchRandomMax') {
            state.batchRandomMax = event.target.value
        } else if (field === 'inventoryExcludeNameless') {
            state.inventoryExcludeNameless = event.target.checked
            state.inventoryPage = 1
            saveState()
            draw()
        } else if (field === 'inventoryOnlyOwned') {
            state.inventoryOnlyOwned = event.target.checked
            state.inventoryPage = 1
            saveState()
            draw()
        } else if (field === 'translateCustomMethod') {
            state.translateCustomMethod = event.target.value
            saveState()
            draw()
        } else if (field === 'translateCustomUrlPattern') {
            state.translateCustomUrlPattern = event.target.value
            saveState()
        } else if (field === 'translateCustomBody') {
            state.translateCustomBody = event.target.value
            saveState()
        } else if (field === 'gameTranslateProvider') {
            state.gameTranslateProvider = event.target.value
            if (state.gameTranslateProvider === 'libre') {
                state.gameTranslateEndpoint = 'http://localhost:5000/translate'
            } else if (state.gameTranslateProvider === 'ollama') {
                state.gameTranslateEndpoint = 'http://localhost:11434/api/generate'
            } else if (state.gameTranslateProvider === 'ezTransWeb') {
                state.gameTranslateEndpoint = 'http://localhost:5000/translate?text=${TEXT}'
            } else if (state.gameTranslateProvider === 'ezTransServer') {
                state.gameTranslateEndpoint = 'http://localhost:8000'
            } else if (state.gameTranslateProvider === 'custom') {
                state.gameTranslateEndpoint = state.gameTranslateEndpoint || 'http://localhost:5000/translate?text=${TEXT}'
            }
            saveState()
            draw()
        } else if (field === 'gameTranslateTargetLang') {
            state.gameTranslateTargetLang = event.target.value
            saveState()
            draw()
        } else if (field === 'gameTranslateEndpoint') {
            state.gameTranslateEndpoint = event.target.value
            saveState()
        } else if (field === 'gameTranslateModel') {
            state.gameTranslateModel = event.target.value
            saveState()
        } else if (field === 'gameTranslateCustomMethod') {
            state.gameTranslateCustomMethod = event.target.value
            saveState()
            draw()
        } else if (field === 'gameTranslateCustomUrlPattern') {
            state.gameTranslateCustomUrlPattern = event.target.value
            saveState()
        } else if (field === 'gameTranslateCustomBody') {
            state.gameTranslateCustomBody = event.target.value
            saveState()
        } else if (field === 'actorSkillsQuery') {
            state.actorSkillsQuery = event.target.value
            draw()
        } else if (field === 'actorEquipSearchQuery') {
            state.actorEquipSearchQuery = event.target.value
            draw()
        } else if (field === 'eventTracerEnabled') {
            state.eventTracerEnabled = event.target.checked
            saveState()
            draw()
        }
    }

    function handleKeydown (event) {
        if (event.timeStamp && handleKeydown.lastTime && event.timeStamp === handleKeydown.lastTime) {
            return
        }
        if (event.timeStamp) {
            handleKeydown.lastTime = event.timeStamp
        }

        let typing = false
        try {
            typing = !!editableEventTarget(event)
        } catch (e) {
            // ignore
        }

        const key = (event.key || '').toLowerCase()

        let hasSelection = false
        try {
            const sel = window.getSelection ? window.getSelection() : null
            if (sel && sel.toString().length > 0) {
                hasSelection = true
            }
            if (!hasSelection && state.root && state.root.getSelection) {
                const sSel = state.root.getSelection()
                if (sSel && sSel.toString().length > 0) {
                    hasSelection = true
                }
            }
            if (!hasSelection && state.root && state.root.activeElement) {
                const act = state.root.activeElement
                if (act && (act.tagName === 'INPUT' || act.tagName === 'TEXTAREA') && typeof act.selectionStart === 'number') {
                    if (act.selectionStart !== act.selectionEnd) {
                        hasSelection = true
                    }
                }
            }
        } catch (e) {
            // ignore
        }

        const isToggleKey = (key === 'f10') || 
                            (event.code === 'Backquote' && !typing) || 
                            (key === '"' && !typing) || 
                            (key === 'é' && !typing) || 
                            (key === '`' && !typing) || 
                            (event.ctrlKey && (key === 'c' || event.code === 'KeyC') && !typing && !hasSelection)

        if (isToggleKey) {
            event.preventDefault()
            state.visible = !state.visible
            draw()
        } else if (key === 'escape' && state.visible) {
            if (state.shortcutRecording) {
                // ESC cancels recording
                state.shortcutRecording = null
                draw()
                return
            }
            state.visible = false
            draw()
        } else if (state.shortcutRecording) {
            // Capture key for shortcut recording
            const recId = state.shortcutRecording
            const defs = shortcutDefinitions()
            const def = defs.find(d => d.id === recId)
            if (def && !def.required) {
                if (key === 'delete' || key === 'backspace') {
                    setShortcutKey(recId, null)
                } else {
                    const newKey = { key: key, ctrl: event.ctrlKey, alt: event.altKey, shift: event.shiftKey }
                    setShortcutKey(recId, newKey)
                }
                event.preventDefault()
                event.stopImmediatePropagation()
            }
            state.shortcutRecording = null
            draw()
        } else {
            runShortcutAction(event)
        }
    }

    function shieldTextInputKeys (event) {
        if (state.visible && editableEventTarget(event)) {
            if (event.type === 'keydown') {
                handleRootKeydown(event)
            }
            event.stopPropagation()
        }
    }

    function handleRootKeydown (event) {
        if (event.key === 'Enter' && event.target && event.target.classList && event.target.classList.contains('variable-inline-input')) {
            setVariableValue(Number(event.target.getAttribute('data-id')), event.target.value)
            event.preventDefault()
            draw()
        } else if (event.key === 'Enter' && event.target && event.target.classList && event.target.classList.contains('inventory-inline-input')) {
            syncInlineDraft(event.target)
            setInventoryAmount(state.inventoryKind, Number(event.target.getAttribute('data-id')), event.target.value)
            event.preventDefault()
            draw()
        } else if (event.key === 'Enter' && event.target && event.target.classList && event.target.classList.contains('party-level-input')) {
            syncInlineDraft(event.target)
            setActorLevel(Number(event.target.getAttribute('data-id')), event.target.value)
            event.preventDefault()
            draw()
        } else if (event.key === 'Enter' && event.target && event.target.classList && event.target.classList.contains('party-exp-input')) {
            syncInlineDraft(event.target)
            setActorExp(Number(event.target.getAttribute('data-id')), event.target.value)
            event.preventDefault()
            draw()
        } else if (event.key === 'Enter' && event.target && event.target.classList && event.target.classList.contains('party-stat-input')) {
            syncInlineDraft(event.target)
            setActorParam(
                Number(event.target.getAttribute('data-actor-id')),
                Number(event.target.getAttribute('data-param-id')),
                event.target.value
            )
            event.preventDefault()
            draw()
        } else if (event.key === 'Enter' && event.target && event.target.getAttribute('data-field') === 'command') {
            runCommand(event.target.value)
        } else if (event.ctrlKey && event.key === 'Enter' && event.target && event.target.getAttribute('data-field') === 'translateInput') {
            translateText(event.target.value)
        } else if (event.ctrlKey && event.key === 'Enter' && event.target && event.target.getAttribute('data-field') === 'scriptCode') {
            runScriptLab()
        } else if (event.key === 'Enter' && event.target && event.target.getAttribute('data-field') === 'locationAliasInput') {
            addCurrentLocation(state.locationAliasInput)
            state.locationAliasInput = ''
            draw()
        } else if (event.key === 'Enter' && event.target && ['variableQuery', 'switchQuery', 'inventoryQuery', 'mapSearch', 'mapPage'].includes(event.target.getAttribute('data-field'))) {
            draw()
        }
    }
    function safeHook(obj, methodName, hookFactory) {
        if (!obj || typeof obj[methodName] !== 'function') return;
        const original = obj[methodName];
        if (original._adelHook) return;

        const hook = hookFactory(original);
        hook._adelHook = true;
        obj[methodName] = hook;
    }

    function hookMessageSkip() {
        if (exists('Window_Message')) {
            safeHook(Window_Message.prototype, 'updateShowFast', function(original) {
                return function() {
                    original.apply(this, arguments);
                    if (state.messageSkip) {
                        this._showFast = true;
                        this._pauseSkip = true;
                    }
                };
            });

            safeHook(Window_Message.prototype, 'updateInput', function(original) {
                return function() {
                    const ret = original.apply(this, arguments);
                    if (this.pause && state.messageSkip) {
                        this.pause = false;
                        if (!this._textState && typeof this.terminateMessage === 'function') {
                            this.terminateMessage();
                        }
                        return true;
                    }
                    return ret;
                };
            });
        }

        if (exists('Window_ScrollText')) {
            safeHook(Window_ScrollText.prototype, 'scrollSpeed', function(original) {
                return function() {
                    let speed = original.apply(this, arguments);
                    if (state.messageSkip) {
                        speed *= 10;
                    }
                    return speed;
                };
            });
        }

        if (exists('Window_BattleLog')) {
            safeHook(Window_BattleLog.prototype, 'messageSpeed', function(original) {
                return function() {
                    if (state.messageSkip) {
                        return 1;
                    }
                    return original.apply(this, arguments);
                };
            });
        }
    }

    const translationPending = new Map();
    let isTranslatingChoices = false;

    function getCommand101Text(interpreter) {
        if (!interpreter || !interpreter._list) return "";
        const texts = [];
        let idx = interpreter._index + 1;
        while (interpreter._list[idx] && interpreter._list[idx].code === 401) {
            texts.push(interpreter._list[idx].parameters[0]);
            idx++;
        }
        return texts.join('\n');
    }

    function getCommand105Text(interpreter) {
        if (!interpreter || !interpreter._list) return "";
        const texts = [];
        let idx = interpreter._index + 1;
        while (interpreter._list[idx] && interpreter._list[idx].code === 405) {
            texts.push(interpreter._list[idx].parameters[0]);
            idx++;
        }
        return texts.join('\n');
    }

    function hookGameMessage() {
        if (exists('Game_Message')) {
            safeHook(Game_Message.prototype, 'allText', function(original) {
                return function() {
                    const originalText = original.apply(this, arguments);
                    if (this._adelOriginalText === originalText) {
                        return originalText;
                    }
                    if ((state.gameTranslateEnabled || state.scrollTranslateEnabled) && originalText) {
                        if (translationCache[originalText]) {
                            return translationCache[originalText];
                        }
                    }
                    return originalText;
                };
            });

            safeHook(Game_Message.prototype, 'clear', function(original) {
                return function() {
                    original.apply(this, arguments);
                    this._adelOriginalText = null;
                };
            });

            safeHook(Game_Message.prototype, 'setChoices', function(original) {
                return function(choices, cancelType, defaultType) {
                    if (state.choiceTranslateEnabled && choices) {
                        const translatedChoices = choices.map(c => translationCache[c] || c);
                        original.call(this, translatedChoices, cancelType, defaultType);
                    } else {
                        original.apply(this, arguments);
                    }
                };
            });

            safeHook(Game_Message.prototype, 'choices', function(original) {
                return function() {
                    const rawChoices = original.apply(this, arguments);
                    if (state.choiceTranslateEnabled && rawChoices) {
                        return rawChoices.map(c => translationCache[c] || c);
                    }
                    return rawChoices;
                };
            });
        }
    }

    function hookTranslation () {
        // Hook Game_Message methods
        hookGameMessage();

        // Hook Window_Message startMessage to translate and populate Game_Message texts directly
        if (exists('Window_Message') && exists('Game_Message')) {
            safeHook(Window_Message.prototype, 'startMessage', function(original) {
                return function() {
                    if (!state.gameTranslateEnabled) {
                        original.apply(this, arguments);
                        return;
                    }
                    const originalText = $gameMessage.allText();
                    if (!originalText || originalText.trim() === "" || originalText === "...") {
                        original.apply(this, arguments);
                        return;
                    }
                    if (translationCache[originalText]) {
                        const translated = translationCache[originalText];
                        $gameMessage._texts = translated.split('\n');
                        $gameMessage._adelOriginalText = translated;
                        original.apply(this, arguments);
                        return;
                    }

                    const targetLang = state.gameTranslateTargetLang || 'tr';
                    $gameMessage._texts = ["..."];
                    original.apply(this, arguments);

                    let resolved = false;
                    const timeoutId = setTimeout(() => {
                        if (!resolved) {
                            resolved = true;
                            translationCache[originalText] = originalText;
                            if ($gameMessage.allText() === "...") {
                                $gameMessage._texts = originalText.split('\n');
                                $gameMessage._adelOriginalText = originalText;
                                if (this.contents) this.contents.clear();
                                this._textState = null;
                                original.apply(this, arguments);
                            }
                        }
                    }, 1500);

                    translateSingleText(originalText, 'auto', targetLang, true).then(translated => {
                        if (!resolved) {
                            resolved = true;
                            clearTimeout(timeoutId);
                            translationCache[originalText] = translated;
                            if ($gameMessage.allText() === "...") {
                                $gameMessage._texts = translated.split('\n');
                                $gameMessage._adelOriginalText = translated;
                                if (this.contents) this.contents.clear();
                                this._textState = null;
                                original.apply(this, arguments);
                            }
                        }
                    }).catch(err => {
                        if (!resolved) {
                            resolved = true;
                            clearTimeout(timeoutId);
                            translationCache[originalText] = originalText;
                            if ($gameMessage.allText() === "...") {
                                $gameMessage._texts = originalText.split('\n');
                                $gameMessage._adelOriginalText = originalText;
                                if (this.contents) this.contents.clear();
                                this._textState = null;
                                original.apply(this, arguments);
                            }
                        }
                    });
                };
            });
        }

        // Hook Window_ChoiceList makeCommandList to translate dialogue choices dynamically
        if (exists('Window_ChoiceList') && exists('Game_Message')) {
            safeHook(Window_ChoiceList.prototype, 'makeCommandList', function(original) {
                return function() {
                    original.apply(this, arguments);

                    if (state.choiceTranslateEnabled && !isTranslatingChoices) {
                        const choices = $gameMessage.choices();
                        if (!choices || choices.length === 0) return;

                        const allCached = choices.every(c => !c || c.trim() === "" || translationCache[c]);
                        if (allCached) {
                            for (let i = 0; i < choices.length; i++) {
                                const choice = choices[i];
                                if (choice && translationCache[choice]) {
                                    const translated = translationCache[choice];
                                    $gameMessage._choices[i] = translated;
                                    if (this._list && this._list[i]) {
                                        this._list[i].name = translated;
                                    }
                                }
                            }
                            return;
                        }

                        const targetLang = state.gameTranslateTargetLang || 'tr';
                        const promises = choices.map(choice => {
                            if (!choice || choice.trim() === "") return Promise.resolve("");
                            if (translationCache[choice]) return Promise.resolve(translationCache[choice]);
                            return translateSingleText(choice, 'auto', targetLang, true).then(translated => {
                                translationCache[choice] = translated;
                                return translated;
                            }).catch(() => {
                                translationCache[choice] = choice;
                                return choice;
                            });
                        });

                        isTranslatingChoices = true;
                        Promise.all(promises).then(() => {
                            isTranslatingChoices = false;
                            if (this.contents) {
                                this.contents.clear();
                            }
                            this.clearCommandList();
                            isTranslatingChoices = true;
                            this.makeCommandList();
                            isTranslatingChoices = false;
                            this.drawAllItems();
                        }).catch(() => {
                            isTranslatingChoices = false;
                        });
                    }
                };
            });
        }

        // Hook Window_ScrollText startMessage for scrolling text translation
        if (exists('Window_ScrollText') && exists('Game_Message')) {
            safeHook(Window_ScrollText.prototype, 'startMessage', function(original) {
                return function() {
                    if (!state.scrollTranslateEnabled) {
                        original.apply(this, arguments);
                        return;
                    }
                    const originalText = $gameMessage.allText();
                    if (!originalText || originalText.trim() === "") {
                        original.apply(this, arguments);
                        return;
                    }
                    if (translationCache[originalText]) {
                        const translated = translationCache[originalText];
                        $gameMessage._texts = translated.split('\n');
                        $gameMessage._adelOriginalText = translated;
                        original.apply(this, arguments);
                        return;
                    }

                    const targetLang = state.gameTranslateTargetLang || 'tr';
                    translateSingleText(originalText, 'auto', targetLang, true).then(translated => {
                        translationCache[originalText] = translated;
                        if ($gameMessage.allText() === originalText) {
                            $gameMessage._texts = translated.split('\n');
                            $gameMessage._adelOriginalText = translated;
                            original.apply(this, arguments);
                        }
                    }).catch(() => {
                        translationCache[originalText] = originalText;
                        original.apply(this, arguments);
                    });
                };
            });
        }

        // Hook Game_Interpreter commands
        if (exists('Game_Interpreter')) {
            safeHook(Game_Interpreter.prototype, 'command101', function(original) {
                return function(params) {
                    if (!state.gameTranslateEnabled) {
                        return original.apply(this, arguments);
                    }
                    if ($gameMessage.isBusy()) {
                        return false;
                    }
                    const text = getCommand101Text(this);
                    if (!text || text.trim() === "" || text === "...") {
                        return original.apply(this, arguments);
                    }
                    if (translationCache[text]) {
                        const ret = original.apply(this, arguments);
                        $gameMessage._texts = translationCache[text].split('\n');
                        $gameMessage._adelOriginalText = translationCache[text];
                        return ret;
                    }
                    let pending = translationPending.get(text);
                    if (!pending) {
                        const targetLang = state.gameTranslateTargetLang || 'tr';
                        pending = {
                            done: false,
                            translatedText: null,
                            startTime: Date.now()
                        };
                        translationPending.set(text, pending);
                        translateSingleText(text, 'auto', targetLang, true).then(translated => {
                            pending.done = true;
                            pending.translatedText = translated;
                            translationCache[text] = translated;
                        }).catch(err => {
                            pending.done = true;
                            pending.translatedText = text;
                            translationCache[text] = text;
                        });
                    }
                    if (pending.done) {
                        const ret = original.apply(this, arguments);
                        const translated = translationCache[text] || text;
                        $gameMessage._texts = translated.split('\n');
                        $gameMessage._adelOriginalText = translated;
                        return ret;
                    }
                    if (Date.now() - pending.startTime > 1500) {
                        pending.done = true;
                        translationCache[text] = text;
                        const ret = original.apply(this, arguments);
                        $gameMessage._texts = text.split('\n');
                        $gameMessage._adelOriginalText = text;
                        return ret;
                    }
                    return false;
                };
            });

            safeHook(Game_Interpreter.prototype, 'command102', function(original) {
                return function(params) {
                    if (!state.choiceTranslateEnabled) {
                        return original.apply(this, arguments);
                    }
                    if ($gameMessage.isBusy()) {
                        return false;
                    }
                    if (!params || !params[0]) {
                        return original.apply(this, arguments);
                    }
                    const choices = params[0];
                    if (!choices || choices.length === 0) {
                        return original.apply(this, arguments);
                    }
                    const allCached = choices.every(c => !c || c.trim() === "" || translationCache[c]);
                    if (allCached) {
                        return original.apply(this, arguments);
                    }
                    
                    const cacheKeys = choices.map(c => c || "");
                    const pendingKey = JSON.stringify(cacheKeys);
                    let pending = translationPending.get(pendingKey);
                    if (!pending) {
                        const targetLang = state.gameTranslateTargetLang || 'tr';
                        pending = {
                            done: false,
                            startTime: Date.now()
                        };
                        translationPending.set(pendingKey, pending);
                        
                        const promises = choices.map(choice => {
                            if (!choice || choice.trim() === "") return Promise.resolve("");
                            if (translationCache[choice]) return Promise.resolve(translationCache[choice]);
                            return translateSingleText(choice, 'auto', targetLang, true).then(translated => {
                                translationCache[choice] = translated;
                                return translated;
                            }).catch(err => {
                                translationCache[choice] = choice;
                                return choice;
                            });
                        });
                        
                        Promise.all(promises).then(() => {
                            pending.done = true;
                        }).catch(() => {
                            pending.done = true;
                        });
                    }
                    
                    if (pending.done) {
                        return original.apply(this, arguments);
                    }
                    
                    if (Date.now() - pending.startTime > 1500) {
                        pending.done = true;
                        choices.forEach(c => {
                            if (c && !translationCache[c]) {
                                translationCache[c] = c;
                            }
                        });
                        return original.apply(this, arguments);
                    }
                    
                    return false;
                };
            });

            safeHook(Game_Interpreter.prototype, 'command105', function(original) {
                return function(params) {
                    if (!state.scrollTranslateEnabled) {
                        return original.apply(this, arguments);
                    }
                    if ($gameMessage.isBusy()) {
                        return false;
                    }
                    const text = getCommand105Text(this);
                    if (!text || text.trim() === "") {
                        return original.apply(this, arguments);
                    }
                    if (translationCache[text]) {
                        const ret = original.apply(this, arguments);
                        $gameMessage._texts = translationCache[text].split('\n');
                        $gameMessage._adelOriginalText = translationCache[text];
                        return ret;
                    }
                    let pending = translationPending.get(text);
                    if (!pending) {
                        const targetLang = state.gameTranslateTargetLang || 'tr';
                        pending = {
                            done: false,
                            translatedText: null,
                            startTime: Date.now()
                        };
                        translationPending.set(text, pending);
                        translateSingleText(text, 'auto', targetLang, true).then(translated => {
                            pending.done = true;
                            pending.translatedText = translated;
                            translationCache[text] = translated;
                        }).catch(err => {
                            pending.done = true;
                            pending.translatedText = text;
                            translationCache[text] = text;
                        });
                    }
                    if (pending.done) {
                        const ret = original.apply(this, arguments);
                        const translated = translationCache[text] || text;
                        $gameMessage._texts = translated.split('\n');
                        $gameMessage._adelOriginalText = translated;
                        return ret;
                    }
                    if (Date.now() - pending.startTime > 1500) {
                        pending.done = true;
                        translationCache[text] = text;
                        const ret = original.apply(this, arguments);
                        $gameMessage._texts = text.split('\n');
                        $gameMessage._adelOriginalText = text;
                        return ret;
                    }
                    return false;
                };
            });
        }

        // Hook DataManager.isDatabaseLoaded to automatically trigger translateDatabase
        if (exists('DataManager')) {
            safeHook(DataManager, 'isDatabaseLoaded', function(original) {
                return function() {
                    const loaded = original.apply(this, arguments);
                    if (loaded && state.translateEnabled && !isDatabaseTranslated) {
                        isDatabaseTranslated = true;
                        setTimeout(() => {
                            translateDatabase();
                        }, 100);
                    }
                    return loaded;
                };
            });
        }
    }

    function hookGameMethodsSafeVariables() {
        if (exists('Game_Variables')) {
            safeHook(Game_Variables.prototype, 'value', function(original) {
                return function(variableId) {
                    if (!exists('$dataSystem') || !$dataSystem.variables || typeof $dataSystem.variables[variableId] !== 'string') {
                        return this._data[variableId] || 0;
                    }
                    try {
                        return original.apply(this, arguments);
                    } catch (e) {
                        return this._data[variableId] || 0;
                    }
                };
            });

            safeHook(Game_Variables.prototype, 'setValue', function(original) {
                return function(variableId, value) {
                    if (!exists('$dataSystem') || !$dataSystem.variables || typeof $dataSystem.variables[variableId] !== 'string') {
                        if (variableId > 0) {
                            const nextValue = typeof value === 'number' ? Math.floor(value) : value;
                            this._data[variableId] = nextValue;
                            this.onChange();
                        }
                        return;
                    }
                    try {
                        original.apply(this, arguments);
                    } catch (e) {
                        if (variableId > 0) {
                            const nextValue = typeof value === 'number' ? Math.floor(value) : value;
                            this._data[variableId] = nextValue;
                            this.onChange();
                        }
                    }
                };
            });
        }

        if (exists('Game_Switches')) {
            safeHook(Game_Switches.prototype, 'value', function(original) {
                return function(switchId) {
                    if (!exists('$dataSystem') || !$dataSystem.switches || typeof $dataSystem.switches[switchId] !== 'string') {
                        return !!this._data[switchId];
                    }
                    try {
                        return original.apply(this, arguments);
                    } catch (e) {
                        return !!this._data[switchId];
                    }
                };
            });

            safeHook(Game_Switches.prototype, 'setValue', function(original) {
                return function(switchId, value) {
                    if (!exists('$dataSystem') || !$dataSystem.switches || typeof $dataSystem.switches[switchId] !== 'string') {
                        if (switchId > 0) {
                            this._data[switchId] = !!value;
                            this.onChange();
                        }
                        return;
                    }
                    try {
                        original.apply(this, arguments);
                    } catch (e) {
                        if (switchId > 0) {
                            this._data[switchId] = !!value;
                            this.onChange();
                        }
                    }
                };
            });
        }
    }

    function hookGameMethods() {
        hookMessageSkip();
        hookTranslation();
        hookGameMethodsSafeVariables();

        // Hook SceneManager.run to run hooks immediately when managers are loaded
        if (exists('SceneManager')) {
            safeHook(SceneManager, 'run', function(original) {
                return function() {
                    hookGameMethods();
                    hookTouchInput();
                    ensureSpeedPatch();
                    ensureEncounterPatch();
                    return original.apply(this, arguments);
                };
            });
        }

        if (exists('Game_Actor')) {
            safeHook(Game_Actor.prototype, 'gainHp', function(original) {
                return function(value) {
                    if (state.godModeActors[String(this.actorId())]) {
                        if (value < 0) value = 0;
                        if (this.hp < this.mhp) {
                            value = this.mhp - this.hp;
                        }
                    }
                    original.call(this, value);
                };
            });

            safeHook(Game_Actor.prototype, 'gainMp', function(original) {
                return function(value) {
                    if (state.godModeActors[String(this.actorId())]) {
                        if (value < 0) value = 0;
                        if (this.mp < this.mmp) {
                            value = this.mmp - this.mp;
                        }
                    }
                    original.call(this, value);
                };
            });

            safeHook(Game_Actor.prototype, 'gainTp', function(original) {
                return function(value) {
                    if (state.godModeActors[String(this.actorId())]) {
                        if (value < 0) value = 0;
                        if (this.tp < 100) {
                            value = 100 - this.tp;
                        }
                    }
                    original.call(this, value);
                };
            });

            safeHook(Game_Actor.prototype, 'addState', function(original) {
                return function(stateId) {
                    if (state.godModeActors[String(this.actorId())]) {
                        const deathId = typeof this.deathStateId === 'function' ? this.deathStateId() : 1;
                        if (stateId === deathId || (exists('$dataStates') && $dataStates[stateId] && $dataStates[stateId].restriction > 0)) {
                            return; // prevent death/harmful restricted states
                        }
                    }
                    original.call(this, stateId);
                };
            });

            safeHook(Game_Actor.prototype, 'paySkillCost', function(original) {
                return function(skill) {
                    if (state.godModeActors[String(this.actorId())]) {
                        return;
                    }
                    original.call(this, skill);
                };
            });

            safeHook(Game_Actor.prototype, 'param', function(original) {
                return function(paramId) {
                    const key = `actor-param:${this.actorId()}:${paramId}`;
                    if (state.freezeList[key] && state.freezeList[key].enabled) {
                        return state.freezeList[key].value;
                    }
                    return original.call(this, paramId);
                };
            });
        }

        const classesToHook = [];
        if (exists('Game_CharacterBase')) classesToHook.push(Game_CharacterBase.prototype);
        if (exists('Game_Player')) classesToHook.push(Game_Player.prototype);

        classesToHook.forEach(proto => {
            safeHook(proto, 'moveSpeed', function(original) {
                return function() {
                    const isPlayer = (typeof Game_Player !== 'undefined' && this instanceof Game_Player) || (typeof $gamePlayer !== 'undefined' && this === $gamePlayer);
                    if (isPlayer && state.playerSpeedFix) {
                        return Number(state.playerSpeedVal);
                    }
                    return original.apply(this, arguments);
                };
            });

            safeHook(proto, 'realMoveSpeed', function(original) {
                return function() {
                    const isPlayer = (typeof Game_Player !== 'undefined' && this instanceof Game_Player) || (typeof $gamePlayer !== 'undefined' && this === $gamePlayer);
                    if (isPlayer && state.playerSpeedFix) {
                        return Number(state.playerSpeedVal) + (this.isDashing ? (this.isDashing() ? 1 : 0) : 0);
                    }
                    return original.apply(this, arguments);
                };
            });

            safeHook(proto, 'distancePerFrame', function(original) {
                return function() {
                    const isPlayer = (typeof Game_Player !== 'undefined' && this instanceof Game_Player) || (typeof $gamePlayer !== 'undefined' && this === $gamePlayer);
                    if (isPlayer && state.playerSpeedFix) {
                        const oldMoveSpeed = this._moveSpeed;
                        const dashOffset = (this.isDashing && this.isDashing()) ? 1 : 0;
                        try {
                            this._moveSpeed = Number(state.playerSpeedVal) + dashOffset;
                            return original.apply(this, arguments);
                        } finally {
                            this._moveSpeed = oldMoveSpeed;
                        }
                    }
                    return original.apply(this, arguments);
                };
            });
        });

        if (exists('Game_Interpreter')) {
            safeHook(Game_Interpreter.prototype, 'setup', function(original) {
                return function(list, eventId) {
                    original.apply(this, arguments);
                    if (state.eventTracerEnabled) {
                        try {
                            let name = 'Unknown Event';
                            let type = 'Unknown';
                            let id = 0;
                            if (this._eventId > 0) {
                                type = 'Map Event';
                                id = this._eventId;
                                if (exists('$gameMap') && typeof $gameMap.event === 'function') {
                                    const ev = $gameMap.event(this._eventId);
                                    if (ev && typeof ev.event === 'function' && ev.event()) {
                                        name = ev.event().name;
                                    }
                                }
                            } else if (this._commonEventId > 0) {
                                type = 'Common Event';
                                id = this._commonEventId;
                                if (exists('$dataCommonEvents') && $dataCommonEvents[this._commonEventId]) {
                                    name = $dataCommonEvents[this._commonEventId].name;
                                }
                            }
                            
                            const time = new Date().toLocaleTimeString();
                            state.eventHistoryLog.unshift({
                                time: time,
                                type: type,
                                id: id,
                                name: name,
                                mapId: this._mapId,
                                action: 'started'
                            });
                            if (state.eventHistoryLog.length > 100) {
                                state.eventHistoryLog.pop();
                            }
                        } catch (e) {
                            // ignore
                        }
                    }
                };
            });

            safeHook(Game_Interpreter.prototype, 'update', function(original) {
                return function() {
                    const isRunningBefore = this.isRunning();
                    const ret = original.apply(this, arguments);
                    if (state.eventTracerEnabled && (isRunningBefore || this.isRunning())) {
                        try {
                            let name = 'Unknown Event';
                            let type = 'Unknown';
                            let id = 0;
                            if (this._eventId > 0) {
                                type = 'Map Event';
                                id = this._eventId;
                                if (exists('$gameMap') && typeof $gameMap.event === 'function') {
                                    const ev = $gameMap.event(this._eventId);
                                    if (ev && typeof ev.event === 'function' && ev.event()) {
                                        name = ev.event().name;
                                    }
                                }
                            } else if (this._commonEventId > 0) {
                                type = 'Common Event';
                                id = this._commonEventId;
                                if (exists('$dataCommonEvents') && $dataCommonEvents[this._commonEventId]) {
                                    name = $dataCommonEvents[this._commonEventId].name;
                                }
                            }
                            
                            const cmd = (this._list && this._index !== undefined) ? this._list[this._index] : null;
                            const code = cmd ? cmd.code : null;
                            const totalCmds = this._list ? this._list.length : 0;
                            
                            const existsActive = state.activeEvents.some(ev => ev.type === type && ev.id === id && ev.mapId === this._mapId);
                            if (!existsActive) {
                                state.activeEvents.push({
                                    type: type,
                                    id: id,
                                    name: name,
                                    mapId: this._mapId,
                                    index: this._index,
                                    total: totalCmds,
                                    code: code
                                });
                            }
                        } catch (e) {
                            // ignore
                        }
                    }
                    return ret;
                };
            });
        }

        if (exists('SceneManager')) {
            safeHook(SceneManager, 'update', function(original) {
                return function() {
                    if (state.eventTracerEnabled) {
                        state.activeEvents = [];
                    }
                    original.apply(this, arguments);
                };
            });
        }
    }

    function hookFullscreen() {
        const methods = ['requestFullscreen', 'webkitRequestFullscreen', 'mozRequestFullScreen', 'msRequestFullscreen']
        methods.forEach(method => {
            if (Element.prototype[method]) {
                const original = Element.prototype[method]
                Element.prototype[method] = function (...args) {
                    if (this.tagName === 'CANVAS' && this.parentNode) {
                        return original.apply(this.parentNode, args)
                    }
                    return original.apply(this, args)
                }
            }
        })
    }

    function isEventInsideOverlay (event) {
        if (!state.visible || !state.host) return false
        const path = typeof event.composedPath === 'function' ? event.composedPath() : [event.target]
        return path.some(node => node === state.host || (node && node.id === 'adel-control-center-host'))
    }

    function hookTouchInput() {
        if (typeof TouchInput !== 'undefined') {
            const methodsToHook = [
                '_onMouseDown', '_onMouseMove', '_onMouseUp', '_onWheel',
                '_onTouchStart', '_onTouchMove', '_onTouchEnd', '_onPointerDown'
            ]
            methodsToHook.forEach(method => {
                if (typeof TouchInput[method] === 'function') {
                    safeHook(TouchInput, method, function(original) {
                        return function (event) {
                            if (isEventInsideOverlay(event)) {
                                return
                            }
                            original.apply(this, arguments)
                        };
                    });
                }
            })
        }
    }
    function engineTick () {
        ensureSpeedPatch()
        ensureEncounterPatch()
        hookGameMethods()
        hookTouchInput()

        if (exists('$gamePlayer')) {
            $gamePlayer._through = !!state.noClip
        }

        // Apply freeze list
        Object.keys(state.freezeList).forEach(key => {
            const item = state.freezeList[key]
            if (!item || !item.enabled) return
            try {
                if (item.type === 'variable' && exists('$gameVariables')) {
                    if ($gameVariables.value(item.id) !== item.value) {
                        $gameVariables.setValue(item.id, item.value)
                    }
                } else if (item.type === 'switch' && exists('$gameSwitches')) {
                    if ($gameSwitches.value(item.id) !== !!item.value) {
                        $gameSwitches.setValue(item.id, !!item.value)
                    }
                } else if (item.type === 'gold' && exists('$gameParty')) {
                    const diff = item.value - gold()
                    if (diff > 0) $gameParty.gainGold(diff)
                    else if (diff < 0) $gameParty.loseGold(-diff)
                } else if (item.type === 'actor') {
                    const actor = $gameActors ? $gameActors.actor(Number(item.id)) : null
                    if (actor) {
                        if (item.field === 'hp' && actor.hp !== item.value) actor.setHp(item.value)
                        else if (item.field === 'mp' && actor.mp !== item.value) actor.setMp(item.value)
                        else if (item.field === 'tp' && actor.tp !== item.value) actor.setTp(item.value)
                    }
                }
            } catch (err) {
                // ignore
            }
        })

        // God mode tick refill just to be safe
        if (exists('$gameParty') && typeof $gameParty.members === 'function') {
            $gameParty.members().forEach((actor, index) => {
                if (state.godModeActors[actorKey(actor, index)]) {
                    if (typeof actor.recoverAll === 'function') {
                        actor.recoverAll()
                    } else {
                        if (typeof actor.setHp === 'function') actor.setHp(actor.mhp || 9999)
                        if (typeof actor.setMp === 'function') actor.setMp(actor.mmp || 9999)
                        if (typeof actor.setTp === 'function') actor.setTp(100)
                    }
                }
            })
        }

        // Automations check
        checkAutomations()

        // Player speed lock
        tickPlayerSpeed()

        refreshDynamic()
    }

    function initUi () {
        if (state.host) {
            return
        }

        loadPersistentState()

        state.host = document.createElement('div')
        state.host.id = 'adel9st-control-center-host'
        state.root = state.host.attachShadow({mode: 'open'})

        const style = document.createElement('style')
        style.textContent = css()
        state.app = document.createElement('div')

        state.root.appendChild(style)
        state.root.appendChild(state.app)

        attachHost()
        updateUiLayout(false)

        state.root.addEventListener('click', handleClick)
        state.root.addEventListener('input', handleInput)
        state.root.addEventListener('change', handleChange)
        state.root.addEventListener('keydown', shieldTextInputKeys, true)
        state.root.addEventListener('keyup', shieldTextInputKeys, true)
        state.root.addEventListener('keypress', shieldTextInputKeys, true)
        state.root.addEventListener('keydown', handleRootKeydown)
        window.addEventListener('keydown', handleKeydown, true)
        document.addEventListener('keydown', handleKeydown, true)

        // Prevent clicks from reaching the game canvas underneath
        const blockGameEvents = (e) => {
            if (state.visible) {
                e.stopPropagation()
            }
        }
        ;['mousedown', 'mouseup', 'pointerdown', 'pointerup', 'touchstart', 'touchend', 'contextmenu', 'wheel'].forEach(evt => {
            state.host.addEventListener(evt, blockGameEvents, true)
        })

        let resizeFrame = 0
        const queueViewportLayout = () => {
            if (resizeFrame) {
                return
            }
            resizeFrame = requestAnimationFrame(() => {
                resizeFrame = 0
                attachHost()
                updateUiLayout(true)
            })
        }

        window.addEventListener('resize', queueViewportLayout, true)
        if (window.visualViewport && typeof window.visualViewport.addEventListener === 'function') {
            window.visualViewport.addEventListener('resize', queueViewportLayout, true)
        }

        const fsEvents = ['fullscreenchange', 'webkitfullscreenchange', 'mozfullscreenchange', 'MSFullscreenChange']
        fsEvents.forEach(evt => {
            document.addEventListener(evt, () => {
                attachHost()
                queueViewportLayout()
            }, true)
        })

        draw()
    }

    function boot () {
        console.log("[ADEL9st] Booting...");
        try {
            initUi()
            hookGameMethods()
            hookFullscreen()
            hookTouchInput()
            ensureSpeedPatch()
            ensureEncounterPatch()
            setInterval(engineTick, 250)
            console.log("[ADEL9st] Booted successfully!");
        } catch (e) {
            console.error("[ADEL9st] Boot failed:", e);
        }
    }

    window[GLOBAL_KEY] = {
        version: VERSION,
        show: function () {
            state.visible = true
            draw()
        },
        hide: function () {
            state.visible = false
            draw()
        },
        command: runCommand,
        state: state
    }
    window.ADEL9stControlCenter = window[GLOBAL_KEY]

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', boot)
    } else {
        boot()
    }
})()
