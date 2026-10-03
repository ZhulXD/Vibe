.class public final LY1/a;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public b:LX1/p;

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:LA1/d;

.field public e:I


# direct methods
.method public constructor <init>(LA1/d;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, LY1/a;->d:LA1/d;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iput-object p1, p0, LY1/a;->c:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, LY1/a;->e:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, LY1/a;->e:I

    .line 9
    .line 10
    iget-object p1, p0, LY1/a;->d:LA1/d;

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0, p0}, LA1/d;->h(LX1/p;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method
