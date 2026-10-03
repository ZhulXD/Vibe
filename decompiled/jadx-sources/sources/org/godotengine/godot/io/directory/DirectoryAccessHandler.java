package org.godotengine.godot.io.directory;

import android.content.Context;
import android.util.Log;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.godotengine.godot.Godot;
import org.godotengine.godot.io.StorageScope;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000V\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\t\u0018\u0000 /2\u00020\u0001:\u0003/01B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0011J\u0018\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0002J\u0018\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u00182\b\u0010\u0013\u001a\u0004\u0018\u00010\u0011J\u000e\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0018J\u000e\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001c\u001a\u00020\u0018J\u000e\u0010\u001f\u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u0018J\u000e\u0010 \u001a\u00020\u000f2\u0006\u0010\u001c\u001a\u00020\u0018J\u0018\u0010!\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00182\b\u0010\u0013\u001a\u0004\u0018\u00010\u0011J\u0018\u0010\"\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00182\b\u0010\u0013\u001a\u0004\u0018\u00010\u0011J\u000e\u0010#\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u0018J\u0016\u0010$\u001a\u00020\u00112\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010%\u001a\u00020\u0018J\u0018\u0010&\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00182\b\u0010'\u001a\u0004\u0018\u00010\u0011J\u000e\u0010(\u001a\u00020)2\u0006\u0010\u001a\u001a\u00020\u0018J\u001e\u0010*\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00182\u0006\u0010+\u001a\u00020\u00112\u0006\u0010,\u001a\u00020\u0011J\u0018\u0010-\u001a\u00020\u000f2\u0006\u0010\u001a\u001a\u00020\u00182\b\u0010.\u001a\u0004\u0018\u00010\u0011R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u00062"}, d2 = {"Lorg/godotengine/godot/io/directory/DirectoryAccessHandler;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "storageScopeIdentifier", "Lorg/godotengine/godot/io/StorageScope$Identifier;", "assetsDirAccess", "Lorg/godotengine/godot/io/directory/AssetsDirectoryAccess;", "fileSystemDirAccess", "Lorg/godotengine/godot/io/directory/FilesystemDirectoryAccess;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "assetsFileExists", "", "assetsPath", "", "filesystemFileExists", "path", "hasDirId", "accessType", "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;", "dirId", "", "dirOpen", "nativeAccessType", "dirNext", "dirAccessId", "dirClose", "", "dirIsDir", "isCurrentHidden", "dirExists", "fileExists", "getDriveCount", "getDrive", "drive", "makeDir", "dir", "getSpaceLeft", "", "rename", "from", "to", "remove", "filename", "Companion", "AccessType", "DirectoryAccess", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nDirectoryAccessHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DirectoryAccessHandler.kt\norg/godotengine/godot/io/directory/DirectoryAccessHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,321:1\n1#2:322\n*E\n"})
public final class DirectoryAccessHandler {
    public static final int INVALID_DIR_ID = -1;
    public static final int STARTING_DIR_ID = 1;
    private final AssetsDirectoryAccess assetsDirAccess;
    private final FilesystemDirectoryAccess fileSystemDirAccess;
    private final ReentrantLock lock;
    private final StorageScope.Identifier storageScopeIdentifier;
    private static final String TAG = "DirectoryAccessHandler";

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0082\u0081\u0002\u0018\u0000 \r2\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\rB\u0011\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u000b\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u0003R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000e"}, d2 = {"Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;", "", "nativeValue", "", "<init>", "(Ljava/lang/String;II)V", "getNativeValue", "()I", "ACCESS_RESOURCES", "ACCESS_USERDATA", "ACCESS_FILESYSTEM", "generateDirAccessId", "dirId", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public enum AccessType {
        ACCESS_RESOURCES(0),
        ACCESS_USERDATA(1),
        ACCESS_FILESYSTEM(2);

        public static final int DIR_ACCESS_ID_MULTIPLIER = 10;
        private final int nativeValue;
        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
        public static final Companion INSTANCE = new Companion(null);

        /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
        @Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001c\u0010\u0006\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\b\u0012\u0004\u0012\u00020\u00050\u00072\u0006\u0010\t\u001a\u00020\u0005J\u0012\u0010\n\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u001c\u0010\n\u001a\u0004\u0018\u00010\b2\u0006\u0010\u000b\u001a\u00020\u00052\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\rR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType$Companion;", "", "<init>", "()V", "DIR_ACCESS_ID_MULTIPLIER", "", "fromDirAccessId", "Lkotlin/Pair;", "Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$AccessType;", "dirAccessId", "fromNative", "nativeAccessType", "storageScope", "Lorg/godotengine/godot/io/StorageScope;", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
        public static final class Companion {

            /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
            @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
            public /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[StorageScope.values().length];
                    try {
                        iArr[StorageScope.ASSETS.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    try {
                        iArr[StorageScope.APP.ordinal()] = 2;
                    } catch (NoSuchFieldError unused2) {
                    }
                    try {
                        iArr[StorageScope.SHARED.ordinal()] = 3;
                    } catch (NoSuchFieldError unused3) {
                    }
                    try {
                        iArr[StorageScope.SAF.ordinal()] = 4;
                    } catch (NoSuchFieldError unused4) {
                    }
                    try {
                        iArr[StorageScope.UNKNOWN.ordinal()] = 5;
                    } catch (NoSuchFieldError unused5) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private final AccessType fromNative(int nativeAccessType) {
                for (AccessType accessType : AccessType.getEntries()) {
                    if (accessType.getNativeValue() == nativeAccessType) {
                        return accessType;
                    }
                }
                return null;
            }

            public static /* synthetic */ AccessType fromNative$default(Companion companion, int i3, StorageScope storageScope, int i4, Object obj) {
                if ((i4 & 2) != 0) {
                    storageScope = null;
                }
                return companion.fromNative(i3, storageScope);
            }

            public final Pair<AccessType, Integer> fromDirAccessId(int dirAccessId) {
                return new Pair<>(fromNative(dirAccessId % 10), Integer.valueOf(dirAccessId / 10));
            }

            private Companion() {
            }

            public final AccessType fromNative(int nativeAccessType, StorageScope storageScope) {
                AccessType accessTypeFromNative = fromNative(nativeAccessType);
                AccessType accessType = null;
                if (accessTypeFromNative == null) {
                    Log.w(DirectoryAccessHandler.TAG, "Unsupported access type " + nativeAccessType);
                    return null;
                }
                AccessType accessType2 = AccessType.ACCESS_RESOURCES;
                if (accessTypeFromNative == accessType2) {
                    return Godot.INSTANCE.isEditorBuild$lib_templateRelease() ? AccessType.ACCESS_FILESYSTEM : accessType2;
                }
                if (storageScope != null) {
                    int i3 = WhenMappings.$EnumSwitchMapping$0[storageScope.ordinal()];
                    if (i3 == 1) {
                        accessType = accessType2;
                    } else if (i3 == 2 || i3 == 3) {
                        accessType = AccessType.ACCESS_FILESYSTEM;
                    } else if (i3 != 4 && i3 != 5) {
                        throw new NoWhenBranchMatchedException();
                    }
                    if (accessType != null) {
                        return accessType;
                    }
                }
                return AccessType.ACCESS_FILESYSTEM;
            }
        }

        AccessType(int i3) {
            this.nativeValue = i3;
        }

        public static EnumEntries<AccessType> getEntries() {
            return $ENTRIES;
        }

        public final int generateDirAccessId(int dirId) {
            return (dirId * 10) + this.nativeValue;
        }

        public final int getNativeValue() {
            return this.nativeValue;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0010\t\n\u0002\b\u0006\b`\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0010\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\r\u001a\u00020\u000b2\u0006\u0010\u0004\u001a\u00020\u0005H&J\u0010\u0010\u000e\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0003H&J\u0010\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0007\u001a\u00020\u0003H&J\b\u0010\u0010\u001a\u00020\u0003H&J\u0010\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0003H&J\u0010\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0005H&J\b\u0010\u0015\u001a\u00020\u0016H&J\u0018\u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005H&J\u0010\u0010\u001a\u001a\u00020\u000b2\u0006\u0010\u001b\u001a\u00020\u0005H&¨\u0006\u001c"}, d2 = {"Lorg/godotengine/godot/io/directory/DirectoryAccessHandler$DirectoryAccess;", "", "dirOpen", "", "path", "", "dirNext", "dirId", "dirClose", "", "dirIsDir", "", "dirExists", "fileExists", "hasDirId", "isCurrentHidden", "getDriveCount", "getDrive", "drive", "makeDir", "dir", "getSpaceLeft", "", "rename", "from", "to", "remove", "filename", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface DirectoryAccess {
        void dirClose(int dirId);

        boolean dirExists(String path);

        boolean dirIsDir(int dirId);

        String dirNext(int dirId);

        int dirOpen(String path);

        boolean fileExists(String path);

        String getDrive(int drive);

        int getDriveCount();

        long getSpaceLeft();

        boolean hasDirId(int dirId);

        boolean isCurrentHidden(int dirId);

        boolean makeDir(String dir);

        boolean remove(String filename);

        boolean rename(String from, String to);
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[AccessType.values().length];
            try {
                iArr[AccessType.ACCESS_RESOURCES.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public DirectoryAccessHandler(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        StorageScope.Identifier identifier = new StorageScope.Identifier(context);
        this.storageScopeIdentifier = identifier;
        this.assetsDirAccess = new AssetsDirectoryAccess(context);
        this.fileSystemDirAccess = new FilesystemDirectoryAccess(context, identifier);
        this.lock = new ReentrantLock();
    }

    private final boolean hasDirId(AccessType accessType, int dirId) {
        return WhenMappings.$EnumSwitchMapping$0[accessType.ordinal()] == 1 ? this.assetsDirAccess.hasDirId(dirId) : this.fileSystemDirAccess.hasDirId(dirId);
    }

    public final boolean assetsFileExists(String assetsPath) {
        Intrinsics.checkNotNullParameter(assetsPath, "assetsPath");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return this.assetsDirAccess.fileExists(assetsPath);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final void dirClose(int dirAccessId) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Pair<AccessType, Integer> pairFromDirAccessId = AccessType.INSTANCE.fromDirAccessId(dirAccessId);
            AccessType accessTypeComponent1 = pairFromDirAccessId.component1();
            int iIntValue = pairFromDirAccessId.component2().intValue();
            if (accessTypeComponent1 != null && hasDirId(accessTypeComponent1, iIntValue)) {
                if (WhenMappings.$EnumSwitchMapping$0[accessTypeComponent1.ordinal()] == 1) {
                    this.assetsDirAccess.dirClose(iIntValue);
                } else {
                    this.fileSystemDirAccess.dirClose(iIntValue);
                }
                Unit unit = Unit.INSTANCE;
                return;
            }
            Log.w(TAG, "dirClose: Invalid dir id: " + iIntValue);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean dirExists(int nativeAccessType, String path) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        if (path == null) {
            reentrantLock.unlock();
            return false;
        }
        try {
            AccessType accessTypeFromNative = AccessType.INSTANCE.fromNative(nativeAccessType, this.storageScopeIdentifier.identifyStorageScope(path));
            if (accessTypeFromNative == null) {
                return false;
            }
            return WhenMappings.$EnumSwitchMapping$0[accessTypeFromNative.ordinal()] == 1 ? this.assetsDirAccess.dirExists(path) : this.fileSystemDirAccess.dirExists(path);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean dirIsDir(int dirAccessId) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Pair<AccessType, Integer> pairFromDirAccessId = AccessType.INSTANCE.fromDirAccessId(dirAccessId);
            AccessType accessTypeComponent1 = pairFromDirAccessId.component1();
            int iIntValue = pairFromDirAccessId.component2().intValue();
            if (accessTypeComponent1 != null && hasDirId(accessTypeComponent1, iIntValue)) {
                return WhenMappings.$EnumSwitchMapping$0[accessTypeComponent1.ordinal()] == 1 ? this.assetsDirAccess.dirIsDir(iIntValue) : this.fileSystemDirAccess.dirIsDir(iIntValue);
            }
            Log.w(TAG, "dirIsDir: Invalid dir id: " + iIntValue);
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final String dirNext(int dirAccessId) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Pair<AccessType, Integer> pairFromDirAccessId = AccessType.INSTANCE.fromDirAccessId(dirAccessId);
            AccessType accessTypeComponent1 = pairFromDirAccessId.component1();
            int iIntValue = pairFromDirAccessId.component2().intValue();
            if (accessTypeComponent1 != null && hasDirId(accessTypeComponent1, iIntValue)) {
                return WhenMappings.$EnumSwitchMapping$0[accessTypeComponent1.ordinal()] == 1 ? this.assetsDirAccess.dirNext(iIntValue) : this.fileSystemDirAccess.dirNext(iIntValue);
            }
            Log.w(TAG, "dirNext: Invalid dir id: " + iIntValue);
            return "";
        } finally {
            reentrantLock.unlock();
        }
    }

    public final int dirOpen(int nativeAccessType, String path) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        if (path == null) {
            reentrantLock.unlock();
            return -1;
        }
        try {
            AccessType accessTypeFromNative = AccessType.INSTANCE.fromNative(nativeAccessType, this.storageScopeIdentifier.identifyStorageScope(path));
            if (accessTypeFromNative == null) {
                return -1;
            }
            int iDirOpen = WhenMappings.$EnumSwitchMapping$0[accessTypeFromNative.ordinal()] == 1 ? this.assetsDirAccess.dirOpen(path) : this.fileSystemDirAccess.dirOpen(path);
            if (iDirOpen == -1) {
                return -1;
            }
            return accessTypeFromNative.generateDirAccessId(iDirOpen);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean fileExists(int nativeAccessType, String path) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        if (path == null) {
            reentrantLock.unlock();
            return false;
        }
        try {
            AccessType accessTypeFromNative = AccessType.INSTANCE.fromNative(nativeAccessType, this.storageScopeIdentifier.identifyStorageScope(path));
            if (accessTypeFromNative == null) {
                return false;
            }
            return WhenMappings.$EnumSwitchMapping$0[accessTypeFromNative.ordinal()] == 1 ? this.assetsDirAccess.fileExists(path) : this.fileSystemDirAccess.fileExists(path);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean filesystemFileExists(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            return this.fileSystemDirAccess.fileExists(path);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final String getDrive(int nativeAccessType, int drive) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            AccessType accessTypeFromNative$default = AccessType.Companion.fromNative$default(AccessType.INSTANCE, nativeAccessType, null, 2, null);
            if (accessTypeFromNative$default == null) {
                return "";
            }
            return WhenMappings.$EnumSwitchMapping$0[accessTypeFromNative$default.ordinal()] == 1 ? this.assetsDirAccess.getDrive(drive) : this.fileSystemDirAccess.getDrive(drive);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final int getDriveCount(int nativeAccessType) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            AccessType accessTypeFromNative$default = AccessType.Companion.fromNative$default(AccessType.INSTANCE, nativeAccessType, null, 2, null);
            if (accessTypeFromNative$default == null) {
                return 0;
            }
            return WhenMappings.$EnumSwitchMapping$0[accessTypeFromNative$default.ordinal()] == 1 ? this.assetsDirAccess.getDriveCount() : this.fileSystemDirAccess.getDriveCount();
        } finally {
            reentrantLock.unlock();
        }
    }

    public final long getSpaceLeft(int nativeAccessType) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            AccessType accessTypeFromNative$default = AccessType.Companion.fromNative$default(AccessType.INSTANCE, nativeAccessType, null, 2, null);
            if (accessTypeFromNative$default == null) {
                return 0L;
            }
            return WhenMappings.$EnumSwitchMapping$0[accessTypeFromNative$default.ordinal()] == 1 ? this.assetsDirAccess.getSpaceLeft() : this.fileSystemDirAccess.getSpaceLeft();
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean isCurrentHidden(int dirAccessId) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            Pair<AccessType, Integer> pairFromDirAccessId = AccessType.INSTANCE.fromDirAccessId(dirAccessId);
            AccessType accessTypeComponent1 = pairFromDirAccessId.component1();
            int iIntValue = pairFromDirAccessId.component2().intValue();
            if (accessTypeComponent1 != null && hasDirId(accessTypeComponent1, iIntValue)) {
                return WhenMappings.$EnumSwitchMapping$0[accessTypeComponent1.ordinal()] == 1 ? this.assetsDirAccess.isCurrentHidden(iIntValue) : this.fileSystemDirAccess.isCurrentHidden(iIntValue);
            }
            return false;
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean makeDir(int nativeAccessType, String dir) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        if (dir == null) {
            reentrantLock.unlock();
            return false;
        }
        try {
            AccessType accessTypeFromNative = AccessType.INSTANCE.fromNative(nativeAccessType, this.storageScopeIdentifier.identifyStorageScope(dir));
            if (accessTypeFromNative == null) {
                return false;
            }
            return WhenMappings.$EnumSwitchMapping$0[accessTypeFromNative.ordinal()] == 1 ? this.assetsDirAccess.makeDir(dir) : this.fileSystemDirAccess.makeDir(dir);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean remove(int nativeAccessType, String filename) {
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        if (filename == null) {
            reentrantLock.unlock();
            return false;
        }
        try {
            AccessType accessTypeFromNative = AccessType.INSTANCE.fromNative(nativeAccessType, this.storageScopeIdentifier.identifyStorageScope(filename));
            if (accessTypeFromNative == null) {
                return false;
            }
            return WhenMappings.$EnumSwitchMapping$0[accessTypeFromNative.ordinal()] == 1 ? this.assetsDirAccess.remove(filename) : this.fileSystemDirAccess.remove(filename);
        } finally {
            reentrantLock.unlock();
        }
    }

    public final boolean rename(int nativeAccessType, String from, String to) {
        Intrinsics.checkNotNullParameter(from, "from");
        Intrinsics.checkNotNullParameter(to, "to");
        ReentrantLock reentrantLock = this.lock;
        reentrantLock.lock();
        try {
            AccessType accessTypeFromNative$default = AccessType.Companion.fromNative$default(AccessType.INSTANCE, nativeAccessType, null, 2, null);
            if (accessTypeFromNative$default == null) {
                return false;
            }
            return WhenMappings.$EnumSwitchMapping$0[accessTypeFromNative$default.ordinal()] == 1 ? this.assetsDirAccess.rename(from, to) : this.fileSystemDirAccess.rename(from, to);
        } finally {
            reentrantLock.unlock();
        }
    }
}
