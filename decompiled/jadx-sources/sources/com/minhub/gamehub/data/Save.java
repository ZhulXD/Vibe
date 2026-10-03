package com.minhub.gamehub.data;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b6\b\u0086\b\u0018\u00002\u00020\u0001B\u0091\u0001\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\r\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u000f\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0010\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\u0011\u001a\u00020\u0012\u0012\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\t\u00103\u001a\u00020\u0003HÆ\u0003J\t\u00104\u001a\u00020\u0005HÆ\u0003J\t\u00105\u001a\u00020\u0005HÆ\u0003J\t\u00106\u001a\u00020\u0003HÆ\u0003J\t\u00107\u001a\u00020\u0003HÆ\u0003J\t\u00108\u001a\u00020\u0003HÆ\u0003J\t\u00109\u001a\u00020\u000bHÆ\u0003J\t\u0010:\u001a\u00020\u000bHÆ\u0003J\u000b\u0010;\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010<\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010=\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0010\u0010>\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0002\u0010&J\t\u0010?\u001a\u00020\u0012HÆ\u0003J\u000b\u0010@\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010A\u001a\u0004\u0018\u00010\u0003HÆ\u0003J°\u0001\u0010B\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u000b2\n\b\u0002\u0010\r\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000e\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u00122\n\b\u0002\u0010\u0013\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0003HÆ\u0001¢\u0006\u0002\u0010CJ\u0013\u0010D\u001a\u00020\u00122\b\u0010E\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010F\u001a\u00020\u0005HÖ\u0001J\t\u0010G\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0017\u0010\u0018R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001b\u0010\u001aR\u0011\u0010\u0007\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\u0018R\u0011\u0010\b\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001d\u0010\u0018R\u0011\u0010\t\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u0018R\u0011\u0010\n\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b\u001f\u0010 R\u0011\u0010\f\u001a\u00020\u000b¢\u0006\b\n\u0000\u001a\u0004\b!\u0010 R\u0013\u0010\r\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b\"\u0010\u0018R\u0013\u0010\u000e\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\u0018R\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b$\u0010\u0018R\u0015\u0010\u0010\u001a\u0004\u0018\u00010\u0005¢\u0006\n\n\u0002\u0010'\u001a\u0004\b%\u0010&R\u0011\u0010\u0011\u001a\u00020\u0012¢\u0006\b\n\u0000\u001a\u0004\b\u0011\u0010(R\u0013\u0010\u0013\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\u0018R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u0003¢\u0006\b\n\u0000\u001a\u0004\b*\u0010\u0018R\u0011\u0010+\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b,\u0010\u0018R\u0011\u0010-\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b.\u0010\u0018R\u0011\u0010/\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b0\u0010\u0018R\u0011\u00101\u001a\u00020\u00038F¢\u0006\u0006\u001a\u0004\b2\u0010\u0018¨\u0006H"}, d2 = {"Lcom/minhub/gamehub/data/Save;", "", "id", "", "slotNumber", "", "gameId", "fileName", "filePath", "engine", "lastModifiedMs", "", "fileSizeBytes", "chapterName", "playtime", "leaderName", "level", "isValid", "", "slotLabel", "slotBadge", "<init>", "(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;)V", "getId", "()Ljava/lang/String;", "getSlotNumber", "()I", "getGameId", "getFileName", "getFilePath", "getEngine", "getLastModifiedMs", "()J", "getFileSizeBytes", "getChapterName", "getPlaytime", "getLeaderName", "getLevel", "()Ljava/lang/Integer;", "Ljava/lang/Integer;", "()Z", "getSlotLabel", "getSlotBadge", "lastPlayedLabel", "getLastPlayedLabel", "sizeLabel", "getSizeLabel", "displaySlotLabel", "getDisplaySlotLabel", "displaySlotBadge", "getDisplaySlotBadge", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "component8", "component9", "component10", "component11", "component12", "component13", "component14", "component15", "copy", "(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;ZLjava/lang/String;Ljava/lang/String;)Lcom/minhub/gamehub/data/Save;", "equals", "other", "hashCode", "toString", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
public final /* data */ class Save {
    private final String chapterName;
    private final String engine;
    private final String fileName;
    private final String filePath;
    private final long fileSizeBytes;
    private final int gameId;
    private final String id;
    private final boolean isValid;
    private final long lastModifiedMs;
    private final String leaderName;
    private final Integer level;
    private final String playtime;
    private final String slotBadge;
    private final String slotLabel;
    private final int slotNumber;

    public Save(String id, int i3, int i4, String fileName, String filePath, String engine, long j2, long j3, String str, String str2, String str3, Integer num, boolean z2, String str4, String str5) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(engine, "engine");
        this.id = id;
        this.slotNumber = i3;
        this.gameId = i4;
        this.fileName = fileName;
        this.filePath = filePath;
        this.engine = engine;
        this.lastModifiedMs = j2;
        this.fileSizeBytes = j3;
        this.chapterName = str;
        this.playtime = str2;
        this.leaderName = str3;
        this.level = num;
        this.isValid = z2;
        this.slotLabel = str4;
        this.slotBadge = str5;
    }

    /* JADX INFO: renamed from: component1, reason: from getter */
    public final String getId() {
        return this.id;
    }

    /* JADX INFO: renamed from: component10, reason: from getter */
    public final String getPlaytime() {
        return this.playtime;
    }

    /* JADX INFO: renamed from: component11, reason: from getter */
    public final String getLeaderName() {
        return this.leaderName;
    }

    /* JADX INFO: renamed from: component12, reason: from getter */
    public final Integer getLevel() {
        return this.level;
    }

    /* JADX INFO: renamed from: component13, reason: from getter */
    public final boolean getIsValid() {
        return this.isValid;
    }

    /* JADX INFO: renamed from: component14, reason: from getter */
    public final String getSlotLabel() {
        return this.slotLabel;
    }

    /* JADX INFO: renamed from: component15, reason: from getter */
    public final String getSlotBadge() {
        return this.slotBadge;
    }

    /* JADX INFO: renamed from: component2, reason: from getter */
    public final int getSlotNumber() {
        return this.slotNumber;
    }

    /* JADX INFO: renamed from: component3, reason: from getter */
    public final int getGameId() {
        return this.gameId;
    }

    /* JADX INFO: renamed from: component4, reason: from getter */
    public final String getFileName() {
        return this.fileName;
    }

    /* JADX INFO: renamed from: component5, reason: from getter */
    public final String getFilePath() {
        return this.filePath;
    }

    /* JADX INFO: renamed from: component6, reason: from getter */
    public final String getEngine() {
        return this.engine;
    }

    /* JADX INFO: renamed from: component7, reason: from getter */
    public final long getLastModifiedMs() {
        return this.lastModifiedMs;
    }

    /* JADX INFO: renamed from: component8, reason: from getter */
    public final long getFileSizeBytes() {
        return this.fileSizeBytes;
    }

    /* JADX INFO: renamed from: component9, reason: from getter */
    public final String getChapterName() {
        return this.chapterName;
    }

    public final Save copy(String id, int slotNumber, int gameId, String fileName, String filePath, String engine, long lastModifiedMs, long fileSizeBytes, String chapterName, String playtime, String leaderName, Integer level, boolean isValid, String slotLabel, String slotBadge) {
        Intrinsics.checkNotNullParameter(id, "id");
        Intrinsics.checkNotNullParameter(fileName, "fileName");
        Intrinsics.checkNotNullParameter(filePath, "filePath");
        Intrinsics.checkNotNullParameter(engine, "engine");
        return new Save(id, slotNumber, gameId, fileName, filePath, engine, lastModifiedMs, fileSizeBytes, chapterName, playtime, leaderName, level, isValid, slotLabel, slotBadge);
    }

    public boolean equals(Object other) {
        if (this == other) {
            return true;
        }
        if (!(other instanceof Save)) {
            return false;
        }
        Save save = (Save) other;
        return Intrinsics.areEqual(this.id, save.id) && this.slotNumber == save.slotNumber && this.gameId == save.gameId && Intrinsics.areEqual(this.fileName, save.fileName) && Intrinsics.areEqual(this.filePath, save.filePath) && Intrinsics.areEqual(this.engine, save.engine) && this.lastModifiedMs == save.lastModifiedMs && this.fileSizeBytes == save.fileSizeBytes && Intrinsics.areEqual(this.chapterName, save.chapterName) && Intrinsics.areEqual(this.playtime, save.playtime) && Intrinsics.areEqual(this.leaderName, save.leaderName) && Intrinsics.areEqual(this.level, save.level) && this.isValid == save.isValid && Intrinsics.areEqual(this.slotLabel, save.slotLabel) && Intrinsics.areEqual(this.slotBadge, save.slotBadge);
    }

    public final String getChapterName() {
        return this.chapterName;
    }

    public final String getDisplaySlotBadge() {
        String str = this.slotBadge;
        if (str != null) {
            return str;
        }
        int i3 = this.slotNumber;
        return i3 == 999 ? "Q" : String.valueOf(i3);
    }

    public final String getDisplaySlotLabel() {
        String str = this.slotLabel;
        if (str != null) {
            return str;
        }
        int i3 = this.slotNumber;
        return (i3 == 0 || i3 == 999) ? "Quick Save" : E.b.i(i3, "Slot ");
    }

    public final String getEngine() {
        return this.engine;
    }

    public final String getFileName() {
        return this.fileName;
    }

    public final String getFilePath() {
        return this.filePath;
    }

    public final long getFileSizeBytes() {
        return this.fileSizeBytes;
    }

    public final int getGameId() {
        return this.gameId;
    }

    public final String getId() {
        return this.id;
    }

    public final long getLastModifiedMs() {
        return this.lastModifiedMs;
    }

    public final String getLastPlayedLabel() {
        long j2 = this.lastModifiedMs;
        return j2 > 0 ? SaveKt.formatSaveTime(j2) : "Unknown";
    }

    public final String getLeaderName() {
        return this.leaderName;
    }

    public final Integer getLevel() {
        return this.level;
    }

    public final String getPlaytime() {
        return this.playtime;
    }

    public final String getSizeLabel() {
        return SaveKt.formatFileSize(this.fileSizeBytes);
    }

    public final String getSlotBadge() {
        return this.slotBadge;
    }

    public final String getSlotLabel() {
        return this.slotLabel;
    }

    public final int getSlotNumber() {
        return this.slotNumber;
    }

    public int hashCode() {
        int iC = E.b.c(this.fileSizeBytes, E.b.c(this.lastModifiedMs, E.b.d(this.engine, E.b.d(this.filePath, E.b.d(this.fileName, E.b.a(this.gameId, E.b.a(this.slotNumber, this.id.hashCode() * 31, 31), 31), 31), 31), 31), 31), 31);
        String str = this.chapterName;
        int iHashCode = (iC + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.playtime;
        int iHashCode2 = (iHashCode + (str2 == null ? 0 : str2.hashCode())) * 31;
        String str3 = this.leaderName;
        int iHashCode3 = (iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31;
        Integer num = this.level;
        int iB = E.b.b((iHashCode3 + (num == null ? 0 : num.hashCode())) * 31, 31, this.isValid);
        String str4 = this.slotLabel;
        int iHashCode4 = (iB + (str4 == null ? 0 : str4.hashCode())) * 31;
        String str5 = this.slotBadge;
        return iHashCode4 + (str5 != null ? str5.hashCode() : 0);
    }

    public final boolean isValid() {
        return this.isValid;
    }

    public String toString() {
        String str = this.id;
        int i3 = this.slotNumber;
        int i4 = this.gameId;
        String str2 = this.fileName;
        String str3 = this.filePath;
        String str4 = this.engine;
        long j2 = this.lastModifiedMs;
        long j3 = this.fileSizeBytes;
        String str5 = this.chapterName;
        String str6 = this.playtime;
        String str7 = this.leaderName;
        Integer num = this.level;
        boolean z2 = this.isValid;
        String str8 = this.slotLabel;
        String str9 = this.slotBadge;
        StringBuilder sb = new StringBuilder("Save(id=");
        sb.append(str);
        sb.append(", slotNumber=");
        sb.append(i3);
        sb.append(", gameId=");
        sb.append(i4);
        sb.append(", fileName=");
        sb.append(str2);
        sb.append(", filePath=");
        kotlin.collections.unsigned.a.n(sb, str3, ", engine=", str4, ", lastModifiedMs=");
        sb.append(j2);
        sb.append(", fileSizeBytes=");
        sb.append(j3);
        sb.append(", chapterName=");
        kotlin.collections.unsigned.a.n(sb, str5, ", playtime=", str6, ", leaderName=");
        sb.append(str7);
        sb.append(", level=");
        sb.append(num);
        sb.append(", isValid=");
        sb.append(z2);
        sb.append(", slotLabel=");
        sb.append(str8);
        sb.append(", slotBadge=");
        return kotlin.collections.unsigned.a.i(sb, str9, ")");
    }

    public /* synthetic */ Save(String str, int i3, int i4, String str2, String str3, String str4, long j2, long j3, String str5, String str6, String str7, Integer num, boolean z2, String str8, String str9, int i5, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, i3, i4, str2, str3, str4, j2, j3, str5, str6, str7, num, (i5 & 4096) != 0 ? true : z2, (i5 & 8192) != 0 ? null : str8, (i5 & 16384) != 0 ? null : str9);
    }
}
