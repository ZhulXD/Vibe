package com.minhub.gamehub.data;

import android.util.Log;
import java.io.File;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.io.FilesKt__UtilsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000bJ\u000e\u0010\f\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bJ\"\u0010\r\u001a\u0004\u0018\u00010\b2\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\bJ\u0018\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\bH\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/minhub/gamehub/data/RenpySaveIsolation;", "", "<init>", "()V", "TAG", "", "MIGRATED_MARKER", "publicDirFor", "Ljava/io/File;", "externalFilesDir", "gameId", "", "legacySharedSavesDir", "prepare", "gameDir", "copyInto", "source", "destination", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRenpySaveIsolation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenpySaveIsolation.kt\ncom/minhub/gamehub/data/RenpySaveIsolation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,108:1\n1#2:109\n13472#3,2:110\n*S KotlinDebug\n*F\n+ 1 RenpySaveIsolation.kt\ncom/minhub/gamehub/data/RenpySaveIsolation\n*L\n94#1:110,2\n*E\n"})
public final class RenpySaveIsolation {
    public static final RenpySaveIsolation INSTANCE = new RenpySaveIsolation();
    private static final String MIGRATED_MARKER = ".minhub_saves_migrated";
    private static final String TAG = "MinHub-RenpySaves";

    private RenpySaveIsolation() {
    }

    private final int copyInto(File source, File destination) {
        File[] fileArrListFiles = source.listFiles();
        if (fileArrListFiles == null) {
            return 0;
        }
        int i3 = 0;
        for (File file : fileArrListFiles) {
            if (file.isFile()) {
                File file2 = new File(destination, file.getName());
                if (!file2.exists()) {
                    try {
                        Intrinsics.checkNotNull(file);
                        FilesKt__UtilsKt.copyTo$default(file, file2, false, 0, 4, null);
                        i3++;
                    } catch (Exception e2) {
                        Log.w(TAG, "Could not migrate " + file.getName() + ": " + e2.getMessage());
                    }
                }
            }
        }
        return i3;
    }

    public final File legacySharedSavesDir(File externalFilesDir) {
        Intrinsics.checkNotNullParameter(externalFilesDir, "externalFilesDir");
        return new File(externalFilesDir, "saves");
    }

    public final File prepare(File externalFilesDir, int gameId, File gameDir) {
        Intrinsics.checkNotNullParameter(externalFilesDir, "externalFilesDir");
        if (gameId < 0) {
            Log.w(TAG, "No game id supplied; keeping the shared save directory");
            return null;
        }
        File filePublicDirFor = publicDirFor(externalFilesDir, gameId);
        File file = new File(filePublicDirFor, "saves");
        if (!file.isDirectory() && !file.mkdirs()) {
            Log.w(TAG, "Could not create per-game save directory; keeping the shared one");
            return null;
        }
        File file2 = new File(filePublicDirFor, MIGRATED_MARKER);
        if (file2.isFile()) {
            return filePublicDirFor;
        }
        File file3 = gameDir != null ? new File(gameDir, "saves") : null;
        if (file3 == null || !file3.isDirectory()) {
            Log.i(TAG, "No existing saves to migrate for game " + gameId);
        } else {
            Log.i(TAG, "Migrated " + copyInto(file3, file) + " save file(s) for game " + gameId);
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            FilesKt__FileReadWriteKt.writeText$default(file2, String.valueOf(System.currentTimeMillis()), null, 2, null);
            Result.m9constructorimpl(Unit.INSTANCE);
            return filePublicDirFor;
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m9constructorimpl(ResultKt.createFailure(th));
            return filePublicDirFor;
        }
    }

    public final File publicDirFor(File externalFilesDir, int gameId) {
        Intrinsics.checkNotNullParameter(externalFilesDir, "externalFilesDir");
        return new File(new File(externalFilesDir, "renpy"), String.valueOf(gameId));
    }
}
