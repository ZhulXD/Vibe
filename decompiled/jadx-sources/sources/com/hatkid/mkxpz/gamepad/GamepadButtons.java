package com.hatkid.mkxpz.gamepad;

import android.content.SharedPreferences;
import androidx.core.app.NotificationCompat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CharIterator;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.CharRange;
import kotlin.ranges.IntRange;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u001f\u001a\u0004\u0018\u00010\u00062\u0006\u0010 \u001a\u00020!J\u0014\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010#\u001a\u00020!J\u0014\u0010$\u001a\b\u0012\u0004\u0012\u00020!0\u00052\u0006\u0010%\u001a\u00020&R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\bR\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\bR\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\bR\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\bR\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\bR\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0014\u0010\bR\u0017\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\bR\u0017\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\bR\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\bR\u0017\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\bR\u0017\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\b¨\u0006'"}, d2 = {"Lcom/hatkid/mkxpz/gamepad/GamepadButtons;", "", "<init>", "()V", "ACTION_BUTTONS", "", "Lcom/hatkid/mkxpz/gamepad/ButtonConfig;", "getACTION_BUTTONS", "()Ljava/util/List;", "SHOULDER_BUTTONS", "getSHOULDER_BUTTONS", "MODIFIER_BUTTONS", "getMODIFIER_BUTTONS", "SPECIAL_BUTTONS", "getSPECIAL_BUTTONS", "LETTER_BUTTONS", "getLETTER_BUTTONS", "NUMBER_BUTTONS", "getNUMBER_BUTTONS", "ARROW_BUTTONS", "getARROW_BUTTONS", "FUNCTION_BUTTONS", "getFUNCTION_BUTTONS", "NAV_BUTTONS", "getNAV_BUTTONS", "MOUSE_BUTTONS", "getMOUSE_BUTTONS", "SCROLL_BUTTONS", "getSCROLL_BUTTONS", "ALL_BUTTONS", "getALL_BUTTONS", "getButton", "name", "", "getButtonsByCategory", "category", "getEnabledButtons", "prefs", "Landroid/content/SharedPreferences;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGamepadButtonConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GamepadButtonConfig.kt\ncom/hatkid/mkxpz/gamepad/GamepadButtons\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,143:1\n1#2:144\n1#2:158\n774#3:145\n865#3,2:146\n1617#3,9:148\n1869#3:157\n1870#3:159\n1626#3:160\n1563#3:161\n1634#3,3:162\n1563#3:165\n1634#3,3:166\n1563#3:169\n1634#3,3:170\n*S KotlinDebug\n*F\n+ 1 GamepadButtonConfig.kt\ncom/hatkid/mkxpz/gamepad/GamepadButtons\n*L\n139#1:158\n136#1:145\n136#1:146,2\n139#1:148,9\n139#1:157\n139#1:159\n139#1:160\n68#1:161\n68#1:162,3\n82#1:165\n82#1:166,3\n103#1:169\n103#1:170,3\n*E\n"})
public final class GamepadButtons {
    private static final List<ButtonConfig> ACTION_BUTTONS;
    private static final List<ButtonConfig> ALL_BUTTONS;
    private static final List<ButtonConfig> ARROW_BUTTONS;
    private static final List<ButtonConfig> FUNCTION_BUTTONS;
    public static final GamepadButtons INSTANCE = new GamepadButtons();
    private static final List<ButtonConfig> LETTER_BUTTONS;
    private static final List<ButtonConfig> MODIFIER_BUTTONS;
    private static final List<ButtonConfig> MOUSE_BUTTONS;
    private static final List<ButtonConfig> NAV_BUTTONS;
    private static final List<ButtonConfig> NUMBER_BUTTONS;
    private static final List<ButtonConfig> SCROLL_BUTTONS;
    private static final List<ButtonConfig> SHOULDER_BUTTONS;
    private static final List<ButtonConfig> SPECIAL_BUTTONS;

    static {
        ButtonShape buttonShape = ButtonShape.SQUARE;
        ACTION_BUTTONS = CollectionsKt.listOf((Object[]) new ButtonConfig[]{new ButtonConfig("A", "A", "Confirm/Action", "action", 54, buttonShape, 0.7f, 0.85f, 0.75f), new ButtonConfig("B", "B", "Cancel/Back", "action", 52, buttonShape, 0.7f, 0.92f, 0.65f), new ButtonConfig("C", "C", "Menu", "action", 31, buttonShape, 0.7f, 0.85f, 0.85f), new ButtonConfig("X", "X", "Special 1", "action", 29, buttonShape, 0.7f, 0.78f, 0.65f), new ButtonConfig("Y", "Y", "Special 2", "action", 47, buttonShape, 0.7f, 0.85f, 0.55f), new ButtonConfig("Z", "Z", "Special 3", "action", 32, buttonShape, 0.7f, 0.92f, 0.55f)});
        SHOULDER_BUTTONS = CollectionsKt.listOf((Object[]) new ButtonConfig[]{new ButtonConfig("L", "L", "Left Shoulder", "shoulder", 45, buttonShape, 0.7f, 0.1f, 0.1f), new ButtonConfig("R", "R", "Right Shoulder", "shoulder", 51, buttonShape, 0.7f, 0.9f, 0.1f)});
        MODIFIER_BUTTONS = CollectionsKt.listOf((Object[]) new ButtonConfig[]{new ButtonConfig("CTRL", "Ctrl", "Control key", "modifier", 113, buttonShape, 0.7f, 0.5f, 0.9f), new ButtonConfig("ALT", "Alt", "Alt key", "modifier", 57, buttonShape, 0.7f, 0.6f, 0.9f), new ButtonConfig("SHIFT", "Shift", "Shift key", "modifier", 59, buttonShape, 0.7f, 0.7f, 0.9f)});
        SPECIAL_BUTTONS = CollectionsKt.listOf((Object[]) new ButtonConfig[]{new ButtonConfig("ENTER", "Enter", "Enter key", "special", 66, buttonShape, 0.7f, 0.85f, 0.85f), new ButtonConfig("SPACE", "Space", "Space bar", "special", 62, buttonShape, 0.7f, 0.5f, 0.25f), new ButtonConfig("TAB", "Tab", "Tab key", "special", 61, buttonShape, 0.7f, 0.1f, 0.2f), new ButtonConfig("ESC", "Esc", "Escape key", "special", 111, buttonShape, 0.7f, 0.92f, 0.75f)});
        CharRange charRange = new CharRange('A', 'Z');
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(charRange, 10));
        Iterator<Character> it = charRange.iterator();
        while (it.hasNext()) {
            char cNextChar = ((CharIterator) it).nextChar();
            int i3 = cNextChar - 'A';
            arrayList.add(new ButtonConfig("KEY_" + cNextChar, String.valueOf(cNextChar), "Letter " + cNextChar, "keyboard", cNextChar - '$', ButtonShape.SQUARE, 0.7f, ((i3 % 10) * 0.09f) + 0.05f, ((i3 / 10) * 0.1f) + 0.4f));
        }
        LETTER_BUTTONS = arrayList;
        IntRange intRange = new IntRange(0, 9);
        ArrayList arrayList2 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRange, 10));
        Iterator<Integer> it2 = intRange.iterator();
        while (it2.hasNext()) {
            int iNextInt = ((IntIterator) it2).nextInt();
            arrayList2.add(new ButtonConfig(E.b.i(iNextInt, "KEY_"), String.valueOf(iNextInt), E.b.i(iNextInt, "Number "), "keyboard", iNextInt == 0 ? 7 : iNextInt + 7, ButtonShape.SQUARE, 0.7f, (iNextInt * 0.09f) + 0.05f, 0.7f));
        }
        NUMBER_BUTTONS = arrayList2;
        ButtonShape buttonShape2 = ButtonShape.SQUARE;
        ARROW_BUTTONS = CollectionsKt.listOf((Object[]) new ButtonConfig[]{new ButtonConfig("ARROW_UP", "↑", "Arrow Up", "arrow", 19, buttonShape2, 0.6f, 0.5f, 0.15f), new ButtonConfig("ARROW_DOWN", "↓", "Arrow Down", "arrow", 20, buttonShape2, 0.6f, 0.5f, 0.25f), new ButtonConfig("ARROW_LEFT", "←", "Arrow Left", "arrow", 21, buttonShape2, 0.6f, 0.4f, 0.2f), new ButtonConfig("ARROW_RIGHT", "→", "Arrow Right", "arrow", 22, buttonShape2, 0.6f, 0.6f, 0.2f)});
        IntRange intRange2 = new IntRange(1, 12);
        ArrayList arrayList3 = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(intRange2, 10));
        Iterator<Integer> it3 = intRange2.iterator();
        while (it3.hasNext()) {
            int iNextInt2 = ((IntIterator) it3).nextInt();
            int i4 = iNextInt2 - 1;
            arrayList3.add(new ButtonConfig(E.b.i(iNextInt2, "F"), E.b.i(iNextInt2, "F"), E.b.i(iNextInt2, "Function "), "function", iNextInt2 + 130, ButtonShape.SQUARE, 0.6f, ((i4 % 6) * 0.15f) + 0.05f, ((i4 / 6) * 0.15f) + 0.55f));
        }
        FUNCTION_BUTTONS = arrayList3;
        ButtonShape buttonShape3 = ButtonShape.SQUARE;
        List<ButtonConfig> listListOf = CollectionsKt.listOf((Object[]) new ButtonConfig[]{new ButtonConfig("HOME_KEY", "Home", "Home key", NotificationCompat.CATEGORY_NAVIGATION, 122, buttonShape3, 0.6f, 0.05f, 0.4f), new ButtonConfig("END_KEY", "End", "End key", NotificationCompat.CATEGORY_NAVIGATION, 123, buttonShape3, 0.6f, 0.15f, 0.4f), new ButtonConfig("PAGE_UP", "PgUp", "Page Up", NotificationCompat.CATEGORY_NAVIGATION, 92, buttonShape3, 0.6f, 0.05f, 0.5f), new ButtonConfig("PAGE_DOWN", "PgDn", "Page Down", NotificationCompat.CATEGORY_NAVIGATION, 93, buttonShape3, 0.6f, 0.15f, 0.5f), new ButtonConfig("BACKSPACE", "Bksp", "Backspace", NotificationCompat.CATEGORY_NAVIGATION, 67, buttonShape3, 0.6f, 0.25f, 0.4f), new ButtonConfig("DELETE", "Del", "Delete", NotificationCompat.CATEGORY_NAVIGATION, 112, buttonShape3, 0.6f, 0.35f, 0.4f)});
        NAV_BUTTONS = listListOf;
        List<ButtonConfig> listListOf2 = CollectionsKt.listOf((Object[]) new ButtonConfig[]{new ButtonConfig("MOUSE_LEFT", "M-L", "Left mouse click", "mouse", 96, buttonShape3, 0.7f, 0.2f, 0.8f), new ButtonConfig("MOUSE_RIGHT", "M-R", "Right mouse click", "mouse", 97, buttonShape3, 0.7f, 0.3f, 0.8f)});
        MOUSE_BUTTONS = listListOf2;
        List<ButtonConfig> listListOf3 = CollectionsKt.listOf((Object[]) new ButtonConfig[]{new ButtonConfig("SCROLL_UP", "Scrl↑", "Scroll up", "scroll", 92, buttonShape3, 0.7f, 0.95f, 0.3f), new ButtonConfig("SCROLL_DOWN", "Scrl↓", "Scroll down", "scroll", 93, buttonShape3, 0.7f, 0.95f, 0.5f)});
        SCROLL_BUTTONS = listListOf3;
        ALL_BUTTONS = CollectionsKt___CollectionsKt.plus((Collection) CollectionsKt___CollectionsKt.plus((Collection) CollectionsKt___CollectionsKt.plus((Collection) CollectionsKt___CollectionsKt.plus((Collection) CollectionsKt___CollectionsKt.plus((Collection) CollectionsKt___CollectionsKt.plus((Collection) CollectionsKt___CollectionsKt.plus((Collection) CollectionsKt___CollectionsKt.plus((Collection) CollectionsKt___CollectionsKt.plus((Collection) CollectionsKt___CollectionsKt.plus((Collection) ACTION_BUTTONS, (Iterable) SHOULDER_BUTTONS), (Iterable) MODIFIER_BUTTONS), (Iterable) SPECIAL_BUTTONS), (Iterable) ARROW_BUTTONS), (Iterable) listListOf), (Iterable) arrayList3), (Iterable) LETTER_BUTTONS), (Iterable) NUMBER_BUTTONS), (Iterable) listListOf2), (Iterable) listListOf3);
    }

    private GamepadButtons() {
    }

    public final List<ButtonConfig> getACTION_BUTTONS() {
        return ACTION_BUTTONS;
    }

    public final List<ButtonConfig> getALL_BUTTONS() {
        return ALL_BUTTONS;
    }

    public final List<ButtonConfig> getARROW_BUTTONS() {
        return ARROW_BUTTONS;
    }

    public final ButtonConfig getButton(String name) {
        Object next;
        Intrinsics.checkNotNullParameter(name, "name");
        Iterator<T> it = ALL_BUTTONS.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (Intrinsics.areEqual(((ButtonConfig) next).getName(), name)) {
                return (ButtonConfig) next;
            }
        }
        next = null;
        return (ButtonConfig) next;
    }

    public final List<ButtonConfig> getButtonsByCategory(String category) {
        Intrinsics.checkNotNullParameter(category, "category");
        List<ButtonConfig> list = ALL_BUTTONS;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (Intrinsics.areEqual(((ButtonConfig) obj).getCategory(), category)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final List<String> getEnabledButtons(SharedPreferences prefs) {
        Intrinsics.checkNotNullParameter(prefs, "prefs");
        List<ButtonConfig> list = ALL_BUTTONS;
        ArrayList arrayList = new ArrayList();
        for (ButtonConfig buttonConfig : list) {
            String name = buttonConfig.getName();
            StringBuilder sb = new StringBuilder("button_enabled_");
            sb.append(name);
            String name2 = prefs.getBoolean(sb.toString(), false) ? buttonConfig.getName() : null;
            if (name2 != null) {
                arrayList.add(name2);
            }
        }
        return arrayList;
    }

    public final List<ButtonConfig> getFUNCTION_BUTTONS() {
        return FUNCTION_BUTTONS;
    }

    public final List<ButtonConfig> getLETTER_BUTTONS() {
        return LETTER_BUTTONS;
    }

    public final List<ButtonConfig> getMODIFIER_BUTTONS() {
        return MODIFIER_BUTTONS;
    }

    public final List<ButtonConfig> getMOUSE_BUTTONS() {
        return MOUSE_BUTTONS;
    }

    public final List<ButtonConfig> getNAV_BUTTONS() {
        return NAV_BUTTONS;
    }

    public final List<ButtonConfig> getNUMBER_BUTTONS() {
        return NUMBER_BUTTONS;
    }

    public final List<ButtonConfig> getSCROLL_BUTTONS() {
        return SCROLL_BUTTONS;
    }

    public final List<ButtonConfig> getSHOULDER_BUTTONS() {
        return SHOULDER_BUTTONS;
    }

    public final List<ButtonConfig> getSPECIAL_BUTTONS() {
        return SPECIAL_BUTTONS;
    }
}
