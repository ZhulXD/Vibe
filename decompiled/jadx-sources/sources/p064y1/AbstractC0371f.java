package p064y1;

import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: y1.f, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractC0371f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f6224a = CollectionsKt.listOf((Object[]) new C0368e[]{new C0368e(EnumC0359b.b, "Gold +99,999", "Added 99,999 gold", "$gameParty.gainGold(99999);"), new C0368e(EnumC0359b.f6182c, "Recovery HP/MP", "Recovered HP/MP", "$gameParty.members().forEach(function(actor) {\n    actor._hp = actor.mhp;\n    actor._mp = actor.mmp;\n});"), new C0368e(EnumC0359b.f6183d, "Level +10", "All members +10 levels", "$gameParty.members().forEach(function(actor) {\n    actor.changeLevel(actor.level + 10, false);\n});"), new C0368e(EnumC0359b.f6184e, "Max All Stats", "All stats maxed", "$gameParty.members().forEach(function(actor) {\n    actor._hp = actor.mhp;\n    actor._mp = actor.mmp;\n    actor.changeLevel(99, false);\n    for (var i = 0; i < 8; i++) {\n        actor._paramPlus[i] += 999;\n    }\n});"), new C0368e(EnumC0359b.f, "HP +500", "HP +500", "$gameParty.members().forEach(function(actor) { actor._paramPlus[0] += 500; });"), new C0368e(EnumC0359b.g, "MP +500", "MP +500", "$gameParty.members().forEach(function(actor) { actor._paramPlus[1] += 500; });"), new C0368e(EnumC0359b.f6185h, "ATK +50", "ATK +50", "$gameParty.members().forEach(function(actor) { actor._paramPlus[2] += 50; });"), new C0368e(EnumC0359b.f6186i, "DEF +50", "DEF +50", "$gameParty.members().forEach(function(actor) { actor._paramPlus[3] += 50; });"), new C0368e(EnumC0359b.f6187j, "AGI +50", "AGI +50", "$gameParty.members().forEach(function(actor) { actor._paramPlus[6] += 50; });"), new C0368e(EnumC0359b.f6188k, "LUK +50", "LUK +50", "$gameParty.members().forEach(function(actor) { actor._paramPlus[7] += 50; });"), new C0368e(EnumC0359b.f6189l, "All Stats +100", "All stats +100", "$gameParty.members().forEach(function(actor) {\n    for (var i = 0; i < 8; i++) {\n        actor._paramPlus[i] += 100;\n    }\n});")});

    public static C0368e a(EnumC0359b id) {
        Object next;
        Intrinsics.checkNotNullParameter(id, "id");
        Iterator it = f6224a.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (((C0368e) next).f6214a == id) {
                return (C0368e) next;
            }
        }
        next = null;
        return (C0368e) next;
    }
}
