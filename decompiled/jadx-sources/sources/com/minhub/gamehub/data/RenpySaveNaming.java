package com.minhub.gamehub.data;

import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001:\u0002\u0014\u0015B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\b\u001a\u0004\u0018\u00010\t2\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u0005J\u000e\u0010\r\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\tJ\u000e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020\tJ\u000e\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u000e\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0013\u001a\u00020\u0011X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0016"}, d2 = {"Lcom/minhub/gamehub/data/RenpySaveNaming;", "", "<init>", "()V", "SUFFIX", "", "PAGE_AUTO", "PAGE_QUICK", "parse", "Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;", "fileName", "isPlayableSave", "", "label", "slot", "badge", "sortKey", "", "QUICK_BASE", "AUTO_BASE", "Slot", "Kind", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final class RenpySaveNaming {
    private static final int AUTO_BASE = 2000000;
    public static final RenpySaveNaming INSTANCE = new RenpySaveNaming();
    private static final String PAGE_AUTO = "auto";
    private static final String PAGE_QUICK = "quick";
    private static final int QUICK_BASE = 1000000;
    private static final String SUFFIX = "-LT1.save";

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0006\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006¨\u0006\u0007"}, d2 = {"Lcom/minhub/gamehub/data/RenpySaveNaming$Kind;", "", "<init>", "(Ljava/lang/String;I)V", "NUMBERED", "AUTO", "QUICK", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public enum Kind {
        NUMBERED,
        AUTO,
        QUICK;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        public static EnumEntries<Kind> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B!\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0004\b\u0007\u0010\bJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0003HÆ\u0003¢\u0006\u0002\u0010\nJ\t\u0010\u0011\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0012\u001a\u00020\u0006HÆ\u0003J.\u0010\u0013\u001a\u00020\u00002\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u0006HÆ\u0001¢\u0006\u0002\u0010\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÖ\u0001J\t\u0010\u0019\u001a\u00020\u001aHÖ\u0001R\u0015\u0010\u0002\u001a\u0004\u0018\u00010\u0003¢\u0006\n\n\u0002\u0010\u000b\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u001b"}, d2 = {"Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;", "", "page", "", "slot", "kind", "Lcom/minhub/gamehub/data/RenpySaveNaming$Kind;", "<init>", "(Ljava/lang/Integer;ILcom/minhub/gamehub/data/RenpySaveNaming$Kind;)V", "getPage", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "getSlot", "()I", "getKind", "()Lcom/minhub/gamehub/data/RenpySaveNaming$Kind;", "component1", "component2", "component3", "copy", "(Ljava/lang/Integer;ILcom/minhub/gamehub/data/RenpySaveNaming$Kind;)Lcom/minhub/gamehub/data/RenpySaveNaming$Slot;", "equals", "", "other", "hashCode", "toString", "", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Slot {
        private final Kind kind;
        private final Integer page;
        private final int slot;

        public Slot(Integer num, int i3, Kind kind) {
            Intrinsics.checkNotNullParameter(kind, "kind");
            this.page = num;
            this.slot = i3;
            this.kind = kind;
        }

        public static /* synthetic */ Slot copy$default(Slot slot, Integer num, int i3, Kind kind, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                num = slot.page;
            }
            if ((i4 & 2) != 0) {
                i3 = slot.slot;
            }
            if ((i4 & 4) != 0) {
                kind = slot.kind;
            }
            return slot.copy(num, i3, kind);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Integer getPage() {
            return this.page;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getSlot() {
            return this.slot;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final Kind getKind() {
            return this.kind;
        }

        public final Slot copy(Integer page, int slot, Kind kind) {
            Intrinsics.checkNotNullParameter(kind, "kind");
            return new Slot(page, slot, kind);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Slot)) {
                return false;
            }
            Slot slot = (Slot) other;
            return Intrinsics.areEqual(this.page, slot.page) && this.slot == slot.slot && this.kind == slot.kind;
        }

        public final Kind getKind() {
            return this.kind;
        }

        public final Integer getPage() {
            return this.page;
        }

        public final int getSlot() {
            return this.slot;
        }

        public int hashCode() {
            Integer num = this.page;
            return this.kind.hashCode() + E.b.a(this.slot, (num == null ? 0 : num.hashCode()) * 31, 31);
        }

        public String toString() {
            return "Slot(page=" + this.page + ", slot=" + this.slot + ", kind=" + this.kind + ")";
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Kind.values().length];
            try {
                iArr[Kind.AUTO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Kind.QUICK.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[Kind.NUMBERED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private RenpySaveNaming() {
    }

    public final String badge(Slot slot) {
        Intrinsics.checkNotNullParameter(slot, "slot");
        int i3 = WhenMappings.$EnumSwitchMapping$0[slot.getKind().ordinal()];
        if (i3 == 1) {
            return E.b.i(slot.getSlot(), "A");
        }
        if (i3 == 2) {
            return E.b.i(slot.getSlot(), "Q");
        }
        if (i3 != 3) {
            throw new NoWhenBranchMatchedException();
        }
        return slot.getPage() + "-" + slot.getSlot();
    }

    public final boolean isPlayableSave(String fileName) {
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        return parse(fileName) != null;
    }

    public final String label(Slot slot) {
        Intrinsics.checkNotNullParameter(slot, "slot");
        int i3 = WhenMappings.$EnumSwitchMapping$0[slot.getKind().ordinal()];
        if (i3 == 1) {
            return E.b.i(slot.getSlot(), "Auto ");
        }
        if (i3 == 2) {
            return E.b.i(slot.getSlot(), "Quick ");
        }
        if (i3 != 3) {
            throw new NoWhenBranchMatchedException();
        }
        return "Page " + slot.getPage() + " · Slot " + slot.getSlot();
    }

    public final Slot parse(String fileName) {
        int iIntValue;
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        if (StringsKt__StringsJVMKt.endsWith$default(fileName, SUFFIX, false, 2, null) && !StringsKt.N(fileName, "_")) {
            String strRemoveSuffix = StringsKt__StringsKt.removeSuffix(fileName, (CharSequence) SUFFIX);
            int iLastIndexOf$default = StringsKt__StringsKt.lastIndexOf$default((CharSequence) strRemoveSuffix, '-', 0, false, 6, (Object) null);
            if (iLastIndexOf$default > 0 && iLastIndexOf$default != strRemoveSuffix.length() - 1) {
                String strSubstring = strRemoveSuffix.substring(0, iLastIndexOf$default);
                Intrinsics.checkNotNullExpressionValue(strSubstring, "substring(...)");
                String strSubstring2 = strRemoveSuffix.substring(iLastIndexOf$default + 1);
                Intrinsics.checkNotNullExpressionValue(strSubstring2, "substring(...)");
                Integer intOrNull = StringsKt.toIntOrNull(strSubstring2);
                if (intOrNull != null && (iIntValue = intOrNull.intValue()) >= 1) {
                    if (Intrinsics.areEqual(strSubstring, PAGE_AUTO)) {
                        return new Slot(null, iIntValue, Kind.AUTO);
                    }
                    if (Intrinsics.areEqual(strSubstring, PAGE_QUICK)) {
                        return new Slot(null, iIntValue, Kind.QUICK);
                    }
                    Integer intOrNull2 = StringsKt.toIntOrNull(strSubstring);
                    if (intOrNull2 != null && intOrNull2.intValue() >= 1) {
                        return new Slot(intOrNull2, iIntValue, Kind.NUMBERED);
                    }
                }
            }
        }
        return null;
    }

    public final int sortKey(Slot slot) {
        int iIntValue;
        int slot2;
        Intrinsics.checkNotNullParameter(slot, "slot");
        int i3 = WhenMappings.$EnumSwitchMapping$0[slot.getKind().ordinal()];
        if (i3 == 1) {
            iIntValue = AUTO_BASE;
            slot2 = slot.getSlot();
        } else if (i3 == 2) {
            iIntValue = 1000000;
            slot2 = slot.getSlot();
        } else {
            if (i3 != 3) {
                throw new NoWhenBranchMatchedException();
            }
            Integer page = slot.getPage();
            iIntValue = (page != null ? page.intValue() : 0) * 100;
            slot2 = slot.getSlot();
        }
        return slot2 + iIntValue;
    }
}
