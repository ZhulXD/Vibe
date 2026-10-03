.class public final synthetic LC1/O1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LC1/O1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LC1/O1;->c:I

    iput-object p2, p0, LC1/O1;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(LC1/j0;I)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, LC1/O1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LC1/O1;->d:Ljava/lang/Object;

    iput p2, p0, LC1/O1;->c:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget v0, p0, LC1/O1;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, LC1/O1;->d:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 9
    .line 10
    iget v1, p0, LC1/O1;->c:I

    .line 11
    .line 12
    invoke-static {v1, v0, p1}, Lorg/godotengine/godot/utils/DialogUtils$Companion;->c(ILkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :pswitch_0
    iget-object p1, p0, LC1/O1;->d:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p1, LC1/j0;

    .line 19
    .line 20
    iget-object v0, p1, LC1/j0;->f:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v0, LB1/d;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget v1, p0, LC1/O1;->c:I

    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iget-object p1, p1, LC1/j0;->e:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Ljava/util/List;

    .line 35
    .line 36
    invoke-virtual {v0, v1, p1}, LB1/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void

    .line 40
    nop

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
