package androidx.core.view;

import android.os.Build;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class HapticFeedbackConstantsCompat {
    public static final int CLOCK_TICK = 4;
    public static final int CONFIRM = 16;
    public static final int CONTEXT_CLICK = 6;
    public static final int DRAG_START = 25;
    static final int FIRST_CONSTANT_INT = 0;
    public static final int FLAG_IGNORE_VIEW_SETTING = 1;
    public static final int GESTURE_END = 13;
    public static final int GESTURE_START = 12;
    public static final int GESTURE_THRESHOLD_ACTIVATE = 23;
    public static final int GESTURE_THRESHOLD_DEACTIVATE = 24;
    public static final int KEYBOARD_PRESS = 3;
    public static final int KEYBOARD_RELEASE = 7;
    public static final int KEYBOARD_TAP = 3;
    static final int LAST_CONSTANT_INT = 27;
    public static final int LONG_PRESS = 0;
    public static final int NO_HAPTICS = -1;
    public static final int REJECT = 17;
    public static final int SEGMENT_FREQUENT_TICK = 27;
    public static final int SEGMENT_TICK = 26;
    public static final int TEXT_HANDLE_MOVE = 9;
    public static final int TOGGLE_OFF = 22;
    public static final int TOGGLE_ON = 21;
    public static final int VIRTUAL_KEY = 1;
    public static final int VIRTUAL_KEY_RELEASE = 8;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface HapticFeedbackFlags {
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Retention(RetentionPolicy.SOURCE)
    public @interface HapticFeedbackType {
    }

    private HapticFeedbackConstantsCompat() {
    }

    /* JADX WARN: Code duplicated, block: B:24:0x002c  */
    /* JADX WARN: Code duplicated, block: B:25:0x002e  */
    public static int getFeedbackConstantOrFallback(int i3) {
        if (i3 == -1) {
            return -1;
        }
        int i4 = Build.VERSION.SDK_INT;
        int i5 = 6;
        if (i4 < 34) {
            switch (i3) {
                case 21:
                case 23:
                case 26:
                    i3 = 6;
                    break;
                case 22:
                case 24:
                case 27:
                    i3 = 4;
                    break;
                case 25:
                    i3 = 0;
                    break;
            }
        }
        if (i4 >= 30) {
            i5 = i3;
        } else if (i3 == 12) {
            i5 = 1;
        } else if (i3 != 13) {
            if (i3 == 16) {
                i5 = 1;
            } else if (i3 != 17) {
                i5 = i3;
            } else {
                i5 = 0;
            }
        }
        if (i4 >= 27 || !(i5 == 7 || i5 == 8 || i5 == 9)) {
            return i5;
        }
        return -1;
    }
}
