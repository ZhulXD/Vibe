package com.minhub.gamehub.data;

import L1.d;
import android.util.Log;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.ListIterator;
import java.util.Locale;
import java.util.Set;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.SetsKt;
import kotlin.io.FilesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt___SequencesKt;
import kotlin.text.Charsets;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\"\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u0006J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0012\u001a\u00020\r2\u0006\u0010\u0013\u001a\u00020\u000fJ\u0010\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u0006H\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/minhub/gamehub/data/RenpyTagFixer;", "", "<init>", "()V", "BALANCED_TAGS", "", "", "TAG_REGEX", "Lkotlin/text/Regex;", "QUOTED_REGEX", "fixRpyContent", "content", "fixRpyFile", "", "file", "Ljava/io/File;", "FIXER_VERSION", "MARKER_NAME", "fixTlFolder", "gameRoot", "fixTagsInText", "text", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRenpyTagFixer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenpyTagFixer.kt\ncom/minhub/gamehub/data/RenpyTagFixer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,147:1\n1#2:148\n1321#3,2:149\n388#4,7:151\n*S KotlinDebug\n*F\n+ 1 RenpyTagFixer.kt\ncom/minhub/gamehub/data/RenpyTagFixer\n*L\n100#1:149,2\n119#1:151,7\n*E\n"})
public final class RenpyTagFixer {
    private static final String FIXER_VERSION = "1";
    private static final String MARKER_NAME = ".minhub_tlfix";
    public static final RenpyTagFixer INSTANCE = new RenpyTagFixer();
    private static final Set<String> BALANCED_TAGS = SetsKt.setOf((Object[]) new String[]{"i", "b", "u", "s", "plain", "color", "outlinecolor", "size", "font", "k", "a", "alt", "noalt", "art", "alpha", "cps", "shader", "rb", "rt", "vert", "horiz", "instance", "axis", "feature"});
    private static final Regex TAG_REGEX = new Regex("\\{(/?)([a-zA-Z][a-zA-Z0-9_]*)(?:=[^}]*)?\\}");
    private static final Regex QUOTED_REGEX = new Regex("\"((?:[^\"\\\\]|\\\\.)*)\"");

    private RenpyTagFixer() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence fixRpyContent$lambda$1(String line) {
        Intrinsics.checkNotNullParameter(line, "line");
        String string = StringsKt__StringsKt.trimStart((CharSequence) line).toString();
        return (StringsKt.N(string, "#") || StringsKt.N(string, "old ")) ? line : QUOTED_REGEX.replace(line, new d(18));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final CharSequence fixRpyContent$lambda$1$lambda$0(MatchResult mr) {
        Intrinsics.checkNotNullParameter(mr, "mr");
        RenpyTagFixer renpyTagFixer = INSTANCE;
        String str = mr.getGroupValues().get(1);
        Intrinsics.checkNotNullExpressionValue(str, "get(...)");
        return E.b.m("\"", renpyTagFixer.fixTagsInText(str), "\"");
    }

    private final String fixTagsInText(String text) {
        int iNextIndex;
        int last = 0;
        List<MatchResult> list = SequencesKt.toList(Regex.findAll$default(TAG_REGEX, text, 0, 2, null));
        if (!list.isEmpty()) {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            ArrayList arrayList = new ArrayList();
            int i3 = 0;
            for (MatchResult matchResult : list) {
                int i4 = i3 + 1;
                boolean zAreEqual = Intrinsics.areEqual(matchResult.getGroupValues().get(1), "/");
                String str = matchResult.getGroupValues().get(2);
                Intrinsics.checkNotNullExpressionValue(str, "get(...)");
                String lowerCase = str.toLowerCase(Locale.ROOT);
                Intrinsics.checkNotNullExpressionValue(lowerCase, "toLowerCase(...)");
                if (BALANCED_TAGS.contains(lowerCase)) {
                    if (zAreEqual) {
                        ListIterator listIterator = arrayList.listIterator(arrayList.size());
                        while (true) {
                            if (!listIterator.hasPrevious()) {
                                iNextIndex = -1;
                                break;
                            }
                            if (Intrinsics.areEqual(((Pair) listIterator.previous()).getFirst(), lowerCase)) {
                                iNextIndex = listIterator.nextIndex();
                                break;
                            }
                        }
                        if (iNextIndex == -1) {
                            linkedHashSet.add(Integer.valueOf(i3));
                        } else {
                            int size = arrayList.size();
                            for (int i5 = iNextIndex + 1; i5 < size; i5++) {
                                linkedHashSet.add(((Pair) arrayList.get(i5)).getSecond());
                            }
                            while (arrayList.size() > iNextIndex) {
                                arrayList.remove(arrayList.size() - 1);
                            }
                        }
                    } else {
                        arrayList.add(TuplesKt.to(lowerCase, Integer.valueOf(i3)));
                    }
                }
                i3 = i4;
            }
            int size2 = arrayList.size();
            int i6 = 0;
            while (i6 < size2) {
                Object obj = arrayList.get(i6);
                i6++;
                linkedHashSet.add(Integer.valueOf(((Number) ((Pair) obj).component2()).intValue()));
            }
            if (!linkedHashSet.isEmpty()) {
                StringBuilder sb = new StringBuilder();
                int i7 = 0;
                for (MatchResult matchResult2 : list) {
                    int i8 = i7 + 1;
                    if (linkedHashSet.contains(Integer.valueOf(i7))) {
                        sb.append((CharSequence) text, last, matchResult2.getRange().getFirst());
                        last = matchResult2.getRange().getLast() + 1;
                    }
                    i7 = i8;
                }
                sb.append((CharSequence) text, last, text.length());
                String string = sb.toString();
                Intrinsics.checkNotNullExpressionValue(string, "toString(...)");
                return string;
            }
        }
        return text;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Sequence fixTlFolder$lambda$4(File file) {
        return SequencesKt___SequencesKt.filter(FilesKt.walkTopDown(file), new d(19));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean fixTlFolder$lambda$4$lambda$3(File it) {
        Intrinsics.checkNotNullParameter(it, "it");
        return it.isFile() && StringsKt.equals(FilesKt.getExtension(it), "rpy", true);
    }

    public final String fixRpyContent(String content) {
        Intrinsics.checkNotNullParameter(content, "content");
        return CollectionsKt.o(StringsKt__StringsKt.split$default((CharSequence) content, new String[]{"\n"}, false, 0, 6, (Object) null), "\n", null, null, new d(20), 30);
    }

    public final void fixRpyFile(File file) {
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(file, "file");
        try {
            Result.Companion companion = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(FilesKt.readText(file, Charsets.UTF_8));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
        }
        if (Result.m15isFailureimpl(objM9constructorimpl)) {
            objM9constructorimpl = null;
        }
        String str = (String) objM9constructorimpl;
        if (str == null) {
            return;
        }
        String strFixRpyContent = fixRpyContent(str);
        if (Intrinsics.areEqual(strFixRpyContent, str)) {
            return;
        }
        FilesKt.writeText(file, strFixRpyContent, Charsets.UTF_8);
        new File(file.getParentFile(), kotlin.collections.unsigned.a.g(FilesKt.getNameWithoutExtension(file), ".rpyc")).delete();
        Log.d("MinHub-TagFix", "Fixed tags in " + file.getName());
    }

    public final void fixTlFolder(File gameRoot) {
        Object objM9constructorimpl;
        Intrinsics.checkNotNullParameter(gameRoot, "gameRoot");
        File file = new File(gameRoot, "tl");
        if (file.exists() && file.isDirectory()) {
            File file2 = new File(gameRoot, MARKER_NAME);
            if (file2.exists()) {
                try {
                    Result.Companion companion = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(StringsKt.trim((CharSequence) FilesKt.readText(file2, Charsets.UTF_8)).toString());
                } catch (Throwable th) {
                    Result.Companion companion2 = Result.INSTANCE;
                    objM9constructorimpl = Result.m9constructorimpl(ResultKt.createFailure(th));
                }
                Long lValueOf = null;
                if (Result.m15isFailureimpl(objM9constructorimpl)) {
                    objM9constructorimpl = null;
                }
                String str = (String) objM9constructorimpl;
                Iterator it = fixTlFolder$lambda$4(file).iterator();
                if (it.hasNext()) {
                    lValueOf = Long.valueOf(((File) it.next()).lastModified());
                    while (it.hasNext()) {
                        Long lValueOf2 = Long.valueOf(((File) it.next()).lastModified());
                        if (lValueOf.compareTo(lValueOf2) < 0) {
                            lValueOf = lValueOf2;
                        }
                    }
                }
                long jLongValue = lValueOf != null ? lValueOf.longValue() : 0L;
                if (Intrinsics.areEqual(str, FIXER_VERSION) && jLongValue <= file2.lastModified()) {
                    return;
                }
            }
            Iterator it2 = fixTlFolder$lambda$4(file).iterator();
            while (it2.hasNext()) {
                INSTANCE.fixRpyFile((File) it2.next());
            }
            try {
                Result.Companion companion3 = Result.INSTANCE;
                FilesKt.writeText(file2, FIXER_VERSION, Charsets.UTF_8);
                Result.m9constructorimpl(Unit.INSTANCE);
            } catch (Throwable th2) {
                Result.Companion companion4 = Result.INSTANCE;
                Result.m9constructorimpl(ResultKt.createFailure(th2));
            }
        }
    }
}
