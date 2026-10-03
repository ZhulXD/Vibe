.class public final synthetic LT1/k;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    .line 1
    iput p2, p0, LT1/k;->b:I

    .line 2
    .line 3
    iput p1, p0, LT1/k;->c:I

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
    .locals 12

    .line 1
    iget v0, p0, LT1/k;->b:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    move-object v1, p1

    .line 7
    check-cast v1, Lx1/a;

    .line 8
    .line 9
    const-string p1, "it"

    .line 10
    .line 11
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    const/16 p1, 0x14

    .line 18
    .line 19
    const/16 v0, 0x8c

    .line 20
    .line 21
    iget v2, p0, LT1/k;->c:I

    .line 22
    .line 23
    invoke-static {v2, p1, v0}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    const/4 v10, 0x0

    .line 28
    const/16 v11, 0x79f

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x0

    .line 33
    const/4 v7, 0x0

    .line 34
    const/4 v8, 0x0

    .line 35
    const/4 v9, 0x0

    .line 36
    move v6, v5

    .line 37
    invoke-static/range {v1 .. v11}, Lx1/a;->a(Lx1/a;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZI)Lx1/a;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    return-object p1

    .line 42
    :pswitch_0
    move-object v0, p1

    .line 43
    check-cast v0, Lx1/a;

    .line 44
    .line 45
    const-string p1, "it"

    .line 46
    .line 47
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget p1, p0, LT1/k;->c:I

    .line 51
    .line 52
    int-to-float p1, p1

    .line 53
    const/high16 v1, 0x42c80000    # 100.0f

    .line 54
    .line 55
    div-float/2addr p1, v1

    .line 56
    const v1, 0x3dcccccd    # 0.1f

    .line 57
    .line 58
    .line 59
    const/high16 v2, 0x3f800000    # 1.0f

    .line 60
    .line 61
    invoke-static {p1, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    const/4 v9, 0x0

    .line 66
    const/16 v10, 0x5ff

    .line 67
    .line 68
    const/4 v1, 0x0

    .line 69
    const/4 v2, 0x0

    .line 70
    const/4 v3, 0x0

    .line 71
    const/4 v4, 0x0

    .line 72
    const/4 v5, 0x0

    .line 73
    const/4 v6, 0x0

    .line 74
    const/4 v7, 0x0

    .line 75
    invoke-static/range {v0 .. v10}, Lx1/a;->a(Lx1/a;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZI)Lx1/a;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    return-object p1

    .line 80
    :pswitch_1
    move-object v0, p1

    .line 81
    check-cast v0, Lx1/a;

    .line 82
    .line 83
    const-string p1, "it"

    .line 84
    .line 85
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget p1, p0, LT1/k;->c:I

    .line 89
    .line 90
    const/16 v1, 0x14

    .line 91
    .line 92
    const/16 v2, 0x8c

    .line 93
    .line 94
    invoke-static {p1, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 99
    .line 100
    .line 101
    invoke-static {p1, v1, v2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 102
    .line 103
    .line 104
    move-result v4

    .line 105
    const/4 v9, 0x0

    .line 106
    const/16 v10, 0x79f

    .line 107
    .line 108
    const/4 v1, 0x0

    .line 109
    const/4 v2, 0x0

    .line 110
    const/4 v3, 0x0

    .line 111
    const/4 v6, 0x0

    .line 112
    const/4 v7, 0x0

    .line 113
    const/4 v8, 0x0

    .line 114
    move v5, v4

    .line 115
    invoke-static/range {v0 .. v10}, Lx1/a;->a(Lx1/a;Ljava/lang/String;FFIILjava/lang/String;Ljava/lang/String;FZI)Lx1/a;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    return-object p1

    .line 120
    :pswitch_2
    iget v0, p0, LT1/k;->c:I

    .line 121
    .line 122
    check-cast p1, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 123
    .line 124
    invoke-static {v0, p1}, Lcom/minhub/gamehub/hub/catalog/CatalogDownloadQueue;->i(ILcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;)Lcom/minhub/gamehub/hub/catalog/CatalogDownloadJob;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    return-object p1

    .line 129
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    .line 130
    .line 131
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 132
    .line 133
    .line 134
    iget p1, p0, LT1/k;->c:I

    .line 135
    .line 136
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    return-object p1

    .line 141
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
