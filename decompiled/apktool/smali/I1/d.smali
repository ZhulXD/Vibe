.class public final synthetic LI1/d;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, LI1/d;->b:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, LI1/d;->b:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/String;

    .line 9
    .line 10
    check-cast p2, Ljava/lang/Boolean;

    .line 11
    .line 12
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    .line 14
    .line 15
    move-result p2

    .line 16
    const-string v0, "keyCode"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object v0, Ly1/o2;->a:Ljava/util/Map;

    .line 22
    .line 23
    const-string v0, "webKey"

    .line 24
    .line 25
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    sget-object v0, Ly1/o2;->a:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Ljava/lang/Integer;

    .line 35
    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v3, 0x0

    .line 52
    if-ne v0, v2, :cond_3

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    const/16 v0, 0x61

    .line 59
    .line 60
    if-gt v0, p1, :cond_1

    .line 61
    .line 62
    const/16 v0, 0x7b

    .line 63
    .line 64
    if-ge p1, v0, :cond_1

    .line 65
    .line 66
    add-int/lit8 p1, p1, -0x44

    .line 67
    .line 68
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    const/16 v0, 0x41

    .line 74
    .line 75
    if-gt v0, p1, :cond_2

    .line 76
    .line 77
    const/16 v0, 0x5b

    .line 78
    .line 79
    if-ge p1, v0, :cond_2

    .line 80
    .line 81
    add-int/lit8 p1, p1, -0x24

    .line 82
    .line 83
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    goto :goto_0

    .line 88
    :cond_2
    const/16 v0, 0x30

    .line 89
    .line 90
    if-gt v0, p1, :cond_3

    .line 91
    .line 92
    const/16 v0, 0x3a

    .line 93
    .line 94
    if-ge p1, v0, :cond_3

    .line 95
    .line 96
    add-int/lit8 p1, p1, -0x29

    .line 97
    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    goto :goto_0

    .line 103
    :cond_3
    move-object p1, v3

    .line 104
    :goto_0
    if-eqz p1, :cond_5

    .line 105
    .line 106
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-eqz p2, :cond_4

    .line 111
    .line 112
    invoke-static {p1}, Lorg/libsdl/app/SDLActivity;->onNativeKeyDown(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_4
    invoke-static {p1}, Lorg/libsdl/app/SDLActivity;->onNativeKeyUp(I)V

    .line 117
    .line 118
    .line 119
    :cond_5
    :goto_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 120
    .line 121
    return-object p1

    .line 122
    :pswitch_0
    check-cast p1, Lkotlin/coroutines/CoroutineContext;

    .line 123
    .line 124
    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    .line 125
    .line 126
    invoke-static {p1, p2}, Lkotlin/coroutines/CoroutineContext$DefaultImpls;->a(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext$Element;)Lkotlin/coroutines/CoroutineContext;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    return-object p1

    .line 131
    :pswitch_1
    check-cast p1, Ljava/lang/String;

    .line 132
    .line 133
    check-cast p2, Lkotlin/coroutines/CoroutineContext$Element;

    .line 134
    .line 135
    invoke-static {p1, p2}, Lkotlin/coroutines/CombinedContext;->c(Ljava/lang/String;Lkotlin/coroutines/CoroutineContext$Element;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    return-object p1

    .line 140
    :pswitch_2
    check-cast p1, Ljava/io/File;

    .line 141
    .line 142
    check-cast p2, Ljava/io/File;

    .line 143
    .line 144
    const-string v0, "temporary"

    .line 145
    .line 146
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    const-string v0, "target"

    .line 150
    .line 151
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    invoke-static {p1}, Landroidx/core/view/accessibility/a;->k(Ljava/io/File;)Ljava/nio/file/Path;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-static {p2}, Landroidx/core/view/accessibility/a;->k(Ljava/io/File;)Ljava/nio/file/Path;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    const/4 v0, 0x2

    .line 163
    new-array v0, v0, [Ljava/nio/file/CopyOption;

    .line 164
    .line 165
    invoke-static {}, LA/a;->n()Ljava/nio/file/StandardCopyOption;

    .line 166
    .line 167
    .line 168
    move-result-object v3

    .line 169
    aput-object v3, v0, v1

    .line 170
    .line 171
    invoke-static {}, LA/a;->C()Ljava/nio/file/StandardCopyOption;

    .line 172
    .line 173
    .line 174
    move-result-object v1

    .line 175
    aput-object v1, v0, v2

    .line 176
    .line 177
    invoke-static {p1, p2, v0}, LA/a;->w(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)V

    .line 178
    .line 179
    .line 180
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 181
    .line 182
    return-object p1

    .line 183
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
