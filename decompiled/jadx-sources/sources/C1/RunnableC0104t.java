package C1;

import android.net.Uri;
import android.os.Handler;
import android.util.Log;
import androidx.core.os.EnvironmentCompat;
import com.minhub.gamehub.hub.AddGameActivity;
import com.minhub.gamehub.hub.catalog.OnlineCatalogImportSupportKt;
import com.minhub.gamehub.hub.catalog.RemoteZipImporter;
import com.minhub.gamehub.hub.catalog.RemoteZipImporterExtractKt;
import com.minhub.gamehub.hub.catalog.UnsupportedGameImportException;
import com.minhub.gamehub.hub.catalog.UnsupportedImportReason;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import kotlin.collections.CollectionsKt;
import kotlin.io.ByteStreamsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Ref;
import kotlin.ranges.RangesKt;

/* JADX INFO: renamed from: C1.t, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class RunnableC0104t implements Runnable {
    public final /* synthetic */ int b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ AddGameActivity f682c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ String f683d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ Uri f684e;
    public final /* synthetic */ D1.b f;

    public /* synthetic */ RunnableC0104t(AddGameActivity addGameActivity, String str, Uri uri, D1.b bVar, int i3) {
        this.b = i3;
        this.f682c = addGameActivity;
        this.f683d = str;
        this.f684e = uri;
        this.f = bVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z2;
        switch (this.b) {
            case 0:
                Uri uri = this.f684e;
                AddGameActivity addGameActivity = this.f682c;
                Exception illegalStateException = null;
                File externalFilesDir = addGameActivity.getExternalFilesDir(null);
                Handler handler = addGameActivity.f;
                if (externalFilesDir == null) {
                    externalFilesDir = addGameActivity.getFilesDir();
                }
                String str = this.f683d;
                File file = new File(externalFilesDir, "games/" + O.l(str) + "_" + System.currentTimeMillis());
                File file2 = new File(addGameActivity.getCacheDir(), "import_" + System.currentTimeMillis() + ".zip");
                long length = 0;
                try {
                    try {
                        InputStream inputStreamOpenInputStream = addGameActivity.getContentResolver().openInputStream(uri);
                        if (inputStreamOpenInputStream == null) {
                            throw new IllegalStateException("Cannot open archive stream");
                        }
                        try {
                            FileOutputStream fileOutputStream = new FileOutputStream(file2);
                            try {
                                ByteStreamsKt.copyTo(inputStreamOpenInputStream, fileOutputStream, 262144);
                                CloseableKt.closeFinally(fileOutputStream, null);
                                CloseableKt.closeFinally(inputStreamOpenInputStream, null);
                                length = file2.length();
                                handler.post(new RunnableC0060e(addGameActivity, 2));
                                file.mkdirs();
                                RemoteZipImporterExtractKt.extractZip(RemoteZipImporter.INSTANCE, file2, file, new C0069h(addGameActivity, 2));
                                file2.delete();
                                z2 = false;
                                D1.b bVar = this.f;
                                try {
                                    if (z2) {
                                        bVar.b();
                                        addGameActivity.r(bVar);
                                        if (illegalStateException == null) {
                                            illegalStateException = new IllegalStateException(EnvironmentCompat.MEDIA_UNKNOWN);
                                        }
                                        handler.post(new B(addGameActivity, O.h(addGameActivity, illegalStateException), 3));
                                        return;
                                    }
                                    try {
                                        if (O.k(addGameActivity, bVar, file, OnlineCatalogImportSupportKt.buildImportedGameFromDirectory(str, file, O.e(length), true))) {
                                            handler.post(new RunnableC0060e(addGameActivity, 8));
                                        }
                                        break;
                                    } catch (UnsupportedGameImportException e2) {
                                        if (e2.getReason() == UnsupportedImportReason.KIRI_NOT_EXTRACTED) {
                                            handler.post(new G(addGameActivity, str, file, bVar, 1));
                                        } else {
                                            if (bVar.a()) {
                                                FilesKt.deleteRecursively(file);
                                            }
                                            handler.post(new RunnableC0060e(addGameActivity, 9));
                                        }
                                    } catch (Exception e3) {
                                        Log.e("MinHub", "ZIP import failed while building/committing game", e3);
                                        if (bVar.a()) {
                                            FilesKt.deleteRecursively(file);
                                        }
                                        handler.post(new B(addGameActivity, O.h(addGameActivity, e3), 4));
                                    }
                                    return;
                                } finally {
                                    addGameActivity.r(bVar);
                                }
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
                    } catch (Exception e4) {
                        illegalStateException = e4;
                        Log.e("MinHub", "ZIP import failed", illegalStateException);
                        FilesKt.deleteRecursively(file);
                        file2.delete();
                        z2 = true;
                    }
                } catch (Throwable th5) {
                    file2.delete();
                    throw th5;
                }
                break;
            case 1:
                Uri uri2 = this.f684e;
                D1.b bVar2 = this.f;
                AddGameActivity addGameActivity2 = this.f682c;
                File externalFilesDir2 = addGameActivity2.getExternalFilesDir(null);
                Handler handler2 = addGameActivity2.f;
                if (externalFilesDir2 == null) {
                    externalFilesDir2 = addGameActivity2.getFilesDir();
                }
                String str2 = this.f683d;
                File file3 = new File(externalFilesDir2, "games/" + O.l(str2) + "_" + System.currentTimeMillis());
                try {
                    E.e eVarG = E.a.g(addGameActivity2, uri2);
                    file3.mkdirs();
                    int iCoerceAtLeast = RangesKt.coerceAtLeast(O.b(eVarG), 1);
                    Ref.IntRef intRef = new Ref.IntRef();
                    O.a(addGameActivity2, eVarG, file3, new D(intRef, addGameActivity2, iCoerceAtLeast, 0));
                    if (intRef.element == 0) {
                        throw new C0070h0("Picked folder is empty");
                    }
                    D1.p pVarB = D1.n.b(file3);
                    D1.l lVar = (D1.l) CollectionsKt.singleOrNull(pVarB.f851a);
                    if (lVar == null || lVar.f837d != D1.k.b) {
                        handler2.post(new E(addGameActivity2, str2, file3, pVarB, bVar2, 0));
                        return;
                    } else {
                        O.c(addGameActivity2, str2, file3, lVar.b, bVar2);
                        return;
                    }
                } catch (Exception e5) {
                    Log.e("MinHub", "Folder import failed", e5);
                    bVar2.b();
                    addGameActivity2.r(bVar2);
                    FilesKt.deleteRecursively(file3);
                    handler2.post(new B(addGameActivity2, O.d(addGameActivity2, e5), 1));
                    return;
                }
            default:
                Uri uri3 = this.f684e;
                D1.b bVar3 = this.f;
                AddGameActivity addGameActivity3 = this.f682c;
                File externalFilesDir3 = addGameActivity3.getExternalFilesDir(null);
                Handler handler3 = addGameActivity3.f;
                if (externalFilesDir3 == null) {
                    externalFilesDir3 = addGameActivity3.getFilesDir();
                }
                String str3 = this.f683d;
                File file4 = new File(externalFilesDir3, "games/" + O.l(str3) + "_" + System.currentTimeMillis());
                file4.mkdirs();
                try {
                    try {
                        File file5 = new File(file4, "game.apk");
                        InputStream inputStreamOpenInputStream2 = addGameActivity3.getContentResolver().openInputStream(uri3);
                        if (inputStreamOpenInputStream2 == null) {
                            throw new IllegalStateException("Cannot open APK stream");
                        }
                        try {
                            FileOutputStream fileOutputStream2 = new FileOutputStream(file5);
                            try {
                                ByteStreamsKt.copyTo$default(inputStreamOpenInputStream2, fileOutputStream2, 0, 2, null);
                                CloseableKt.closeFinally(fileOutputStream2, null);
                                CloseableKt.closeFinally(inputStreamOpenInputStream2, null);
                                handler3.post(new RunnableC0060e(addGameActivity3, 3));
                                if (O.k(addGameActivity3, bVar3, file4, OnlineCatalogImportSupportKt.buildImportedGameFromDirectory$default(str3, file4, O.f(addGameActivity3, uri3), false, 8, null))) {
                                    handler3.post(new RunnableC0060e(addGameActivity3, 4));
                                }
                                addGameActivity3.r(bVar3);
                                return;
                            } catch (Throwable th6) {
                                try {
                                    throw th6;
                                } catch (Throwable th7) {
                                    CloseableKt.closeFinally(fileOutputStream2, th6);
                                    throw th7;
                                }
                            }
                        } catch (Throwable th8) {
                            try {
                                throw th8;
                            } catch (Throwable th9) {
                                CloseableKt.closeFinally(inputStreamOpenInputStream2, th8);
                                throw th9;
                            }
                        }
                    } catch (Exception e6) {
                        Log.e("MinHub", "APK import failed", e6);
                        if (bVar3.a()) {
                            FilesKt.deleteRecursively(file4);
                        }
                        handler3.post(new B(addGameActivity3, O.h(addGameActivity3, e6), 0));
                    }
                } catch (Throwable th10) {
                    addGameActivity3.r(bVar3);
                    throw th10;
                }
                break;
        }
    }
}
