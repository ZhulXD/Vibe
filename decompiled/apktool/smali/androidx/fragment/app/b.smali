.class public final synthetic Landroidx/fragment/app/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/fragment/app/b;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/fragment/app/b;->c:Ljava/lang/Object;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Landroidx/fragment/app/b;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/fragment/app/b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v0, Landroidx/fragment/app/FragmentManager;

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/fragment/app/FragmentManager;->c(Landroidx/fragment/app/FragmentManager;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    iget-object v0, p0, Landroidx/fragment/app/b;->c:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 17
    .line 18
    invoke-static {v0}, Landroidx/fragment/app/Fragment;->a(Landroidx/fragment/app/Fragment;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_1
    iget-object v0, p0, Landroidx/fragment/app/b;->c:Ljava/lang/Object;

    .line 23
    .line 24
    check-cast v0, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect;

    .line 25
    .line 26
    invoke-static {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect$onStart$4$2;->b(Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :pswitch_2
    iget-object v0, p0, Landroidx/fragment/app/b;->c:Ljava/lang/Object;

    .line 31
    .line 32
    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 33
    .line 34
    invoke-static {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect;->d(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :pswitch_3
    iget-object v0, p0, Landroidx/fragment/app/b;->c:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-static {v0}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionEffect;->c(Ljava/util/ArrayList;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    nop

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
