package com.minhub.gamehub.data;

import com.minhub.gamehub.game.KiriKiriGameActivity;
import java.io.File;
import java.io.FileFilter;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b implements FileFilter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f3664a;

    public /* synthetic */ b(int i3) {
        this.f3664a = i3;
    }

    @Override // java.io.FileFilter
    public final boolean accept(File file) {
        switch (this.f3664a) {
            case 0:
                return SaveRepository.scanKiriKiriSaves$lambda$12$lambda$10(file);
            case 1:
                return SaveRepository.scanRenpySaves$lambda$8(file);
            case 2:
                return SaveRepository.scanTyranoSaves$lambda$6(file);
            case 3:
                int i3 = KiriKiriGameActivity.f3720e;
                return file.isFile() && E.b.y(file, file, "xp3", true);
            case 4:
                int i4 = KiriKiriGameActivity.f3720e;
                return file.isFile() && E.b.y(file, file, "exe", true);
            default:
                if (file.isFile()) {
                    String name = file.getName();
                    Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
                    if (StringsKt__StringsJVMKt.endsWith$default(name, ".save", false, 2, null)) {
                        return true;
                    }
                }
                return false;
        }
    }
}
