package p064y1;

import E.b;
import L1.a;
import M1.e;
import V1.InterfaceC0207x;
import android.content.Context;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.io.FilesKt__FileReadWriteKt;
import kotlin.jdk7.AutoCloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

/* JADX INFO: renamed from: y1.x1, reason: case insensitive filesystem */
/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final class C0426x1 extends SuspendLambda implements Function2 {
    public /* synthetic */ Object b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ EnumC0420v1 f6403c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ a f6404d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ String f6405e;
    public final /* synthetic */ Context f;
    public final /* synthetic */ Function1 g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0426x1(EnumC0420v1 enumC0420v1, a aVar, String str, Context context, Function1 function1, Continuation continuation) {
        super(2, continuation);
        this.f6403c = enumC0420v1;
        this.f6404d = aVar;
        this.f6405e = str;
        this.f = context;
        this.g = function1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        C0426x1 c0426x1 = new C0426x1(this.f6403c, this.f6404d, this.f6405e, this.f, this.g, continuation);
        c0426x1.b = obj;
        return c0426x1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((C0426x1) create((InterfaceC0207x) obj, (Continuation) obj2)).invokeSuspend(Unit.INSTANCE);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object objM9constructorimpl;
        String str;
        String str2;
        FileChannel fileChannel;
        Throwable th;
        Throwable th2;
        String strD;
        IntrinsicsKt.getCOROUTINE_SUSPENDED();
        ResultKt.throwOnFailure(obj);
        EnumC0420v1 enumC0420v1 = this.f6403c;
        a aVar = this.f6404d;
        String str3 = this.f6405e;
        Context context = this.f;
        Function1 function1 = this.g;
        try {
            Result.Companion companion = Result.INSTANCE;
            boolean z2 = enumC0420v1 == EnumC0420v1.GODOT && aVar != null;
            if (z2) {
                List list = W0.b;
                if (list == null || !list.isEmpty()) {
                    Iterator it = list.iterator();
                    do {
                        if (it.hasNext()) {
                        }
                    } while (!Intrinsics.areEqual((a) it.next(), aVar));
                    Intrinsics.checkNotNull(aVar);
                    if (!Intrinsics.areEqual(aVar.f1278c, str3)) {
                        throw new IllegalArgumentException("Failed requirement.");
                    }
                }
                throw new IllegalArgumentException("Failed requirement.");
            }
            if (z2) {
                Intrinsics.checkNotNull(aVar);
                str = aVar.f1280e;
            } else {
                str = null;
            }
            if (z2) {
                Intrinsics.checkNotNull(aVar);
                str2 = aVar.f;
            } else {
                str2 = null;
            }
            if (z2 && (str == null || StringsKt.isBlank(str) || str2 == null || StringsKt.isBlank(str2))) {
                throw new IOException("Missing hashes");
            }
            if (z2) {
                Intrinsics.checkNotNull(str);
                if (new Regex("[0-9a-fA-F]{64}").matches(str)) {
                    Intrinsics.checkNotNull(str2);
                    if (new Regex("[0-9a-fA-F]{64}").matches(str2)) {
                    }
                }
                throw new IOException("Invalid catalog hashes");
            }
            C0429y1 c0429y1 = C0429y1.f6409a;
            File parentFile = C0429y1.o(aVar, context, enumC0420v1).getParentFile();
            if (parentFile == null) {
                throw new IOException("Missing plugin parent");
            }
            if (!parentFile.exists()) {
                parentFile.mkdirs();
            }
            boolean z3 = z2;
            String str4 = str2;
            FileChannel channel = new FileOutputStream(new File(context.getFilesDir(), b.n("engine-plugins/.", C0429y1.l(enumC0420v1, aVar), "-", str == null ? "legacy" : str, ".lock")), true).getChannel();
            try {
                FileLock fileLockLock = channel.lock();
                try {
                    C0429y1.a(aVar, context, enumC0420v1);
                    String string = UUID.randomUUID().toString();
                    Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                    File cacheDir = context.getCacheDir();
                    String strL = C0429y1.l(enumC0420v1, aVar);
                    StringBuilder sb = new StringBuilder();
                    try {
                        sb.append("plugin-");
                        sb.append(strL);
                        sb.append("-");
                        sb.append(string);
                        sb.append(".zip");
                        File file = new File(cacheDir, sb.toString());
                        File file2 = new File(parentFile, "." + C0429y1.l(enumC0420v1, aVar) + "." + string + ".staging");
                        try {
                            C0429y1.b(str3, file, function1);
                            if (z3) {
                                String strA = AbstractC0432z1.a(file);
                                Intrinsics.checkNotNull(str);
                                String lowerCase = str.toLowerCase(Locale.ROOT);
                                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                                if (!Intrinsics.areEqual(strA, lowerCase)) {
                                    throw new IOException("Downloaded archive hash mismatch");
                                }
                            }
                            file2.mkdirs();
                            C0429y1.c(file, file2);
                            C0429y1.g(enumC0420v1, file2);
                            if (z3) {
                                if (z3) {
                                    strD = e.c(file2);
                                } else {
                                    String strA2 = enumC0420v1.a();
                                    if (strA2 == null) {
                                        throw new IOException("Unsupported ABI");
                                    }
                                    List listB = enumC0420v1.b();
                                    ArrayList arrayList = new ArrayList(CollectionsKt__IterablesKt.collectionSizeOrDefault(listB, 10));
                                    Iterator it2 = listB.iterator();
                                    while (it2.hasNext()) {
                                        arrayList.add(strA2 + "/" + ((String) it2.next()));
                                    }
                                    strD = e.d(file2, CollectionsKt___CollectionsKt.plus((Collection) arrayList, (Iterable) (enumC0420v1 == EnumC0420v1.RENPY7 ? CollectionsKt.listOf("private.mp3") : CollectionsKt.emptyList())));
                                }
                                Intrinsics.checkNotNull(str4);
                                String lowerCase2 = str4.toLowerCase(Locale.ROOT);
                                Intrinsics.checkNotNullExpressionValue(lowerCase2, "toLowerCase(...)");
                                if (!Intrinsics.areEqual(strD, lowerCase2)) {
                                    throw new IOException("Extracted installed-tree hash mismatch");
                                }
                            }
                            C0429y1 c0429y2 = C0429y1.f6409a;
                            C0429y1.h(file2, enumC0420v1, aVar);
                            C0429y1.d(file2, C0429y1.o(aVar, context, enumC0420v1));
                            C0429y1.p(aVar, context, enumC0420v1);
                            if (z3) {
                                Intrinsics.checkNotNull(aVar);
                                C0429y1.e(aVar, context, enumC0420v1);
                            } else if (z3) {
                                Intrinsics.checkNotNull(null);
                                Intrinsics.checkNotNull(null);
                                C0429y1.f(aVar, context, enumC0420v1);
                            } else {
                                File fileO = C0429y1.o(aVar, context, enumC0420v1);
                                if (!fileO.exists()) {
                                    fileO.mkdirs();
                                }
                                FilesKt__FileReadWriteKt.writeText$default(new File(C0429y1.o(aVar, context, enumC0420v1), ".install-trust"), "UNVERIFIED_LEGACY\n", null, 2, null);
                            }
                            if (file2.exists()) {
                                try {
                                    FilesKt.deleteRecursively(file2);
                                } catch (Throwable th3) {
                                    th2 = th3;
                                    fileChannel = channel;
                                    try {
                                        throw th2;
                                    } catch (Throwable th4) {
                                        try {
                                            AutoCloseableKt.closeFinally(fileLockLock, th2);
                                            throw th4;
                                        } catch (Throwable th5) {
                                            th = th5;
                                            th = th;
                                            try {
                                                throw th;
                                            } catch (Throwable th6) {
                                                CloseableKt.closeFinally(fileChannel, th);
                                                throw th6;
                                            }
                                        }
                                    }
                                }
                            }
                            if (file.exists()) {
                                file.delete();
                            }
                            Unit unit = Unit.INSTANCE;
                            try {
                                AutoCloseableKt.closeFinally(fileLockLock, null);
                                CloseableKt.closeFinally(channel, null);
                                objM9constructorimpl = Result.m9constructorimpl(Unit.INSTANCE);
                            } catch (Throwable th7) {
                                th = th7;
                                fileChannel = channel;
                                th = th;
                                throw th;
                            }
                        } catch (Throwable th8) {
                            fileChannel = channel;
                            try {
                                if (file2.exists()) {
                                    FilesKt.deleteRecursively(file2);
                                }
                                if (file.exists()) {
                                    file.delete();
                                }
                                throw th8;
                            } catch (Throwable th9) {
                                th = th9;
                                th2 = th;
                                throw th2;
                            }
                        }
                    } catch (Throwable th10) {
                        th = th10;
                        fileChannel = channel;
                    }
                } catch (Throwable th11) {
                    th = th11;
                    fileChannel = channel;
                }
            } catch (Throwable th12) {
                th = th12;
                fileChannel = channel;
            }
        } catch (Throwable th13) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th13));
        }
        Throwable thM12exceptionOrNullimpl = Result.m12exceptionOrNullimpl(objM9constructorimpl);
        if (thM12exceptionOrNullimpl != null) {
            C0429y1 c0429y3 = C0429y1.f6409a;
            Log.e("NativePluginManager", "downloadAndInstall " + C0429y1.l(enumC0420v1, aVar) + " failed from " + str3, thM12exceptionOrNullimpl);
        }
        return Result.m8boximpl(objM9constructorimpl);
    }
}
