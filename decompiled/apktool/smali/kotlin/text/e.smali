.class public final synthetic Lkotlin/text/e;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/CharSequence;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/text/e;->b:I

    .line 2
    .line 3
    iput-object p2, p0, Lkotlin/text/e;->c:Ljava/lang/CharSequence;

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
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/text/e;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lkotlin/text/e;->c:Ljava/lang/CharSequence;

    .line 7
    .line 8
    check-cast p1, Lkotlin/ranges/IntRange;

    .line 9
    .line 10
    invoke-static {v0, p1}, Lkotlin/text/StringsKt__StringsKt;->e(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :pswitch_0
    iget-object v0, p0, Lkotlin/text/e;->c:Ljava/lang/CharSequence;

    .line 16
    .line 17
    check-cast p1, Lkotlin/ranges/IntRange;

    .line 18
    .line 19
    invoke-static {v0, p1}, Lkotlin/text/StringsKt__StringsKt;->g(Ljava/lang/CharSequence;Lkotlin/ranges/IntRange;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    nop

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
