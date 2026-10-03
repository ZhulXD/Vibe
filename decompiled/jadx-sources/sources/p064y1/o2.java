package p064y1;

import java.util.Map;
import kotlin.collections.MapsKt;
import kotlin.collections.unsigned.a;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class o2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Map f6314a;

    static {
        Map mapCreateMapBuilder = MapsKt.createMapBuilder();
        a.l(19, mapCreateMapBuilder, "ArrowUp", 20, "ArrowDown");
        a.l(21, mapCreateMapBuilder, "ArrowLeft", 22, "ArrowRight");
        a.l(145, mapCreateMapBuilder, "Numpad1", 147, "Numpad3");
        a.l(151, mapCreateMapBuilder, "Numpad7", 153, "Numpad9");
        a.l(66, mapCreateMapBuilder, "Enter", 111, "Escape");
        mapCreateMapBuilder.put("Space", 62);
        mapCreateMapBuilder.put(" ", 62);
        mapCreateMapBuilder.put("Backspace", 67);
        mapCreateMapBuilder.put("Tab", 61);
        a.l(124, mapCreateMapBuilder, "Insert", 112, "Delete");
        a.l(122, mapCreateMapBuilder, "Home", 123, "End");
        a.l(45, mapCreateMapBuilder, "PageUp", 51, "PageDown");
        a.l(131, mapCreateMapBuilder, "F1", 132, "F2");
        a.l(133, mapCreateMapBuilder, "F3", 134, "F4");
        a.l(135, mapCreateMapBuilder, "F5", 136, "F6");
        a.l(137, mapCreateMapBuilder, "F7", 138, "F8");
        a.l(139, mapCreateMapBuilder, "F9", 140, "F10");
        a.l(141, mapCreateMapBuilder, "F11", 142, "F12");
        a.l(68, mapCreateMapBuilder, "Backquote", 69, "Minus");
        a.l(70, mapCreateMapBuilder, "Equal", 71, "BracketLeft");
        a.l(72, mapCreateMapBuilder, "BracketRight", 73, "Backslash");
        a.l(74, mapCreateMapBuilder, "Semicolon", 75, "Quote");
        a.l(55, mapCreateMapBuilder, "Comma", 56, "Period");
        a.l(76, mapCreateMapBuilder, "Slash", 59, "ShiftLeft");
        a.l(60, mapCreateMapBuilder, "ShiftRight", 113, "ControlLeft");
        a.l(114, mapCreateMapBuilder, "ControlRight", 57, "AltLeft");
        a.l(58, mapCreateMapBuilder, "AltRight", 115, "CapsLock");
        f6314a = MapsKt.build(mapCreateMapBuilder);
    }
}
