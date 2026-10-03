package com.hatkid.mkxpz.utils;

import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmStatic;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0006\n\u0002\b\t\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0014B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J \u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\u0007J\u0018\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\nH\u0007J\u0010\u0010\r\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000b\u001a\u00020\fH\u0002J0\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\nH\u0007¨\u0006\u0015"}, d2 = {"Lcom/hatkid/mkxpz/utils/DirectionUtils;", "", "<init>", "()V", "getDir", "Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;", "x", "", "y", "isDiagonal", "", "angle", "", "get4dir", "get8dir", "getAngle", "initX", "posX", "initY", "posY", "Direction", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class DirectionUtils {
    public static final DirectionUtils INSTANCE = new DirectionUtils();

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\f\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\f¨\u0006\r"}, d2 = {"Lcom/hatkid/mkxpz/utils/DirectionUtils$Direction;", "", "<init>", "(Ljava/lang/String;I)V", "UP", "UP_RIGHT", "RIGHT", "DOWN_RIGHT", "DOWN", "DOWN_LEFT", "LEFT", "UP_LEFT", "UNKNOWN", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public enum Direction {
        UP,
        UP_RIGHT,
        RIGHT,
        DOWN_RIGHT,
        DOWN,
        DOWN_LEFT,
        LEFT,
        UP_LEFT,
        UNKNOWN;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<Direction> getEntries() {
            return $ENTRIES;
        }
    }

    private DirectionUtils() {
    }

    private final Direction get4dir(double angle) {
        if (angle > 45.0d && angle < 136.0d) {
            return Direction.UP;
        }
        if (angle > 135.0d && angle < 226.0d) {
            return Direction.RIGHT;
        }
        if (angle <= 225.0d || angle >= 316.0d) {
            return ((angle < 0.0d || angle >= 46.0d) && (angle <= 315.0d || angle >= 361.0d)) ? Direction.UNKNOWN : Direction.LEFT;
        }
        return Direction.DOWN;
    }

    private final Direction get8dir(double angle) {
        if (angle >= 67.5d && angle < 113.5d) {
            return Direction.UP;
        }
        if (angle >= 113.5d && angle < 158.5d) {
            return Direction.UP_RIGHT;
        }
        if (angle >= 158.5d && angle < 203.5d) {
            return Direction.RIGHT;
        }
        if (angle >= 203.5d && angle < 248.5d) {
            return Direction.DOWN_RIGHT;
        }
        if (angle >= 248.5d && angle < 293.5d) {
            return Direction.DOWN;
        }
        if (angle >= 293.5d && angle < 338.5d) {
            return Direction.DOWN_LEFT;
        }
        if ((angle < 0.0d || angle >= 23.5d) && (angle < 338.5d || angle >= 361.0d)) {
            return (angle < 23.5d || angle >= 67.5d) ? Direction.UNKNOWN : Direction.UP_LEFT;
        }
        return Direction.LEFT;
    }

    @JvmStatic
    public static final Direction getAngle(float initX, float posX, float initY, float posY, boolean isDiagonal) {
        double degrees;
        try {
            degrees = Math.toDegrees(Math.atan2(initY - posY, initX - posX));
        } catch (Exception unused) {
            degrees = 0.0d;
        }
        if (degrees < 0.0d) {
            degrees += 360.0d;
        }
        return getDir(degrees, isDiagonal);
    }

    @JvmStatic
    public static final Direction getDir(float x2, float y2, boolean isDiagonal) {
        return getAngle(0.0f, x2, 0.0f, y2, isDiagonal);
    }

    @JvmStatic
    public static final Direction getDir(double angle, boolean isDiagonal) {
        return isDiagonal ? INSTANCE.get8dir(angle) : INSTANCE.get4dir(angle);
    }
}
