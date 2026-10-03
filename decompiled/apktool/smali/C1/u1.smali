.class public final synthetic LC1/u1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:LD1/j;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;

.field public final synthetic f:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(LD1/j;ILjava/util/List;Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, LC1/u1;->b:LD1/j;

    .line 5
    .line 6
    iput p2, p0, LC1/u1;->c:I

    .line 7
    .line 8
    iput-object p3, p0, LC1/u1;->d:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, LC1/u1;->e:Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;

    .line 11
    .line 12
    iput-object p5, p0, LC1/u1;->f:Ljava/io/File;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Integer;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/Integer;

    .line 8
    .line 9
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    check-cast p3, Ljava/lang/String;

    .line 14
    .line 15
    sget v0, Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;->o:I

    .line 16
    .line 17
    const-string v0, "name"

    .line 18
    .line 19
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    const/4 p1, 0x0

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    mul-int/lit8 p1, p1, 0x3c

    .line 27
    .line 28
    div-int/2addr p1, p2

    .line 29
    :goto_0
    iget p2, p0, LC1/u1;->c:I

    .line 30
    .line 31
    mul-int/lit8 p2, p2, 0x3c

    .line 32
    .line 33
    iget-object v0, p0, LC1/u1;->d:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    div-int/2addr p2, v1

    .line 40
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    div-int/2addr p1, v0

    .line 45
    add-int/2addr p1, p2

    .line 46
    iget-object p2, p0, LC1/u1;->f:Ljava/io/File;

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p2

    .line 52
    filled-new-array {p2, p3}, [Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    iget-object p3, p0, LC1/u1;->e:Lcom/minhub/gamehub/hub/KiriKiriInstallActivity;

    .line 57
    .line 58
    const v0, 0x7f1201c4

    .line 59
    .line 60
    .line 61
    invoke-virtual {p3, v0, p2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    const-string p3, "getString(...)"

    .line 66
    .line 67
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p3, p0, LC1/u1;->b:LD1/j;

    .line 71
    .line 72
    invoke-virtual {p3, p1, p2}, LD1/j;->c(ILjava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 76
    .line 77
    return-object p1
.end method
