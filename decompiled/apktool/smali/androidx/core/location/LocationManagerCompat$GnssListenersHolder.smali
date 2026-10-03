.class Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/location/LocationManagerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GnssListenersHolder"
.end annotation


# static fields
.field static final sGnssMeasurementListeners:Lq/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq/j;"
        }
    .end annotation
.end field

.field static final sGnssStatusListeners:Lq/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq/j;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq/j;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lq/j;-><init>(I)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssStatusListeners:Lq/j;

    .line 8
    .line 9
    new-instance v0, Lq/j;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lq/j;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Landroidx/core/location/LocationManagerCompat$GnssListenersHolder;->sGnssMeasurementListeners:Lq/j;

    .line 15
    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
