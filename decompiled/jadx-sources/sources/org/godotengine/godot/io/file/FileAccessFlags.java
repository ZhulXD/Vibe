package org.godotengine.godot.io.file;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\b\u0080\u0081\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\u000fR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\u0011"}, d2 = {"Lorg/godotengine/godot/io/file/FileAccessFlags;", "", "nativeValue", "", "<init>", "(Ljava/lang/String;II)V", "getNativeValue", "()I", "READ", "WRITE", "READ_WRITE", "WRITE_READ", "getMode", "", "shouldTruncate", "", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public enum FileAccessFlags {
    READ(1),
    WRITE(2),
    READ_WRITE(3),
    WRITE_READ(7);

    private final int nativeValue;
    private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0007¨\u0006\b"}, d2 = {"Lorg/godotengine/godot/io/file/FileAccessFlags$Companion;", "", "<init>", "()V", "fromNativeModeFlags", "Lorg/godotengine/godot/io/file/FileAccessFlags;", "modeFlag", "", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final FileAccessFlags fromNativeModeFlags(int modeFlag) {
            for (FileAccessFlags fileAccessFlags : FileAccessFlags.getEntries()) {
                if (fileAccessFlags.getNativeValue() == modeFlag) {
                    return fileAccessFlags;
                }
            }
            return null;
        }

        private Companion() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[FileAccessFlags.values().length];
            try {
                iArr[FileAccessFlags.READ.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[FileAccessFlags.WRITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[FileAccessFlags.READ_WRITE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[FileAccessFlags.WRITE_READ.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    FileAccessFlags(int i3) {
        this.nativeValue = i3;
    }

    public static EnumEntries<FileAccessFlags> getEntries() {
        return $ENTRIES;
    }

    public final String getMode() {
        int i3 = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i3 == 1) {
            return "r";
        }
        if (i3 == 2) {
            return "w";
        }
        if (i3 == 3 || i3 == 4) {
            return "rw";
        }
        throw new NoWhenBranchMatchedException();
    }

    public final int getNativeValue() {
        return this.nativeValue;
    }

    public final boolean shouldTruncate() {
        int i3 = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i3 == 1) {
            return false;
        }
        if (i3 != 2) {
            if (i3 == 3) {
                return false;
            }
            if (i3 != 4) {
                throw new NoWhenBranchMatchedException();
            }
        }
        return true;
    }
}
