.class public final synthetic LA1/q0;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:LA1/v0;

.field public final synthetic c:J

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(LA1/v0;JZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LA1/q0;->b:LA1/v0;

    .line 5
    .line 6
    iput-wide p2, p0, LA1/q0;->c:J

    .line 7
    .line 8
    iput-boolean p4, p0, LA1/q0;->d:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, LA1/q0;->b:LA1/v0;

    .line 2
    .line 3
    iget-boolean v1, v0, LA1/v0;->r:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-wide v1, v0, LA1/v0;->t:J

    .line 8
    .line 9
    iget-wide v3, p0, LA1/q0;->c:J

    .line 10
    .line 11
    cmp-long v1, v3, v1

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    iget-boolean v1, p0, LA1/q0;->d:Z

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget-object v0, v0, LA1/v0;->j:LA1/m;

    .line 20
    .line 21
    :goto_0
    invoke-virtual {v0}, LA1/m;->invoke()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v0, v0, LA1/v0;->i:LA1/m;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    return-object v0
.end method
