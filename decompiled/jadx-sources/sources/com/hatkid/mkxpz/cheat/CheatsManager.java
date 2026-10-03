package com.hatkid.mkxpz.cheat;

import E.b;
import kotlin.Metadata;
import kotlin.collections.unsigned.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0011\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0086 J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0007H\u0002J\u0012\u0010\n\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\u0007H\u0002J\u0012\u0010\f\u001a\u00020\u00072\b\b\u0002\u0010\u000b\u001a\u00020\u0007H\u0002J\u000e\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0010\u001a\u00020\u0007J\u0006\u0010\u0011\u001a\u00020\u0007J\u0006\u0010\u0012\u001a\u00020\u0007J\u0018\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u000e\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fJ\u001e\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u001b\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u001c\u001a\u00020\u0007J\u0006\u0010\u001d\u001a\u00020\u0007J\u0006\u0010\u001e\u001a\u00020\u0007¨\u0006\u001f"}, d2 = {"Lcom/hatkid/mkxpz/cheat/CheatsManager;", "", "<init>", "()V", "nativeExecuteScript", "", "script", "", "g", "name", "rubyPartyMembers", "v", "rubyAliveTroop", "addGoldScript", "amount", "", "healAllScript", "killAllEnemiesScript", "enemies1HPScript", "giveItemsScript", "dataGlobal", "giveAllItemsScript", "giveAllWeaponsScript", "giveAllArmorsScript", "levelUpScript", "memberIndex", "addStatScript", "paramId", "savePositionScript", "loadPositionScript", "toggleNoClipScript", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class CheatsManager {
    private final String g(String name) {
        return a.o("$", name);
    }

    private final String giveItemsScript(String dataGlobal, int amount) {
        StringBuilder sbJ = a.j("begin; gp=", g("game_party"), "; if gp; ", g(dataGlobal), ".each { |i| next unless i; begin; gp.gain_item(i,");
        sbJ.append(amount);
        sbJ.append("); rescue TypeError,ArgumentError; gp.gain_item(i.id,");
        sbJ.append(amount);
        sbJ.append(") rescue nil; end }; end; rescue; end");
        return sbJ.toString();
    }

    private final String rubyAliveTroop(String v2) {
        return a.i(a.j("(", v2, ".respond_to?(:alive_members) ? ", v2, ".alive_members : "), v2, ".members.select { |e| !e.dead? rescue e.hp > 0 })");
    }

    public static /* synthetic */ String rubyAliveTroop$default(CheatsManager cheatsManager, String str, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = "gt";
        }
        return cheatsManager.rubyAliveTroop(str);
    }

    private final String rubyPartyMembers(String v2) {
        return a.i(a.j("(", v2, ".respond_to?(:members) ? ", v2, ".members : "), v2, ".actors)");
    }

    public static /* synthetic */ String rubyPartyMembers$default(CheatsManager cheatsManager, String str, int i3, Object obj) {
        if ((i3 & 1) != 0) {
            str = "gp";
        }
        return cheatsManager.rubyPartyMembers(str);
    }

    public final String addGoldScript(int amount) {
        String strG = g("game_party");
        return strG + ".gain_gold(" + amount + ") if " + strG;
    }

    public final String addStatScript(int memberIndex, int paramId, int amount) {
        String strRubyPartyMembers$default;
        String strG = g("game_party");
        if (memberIndex < 0) {
            strRubyPartyMembers$default = rubyPartyMembers$default(this, null, 1, null);
        } else {
            strRubyPartyMembers$default = rubyPartyMembers$default(this, null, 1, null) + "[" + memberIndex + ", 1].compact";
        }
        StringBuilder sbJ = a.j("begin; gp=", strG, "; if gp; ", strRubyPartyMembers$default, ".each { |m| begin; m.add_param(");
        sbJ.append(paramId);
        sbJ.append(",");
        sbJ.append(amount);
        sbJ.append("); rescue NoMethodError; case ");
        sbJ.append(paramId);
        sbJ.append("; when 0 then m.hp=[[m.hp+");
        sbJ.append(amount);
        sbJ.append(",1].max,m.maxhp].min rescue nil; when 1; sp=m.respond_to?(:mp)?:mp::sp; msp=m.respond_to?(:mmp)?:mmp::maxsp; m.send(:\"#{sp}=\",[[m.send(sp)+");
        sbJ.append(amount);
        sbJ.append(",0].max,m.send(msp)].min) rescue nil; end; end }; end; rescue; end");
        return sbJ.toString();
    }

    public final String enemies1HPScript() {
        return b.n("begin; gt=", g("game_troop"), "; ", rubyAliveTroop$default(this, null, 1, null), ".each { |e| e.hp = 1 } if gt; rescue; end");
    }

    public final String giveAllArmorsScript(int amount) {
        return giveItemsScript("data_armors", amount);
    }

    public final String giveAllItemsScript(int amount) {
        return giveItemsScript("data_items", amount);
    }

    public final String giveAllWeaponsScript(int amount) {
        return giveItemsScript("data_weapons", amount);
    }

    public final String healAllScript() {
        return b.n("begin; gp=", g("game_party"), "; ", rubyPartyMembers$default(this, null, 1, null), ".each { |m| m.recover_all } if gp; rescue; end");
    }

    public final String killAllEnemiesScript() {
        String strG = g("game_troop");
        return a.h(strG, ".members.each { |e| e.hp = 0 } if ", strG);
    }

    public final String levelUpScript(int memberIndex, int amount) {
        String strRubyPartyMembers$default;
        String strG = g("game_party");
        if (memberIndex < 0) {
            strRubyPartyMembers$default = rubyPartyMembers$default(this, null, 1, null);
        } else {
            strRubyPartyMembers$default = rubyPartyMembers$default(this, null, 1, null) + "[" + memberIndex + ", 1].compact";
        }
        StringBuilder sbJ = a.j("begin; gp=", strG, "; if gp; ", strRubyPartyMembers$default, ".each { |m| lv=[m.level+");
        sbJ.append(amount);
        sbJ.append(",99].min; begin; m.change_level(lv,false); rescue ArgumentError; m.change_level(lv) rescue nil; end; m.refresh rescue nil }; end; rescue; end");
        return sbJ.toString();
    }

    public final String loadPositionScript() {
        String strG = g("game_player");
        String strG2 = g("game_temp");
        String strG3 = g("__cheat_pos");
        StringBuilder sbJ = a.j("begin; if ", strG3, " && ", strG, "; x,y,mid=");
        a.n(sbJ, strG3, "; dir=", strG, ".direction; begin; ");
        a.n(sbJ, strG, ".reserve_transfer(mid,x,y,dir); rescue NoMethodError; ", strG2, ".player_transferring=true; ");
        a.n(sbJ, strG2, ".player_new_map_id=mid; ", strG2, ".player_new_x=x; ");
        sbJ.append(strG2);
        sbJ.append(".player_new_y=y; ");
        sbJ.append(strG2);
        sbJ.append(".player_new_direction=dir; end; end; rescue; end");
        return sbJ.toString();
    }

    public final native void nativeExecuteScript(String script);

    public final String savePositionScript() {
        String strG = g("game_player");
        String strG2 = g("game_map");
        return a.i(a.j("begin; gpl=", strG, "; if gpl; mid=gpl.respond_to?(:map_id)?gpl.map_id:(", strG2, ".map_id rescue 0); "), g("__cheat_pos"), "=[gpl.x,gpl.y,mid]; end; rescue; end");
    }

    public final String toggleNoClipScript() {
        String strG = g("game_player");
        return strG + ".through=!" + strG + ".through if " + strG;
    }
}
