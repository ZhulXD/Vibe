package com.minhub.gamehub.data;

import A1.G0;
import E1.j;
import S1.d;
import android.content.Context;
import android.util.Log;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import p023i1.l;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u000f\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0010\u0018\u0000 O2\u00020\u0001:\u0002POB'\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u0001H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u001d\u0010\u0015\u001a\u00020\u00062\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001d\u0010\u0017\u001a\u00020\u00052\f\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000eH\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001d\u001a\u00020\u001c2\u0006\u0010\u0019\u001a\u00020\u00022\u0006\u0010\u001b\u001a\u00020\u001aH\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010 \u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u000f¢\u0006\u0004\b \u0010!J\u0015\u0010\"\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u000f¢\u0006\u0004\b\"\u0010#J\u0015\u0010$\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u000f¢\u0006\u0004\b$\u0010#J\u0015\u0010%\u001a\u00020\u00012\u0006\u0010\u001f\u001a\u00020\u000f¢\u0006\u0004\b%\u0010&J\u001d\u0010)\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u00052\u0006\u0010(\u001a\u00020\u001c¢\u0006\u0004\b)\u0010*J%\u0010.\u001a\u00020\u00062\u0006\u0010'\u001a\u00020\u00052\u0006\u0010+\u001a\u00020\u00052\u0006\u0010-\u001a\u00020,¢\u0006\u0004\b.\u0010/J\u0017\u00100\u001a\u0004\u0018\u00010\u000f2\u0006\u0010'\u001a\u00020\u0005¢\u0006\u0004\b0\u00101R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0003\u00102R \u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u00103R\u0014\u00105\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b5\u00106R \u00108\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u00109R#\u0010;\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000f0\u000e0:8\u0006¢\u0006\f\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>R\u0014\u0010?\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b?\u00102R\u0014\u0010@\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u00102R\u0014\u0010B\u001a\u00020A8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bB\u0010CR\u0014\u0010D\u001a\u00020,8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bD\u0010ER\u0014\u0010F\u001a\u00020\u00018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010GR\u0016\u0010H\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bH\u0010IR\u001c\u0010J\u001a\b\u0012\u0004\u0012\u00020\u000f0\u000e8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0014\u0010N\u001a\u00020\u00028BX\u0082\u0004¢\u0006\u0006\u001a\u0004\bL\u0010M¨\u0006Q"}, d2 = {"Lcom/minhub/gamehub/data/GameStorage;", "", "Ljava/io/File;", "file", "Lkotlin/Function1;", "", "", "onGameDeleted", "<init>", "(Ljava/io/File;Lkotlin/jvm/functions/Function1;)V", "source", "Lcom/minhub/gamehub/data/StoredParse;", "readValidated", "(Ljava/io/File;)Lcom/minhub/gamehub/data/StoredParse;", "", "Lcom/minhub/gamehub/data/Game;", "readCurrentLocked", "()Ljava/util/List;", "reload", "()Ljava/lang/Object;", "list", "publishLocked", "(Ljava/util/List;)V", "nextIdLocked", "(Ljava/util/List;)I", "target", "", "bytes", "", "atomicWriteSmall", "(Ljava/io/File;[B)Z", "game", "insert", "(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/Game;", "update", "(Lcom/minhub/gamehub/data/Game;)V", "replaceInstall", "delete", "(Lcom/minhub/gamehub/data/Game;)Ljava/lang/Object;", "id", "fav", "setFavorite", "(IZ)V", "addMinutes", "", "now", "addPlaytime", "(IIJ)V", "findById", "(I)Lcom/minhub/gamehub/data/Game;", "Ljava/io/File;", "Lkotlin/jvm/functions/Function1;", "Li1/l;", "gson", "Li1/l;", "Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;", "_games", "Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;", "Landroidx/lifecycle/LiveData;", "games", "Landroidx/lifecycle/LiveData;", "getGames", "()Landroidx/lifecycle/LiveData;", "backup", "idSeedFile", "Lcom/minhub/gamehub/data/EngineCache;", "engineCache", "Lcom/minhub/gamehub/data/EngineCache;", "maxBytes", "J", "lock", "Ljava/lang/Object;", "storageHealthy", "Z", "snapshot", "Ljava/util/List;", "getGamesRoot", "()Ljava/io/File;", "gamesRoot", "Companion", "SnapshotLiveData", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameStorage.kt\ncom/minhub/gamehub/data/GameStorage\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,320:1\n1#2:321\n360#3,7:322\n360#3,7:329\n295#3,2:336\n774#3:338\n865#3,2:339\n295#3,2:341\n295#3,2:343\n295#3,2:345\n1563#3:347\n1634#3,3:348\n*S KotlinDebug\n*F\n+ 1 GameStorage.kt\ncom/minhub/gamehub/data/GameStorage\n*L\n247#1:322,7\n267#1:329,7\n278#1:336,2\n279#1:338\n279#1:339,2\n297#1:341,2\n303#1:343,2\n311#1:345,2\n148#1:347\n148#1:348,3\n*E\n"})
public final class GameStorage {
    public static final String FILE_NAME = "games.json";
    private static volatile GameStorage INSTANCE;
    private final SnapshotLiveData<List<Game>> _games;
    private final File backup;
    private final EngineCache engineCache;
    private final File file;
    private final LiveData<List<Game>> games;
    private final l gson;
    private final File idSeedFile;
    private final Object lock;
    private final long maxBytes;
    private final Function1<Integer, Unit> onGameDeleted;
    private List<Game> snapshot;
    private boolean storageHealthy;

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Object PROCESS_LOCK = new Object();

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bR\u000e\u0010\u0004\u001a\u00020\u0001X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/minhub/gamehub/data/GameStorage$Companion;", "", "<init>", "()V", "PROCESS_LOCK", "FILE_NAME", "", "INSTANCE", "Lcom/minhub/gamehub/data/GameStorage;", "get", "ctx", "Landroid/content/Context;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nGameStorage.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameStorage.kt\ncom/minhub/gamehub/data/GameStorage$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,320:1\n1#2:321\n*E\n"})
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Unit get$lambda$2$lambda$0(Context context, int i3) {
            Set set = d.f2060a;
            Context applicationContext = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            Intrinsics.checkNotNullParameter(applicationContext, "<this>");
            d.s(applicationContext).edit().remove("button_layout_" + i3).remove("button_visibility_" + i3).apply();
            Context applicationContext2 = context.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext2, "getApplicationContext(...)");
            Intrinsics.checkNotNullParameter(applicationContext2, "<this>");
            d.s(applicationContext2).edit().remove("plugin_enabled_state_" + i3).apply();
            GameStorageMaintenance.INSTANCE.removeGameSideData(context, i3);
            return Unit.INSTANCE;
        }

        public final GameStorage get(Context ctx) {
            GameStorage gameStorage;
            Intrinsics.checkNotNullParameter(ctx, "ctx");
            GameStorage gameStorage2 = GameStorage.INSTANCE;
            if (gameStorage2 != null) {
                return gameStorage2;
            }
            synchronized (this) {
                gameStorage = GameStorage.INSTANCE;
                if (gameStorage == null) {
                    gameStorage = new GameStorage(new File(ctx.getApplicationContext().getFilesDir(), GameStorage.FILE_NAME), new j(ctx, 3), null);
                    GameStorage.INSTANCE = gameStorage;
                }
            }
            return gameStorage;
        }

        private Companion() {
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u000f\u0012\u0006\u0010\u0003\u001a\u00028\u0000¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\b\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0002\u0010\tJ\u0017\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0002\u0010\u0005J\u0017\u0010\r\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00018\u0000H\u0016¢\u0006\u0002\u0010\u0005R\u0012\u0010\u0006\u001a\u0004\u0018\u00018\u0000X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0007¨\u0006\u000e"}, d2 = {"Lcom/minhub/gamehub/data/GameStorage$SnapshotLiveData;", "T", "Landroidx/lifecycle/MutableLiveData;", "initialValue", "<init>", "(Ljava/lang/Object;)V", "immediateValue", "Ljava/lang/Object;", "getValue", "()Ljava/lang/Object;", "postValue", "", "value", "setValue", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class SnapshotLiveData<T> extends MutableLiveData<T> {
        private volatile T immediateValue;

        public SnapshotLiveData(T t2) {
            super(t2);
            this.immediateValue = t2;
        }

        @Override // androidx.lifecycle.LiveData
        public T getValue() {
            return this.immediateValue;
        }

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public void postValue(T value) {
            this.immediateValue = value;
            super.postValue(value);
        }

        @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
        public void setValue(T value) {
            this.immediateValue = value;
            super.setValue(value);
        }
    }

    public /* synthetic */ GameStorage(File file, Function1 function1, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit _init_$lambda$0(int i3) {
        return Unit.INSTANCE;
    }

    private final boolean atomicWriteSmall(File target, byte[] bytes) {
        File file = new File(target.getParentFile(), E.b.m(".", target.getName(), ".tmp"));
        File file2 = new File(target.getParentFile(), E.b.m(".", target.getName(), ".rollback"));
        boolean z2 = false;
        try {
            try {
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    fileOutputStream.write(bytes);
                    fileOutputStream.flush();
                    fileOutputStream.getFD().sync();
                    Unit unit = Unit.INSTANCE;
                    CloseableKt.closeFinally(fileOutputStream, null);
                    if (file.renameTo(target)) {
                        file.delete();
                        return true;
                    }
                    if (file2.exists() && !file2.delete()) {
                        file.delete();
                        return false;
                    }
                    if (target.exists() && !target.renameTo(file2)) {
                        file.delete();
                        return false;
                    }
                    if (file.renameTo(target)) {
                        file2.delete();
                        z2 = true;
                    } else if (file2.exists()) {
                        file2.renameTo(target);
                    }
                    file.delete();
                    return z2;
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(fileOutputStream, th);
                        throw th2;
                    }
                }
            } catch (Exception unused) {
                file.delete();
                if (file2.exists() && !target.exists()) {
                    file2.renameTo(target);
                }
                file.delete();
                return false;
            }
        } catch (Throwable th3) {
            file.delete();
            throw th3;
        }
    }

    private final File getGamesRoot() {
        return new File(this.file.getParentFile(), "games");
    }

    private final int nextIdLocked(List<Game> list) throws IOException {
        Object objM9constructorimpl;
        long jLongValue;
        Integer num;
        if (this.idSeedFile.isFile()) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(StringsKt.trim((CharSequence) new String(FilesKt.readBytes(this.idSeedFile), Charsets.UTF_8)).toString());
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
            }
            Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(objM9constructorimpl);
            if (thM12exceptionOrNullimpl != null) {
                throw new IOException("Unable to read id seed", thM12exceptionOrNullimpl);
            }
            Long longOrNull = StringsKt.toLongOrNull((String) objM9constructorimpl);
            if (longOrNull == null) {
                throw new IOException("Invalid id seed");
            }
            jLongValue = longOrNull.longValue();
        } else {
            jLongValue = 0;
        }
        Iterator<T> it = list.iterator();
        if (it.hasNext()) {
            Integer numValueOf = Integer.valueOf(((Game) it.next()).getId());
            while (it.hasNext()) {
                Integer numValueOf2 = Integer.valueOf(((Game) it.next()).getId());
                if (numValueOf.compareTo(numValueOf2) < 0) {
                    numValueOf = numValueOf2;
                }
            }
            num = numValueOf;
        } else {
            num = null;
        }
        long jMax = Math.max(jLongValue, num != null ? num.intValue() : 0);
        if (jMax >= 2147483647L) {
            throw new IOException("No IDs remain (Int.MAX_VALUE reached)");
        }
        long j2 = jMax + 1;
        File file = this.idSeedFile;
        byte[] bytes = String.valueOf(j2).getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        if (atomicWriteSmall(file, bytes)) {
            return (int) j2;
        }
        throw new IOException("Unable to persist id seed");
    }

    private final void publishLocked(List<Game> list) throws IOException {
        Object objM9constructorimpl;
        byte[] bArr;
        Object objM9constructorimpl2;
        byte[] bArr2;
        Object objValueOf;
        Object objValueOf2;
        String strG = this.gson.g(list);
        Intrinsics.checkNotNullExpressionValue(strG, "toJson(...)");
        byte[] bytes = strG.getBytes(Charsets.UTF_8);
        Intrinsics.checkNotNullExpressionValue(bytes, "getBytes(...)");
        if (bytes.length > this.maxBytes) {
            throw new IOException("Game library exceeds " + this.maxBytes + " bytes");
        }
        if (!this.storageHealthy) {
            throw new IOException("Game storage is unreadable; refusing to overwrite recovery evidence");
        }
        File file = new File(this.file.getParentFile(), E.b.m(".", this.file.getName(), ".tmp"));
        if (this.file.isFile()) {
            try {
                Result.Companion companion = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(FilesKt.readBytes(this.file));
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
            }
            if (Result.m15isFailureimpl(objM9constructorimpl)) {
                objM9constructorimpl = null;
            }
            bArr = (byte[]) objM9constructorimpl;
        } else {
            bArr = null;
        }
        if (this.backup.isFile()) {
            try {
                Result.Companion companion3 = Result.INSTANCE;
                objM9constructorimpl2 = Result.m9constructorimpl(FilesKt.readBytes(this.backup));
            } catch (Throwable th2) {
                Result.Companion companion4 = Result.INSTANCE;
                objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th2));
            }
            if (Result.m15isFailureimpl(objM9constructorimpl2)) {
                objM9constructorimpl2 = null;
            }
            bArr2 = (byte[]) objM9constructorimpl2;
        } else {
            bArr2 = null;
        }
        try {
            File parentFile = this.file.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FileOutputStream fileOutputStream = new FileOutputStream(file);
            try {
                fileOutputStream.write(bytes);
                fileOutputStream.flush();
                fileOutputStream.getFD().sync();
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(fileOutputStream, null);
                if (this.file.exists()) {
                    if (this.backup.exists() && !this.backup.delete()) {
                        throw new IOException("Unable to replace backup");
                    }
                    if (!this.file.renameTo(this.backup)) {
                        throw new IOException("Unable to rotate primary");
                    }
                }
                if (!file.renameTo(this.file)) {
                    throw new IOException("Unable to publish primary");
                }
            } catch (Throwable th3) {
                try {
                    throw th3;
                } catch (Throwable th4) {
                    CloseableKt.closeFinally(fileOutputStream, th3);
                    throw th4;
                }
            }
        } catch (Exception e2) {
            file.delete();
            try {
                Result.Companion companion5 = Result.INSTANCE;
                if (bArr != null) {
                    FilesKt.writeBytes(this.file, bArr);
                    objValueOf2 = Unit.INSTANCE;
                } else {
                    objValueOf2 = Boolean.valueOf(this.file.delete());
                }
                Result.m9constructorimpl(objValueOf2);
            } catch (Throwable th5) {
                Result.Companion companion6 = Result.INSTANCE;
                Result.m9constructorimpl(ResultKt.createFailure(th5));
            }
            try {
                if (bArr2 != null) {
                    FilesKt.writeBytes(this.backup, bArr2);
                    objValueOf = Unit.INSTANCE;
                } else {
                    objValueOf = Boolean.valueOf(this.backup.delete());
                }
                Result.m9constructorimpl(objValueOf);
            } catch (Throwable th6) {
                Result.Companion companion7 = Result.INSTANCE;
                Result.m9constructorimpl(ResultKt.createFailure(th6));
            }
            if (!(e2 instanceof IOException)) {
                throw new IOException("Unable to commit games", e2);
            }
        }
    }

    private final List<Game> readCurrentLocked() {
        StoredParse validated = readValidated(this.file);
        if (validated instanceof StoredParse.Valid) {
            this.storageHealthy = true;
            return ((StoredParse.Valid) validated).getGames();
        }
        StoredParse validated2 = readValidated(this.backup);
        if (validated2 instanceof StoredParse.Valid) {
            this.storageHealthy = true;
            return ((StoredParse.Valid) validated2).getGames();
        }
        boolean z2 = (this.file.exists() || this.backup.exists()) ? false : true;
        this.storageHealthy = z2;
        if (!z2) {
            Log.e("GameStorage", "Both games files are unreadable: " + this.file.getAbsolutePath());
        }
        return CollectionsKt.emptyList();
    }

    private final StoredParse readValidated(File source) {
        Object objM9constructorimpl;
        if (!source.isFile()) {
            return StoredParse.Invalid.INSTANCE;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(FilesKt.readBytes(source));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m12exceptionOrNullimpl(objM9constructorimpl) != null) {
            return StoredParse.Invalid.INSTANCE;
        }
        byte[] bArr = (byte[]) objM9constructorimpl;
        return ((long) bArr.length) > this.maxBytes ? StoredParse.Invalid.INSTANCE : GameStorageKt.parseStoredGames(new String(bArr, Charsets.UTF_8), this.gson);
    }

    private final Object reload() {
        Object objM8boximpl;
        Object objM9constructorimpl;
        synchronized (this.lock) {
            try {
                StoredParse validated = readValidated(this.file);
                List<Game> games = validated instanceof StoredParse.Valid ? ((StoredParse.Valid) validated).getGames() : readCurrentLocked();
                if (validated instanceof StoredParse.Valid) {
                    this.storageHealthy = true;
                }
                List<Game> list = (List) this.engineCache.withBatch(new G0(4, games, this));
                if (!(validated instanceof StoredParse.Valid) || Intrinsics.areEqual(list, games)) {
                    this.snapshot = list;
                    this._games.postValue(list);
                    objM8boximpl = Unit.INSTANCE;
                } else {
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        publishLocked(list);
                        objM9constructorimpl = Result.m9constructorimpl(Unit.INSTANCE);
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                    }
                    if (Result.m16isSuccessimpl(objM9constructorimpl)) {
                        this.snapshot = list;
                        this._games.postValue(list);
                    }
                    if (Result.m12exceptionOrNullimpl(objM9constructorimpl) != null) {
                        this.snapshot = games;
                        this._games.postValue(games);
                    }
                    objM8boximpl = Result.m8boximpl(objM9constructorimpl);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return objM8boximpl;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List reload$lambda$9$lambda$5(List list, GameStorage gameStorage) {
        ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(list, 10));
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(GameMetadataSync.INSTANCE.syncFromDisk((Game) it.next(), gameStorage.engineCache));
        }
        return arrayList;
    }

    public final void addPlaytime(int id, int addMinutes, long now) {
        Object next;
        synchronized (this.lock) {
            try {
                Iterator<T> it = this.snapshot.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (((Game) next).getId() != id);
                Game game = (Game) next;
                if (game != null) {
                    update(Game.copy$default(game, 0, null, null, null, null, null, null, null, null, null, null, false, (int) RangesKt.coerceIn(((long) game.getPlaytimeMinutes()) + ((long) addMinutes), -2147483648L, 2147483647L), now, 0, null, 0, null, null, null, null, null, false, 0L, null, null, null, 134205439, null));
                    Unit unit = Unit.INSTANCE;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final Object delete(Game game) {
        Object obj;
        Object next;
        Object objM9constructorimpl;
        Object objM9constructorimpl2;
        Unit unit;
        Intrinsics.checkNotNullParameter(game, "game");
        synchronized (this.lock) {
            try {
                List<Game> list = this.snapshot;
                if (!this.storageHealthy) {
                    throw new IOException("Game storage is unreadable; delete refused");
                }
                Iterator<T> it = list.iterator();
                do {
                    obj = null;
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (((Game) next).getId() != game.getId());
                Game game2 = (Game) next;
                if (game2 != null) {
                    ArrayList arrayList = new ArrayList();
                    for (Object obj2 : list) {
                        if (((Game) obj2).getId() != game.getId()) {
                            arrayList.add(obj2);
                        }
                    }
                    publishLocked(arrayList);
                    this.snapshot = arrayList;
                    this._games.postValue(arrayList);
                    try {
                        Result.Companion companion = Result.INSTANCE;
                        objM9constructorimpl = Result.m9constructorimpl(getGamesRoot().getCanonicalFile());
                    } catch (Throwable th) {
                        Result.Companion companion2 = Result.INSTANCE;
                        objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                    }
                    if (Result.m15isFailureimpl(objM9constructorimpl)) {
                        objM9constructorimpl = null;
                    }
                    File file = (File) objM9constructorimpl;
                    try {
                        objM9constructorimpl2 = Result.m9constructorimpl(new File(game2.getGamePath()).getCanonicalFile());
                    } catch (Throwable th2) {
                        Result.Companion companion3 = Result.INSTANCE;
                        objM9constructorimpl2 = Result.m9constructorimpl(ResultKt.createFailure(th2));
                    }
                    if (!Result.m15isFailureimpl(objM9constructorimpl2)) {
                        obj = objM9constructorimpl2;
                    }
                    File file2 = (File) obj;
                    if (file != null && file2 != null && !Intrinsics.areEqual(file2, file)) {
                        String path = file.getPath();
                        Intrinsics.checkNotNullExpressionValue(path, "getPath(...)");
                        String str = StringsKt.trimEnd(path, File.separatorChar) + File.separator;
                        String path2 = file2.getPath();
                        Intrinsics.checkNotNullExpressionValue(path2, "getPath(...)");
                        if (StringsKt.N(path2, str)) {
                            try {
                                Result.m9constructorimpl(Boolean.valueOf(FilesKt.deleteRecursively(file2)));
                            } catch (Throwable th3) {
                                Result.Companion companion4 = Result.INSTANCE;
                                Result.m9constructorimpl(ResultKt.createFailure(th3));
                            }
                        }
                    }
                    if (file2 != null) {
                        try {
                            this.engineCache.forget(file2);
                            Result.m9constructorimpl(Unit.INSTANCE);
                        } catch (Throwable th4) {
                            Result.Companion companion5 = Result.INSTANCE;
                            Result.m9constructorimpl(ResultKt.createFailure(th4));
                        }
                    }
                    try {
                        this.onGameDeleted.invoke(Integer.valueOf(game2.getId()));
                        Result.m9constructorimpl(Unit.INSTANCE);
                    } catch (Throwable th5) {
                        Result.Companion companion6 = Result.INSTANCE;
                        Result.m9constructorimpl(ResultKt.createFailure(th5));
                    }
                }
                unit = Unit.INSTANCE;
            } catch (Throwable th6) {
                throw th6;
            }
        }
        return unit;
    }

    public final Game findById(int id) {
        Object next;
        Game game;
        synchronized (this.lock) {
            try {
                Iterator<T> it = this.snapshot.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (((Game) next).getId() != id);
                game = (Game) next;
            } catch (Throwable th) {
                throw th;
            }
        }
        return game;
    }

    public final LiveData<List<Game>> getGames() {
        return this.games;
    }

    public final Game insert(Game game) throws Throwable {
        Object obj;
        Game gameCopy$default;
        Intrinsics.checkNotNullParameter(game, "game");
        Object obj2 = this.lock;
        synchronized (obj2) {
            try {
                List<Game> mutableList = CollectionsKt.toMutableList((Collection) this.snapshot);
                try {
                    if (!this.storageHealthy) {
                        throw new IOException("Game storage is unreadable; insertion refused");
                    }
                    try {
                        gameCopy$default = Game.copy$default(game, nextIdLocked(mutableList), null, null, null, null, null, null, null, null, null, null, false, 0, 0L, 0, null, 0, null, null, null, null, null, false, 0L, null, null, null, 134217726, null);
                        mutableList.add(gameCopy$default);
                        publishLocked(mutableList);
                        List<Game> list = CollectionsKt.toList(mutableList);
                        this.snapshot = list;
                        this._games.postValue(list);
                    } catch (Throwable th) {
                        th = th;
                        obj = obj2;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                obj = obj2;
            }
        }
        return gameCopy$default;
    }

    public final void replaceInstall(Game game) {
        Intrinsics.checkNotNullParameter(game, "game");
        synchronized (this.lock) {
            try {
                List<Game> mutableList = CollectionsKt.toMutableList((Collection) this.snapshot);
                if (!this.storageHealthy) {
                    throw new IOException("Game storage is unreadable; update refused");
                }
                Iterator<Game> it = mutableList.iterator();
                int i3 = 0;
                while (true) {
                    if (!it.hasNext()) {
                        i3 = -1;
                        break;
                    } else if (it.next().getId() == game.getId()) {
                        break;
                    } else {
                        i3++;
                    }
                }
                if (i3 >= 0) {
                    mutableList.set(i3, game);
                    publishLocked(mutableList);
                    List<Game> list = CollectionsKt.toList(mutableList);
                    this.snapshot = list;
                    this._games.postValue(list);
                }
                Unit unit = Unit.INSTANCE;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void setFavorite(int id, boolean fav) {
        Object next;
        synchronized (this.lock) {
            try {
                Iterator<T> it = this.snapshot.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (((Game) next).getId() != id);
                Game game = (Game) next;
                if (game != null) {
                    update(Game.copy$default(game, 0, null, null, null, null, null, null, null, null, null, null, fav, 0, 0L, 0, null, 0, null, null, null, null, null, false, 0L, null, null, null, 134215679, null));
                    Unit unit = Unit.INSTANCE;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void update(Game game) throws Throwable {
        Object obj;
        Intrinsics.checkNotNullParameter(game, "game");
        Object obj2 = this.lock;
        synchronized (obj2) {
            try {
                List<Game> mutableList = CollectionsKt.toMutableList((Collection) this.snapshot);
                try {
                    if (!this.storageHealthy) {
                        throw new IOException("Game storage is unreadable; update refused");
                    }
                    Iterator<Game> it = mutableList.iterator();
                    int i3 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            i3 = -1;
                            break;
                        } else if (it.next().getId() == game.getId()) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                    int i4 = i3;
                    if (i4 >= 0) {
                        Game game2 = mutableList.get(i4);
                        obj = obj2;
                        try {
                            mutableList.set(i4, Game.copy$default(game, 0, null, null, null, null, game2.getGamePath(), null, null, null, null, null, false, 0, 0L, 0, game2.getStatus(), 0, null, null, null, null, null, false, 0L, game2.getStreamUrl(), null, null, 117407711, null));
                            publishLocked(mutableList);
                            List<Game> list = CollectionsKt.toList(mutableList);
                            this.snapshot = list;
                            this._games.postValue(list);
                        } catch (Throwable th) {
                            th = th;
                        }
                    } else {
                        obj = obj2;
                    }
                    Unit unit = Unit.INSTANCE;
                    return;
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (Throwable th3) {
                th = th3;
                obj = obj2;
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private GameStorage(File file, Function1<? super Integer, Unit> function1) {
        this.file = file;
        this.onGameDeleted = function1;
        this.gson = new l();
        SnapshotLiveData<List<Game>> snapshotLiveData = new SnapshotLiveData<>(CollectionsKt.emptyList());
        this._games = snapshotLiveData;
        this.games = snapshotLiveData;
        this.backup = new File(file.getParentFile(), kotlin.collections.unsigned.a.g(file.getName(), ".bak"));
        this.idSeedFile = new File(file.getParentFile(), kotlin.collections.unsigned.a.g(file.getName(), ".next-id"));
        this.engineCache = new EngineCache(new File(file.getParentFile(), EngineCache.FILE_NAME));
        this.maxBytes = 10485760L;
        this.lock = PROCESS_LOCK;
        this.snapshot = CollectionsKt.emptyList();
        reload();
    }

    public /* synthetic */ GameStorage(File file, Function1 function1, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(file, (i3 & 2) != 0 ? new L1.d(17) : function1);
    }
}
