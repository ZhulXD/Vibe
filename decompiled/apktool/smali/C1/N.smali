.class public final LC1/N;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/widget/EditText;

.field public final synthetic d:Landroid/widget/Button;

.field public final synthetic e:LS1/c;


# direct methods
.method public constructor <init>(Landroid/widget/Button;Landroid/widget/EditText;Lcom/minhub/gamehub/hub/AddGameActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LC1/N;->b:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, LC1/N;->d:Landroid/widget/Button;

    iput-object p2, p0, LC1/N;->c:Landroid/widget/EditText;

    iput-object p3, p0, LC1/N;->e:LS1/c;

    return-void
.end method

.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/Button;Lcom/minhub/gamehub/game/GameActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LC1/N;->b:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LC1/N;->c:Landroid/widget/EditText;

    iput-object p2, p0, LC1/N;->d:Landroid/widget/Button;

    iput-object p3, p0, LC1/N;->e:LS1/c;

    return-void
.end method

.method private final a(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final b(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final c(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final d(IIILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 1
    iget p1, p0, LC1/N;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, LC1/N;->e:LS1/c;

    .line 7
    .line 8
    check-cast p1, Lcom/minhub/gamehub/game/GameActivity;

    .line 9
    .line 10
    iget-object v0, p0, LC1/N;->c:Landroid/widget/EditText;

    .line 11
    .line 12
    iget-object v1, p0, LC1/N;->d:Landroid/widget/Button;

    .line 13
    .line 14
    invoke-static {v0, v1, p1}, Ly1/s;->c(Landroid/widget/EditText;Landroid/widget/Button;Lcom/minhub/gamehub/game/GameActivity;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    iget-object p1, p0, LC1/N;->e:LS1/c;

    .line 19
    .line 20
    check-cast p1, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 21
    .line 22
    iget-object v0, p0, LC1/N;->c:Landroid/widget/EditText;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "getText(...)"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_0

    .line 38
    .line 39
    iget-object p1, p1, Lcom/minhub/gamehub/hub/AddGameActivity;->n:Landroid/net/Uri;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    :goto_0
    iget-object v0, p0, LC1/N;->d:Landroid/widget/Button;

    .line 47
    .line 48
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    nop

    .line 53
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p1, p0, LC1/N;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget p1, p0, LC1/N;->b:I

    .line 2
    .line 3
    return-void
.end method
