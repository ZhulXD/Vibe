.class public LM/c;
.super Landroidx/lifecycle/ViewModel;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final b:LM/b;


# instance fields
.field public final a:Lq/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LM/b;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LM/c;->b:LM/b;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lq/k;

    .line 5
    .line 6
    invoke-direct {v0}, Lq/k;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LM/c;->a:Lq/k;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final onCleared()V
    .locals 6

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, LM/c;->a:Lq/k;

    .line 5
    .line 6
    iget v1, v0, Lq/k;->d:I

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-gtz v1, :cond_1

    .line 10
    .line 11
    iget-object v3, v0, Lq/k;->c:[Ljava/lang/Object;

    .line 12
    .line 13
    move v4, v2

    .line 14
    :goto_0
    if-ge v4, v1, :cond_0

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    aput-object v5, v3, v4

    .line 18
    .line 19
    add-int/lit8 v4, v4, 0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iput v2, v0, Lq/k;->d:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, v0, Lq/k;->c:[Ljava/lang/Object;

    .line 26
    .line 27
    aget-object v0, v0, v2

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/lang/ClassCastException;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    .line 35
    .line 36
    .line 37
    throw v0
.end method
