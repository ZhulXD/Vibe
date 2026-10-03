package com.minhub.gamehub.data;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.SetsKt___SetsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u000bB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\"\u0010\u0006\u001a\u00020\u00072\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00050\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00050\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0086T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/minhub/gamehub/data/RenpySaveIsolationProbe;", "", "<init>", "()V", "PERSISTENT", "", "compare", "Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;", "ownFileNames", "", "sharedFileNames", "Report", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nRenpySaveIsolationProbe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RenpySaveIsolationProbe.kt\ncom/minhub/gamehub/data/RenpySaveIsolationProbe\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,61:1\n774#2:62\n865#2,2:63\n774#2:65\n865#2,2:66\n*S KotlinDebug\n*F\n+ 1 RenpySaveIsolationProbe.kt\ncom/minhub/gamehub/data/RenpySaveIsolationProbe\n*L\n49#1:62\n49#1:63,2\n50#1:65\n50#1:66,2\n*E\n"})
public final class RenpySaveIsolationProbe {
    public static final RenpySaveIsolationProbe INSTANCE = new RenpySaveIsolationProbe();
    public static final String PERSISTENT = "persistent";

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\b\u0018\u00002\u00020\u0001B/\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0006\u0010\u0013\u001a\u00020\u0014J\t\u0010\u0015\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0016\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0017\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0018\u001a\u00020\u0003HÆ\u0003J\t\u0010\u0019\u001a\u00020\bHÆ\u0003J;\u0010\u001a\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\bHÆ\u0001J\u0013\u0010\u001b\u001a\u00020\b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001d\u001a\u00020\u0003HÖ\u0001J\t\u0010\u001e\u001a\u00020\u0014HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000f\u0010\fR\u0011\u0010\u0007\u001a\u00020\b¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u0011\u0010\u0012\u001a\u00020\b8F¢\u0006\u0006\u001a\u0004\b\u0012\u0010\u0011¨\u0006\u001f"}, d2 = {"Lcom/minhub/gamehub/data/RenpySaveIsolationProbe$Report;", "", "ownSlots", "", "sharedSlots", "contestedSlots", "foreignSlots", "sharesPersistent", "", "<init>", "(IIIIZ)V", "getOwnSlots", "()I", "getSharedSlots", "getContestedSlots", "getForeignSlots", "getSharesPersistent", "()Z", "isMixed", "summary", "", "component1", "component2", "component3", "component4", "component5", "copy", "equals", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Report {
        private final int contestedSlots;
        private final int foreignSlots;
        private final int ownSlots;
        private final int sharedSlots;
        private final boolean sharesPersistent;

        public Report(int i3, int i4, int i5, int i6, boolean z2) {
            this.ownSlots = i3;
            this.sharedSlots = i4;
            this.contestedSlots = i5;
            this.foreignSlots = i6;
            this.sharesPersistent = z2;
        }

        public static /* synthetic */ Report copy$default(Report report, int i3, int i4, int i5, int i6, boolean z2, int i7, Object obj) {
            if ((i7 & 1) != 0) {
                i3 = report.ownSlots;
            }
            if ((i7 & 2) != 0) {
                i4 = report.sharedSlots;
            }
            if ((i7 & 4) != 0) {
                i5 = report.contestedSlots;
            }
            if ((i7 & 8) != 0) {
                i6 = report.foreignSlots;
            }
            if ((i7 & 16) != 0) {
                z2 = report.sharesPersistent;
            }
            boolean z3 = z2;
            int i8 = i5;
            return report.copy(i3, i4, i8, i6, z3);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final int getOwnSlots() {
            return this.ownSlots;
        }

        /* JADX INFO: renamed from: component2, reason: from getter */
        public final int getSharedSlots() {
            return this.sharedSlots;
        }

        /* JADX INFO: renamed from: component3, reason: from getter */
        public final int getContestedSlots() {
            return this.contestedSlots;
        }

        /* JADX INFO: renamed from: component4, reason: from getter */
        public final int getForeignSlots() {
            return this.foreignSlots;
        }

        /* JADX INFO: renamed from: component5, reason: from getter */
        public final boolean getSharesPersistent() {
            return this.sharesPersistent;
        }

        public final Report copy(int ownSlots, int sharedSlots, int contestedSlots, int foreignSlots, boolean sharesPersistent) {
            return new Report(ownSlots, sharedSlots, contestedSlots, foreignSlots, sharesPersistent);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof Report)) {
                return false;
            }
            Report report = (Report) other;
            return this.ownSlots == report.ownSlots && this.sharedSlots == report.sharedSlots && this.contestedSlots == report.contestedSlots && this.foreignSlots == report.foreignSlots && this.sharesPersistent == report.sharesPersistent;
        }

        public final int getContestedSlots() {
            return this.contestedSlots;
        }

        public final int getForeignSlots() {
            return this.foreignSlots;
        }

        public final int getOwnSlots() {
            return this.ownSlots;
        }

        public final int getSharedSlots() {
            return this.sharedSlots;
        }

        public final boolean getSharesPersistent() {
            return this.sharesPersistent;
        }

        public int hashCode() {
            return Boolean.hashCode(this.sharesPersistent) + E.b.a(this.foreignSlots, E.b.a(this.contestedSlots, E.b.a(this.sharedSlots, Integer.hashCode(this.ownSlots) * 31, 31), 31), 31);
        }

        public final boolean isMixed() {
            return this.foreignSlots > 0;
        }

        public final String summary() {
            int i3 = this.ownSlots;
            int i4 = this.sharedSlots;
            int i5 = this.contestedSlots;
            int i6 = this.foreignSlots;
            boolean z2 = this.sharesPersistent;
            boolean zIsMixed = isMixed();
            StringBuilder sbP = E.b.p("own=", i3, i4, " shared=", " contested=");
            sbP.append(i5);
            sbP.append(" foreign=");
            sbP.append(i6);
            sbP.append(" persistentShared=");
            sbP.append(z2);
            sbP.append(" mixed=");
            sbP.append(zIsMixed);
            return sbP.toString();
        }

        public String toString() {
            int i3 = this.ownSlots;
            int i4 = this.sharedSlots;
            int i5 = this.contestedSlots;
            int i6 = this.foreignSlots;
            boolean z2 = this.sharesPersistent;
            StringBuilder sbP = E.b.p("Report(ownSlots=", i3, i4, ", sharedSlots=", ", contestedSlots=");
            sbP.append(i5);
            sbP.append(", foreignSlots=");
            sbP.append(i6);
            sbP.append(", sharesPersistent=");
            sbP.append(z2);
            sbP.append(")");
            return sbP.toString();
        }
    }

    private RenpySaveIsolationProbe() {
    }

    public final Report compare(List<String> ownFileNames, List<String> sharedFileNames) {
        Intrinsics.checkNotNullParameter(ownFileNames, "ownFileNames");
        Intrinsics.checkNotNullParameter(sharedFileNames, "sharedFileNames");
        ArrayList arrayList = new ArrayList();
        for (Object obj : ownFileNames) {
            if (RenpySaveNaming.INSTANCE.isPlayableSave((String) obj)) {
                arrayList.add(obj);
            }
        }
        Set set = CollectionsKt.toSet(arrayList);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : sharedFileNames) {
            if (RenpySaveNaming.INSTANCE.isPlayableSave((String) obj2)) {
                arrayList2.add(obj2);
            }
        }
        Set set2 = CollectionsKt.toSet(arrayList2);
        return new Report(set.size(), set2.size(), CollectionsKt___CollectionsKt.intersect(set, set2).size(), SetsKt___SetsKt.minus(set2, (Iterable) set).size(), sharedFileNames.contains(PERSISTENT));
    }
}
