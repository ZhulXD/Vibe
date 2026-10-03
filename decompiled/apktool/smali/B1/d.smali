.class public final synthetic LB1/d;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Landroid/view/KeyEvent$Callback;


# direct methods
.method public synthetic constructor <init>(Landroid/view/KeyEvent$Callback;I)V
    .locals 0

    .line 1
    iput p2, p0, LB1/d;->b:I

    .line 2
    .line 3
    iput-object p1, p0, LB1/d;->c:Landroid/view/KeyEvent$Callback;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    iget v0, p0, LB1/d;->b:I

    .line 2
    .line 3
    iget-object v1, p0, LB1/d;->c:Landroid/view/KeyEvent$Callback;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;

    .line 9
    .line 10
    check-cast p1, Ljava/lang/Integer;

    .line 11
    .line 12
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    check-cast p2, Ljava/util/List;

    .line 17
    .line 18
    sget v0, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->i:I

    .line 19
    .line 20
    const-string v0, "urls"

    .line 21
    .line 22
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    sget v0, Lcom/minhub/gamehub/hub/ImageViewerActivity;->e:I

    .line 26
    .line 27
    iget-object v0, v1, Lcom/minhub/gamehub/hub/OnlineGameDetailActivity;->f:Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;

    .line 28
    .line 29
    if-nez v0, :cond_0

    .line 30
    .line 31
    const-string v0, "item"

    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    :cond_0
    invoke-virtual {v0}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogItem;->getTitle()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/16 v2, 0x10

    .line 42
    .line 43
    invoke-static {v1, p2, p1, v0, v2}, LY0/e;->o(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;I)V

    .line 44
    .line 45
    .line 46
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p1

    .line 49
    :pswitch_0
    check-cast v1, Lcom/minhub/gamehub/hub/AddGameActivity;

    .line 50
    .line 51
    check-cast p1, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    move-object v6, p2

    .line 58
    check-cast v6, Ljava/lang/String;

    .line 59
    .line 60
    sget p1, Lcom/minhub/gamehub/hub/AddGameActivity;->y:I

    .line 61
    .line 62
    iget-object p1, v1, Lcom/minhub/gamehub/hub/AddGameActivity;->i:Lkotlin/Lazy;

    .line 63
    .line 64
    invoke-interface {p1}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    move-object v2, p1

    .line 69
    check-cast v2, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogRepository;

    .line 70
    .line 71
    const/4 v7, 0x4

    .line 72
    const/4 v8, 0x0

    .line 73
    const/16 v4, 0xfa

    .line 74
    .line 75
    const/4 v5, 0x0

    .line 76
    invoke-static/range {v2 .. v8}, Lcom/minhub/gamehub/hub/catalog/OnlineCatalogRepository;->fetchPageConditional$default(Lcom/minhub/gamehub/hub/catalog/OnlineCatalogRepository;IIZLjava/lang/String;ILjava/lang/Object;)Lcom/minhub/gamehub/hub/catalog/CatalogFetchResult;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    return-object p1

    .line 81
    :pswitch_1
    check-cast v1, Lcom/minhub/gamehub/gamepad/GamepadOverlay;

    .line 82
    .line 83
    check-cast p1, Ljava/lang/Float;

    .line 84
    .line 85
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    check-cast p2, Ljava/lang/Float;

    .line 90
    .line 91
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 92
    .line 93
    .line 94
    move-result p2

    .line 95
    sget v0, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->h:I

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    mul-float v0, p1, p1

    .line 101
    .line 102
    mul-float v2, p2, p2

    .line 103
    .line 104
    add-float/2addr v2, v0

    .line 105
    float-to-double v2, v2

    .line 106
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    double-to-float v0, v2

    .line 111
    const v2, 0x3e4ccccd    # 0.2f

    .line 112
    .line 113
    .line 114
    cmpg-float v0, v0, v2

    .line 115
    .line 116
    if-gez v0, :cond_1

    .line 117
    .line 118
    sget-object p1, LB1/n;->b:LB1/n;

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    float-to-double v2, p2

    .line 122
    float-to-double p1, p1

    .line 123
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    .line 124
    .line 125
    .line 126
    move-result-wide p1

    .line 127
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    .line 128
    .line 129
    .line 130
    move-result-wide p1

    .line 131
    double-to-float p1, p1

    .line 132
    const/16 p2, 0x168

    .line 133
    .line 134
    int-to-float v0, p2

    .line 135
    add-float/2addr p1, v0

    .line 136
    float-to-double v2, p1

    .line 137
    const-wide v4, 0x4036800000000000L    # 22.5

    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    add-double/2addr v2, v4

    .line 143
    int-to-double p1, p2

    .line 144
    rem-double/2addr v2, p1

    .line 145
    const/16 p1, 0x2d

    .line 146
    .line 147
    int-to-double p1, p1

    .line 148
    div-double/2addr v2, p1

    .line 149
    double-to-int p1, v2

    .line 150
    packed-switch p1, :pswitch_data_1

    .line 151
    .line 152
    .line 153
    sget-object p1, LB1/n;->b:LB1/n;

    .line 154
    .line 155
    goto :goto_0

    .line 156
    :pswitch_2
    sget-object p1, LB1/n;->h:LB1/n;

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :pswitch_3
    sget-object p1, LB1/n;->c:LB1/n;

    .line 160
    .line 161
    goto :goto_0

    .line 162
    :pswitch_4
    sget-object p1, LB1/n;->g:LB1/n;

    .line 163
    .line 164
    goto :goto_0

    .line 165
    :pswitch_5
    sget-object p1, LB1/n;->e:LB1/n;

    .line 166
    .line 167
    goto :goto_0

    .line 168
    :pswitch_6
    sget-object p1, LB1/n;->i:LB1/n;

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :pswitch_7
    sget-object p1, LB1/n;->d:LB1/n;

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :pswitch_8
    sget-object p1, LB1/n;->j:LB1/n;

    .line 175
    .line 176
    goto :goto_0

    .line 177
    :pswitch_9
    sget-object p1, LB1/n;->f:LB1/n;

    .line 178
    .line 179
    :goto_0
    iget-object p2, v1, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->d:LB1/n;

    .line 180
    .line 181
    if-ne p1, p2, :cond_2

    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_2
    invoke-virtual {v1, p1}, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->c(LB1/n;)V

    .line 185
    .line 186
    .line 187
    iput-object p1, v1, Lcom/minhub/gamehub/gamepad/GamepadOverlay;->d:LB1/n;

    .line 188
    .line 189
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 190
    .line 191
    return-object p1

    .line 192
    :pswitch_a
    check-cast v1, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;

    .line 193
    .line 194
    check-cast p1, Ljava/lang/String;

    .line 195
    .line 196
    check-cast p2, Ljava/lang/Boolean;

    .line 197
    .line 198
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 199
    .line 200
    .line 201
    sget v0, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;->h:I

    .line 202
    .line 203
    const-string v0, "id"

    .line 204
    .line 205
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    invoke-virtual {v1}, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;->m()Ljava/util/LinkedHashMap;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v0}, Lcom/minhub/gamehub/gamepad/ButtonCatalogActivity;->n(Ljava/util/Map;)V

    .line 216
    .line 217
    .line 218
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 219
    .line 220
    return-object p1

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 222
    .line 223
    .line 224
    .line 225
    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    .line 231
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
