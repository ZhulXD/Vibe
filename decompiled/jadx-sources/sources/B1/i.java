package B1;

import androidx.core.view.MotionEventCompat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List f318a = CollectionsKt.listOf((Object[]) new x[]{new x("adel_speed1x", "1×", "Speed", "adel", "__adel:speed1", 36, 28, "ROUNDED", "#0D9488"), new x("adel_speed2x", "2×", "Speed", "adel", "__adel:speed2", 36, 28, "ROUNDED", "#0D9488"), new x("adel_speed3x", "3×", "Speed", "adel", "__adel:speed3", 36, 28, "ROUNDED", "#0D9488"), new x("adel_speed5x", "5×", "Speed", "adel", "__adel:speed5", 36, 28, "ROUNDED", "#0D9488"), new x("adel_noclip", "NoClip", "Move", "adel", "__adel:noclip", 52, 28, "ROUNDED", "#6366F1"), new x("adel_encounter", "No Enc", "Move", "adel", "__adel:encounter", 52, 28, "ROUNDED", "#6366F1"), new x("adel_heal", "Heal", "Party", "adel", "__adel:heal", 40, 28, "ROUNDED", "#22C55E"), new x("adel_recover", "Recover", "Party", "adel", "__adel:recover", 56, 28, "ROUNDED", "#22C55E"), new x("adel_save", "Save+", "Save", "adel", "__adel:save", 44, 28, "ROUNDED", "#F59E0B"), new x("adel_load", "Load+", "Save", "adel", "__adel:load", 44, 28, "ROUNDED", "#F59E0B"), new x("adel_victory", "Win!", "Battle", "adel", "__adel:victory", 38, 28, "ROUNDED", "#EF4444"), new x("adel_defeat", "Lose", "Battle", "adel", "__adel:defeat", 38, 28, "ROUNDED", "#EF4444"), new x("adel_escape", "Flee", "Battle", "adel", "__adel:escape", 38, 28, "ROUNDED", "#EF4444"), new x("adel_wound", "WndEny", "Battle", "adel", "__adel:wound", 52, 28, "ROUNDED", "#EF4444"), new x("adel_snapshot", "Photo", "Other", "adel", "__adel:snapshot", 46, 28, "ROUNDED", "#8B5CF6")});
    public static final List b = CollectionsKt.listOf((Object[]) new x[]{new x("dpad", "D-Pad", "D-pad / Joystick", (String) null, 108, 108, "DPAD", "#FFFFFF2E", 16), new x("joystick", "Joystick", "D-pad / Joystick", (String) null, 100, 100, "JOYSTICK", "#FFFFFF2E", 16), new x("btn_lb", "LB", "Shoulder", "q", 44, 24, (String) null, "#FFFFFF33", 128), new x("btn_lt", "LT", "Shoulder", "1", 44, 24, (String) null, "#FFFFFF33", 128), new x("btn_rb", "RB", "Shoulder", "w", 44, 24, (String) null, "#FFFFFF33", 128), new x("btn_rt", "RT", "Shoulder", "2", 44, 24, (String) null, "#FFFFFF33", 128), new x("btn_a", "A", "A · B · X · Y", "z", 0, 0, "CIRCLE", "#22C55E", 96), new x("btn_b", "B", "A · B · X · Y", "x", 0, 0, "CIRCLE", "#EF4444", 96), new x("btn_x", "X", "A · B · X · Y", "a", 0, 0, "CIRCLE", "#3B82F6", 96), new x("btn_y", "Y", "A · B · X · Y", "s", 0, 0, "CIRCLE", "#F59E0B", 96), new x("btn_pgup", "PgUp", "Shoulder", "PageUp", 44, 24, (String) null, "#FFFFFF33", 128), new x("btn_pgdn", "PgDn", "Shoulder", "PageDown", 44, 24, (String) null, "#FFFFFF33", 128), new x("btn_sel", "Enter", "Keyboard", "Enter", 52, 20, (String) null, "#FFFFFF26", 128), new x("btn_sta", "Esc", "Keyboard", "Escape", 52, 20, (String) null, "#FFFFFF26", 128), new x("btn_mouse_left", "M-L", "Mouse", "special", "__mouse_left", 48, 32, "ROUNDED", "#3B6FD4"), new x("btn_mouse_right", "M-R", "Mouse", "special", "__mouse_right", 48, 32, "ROUNDED", "#3B6FD4"), new x("btn_scroll_up", "W↑", "Mouse", "special", "__scroll_up", 44, 32, "ROUNDED", "#6B5ED4"), new x("btn_scroll_down", "W↓", "Mouse", "special", "__scroll_down", 44, 32, "ROUNDED", "#6B5ED4")});

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final List f319c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ArrayList f320d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final LinkedHashMap f321e;
    public static final LinkedHashMap f;
    public static final LinkedHashMap g;

    /* JADX WARN: Code duplicated, block: B:131:0x061c  */
    /* JADX WARN: Code duplicated, block: B:134:0x0624  */
    /* JADX WARN: Code duplicated, block: B:135:0x0627  */
    /* JADX WARN: Code duplicated, block: B:138:0x062f  */
    /* JADX WARN: Code duplicated, block: B:140:0x0634  */
    /* JADX WARN: Code duplicated, block: B:143:0x063c  */
    /* JADX WARN: Code duplicated, block: B:144:0x063f  */
    /* JADX WARN: Code duplicated, block: B:147:0x0647  */
    /* JADX WARN: Code duplicated, block: B:148:0x064a  */
    /* JADX WARN: Code duplicated, block: B:151:0x0652  */
    /* JADX WARN: Code duplicated, block: B:152:0x0655  */
    /* JADX WARN: Code duplicated, block: B:155:0x065d  */
    /* JADX WARN: Code duplicated, block: B:156:0x0660  */
    /* JADX WARN: Code duplicated, block: B:159:0x0668  */
    /* JADX WARN: Code duplicated, block: B:160:0x066b  */
    /* JADX WARN: Code duplicated, block: B:163:0x0673  */
    /* JADX WARN: Code duplicated, block: B:164:0x0676  */
    /* JADX WARN: Code duplicated, block: B:167:0x067e  */
    /* JADX WARN: Code duplicated, block: B:168:0x0681  */
    /* JADX WARN: Code duplicated, block: B:171:0x0689  */
    /* JADX WARN: Code duplicated, block: B:172:0x068c  */
    /* JADX WARN: Code duplicated, block: B:175:0x0694  */
    /* JADX WARN: Code duplicated, block: B:176:0x0697  */
    /* JADX WARN: Code duplicated, block: B:179:0x069f  */
    /* JADX WARN: Code duplicated, block: B:180:0x06a2  */
    /* JADX WARN: Code duplicated, block: B:183:0x06aa  */
    /* JADX WARN: Code duplicated, block: B:184:0x06ad  */
    /* JADX WARN: Code duplicated, block: B:187:0x06b7  */
    /* JADX WARN: Code duplicated, block: B:188:0x06bb  */
    /* JADX WARN: Code duplicated, block: B:191:0x06c5  */
    /* JADX WARN: Code duplicated, block: B:192:0x06c9  */
    /* JADX WARN: Code duplicated, block: B:195:0x06d3  */
    /* JADX WARN: Code duplicated, block: B:196:0x06d7  */
    /* JADX WARN: Code duplicated, block: B:199:0x06e1  */
    /* JADX WARN: Code duplicated, block: B:200:0x06e5  */
    /* JADX WARN: Code duplicated, block: B:203:0x06ee  */
    /* JADX WARN: Code duplicated, block: B:204:0x06f2  */
    /* JADX WARN: Code duplicated, block: B:207:0x06fb  */
    /* JADX WARN: Code duplicated, block: B:208:0x06ff  */
    /* JADX WARN: Code duplicated, block: B:211:0x0708  */
    /* JADX WARN: Code duplicated, block: B:212:0x070c  */
    /* JADX WARN: Code duplicated, block: B:215:0x0715  */
    /* JADX WARN: Code duplicated, block: B:216:0x0719  */
    /* JADX WARN: Code duplicated, block: B:219:0x0722  */
    /* JADX WARN: Code duplicated, block: B:220:0x0726  */
    /* JADX WARN: Code duplicated, block: B:223:0x072f  */
    /* JADX WARN: Code duplicated, block: B:224:0x0733  */
    /* JADX WARN: Code duplicated, block: B:227:0x073c  */
    /* JADX WARN: Code duplicated, block: B:228:0x0740  */
    /* JADX WARN: Code duplicated, block: B:230:0x0748  */
    /* JADX WARN: Code duplicated, block: B:231:0x074a  */
    /* JADX WARN: Code duplicated, block: B:273:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:274:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:275:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:276:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:277:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:278:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:279:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:280:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:281:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:282:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:283:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:284:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:285:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:286:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:287:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:288:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:289:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:290:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:291:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:292:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:293:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:294:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:295:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:296:? A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:297:? A[SYNTHETIC] */
    static {
        Object obj;
        String strConcat;
        Object obj2;
        int i3;
        char c3;
        Object obj3;
        String str;
        char c4 = 6;
        char c5 = 4;
        List listListOf = CollectionsKt.listOf((Object[]) new List[]{CollectionsKt.listOf((Object[]) new String[]{"Esc", "F1", "F2", "F3", "F4", "F5", "F6", "F7", "F8", "F9", "F10", "F11", "F12"}), CollectionsKt.listOf((Object[]) new String[]{"`", "1", "2", "3", "4", "5", "6", "7", "8", "9", "0", "-", "=", "Backspace"}), CollectionsKt.listOf((Object[]) new String[]{"Tab", "Q", "W", "E", "R", "T", "Y", "U", "I", "O", "P", "[", "]", "\\"}), CollectionsKt.listOf((Object[]) new String[]{"Caps", "A", "S", "D", "F", "G", "H", "J", "K", "L", ";", "'", "Enter"}), CollectionsKt.listOf((Object[]) new String[]{"Shift", "Z", "X", "C", "V", "B", "N", "M", ",", ".", "/", "ShiftRight"}), CollectionsKt.listOf((Object[]) new String[]{"Ctrl", "Win", "Alt", "Space", "AltRight", "CtrlRight", "Left", "Up", "Down", "Right"})});
        f319c = listListOf;
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listListOf, 10));
        Iterator it = listListOf.iterator();
        while (it.hasNext()) {
            List list = (List) it.next();
            ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                String label = (String) it2.next();
                Intrinsics.checkNotNullParameter(label, "label");
                Intrinsics.checkNotNullParameter(label, "label");
                Iterator it3 = it;
                Iterator it4 = it2;
                ArrayList arrayList3 = arrayList;
                ArrayList arrayList4 = arrayList2;
                Object obj4 = "ShiftRight";
                Object obj5 = "'";
                Object obj6 = ",";
                Object obj7 = "-";
                Object obj8 = ".";
                Object obj9 = "/";
                Object obj10 = ";";
                Object obj11 = "=";
                Object obj12 = "[";
                Object obj13 = "\\";
                switch (label.hashCode()) {
                    case -379927846:
                        obj = "]";
                        if (label.equals(obj4)) {
                            obj4 = obj4;
                            strConcat = "key_ShiftRight";
                        } else {
                            obj4 = obj4;
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
                        obj = "]";
                        if (label.equals(obj5)) {
                            strConcat = "key_Quote";
                            obj5 = obj5;
                        } else {
                            obj5 = obj5;
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                        obj = "]";
                        if (label.equals(obj6)) {
                            strConcat = "key_Comma";
                            obj6 = obj6;
                        } else {
                            obj6 = obj6;
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case MotionEventCompat.AXIS_GENERIC_14 /* 45 */:
                        obj = "]";
                        if (label.equals(obj7)) {
                            strConcat = "key_Minus";
                            obj7 = obj7;
                        } else {
                            obj7 = obj7;
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
                        obj = "]";
                        if (label.equals(obj8)) {
                            strConcat = "key_Period";
                            obj8 = obj8;
                        } else {
                            obj8 = obj8;
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                        obj = "]";
                        if (label.equals(obj9)) {
                            strConcat = "key_Slash";
                            obj9 = obj9;
                        } else {
                            obj9 = obj9;
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 59:
                        obj = "]";
                        if (label.equals(obj10)) {
                            strConcat = "key_Semicolon";
                            obj10 = obj10;
                        } else {
                            obj10 = obj10;
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 61:
                        obj = "]";
                        if (label.equals(obj11)) {
                            strConcat = "key_Equal";
                            obj11 = obj11;
                        } else {
                            obj11 = obj11;
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 91:
                        obj = "]";
                        if (label.equals(obj12)) {
                            strConcat = "key_BracketLeft";
                            obj12 = obj12;
                        } else {
                            obj12 = obj12;
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 92:
                        obj = "]";
                        if (label.equals(obj13)) {
                            strConcat = "key_Backslash";
                            obj13 = obj13;
                        } else {
                            obj13 = obj13;
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 93:
                        if (label.equals("]")) {
                            strConcat = "key_BracketRight";
                            obj = "]";
                        } else {
                            obj = "]";
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 96:
                        if (label.equals("`")) {
                            strConcat = "key_Backquote";
                            obj = "]";
                        } else {
                            obj = "]";
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 2747:
                        if (label.equals("Up")) {
                            strConcat = "key_ArrowUp";
                            obj = "]";
                        } else {
                            obj = "]";
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 65929:
                        if (label.equals("Alt")) {
                            strConcat = "key_AltLeft";
                            obj = "]";
                        } else {
                            obj = "]";
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 69973:
                        if (label.equals("Esc")) {
                            strConcat = "key_Escape";
                            obj = "]";
                        } else {
                            obj = "]";
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 86972:
                        if (label.equals("Win")) {
                            strConcat = "key_MetaLeft";
                            obj = "]";
                        } else {
                            obj = "]";
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 2092801:
                        if (label.equals("Caps")) {
                            strConcat = "key_CapsLock";
                            obj = "]";
                        } else {
                            obj = "]";
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 2111115:
                        if (label.equals("Ctrl")) {
                            strConcat = "key_ControlLeft";
                            obj = "]";
                        } else {
                            obj = "]";
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 2136258:
                        if (label.equals("Down")) {
                            strConcat = "key_ArrowDown";
                            obj = "]";
                        } else {
                            obj = "]";
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 2364455:
                        if (label.equals("Left")) {
                            strConcat = "key_ArrowLeft";
                            obj = "]";
                        } else {
                            obj = "]";
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 78959100:
                        if (label.equals("Right")) {
                            strConcat = "key_ArrowRight";
                            obj = "]";
                        } else {
                            obj = "]";
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 79854690:
                        if (label.equals("Shift")) {
                            strConcat = "key_ShiftLeft";
                            obj = "]";
                        } else {
                            obj = "]";
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 80085222:
                        if (label.equals("Space")) {
                            strConcat = "key_Space";
                            obj = "]";
                        } else {
                            obj = "]";
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 729283153:
                        if (label.equals("CtrlRight")) {
                            strConcat = "key_ControlRight";
                            obj = "]";
                        } else {
                            obj = "]";
                            strConcat = "key_".concat(label);
                        }
                        break;
                    case 2079612435:
                        if (label.equals("AltRight")) {
                            strConcat = "key_AltRight";
                            obj = "]";
                        } else {
                            obj = "]";
                            strConcat = "key_".concat(label);
                        }
                        break;
                    default:
                        obj = "]";
                        strConcat = "key_".concat(label);
                        break;
                }
                if (Intrinsics.areEqual(label, "Space")) {
                    i3 = 84;
                    obj2 = "`";
                } else {
                    obj2 = "`";
                    if (label.length() >= 9) {
                        i3 = 72;
                    } else {
                        if (label.length() >= 6) {
                            i3 = 58;
                        } else {
                            i3 = label.length() >= 4 ? 46 : 32;
                            c3 = 4;
                        }
                        int i4 = i3;
                        Intrinsics.checkNotNullParameter(label, "label");
                        switch (label.hashCode()) {
                            case -379927846:
                                obj3 = obj4;
                                if (!label.equals(obj3)) {
                                    label = obj3;
                                }
                                break;
                            case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
                                if (!label.equals(obj5)) {
                                    str = "Quote";
                                    label = str;
                                }
                                break;
                            case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                                if (!label.equals(obj6)) {
                                    str = "Comma";
                                    label = str;
                                }
                                break;
                            case MotionEventCompat.AXIS_GENERIC_14 /* 45 */:
                                if (!label.equals(obj7)) {
                                    str = "Minus";
                                    label = str;
                                }
                                break;
                            case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
                                if (!label.equals(obj8)) {
                                    str = "Period";
                                    label = str;
                                }
                                break;
                            case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                                if (!label.equals(obj9)) {
                                    str = "Slash";
                                    label = str;
                                }
                                break;
                            case 59:
                                if (!label.equals(obj10)) {
                                    str = "Semicolon";
                                    label = str;
                                }
                                break;
                            case 61:
                                if (!label.equals(obj11)) {
                                    str = "Equal";
                                    label = str;
                                }
                                break;
                            case 91:
                                if (!label.equals(obj12)) {
                                    str = "BracketLeft";
                                    label = str;
                                }
                                break;
                            case 92:
                                if (!label.equals(obj13)) {
                                    str = "Backslash";
                                    label = str;
                                }
                                break;
                            case 93:
                                if (!label.equals(obj)) {
                                    str = "BracketRight";
                                    label = str;
                                }
                                break;
                            case 96:
                                if (!label.equals(obj2)) {
                                    str = "Backquote";
                                    label = str;
                                }
                                break;
                            case 2747:
                                if (!label.equals("Up")) {
                                    str = "ArrowUp";
                                    label = str;
                                }
                                break;
                            case 65929:
                                if (!label.equals("Alt")) {
                                    str = "AltLeft";
                                    label = str;
                                }
                                break;
                            case 69973:
                                if (!label.equals("Esc")) {
                                    str = "Escape";
                                    label = str;
                                }
                                break;
                            case 86972:
                                if (!label.equals("Win")) {
                                    str = "MetaLeft";
                                    label = str;
                                }
                                break;
                            case 2092801:
                                if (!label.equals("Caps")) {
                                    str = "CapsLock";
                                    label = str;
                                }
                                break;
                            case 2111115:
                                if (!label.equals("Ctrl")) {
                                    str = "ControlLeft";
                                    label = str;
                                }
                                break;
                            case 2136258:
                                if (!label.equals("Down")) {
                                    str = "ArrowDown";
                                    label = str;
                                }
                                break;
                            case 2364455:
                                if (!label.equals("Left")) {
                                    str = "ArrowLeft";
                                    label = str;
                                }
                                break;
                            case 78959100:
                                if (!label.equals("Right")) {
                                    str = "ArrowRight";
                                    label = str;
                                }
                                break;
                            case 79854690:
                                if (!label.equals("Shift")) {
                                    str = "ShiftLeft";
                                    label = str;
                                }
                                break;
                            case 80085222:
                                if (!label.equals("Space")) {
                                    label = "Space";
                                }
                                break;
                            case 729283153:
                                if (!label.equals("CtrlRight")) {
                                    str = "ControlRight";
                                    label = str;
                                }
                                break;
                            case 2079612435:
                                if (!label.equals("AltRight")) {
                                    label = "AltRight";
                                }
                                break;
                            default:
                                break;
                        }
                        arrayList4.add(new x(strConcat, label, "Keyboard", "keyboard", label, i4, 32, "ROUNDED", "#3A4250"));
                        arrayList2 = arrayList4;
                        c5 = c3;
                        c4 = 6;
                        it = it3;
                        it2 = it4;
                        arrayList = arrayList3;
                    }
                }
                c3 = 4;
                int i5 = i3;
                Intrinsics.checkNotNullParameter(label, "label");
                switch (label.hashCode()) {
                    case -379927846:
                        obj3 = obj4;
                        if (!label.equals(obj3)) {
                            label = obj3;
                        }
                        break;
                    case MotionEventCompat.AXIS_GENERIC_8 /* 39 */:
                        if (!label.equals(obj5)) {
                            str = "Quote";
                            label = str;
                        }
                        break;
                    case MotionEventCompat.AXIS_GENERIC_13 /* 44 */:
                        if (!label.equals(obj6)) {
                            str = "Comma";
                            label = str;
                        }
                        break;
                    case MotionEventCompat.AXIS_GENERIC_14 /* 45 */:
                        if (!label.equals(obj7)) {
                            str = "Minus";
                            label = str;
                        }
                        break;
                    case MotionEventCompat.AXIS_GENERIC_15 /* 46 */:
                        if (!label.equals(obj8)) {
                            str = "Period";
                            label = str;
                        }
                        break;
                    case MotionEventCompat.AXIS_GENERIC_16 /* 47 */:
                        if (!label.equals(obj9)) {
                            str = "Slash";
                            label = str;
                        }
                        break;
                    case 59:
                        if (!label.equals(obj10)) {
                            str = "Semicolon";
                            label = str;
                        }
                        break;
                    case 61:
                        if (!label.equals(obj11)) {
                            str = "Equal";
                            label = str;
                        }
                        break;
                    case 91:
                        if (!label.equals(obj12)) {
                            str = "BracketLeft";
                            label = str;
                        }
                        break;
                    case 92:
                        if (!label.equals(obj13)) {
                            str = "Backslash";
                            label = str;
                        }
                        break;
                    case 93:
                        if (!label.equals(obj)) {
                            str = "BracketRight";
                            label = str;
                        }
                        break;
                    case 96:
                        if (!label.equals(obj2)) {
                            str = "Backquote";
                            label = str;
                        }
                        break;
                    case 2747:
                        if (!label.equals("Up")) {
                            str = "ArrowUp";
                            label = str;
                        }
                        break;
                    case 65929:
                        if (!label.equals("Alt")) {
                            str = "AltLeft";
                            label = str;
                        }
                        break;
                    case 69973:
                        if (!label.equals("Esc")) {
                            str = "Escape";
                            label = str;
                        }
                        break;
                    case 86972:
                        if (!label.equals("Win")) {
                            str = "MetaLeft";
                            label = str;
                        }
                        break;
                    case 2092801:
                        if (!label.equals("Caps")) {
                            str = "CapsLock";
                            label = str;
                        }
                        break;
                    case 2111115:
                        if (!label.equals("Ctrl")) {
                            str = "ControlLeft";
                            label = str;
                        }
                        break;
                    case 2136258:
                        if (!label.equals("Down")) {
                            str = "ArrowDown";
                            label = str;
                        }
                        break;
                    case 2364455:
                        if (!label.equals("Left")) {
                            str = "ArrowLeft";
                            label = str;
                        }
                        break;
                    case 78959100:
                        if (!label.equals("Right")) {
                            str = "ArrowRight";
                            label = str;
                        }
                        break;
                    case 79854690:
                        if (!label.equals("Shift")) {
                            str = "ShiftLeft";
                            label = str;
                        }
                        break;
                    case 80085222:
                        if (!label.equals("Space")) {
                            label = "Space";
                        }
                        break;
                    case 729283153:
                        if (!label.equals("CtrlRight")) {
                            str = "ControlRight";
                            label = str;
                        }
                        break;
                    case 2079612435:
                        if (!label.equals("AltRight")) {
                            label = "AltRight";
                        }
                        break;
                    default:
                        break;
                }
                arrayList4.add(new x(strConcat, label, "Keyboard", "keyboard", label, i5, 32, "ROUNDED", "#3A4250"));
                arrayList2 = arrayList4;
                c5 = c3;
                c4 = 6;
                it = it3;
                it2 = it4;
                arrayList = arrayList3;
            }
            arrayList.add(arrayList2);
            c5 = c5;
            it = it;
        }
        ArrayList arrayList5 = arrayList;
        f320d = arrayList5;
        List listFlatten = CollectionsKt__IterablesKt.flatten(arrayList5);
        LinkedHashMap linkedHashMap = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(listFlatten, 10)), 16));
        for (Object obj14 : listFlatten) {
            linkedHashMap.put(((x) obj14).f372a, obj14);
        }
        f321e = linkedHashMap;
        List list2 = b;
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(list2, 10)), 16));
        for (Object obj15 : list2) {
            linkedHashMap2.put(((x) obj15).f372a, obj15);
        }
        f = linkedHashMap2;
        List list3 = f318a;
        LinkedHashMap linkedHashMap3 = new LinkedHashMap(RangesKt.coerceAtLeast(MapsKt.mapCapacity(CollectionsKt__IterablesKt.collectionSizeOrDefault(list3, 10)), 16));
        for (Object obj16 : list3) {
            linkedHashMap3.put(((x) obj16).f372a, obj16);
        }
        g = linkedHashMap3;
    }

    public static x a(String id) {
        Intrinsics.checkNotNullParameter(id, "id");
        x xVar = (x) f.get(id);
        return (xVar == null && (xVar = (x) f321e.get(id)) == null) ? (x) g.get(id) : xVar;
    }
}
