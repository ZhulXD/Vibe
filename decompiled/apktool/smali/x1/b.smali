.class public final synthetic Lx1/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Lcom/minhub/gamehub/editor/ButtonEditorActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/editor/ButtonEditorActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lx1/b;->b:I

    .line 2
    .line 3
    iput-object p1, p0, Lx1/b;->c:Lcom/minhub/gamehub/editor/ButtonEditorActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lx1/b;->b:I

    .line 2
    .line 3
    iget-object v1, p0, Lx1/b;->c:Lcom/minhub/gamehub/editor/ButtonEditorActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/util/List;

    .line 9
    .line 10
    sget v0, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->i:I

    .line 11
    .line 12
    const-string v0, "configs"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, v1, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->f:Ljava/util/List;

    .line 18
    .line 19
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    return-object p1

    .line 22
    :pswitch_0
    check-cast p1, Ljava/lang/String;

    .line 23
    .line 24
    iput-object p1, v1, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->g:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lcom/minhub/gamehub/editor/ButtonEditorActivity;->m(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 30
    .line 31
    return-object p1

    .line 32
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
