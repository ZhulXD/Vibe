package org.godotengine.godot.io.file;

import E.a;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.util.Log;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0002\b\u0000\u0018\u0000 \u00142\u00020\u0001:\u0001\u0014B\u001f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\b\u0010\u0012\u001a\u00020\u0013H\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u00020\u000bX\u0090\u0004¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u000e\u001a\u00020\u000f¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0015"}, d2 = {"Lorg/godotengine/godot/io/file/SAFData;", "Lorg/godotengine/godot/io/file/DataAccess$FileChannelDataAccess;", "context", "Landroid/content/Context;", "path", "", "accessFlag", "Lorg/godotengine/godot/io/file/FileAccessFlags;", "<init>", "(Landroid/content/Context;Ljava/lang/String;Lorg/godotengine/godot/io/file/FileAccessFlags;)V", "fileChannel", "Ljava/nio/channels/FileChannel;", "getFileChannel$lib_templateRelease", "()Ljava/nio/channels/FileChannel;", "parcelFileDescriptor", "Landroid/os/ParcelFileDescriptor;", "getParcelFileDescriptor", "()Landroid/os/ParcelFileDescriptor;", "close", "", "Companion", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SAFData extends DataAccess.FileChannelDataAccess {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final String TAG = "SAFData";
    private final FileChannel fileChannel;
    private final ParcelFileDescriptor parcelFileDescriptor;
    private final String path;

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005J\u0016\u0010\f\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005J\u0016\u0010\u000e\u001a\u00020\r2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005J\u0016\u0010\u000f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005J\u001e\u0010\u0010\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u0005J \u0010\u0013\u001a\u00020\u00142\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0016H\u0002R\u0016\u0010\u0004\u001a\n \u0006*\u0004\u0018\u00010\u00050\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lorg/godotengine/godot/io/file/SAFData$Companion;", "", "<init>", "()V", "TAG", "", "kotlin.jvm.PlatformType", "fileExists", "", "context", "Landroid/content/Context;", "path", "fileLastModified", "", "fileSize", "delete", "rename", "from", "to", "resolvePath", "Landroid/net/Uri;", "accessFlag", "Lorg/godotengine/godot/io/file/FileAccessFlags;", "lib_templateRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nSAFData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SAFData.kt\norg/godotengine/godot/io/file/SAFData$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 Uri.kt\nandroidx/core/net/UriKt\n*L\n1#1,208:1\n1#2:209\n29#3:210\n*S KotlinDebug\n*F\n+ 1 SAFData.kt\norg/godotengine/godot/io/file/SAFData$Companion\n*L\n120#1:210\n*E\n"})
    public static final class Companion {

        /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
        @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[FileAccessFlags.values().length];
                try {
                    iArr[FileAccessFlags.WRITE.ordinal()] = 1;
                } catch (NoSuchFieldError unused) {
                }
                try {
                    iArr[FileAccessFlags.READ_WRITE.ordinal()] = 2;
                } catch (NoSuchFieldError unused2) {
                }
                try {
                    iArr[FileAccessFlags.WRITE_READ.ordinal()] = 3;
                } catch (NoSuchFieldError unused3) {
                }
                $EnumSwitchMapping$0 = iArr;
            }
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final Uri resolvePath(Context context, String path, FileAccessFlags accessFlag) {
            Uri uri = Uri.parse(path);
            Intrinsics.checkExpressionValueIsNotNull(uri, "Uri.parse(this)");
            String fragment = uri.getFragment();
            if (fragment == null) {
                return uri;
            }
            a aVarG = a.g(context, uri.buildUpon().fragment(null).build());
            boolean z2 = true;
            List listSplit$default = StringsKt__StringsKt.split$default(fragment, new char[]{'/'}, false, 0, 6, (Object) null);
            String str = (String) CollectionsKt.last(listSplit$default);
            List<String> listDropLast = CollectionsKt___CollectionsKt.dropLast(listSplit$default, 1);
            int i3 = WhenMappings.$EnumSwitchMapping$0[accessFlag.ordinal()];
            if (i3 != 1 && i3 != 2 && i3 != 3) {
                z2 = false;
            }
            for (String str2 : listDropLast) {
                a aVarF = aVarG.f(str2);
                if (aVarF != null) {
                    aVarG = aVarF;
                } else {
                    if (!z2) {
                        throw new IllegalStateException(kotlin.collections.unsigned.a.o("Directory not found: ", str2));
                    }
                    aVarG = aVarG.b(str2);
                    if (aVarG == null) {
                        throw new IllegalStateException(kotlin.collections.unsigned.a.o("Failed to create directory: ", str2));
                    }
                }
            }
            a aVarF2 = aVarG.f(str);
            if (aVarF2 == null) {
                if (!z2) {
                    throw new IllegalStateException("File does not exist: ".concat(fragment));
                }
                aVarF2 = aVarG.c("*/*", str);
                if (aVarF2 == null) {
                    throw new IllegalStateException(kotlin.collections.unsigned.a.o("Failed to create file: ", str));
                }
            }
            Uri uriI = aVarF2.i();
            Intrinsics.checkNotNullExpressionValue(uriI, "getUri(...)");
            return uriI;
        }

        public final boolean delete(Context context, String path) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            try {
                return DocumentsContract.deleteDocument(context.getContentResolver(), resolvePath(context, path, FileAccessFlags.READ));
            } catch (Exception e2) {
                Log.d(SAFData.TAG, "Error deleting file", e2);
                return false;
            }
        }

        public final boolean fileExists(Context context, String path) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            try {
                Cursor cursorQuery = context.getContentResolver().query(resolvePath(context, path, FileAccessFlags.READ), new String[]{"_display_name"}, null, null, null);
                if (cursorQuery == null) {
                    return false;
                }
                try {
                    boolean zMoveToFirst = cursorQuery.moveToFirst();
                    CloseableKt.closeFinally(cursorQuery, null);
                    return zMoveToFirst;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(cursorQuery, th);
                        throw th2;
                    }
                }
            } catch (Exception e2) {
                Log.d(SAFData.TAG, "Error checking file existence", e2);
                return false;
            }
        }

        public final long fileLastModified(Context context, String path) {
            int columnIndex;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            try {
                Cursor cursorQuery = context.getContentResolver().query(resolvePath(context, path, FileAccessFlags.READ), new String[]{"last_modified"}, null, null, null);
                if (cursorQuery == null) {
                    return 0L;
                }
                try {
                    if (!cursorQuery.moveToFirst() || (columnIndex = cursorQuery.getColumnIndex("last_modified")) == -1) {
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(cursorQuery, null);
                        return 0L;
                    }
                    long j2 = cursorQuery.getLong(columnIndex) / 1000;
                    CloseableKt.closeFinally(cursorQuery, null);
                    return j2;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(cursorQuery, th);
                        throw th2;
                    }
                }
            } catch (Exception e2) {
                Log.d(SAFData.TAG, "Error reading last modified for", e2);
                return 0L;
            }
        }

        public final long fileSize(Context context, String path) {
            int columnIndex;
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(path, "path");
            try {
                Cursor cursorQuery = context.getContentResolver().query(resolvePath(context, path, FileAccessFlags.READ), new String[]{"_size"}, null, null, null);
                if (cursorQuery == null) {
                    return -1L;
                }
                try {
                    if (!cursorQuery.moveToFirst() || (columnIndex = cursorQuery.getColumnIndex("_size")) == -1) {
                        Unit unit = Unit.INSTANCE;
                        CloseableKt.closeFinally(cursorQuery, null);
                        return -1L;
                    }
                    long j2 = cursorQuery.getLong(columnIndex);
                    CloseableKt.closeFinally(cursorQuery, null);
                    return j2;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(cursorQuery, th);
                        throw th2;
                    }
                }
            } catch (Exception e2) {
                Log.d(SAFData.TAG, "Error reading file size", e2);
                return -1L;
            }
        }

        public final boolean rename(Context context, String from, String to) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(from, "from");
            Intrinsics.checkNotNullParameter(to, "to");
            return false;
        }

        private Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SAFData(Context context, String path, FileAccessFlags accessFlag) throws IOException {
        super(path);
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(path, "path");
        Intrinsics.checkNotNullParameter(accessFlag, "accessFlag");
        this.path = path;
        ParcelFileDescriptor parcelFileDescriptorOpenFileDescriptor = context.getContentResolver().openFileDescriptor(INSTANCE.resolvePath(context, path, accessFlag), accessFlag.getMode());
        if (parcelFileDescriptorOpenFileDescriptor == null) {
            throw new IllegalStateException("Unable to access file descriptor");
        }
        this.parcelFileDescriptor = parcelFileDescriptorOpenFileDescriptor;
        FileChannel channel = accessFlag == FileAccessFlags.READ ? new FileInputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).getChannel() : new FileOutputStream(parcelFileDescriptorOpenFileDescriptor.getFileDescriptor()).getChannel();
        Intrinsics.checkNotNull(channel);
        this.fileChannel = channel;
        if (accessFlag.shouldTruncate()) {
            getFileChannel().truncate(0L);
        }
    }

    /* JADX WARN: Undo finally extract visitor
    java.lang.NullPointerException: Cannot invoke "Object.hashCode()" because "this.second" is null
    	at jadx.core.utils.Pair.hashCode(Pair.java:35)
    	at java.base/java.util.HashMap.hash(HashMap.java:338)
    	at java.base/java.util.HashMap.getNode(HashMap.java:568)
    	at java.base/java.util.HashMap.containsKey(HashMap.java:594)
    	at jadx.core.dex.visitors.finaly.traverser.state.TraverserGlobalCommonState.hasBlocksBeenCached(TraverserGlobalCommonState.java:35)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.MergePathActivePathTraverserHandler.handle(MergePathActivePathTraverserHandler.java:174)
    	at jadx.core.dex.visitors.finaly.traverser.handlers.AbstractActivePathTraverserHandler.process(AbstractActivePathTraverserHandler.java:19)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.processHandlerImplementations(TraverserController.java:43)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.advance(TraverserController.java:156)
    	at jadx.core.dex.visitors.finaly.traverser.TraverserController.process(TraverserController.java:79)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.findCommonInsns(MarkFinallyVisitor.java:404)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.extractFinally(MarkFinallyVisitor.java:284)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.processTryBlock(MarkFinallyVisitor.java:202)
    	at jadx.core.dex.visitors.finaly.MarkFinallyVisitor.visit(MarkFinallyVisitor.java:135)
     */
    @Override // org.godotengine.godot.io.file.DataAccess.FileChannelDataAccess, org.godotengine.godot.io.file.DataAccess
    public void close() {
        String str;
        String str2;
        StringBuilder sb;
        try {
            try {
                getFileChannel().close();
                try {
                    this.parcelFileDescriptor.close();
                } catch (IOException e2) {
                    e = e2;
                    str = TAG;
                    str2 = this.path;
                    sb = new StringBuilder("Exception when closing ParcelFileDescriptor for ");
                    sb.append(str2);
                    sb.append(".");
                    Log.w(str, sb.toString(), e);
                }
            } catch (IOException e3) {
                Log.w(TAG, "Exception when closing file " + this.path + ".", e3);
                try {
                    this.parcelFileDescriptor.close();
                } catch (IOException e4) {
                    e = e4;
                    str = TAG;
                    str2 = this.path;
                    sb = new StringBuilder("Exception when closing ParcelFileDescriptor for ");
                    sb.append(str2);
                    sb.append(".");
                    Log.w(str, sb.toString(), e);
                }
            }
        } catch (Throwable th) {
            try {
                this.parcelFileDescriptor.close();
            } catch (IOException e5) {
                Log.w(TAG, "Exception when closing ParcelFileDescriptor for " + this.path + ".", e5);
            }
            throw th;
        }
    }

    @Override // org.godotengine.godot.io.file.DataAccess.FileChannelDataAccess
    /* JADX INFO: renamed from: getFileChannel$lib_templateRelease, reason: from getter */
    public FileChannel getFileChannel() {
        return this.fileChannel;
    }

    public final ParcelFileDescriptor getParcelFileDescriptor() {
        return this.parcelFileDescriptor;
    }
}
