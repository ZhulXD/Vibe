package com.minhub.gamehub.data;

import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b2\u0018\u00002\u00020\u0001:\u0002\u0004\u0005B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0002\u0006\u0007¨\u0006\b"}, d2 = {"Lcom/minhub/gamehub/data/StoredParse;", "", "<init>", "()V", "Valid", "Invalid", "Lcom/minhub/gamehub/data/StoredParse$Invalid;", "Lcom/minhub/gamehub/data/StoredParse$Valid;", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
abstract class StoredParse {

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/minhub/gamehub/data/StoredParse$Invalid;", "Lcom/minhub/gamehub/data/StoredParse;", "<init>", "()V", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final class Invalid extends StoredParse {
        public static final Invalid INSTANCE = new Invalid();

        private Invalid() {
            super(null);
        }
    }

    /* JADX INFO: compiled from: r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401 */
    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0013\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0003J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001J\t\u0010\u0011\u001a\u00020\u0012HÖ\u0001R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/minhub/gamehub/data/StoredParse$Valid;", "Lcom/minhub/gamehub/data/StoredParse;", "games", "", "Lcom/minhub/gamehub/data/Game;", "<init>", "(Ljava/util/List;)V", "getGames", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app_release"}, k = 1, mv = {2, 2, 0}, xi = 48)
    public static final /* data */ class Valid extends StoredParse {
        private final List<Game> games;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Valid(List<Game> games) {
            super(null);
            Intrinsics.checkNotNullParameter(games, "games");
            this.games = games;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ Valid copy$default(Valid valid, List list, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                list = valid.games;
            }
            return valid.copy(list);
        }

        public final List<Game> component1() {
            return this.games;
        }

        public final Valid copy(List<Game> games) {
            Intrinsics.checkNotNullParameter(games, "games");
            return new Valid(games);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof Valid) && Intrinsics.areEqual(this.games, ((Valid) other).games);
        }

        public final List<Game> getGames() {
            return this.games;
        }

        public int hashCode() {
            return this.games.hashCode();
        }

        public String toString() {
            return "Valid(games=" + this.games + ")";
        }
    }

    public /* synthetic */ StoredParse(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    private StoredParse() {
    }
}
