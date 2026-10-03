.class public final synthetic LF1/c;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/keyboard/KeyboardActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/keyboard/KeyboardActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, LF1/c;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LF1/c;->c:Lcom/minhub/gamehub/keyboard/KeyboardActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, LF1/c;->b:I

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, LF1/c;->c:Lcom/minhub/gamehub/keyboard/KeyboardActivity;

    .line 5
    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget p1, Lcom/minhub/gamehub/keyboard/KeyboardActivity;->f:I

    .line 10
    .line 11
    const p1, 0x7f120403

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :pswitch_0
    sget p1, Lcom/minhub/gamehub/keyboard/KeyboardActivity;->f:I

    .line 27
    .line 28
    const p1, 0x7f12040b

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-static {v1, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :pswitch_1
    sget p1, Lcom/minhub/gamehub/keyboard/KeyboardActivity;->f:I

    .line 44
    .line 45
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
