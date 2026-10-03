.class public final synthetic LC1/Y1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Z

.field public final synthetic d:LC1/b2;

.field public final synthetic e:LC1/c2;


# direct methods
.method public synthetic constructor <init>(ZLC1/b2;LC1/c2;I)V
    .locals 0

    .line 1
    iput p4, p0, LC1/Y1;->b:I

    .line 2
    .line 3
    iput-boolean p1, p0, LC1/Y1;->c:Z

    .line 4
    .line 5
    iput-object p2, p0, LC1/Y1;->d:LC1/b2;

    .line 6
    .line 7
    iput-object p3, p0, LC1/Y1;->e:LC1/c2;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget p1, p0, LC1/Y1;->b:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, LC1/Y1;->c:Z

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, LC1/Y1;->d:LC1/b2;

    .line 11
    .line 12
    iget-object p1, p1, LC1/b2;->e:LC1/F0;

    .line 13
    .line 14
    iget-object v0, p0, LC1/Y1;->e:LC1/c2;

    .line 15
    .line 16
    invoke-virtual {p1, v0}, LC1/F0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void

    .line 20
    :pswitch_0
    iget-boolean p1, p0, LC1/Y1;->c:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    iget-object p1, p0, LC1/Y1;->d:LC1/b2;

    .line 25
    .line 26
    iget-object p1, p1, LC1/b2;->d:LC1/F0;

    .line 27
    .line 28
    iget-object v0, p0, LC1/Y1;->e:LC1/c2;

    .line 29
    .line 30
    iget-object v0, v0, LC1/c2;->a:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, LC1/F0;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
