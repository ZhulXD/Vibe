package C1;

import android.content.Context;
import android.content.DialogInterface;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.minhub.gamehub.R;
import com.minhub.gamehub.data.Game;
import com.minhub.gamehub.hub.AddGameActivity;
import com.minhub.gamehub.hub.catalog.OnlineCatalogImportSupportKt;
import com.minhub.gamehub.hub.catalog.UncreatableFolderException;
import com.minhub.gamehub.hub.catalog.UnsupportedGameImportException;
import com.minhub.gamehub.hub.catalog.UnsupportedImportReason;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import java.util.zip.ZipException;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import p011e.C0240b;
import p011e.DialogInterfaceC0245g;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public abstract class O {
    public static final void a(AddGameActivity addGameActivity, E.a aVar, File file, D d3) throws FileNotFoundException {
        for (E.a aVar2 : aVar.k()) {
            String strH = aVar2.h();
            if (strH != null) {
                String strF = StringsKt.F(StringsKt.F(strH, '/', '_'), '\\', '_');
                if (!Intrinsics.areEqual(strF, ".") && !Intrinsics.areEqual(strF, "..") && !StringsKt.isBlank(strF)) {
                    if (aVar2.j()) {
                        Intrinsics.checkNotNull(aVar2);
                        File file2 = new File(file, strF);
                        file2.mkdirs();
                        Unit unit = Unit.INSTANCE;
                        a(addGameActivity, aVar2, file2, d3);
                    } else {
                        InputStream inputStreamOpenInputStream = addGameActivity.getContentResolver().openInputStream(aVar2.i());
                        if (inputStreamOpenInputStream != null) {
                            try {
                                FileOutputStream fileOutputStream = new FileOutputStream(new File(file, strF));
                                try {
                                    ByteStreamsKt.copyTo$default(inputStreamOpenInputStream, fileOutputStream, 0, 2, null);
                                    CloseableKt.closeFinally(fileOutputStream, null);
                                    CloseableKt.closeFinally(inputStreamOpenInputStream, null);
                                } catch (Throwable th) {
                                    try {
                                        throw th;
                                    } catch (Throwable th2) {
                                        CloseableKt.closeFinally(fileOutputStream, th);
                                        throw th2;
                                    }
                                }
                            } catch (Throwable th3) {
                                try {
                                    throw th3;
                                } catch (Throwable th4) {
                                    CloseableKt.closeFinally(inputStreamOpenInputStream, th3);
                                    throw th4;
                                }
                            }
                        }
                        d3.invoke();
                    }
                }
            }
        }
    }

    public static final int b(E.a aVar) {
        int iB;
        int i3 = 0;
        for (E.a aVar2 : aVar.k()) {
            if (aVar2.j()) {
                Intrinsics.checkNotNull(aVar2);
                iB = b(aVar2);
            } else {
                iB = 1;
            }
            i3 += iB;
        }
        return i3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    public static final void c(AddGameActivity addGameActivity, String str, File file, File file2, D1.b bVar) {
        Throwable th;
        D1.b bVar2;
        AddGameActivity addGameActivity2;
        Handler handler = addGameActivity.f;
        ?? r7 = 4;
        File file3 = file2;
        try {
            try {
                if (!k(addGameActivity, bVar, file, OnlineCatalogImportSupportKt.buildImportedGameFromDirectory$default(str, file3, null, true, 4, null))) {
                    addGameActivity.r(bVar);
                } else {
                    handler.post(new RunnableC0060e(addGameActivity, 6));
                    addGameActivity.r(bVar);
                }
            } catch (Throwable th2) {
                th = th2;
                addGameActivity2 = addGameActivity;
                bVar2 = bVar;
                addGameActivity2.r(bVar2);
                throw th;
            }
        } catch (UnsupportedGameImportException e2) {
            try {
                Log.e("MinHub", "Folder import unsupported", e2);
                try {
                    if (e2.getReason() == UnsupportedImportReason.KIRI_NOT_EXTRACTED) {
                        handler.post(new G(addGameActivity, str, file, bVar, 0));
                        addGameActivity.r(bVar);
                        return;
                    } else {
                        if (bVar.a()) {
                            FilesKt.deleteRecursively(file);
                        }
                        handler.post(new RunnableC0078k(1, addGameActivity, e2));
                        addGameActivity.r(bVar);
                        return;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    th = th;
                    addGameActivity2 = file3;
                    bVar2 = r7;
                    addGameActivity2.r(bVar2);
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                file3 = addGameActivity;
                r7 = bVar;
            }
            th = th;
            addGameActivity2 = file3;
            bVar2 = r7;
            addGameActivity2.r(bVar2);
            throw th;
        } catch (Exception e3) {
            Log.e("MinHub", "Folder import failed while building/committing game", e3);
            if (bVar.a()) {
                FilesKt.deleteRecursively(file);
            }
            handler.post(new B(addGameActivity, d(addGameActivity, e3), 2));
            addGameActivity.r(bVar);
        }
    }

    public static final String d(AddGameActivity addGameActivity, Throwable error) {
        Intrinsics.checkNotNullParameter(addGameActivity, "<this>");
        Intrinsics.checkNotNullParameter(error, "error");
        if (error instanceof C0070h0) {
            String string = addGameActivity.getString(R.string.folder_import_error_empty_folder);
            Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
            return string;
        }
        if (!(error instanceof UnsupportedGameImportException)) {
            return h(addGameActivity, error);
        }
        int i3 = M.f467a[((UnsupportedGameImportException) error).getReason().ordinal()];
        if (i3 == 1) {
            String string2 = addGameActivity.getString(R.string.folder_import_error_unsupported_godot);
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            return string2;
        }
        if (i3 != 2) {
            throw new NoWhenBranchMatchedException();
        }
        String string3 = addGameActivity.getString(R.string.folder_import_error_unsupported_kiri);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
        return string3;
    }

    public static final String e(long j2) {
        StringBuilder sb;
        String str;
        if (j2 < 1048576) {
            sb = new StringBuilder();
            sb.append(j2 / ((long) 1024));
            str = " KB";
        } else {
            sb = new StringBuilder();
            sb.append(j2 / ((long) 1048576));
            str = " MB";
        }
        sb.append(str);
        return sb.toString();
    }

    public static final String f(AddGameActivity addGameActivity, Uri uri) {
        Intrinsics.checkNotNullParameter(addGameActivity, "<this>");
        Intrinsics.checkNotNullParameter(uri, "uri");
        try {
            Cursor cursorQuery = addGameActivity.getContentResolver().query(uri, new String[]{"_size"}, null, null, null);
            if (cursorQuery != null) {
                try {
                    String strE = cursorQuery.moveToFirst() ? e(cursorQuery.getLong(0)) : "-- MB";
                    CloseableKt.closeFinally(cursorQuery, null);
                    if (strE != null) {
                        return strE;
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(cursorQuery, th);
                        throw th2;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return "-- MB";
    }

    public static final String g(AddGameActivity addGameActivity, Uri uri) {
        Intrinsics.checkNotNullParameter(addGameActivity, "<this>");
        Intrinsics.checkNotNullParameter(uri, "uri");
        try {
            Cursor cursorQuery = addGameActivity.getContentResolver().query(uri, new String[]{"_display_name"}, null, null, null);
            if (cursorQuery != null) {
                try {
                    String string = cursorQuery.moveToFirst() ? cursorQuery.getString(0) : "Unknown Game";
                    CloseableKt.closeFinally(cursorQuery, null);
                    if (string != null) {
                        return string;
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        CloseableKt.closeFinally(cursorQuery, th);
                        throw th2;
                    }
                }
            }
        } catch (Exception unused) {
        }
        return "Unknown Game";
    }

    /* JADX WARN: Code duplicated, block: B:32:0x0084  */
    public static String h(AddGameActivity addGameActivity, Throwable error) {
        Intrinsics.checkNotNullParameter(addGameActivity, "<this>");
        Intrinsics.checkNotNullParameter(error, "error");
        for (Throwable cause = error; cause != null; cause = cause.getCause()) {
            String message = cause.getMessage();
            if ((message != null && StringsKt__StringsKt.contains(message, (CharSequence) "No space left on device", true)) || ((cause instanceof ErrnoException) && ((ErrnoException) cause).errno == OsConstants.ENOSPC)) {
                String string = addGameActivity.getString(R.string.import_file_failed_space, e(RangesKt.coerceAtLeast(0L, 1L)));
                Intrinsics.checkNotNullExpressionValue(string, "getString(...)");
                return string;
            }
        }
        if (error instanceof UncreatableFolderException) {
            String string2 = addGameActivity.getString(R.string.import_file_failed_folder, ((UncreatableFolderException) error).getFolderName());
            Intrinsics.checkNotNullExpressionValue(string2, "getString(...)");
            return string2;
        }
        if (error instanceof ZipException) {
            String string3 = addGameActivity.getString(R.string.import_file_failed_corrupt);
            Intrinsics.checkNotNullExpressionValue(string3, "getString(...)");
            return string3;
        }
        String message2 = error.getMessage();
        if (message2 == null) {
            message2 = error.getClass().getSimpleName();
        } else {
            if (StringsKt.isBlank(message2)) {
                message2 = null;
            }
            if (message2 == null) {
                message2 = error.getClass().getSimpleName();
            }
        }
        String string4 = addGameActivity.getString(R.string.import_file_failed_generic, message2);
        Intrinsics.checkNotNullExpressionValue(string4, "getString(...)");
        return string4;
    }

    public static final void i(final AddGameActivity addGameActivity, String str, final File file, final D1.b bVar) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        if (addGameActivity.isFinishing() || addGameActivity.isDestroyed()) {
            j(atomicBoolean, bVar, addGameActivity, file);
            return;
        }
        addGameActivity.B(Q.b);
        View viewInflate = addGameActivity.getLayoutInflater().inflate(R.layout.dialog_kiri_install_offer, (ViewGroup) null);
        O0.b bVar2 = new O0.b(addGameActivity, 0);
        C0240b c0240b = (C0240b) bVar2.f4145c;
        c0240b.f4112t = viewInflate;
        c0240b.f4106n = new DialogInterface.OnCancelListener() { // from class: C1.y
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                O.j(atomicBoolean, bVar, addGameActivity, file);
            }
        };
        final DialogInterfaceC0245g dialog = bVar2.c();
        Intrinsics.checkNotNullExpressionValue(dialog, "create(...)");
        viewInflate.findViewById(R.id.btn_kiri_offer_install).setOnClickListener(new ViewOnClickListenerC0090o(atomicBoolean, addGameActivity, str, file, dialog, bVar));
        viewInflate.findViewById(R.id.btn_kiri_offer_cancel).setOnClickListener(new ViewOnClickListenerC0122z(dialog, 0));
        dialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: C1.A
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                AddGameActivity addGameActivity2 = addGameActivity;
                addGameActivity2.C(dialog);
                O.j(atomicBoolean, bVar, addGameActivity2, file);
            }
        });
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        List importDialogs = addGameActivity.f3742h;
        Intrinsics.checkNotNullExpressionValue(importDialogs, "importDialogs");
        importDialogs.add(dialog);
        dialog.show();
    }

    public static final void j(AtomicBoolean atomicBoolean, D1.b bVar, AddGameActivity addGameActivity, File file) {
        if (atomicBoolean.compareAndSet(false, true)) {
            bVar.b();
            addGameActivity.r(bVar);
            new Thread(new F(file, 0)).start();
        }
    }

    public static final boolean k(AddGameActivity addGameActivity, D1.b operation, File destDir, Game importedGame) {
        Intrinsics.checkNotNullParameter(addGameActivity, "<this>");
        Intrinsics.checkNotNullParameter(operation, "operation");
        Intrinsics.checkNotNullParameter(destDir, "destDir");
        Intrinsics.checkNotNullParameter(importedGame, "importedGame");
        AtomicReference atomicReference = operation.f806a;
        D1.a aVar = D1.a.b;
        D1.a aVar2 = D1.a.f804d;
        while (!atomicReference.compareAndSet(aVar, aVar2)) {
            if (atomicReference.get() != aVar) {
                if (!operation.a()) {
                    return false;
                }
                FilesKt.deleteRecursively(destDir);
                return false;
            }
        }
        try {
            Context applicationContext = addGameActivity.getApplicationContext();
            Intrinsics.checkNotNullExpressionValue(applicationContext, "getApplicationContext(...)");
            OnlineCatalogImportSupportKt.commitImportedGame(applicationContext, importedGame);
            return true;
        } catch (Throwable th) {
            D1.a aVar3 = D1.a.f804d;
            D1.a aVar4 = D1.a.f803c;
            while (!atomicReference.compareAndSet(aVar3, aVar4) && atomicReference.get() == aVar3) {
            }
            FilesKt.deleteRecursively(destDir);
            throw th;
        }
    }

    public static final String l(String name) {
        Intrinsics.checkNotNullParameter(name, "name");
        return StringsKt.take(new Regex("[^a-zA-Z0-9_\\-]").replace(name, "_"), 50);
    }
}
