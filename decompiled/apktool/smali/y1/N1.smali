.class public final synthetic Ly1/N1;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/minhub/gamehub/game/SplashGameActivity;

.field public final synthetic b:Lcom/minhub/gamehub/data/Game;


# direct methods
.method public synthetic constructor <init>(Lcom/minhub/gamehub/game/SplashGameActivity;Lcom/minhub/gamehub/data/Game;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/N1;->a:Lcom/minhub/gamehub/game/SplashGameActivity;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/N1;->b:Lcom/minhub/gamehub/data/Game;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 7

    .line 1
    sget v0, Lcom/minhub/gamehub/game/SplashGameActivity;->h:I

    .line 2
    .line 3
    const-string v0, "anim"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast p1, Ljava/lang/Integer;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iget-object v2, p0, Ly1/N1;->a:Lcom/minhub/gamehub/game/SplashGameActivity;

    .line 24
    .line 25
    iget-object v1, v2, Lcom/minhub/gamehub/game/SplashGameActivity;->e:Lk/v;

    .line 26
    .line 27
    const-string v3, "b"

    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    move-object v1, v5

    .line 36
    :cond_0
    iget-object v1, v1, Lk/v;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Landroid/widget/ProgressBar;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 41
    .line 42
    .line 43
    iget-object v1, v2, Lcom/minhub/gamehub/game/SplashGameActivity;->e:Lk/v;

    .line 44
    .line 45
    if-nez v1, :cond_1

    .line 46
    .line 47
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    move-object v1, v5

    .line 51
    :cond_1
    iget-object v1, v1, Lk/v;->e:Ljava/lang/Object;

    .line 52
    .line 53
    check-cast v1, Landroid/widget/TextView;

    .line 54
    .line 55
    const v3, 0x7f120205

    .line 56
    .line 57
    .line 58
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v2, v3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    const/16 p1, 0x64

    .line 70
    .line 71
    if-ne v0, p1, :cond_8

    .line 72
    .line 73
    sget-object p1, Ly1/f0;->a:La2/e;

    .line 74
    .line 75
    iget-object v3, p0, Ly1/N1;->b:Lcom/minhub/gamehub/data/Game;

    .line 76
    .line 77
    invoke-virtual {v3}, Lcom/minhub/gamehub/data/Game;->getId()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    const-string v0, "context"

    .line 82
    .line 83
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const/4 v0, 0x3

    .line 87
    if-gez p1, :cond_2

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    sget-object v4, Ly1/f0;->a:La2/e;

    .line 95
    .line 96
    new-instance v6, LC1/N1;

    .line 97
    .line 98
    invoke-direct {v6, p1, v1, v5}, LC1/N1;-><init>(ILandroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 99
    .line 100
    .line 101
    invoke-static {v4, v5, v6, v0}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 102
    .line 103
    .line 104
    :goto_0
    invoke-static {v3}, Lcom/minhub/gamehub/data/GameKt;->getEngineEnum(Lcom/minhub/gamehub/data/Game;)Lcom/minhub/gamehub/data/GameEngine;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    sget-object v1, Ly1/O1;->a:[I

    .line 109
    .line 110
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 111
    .line 112
    .line 113
    move-result p1

    .line 114
    aget p1, v1, p1

    .line 115
    .line 116
    const/4 v1, 0x1

    .line 117
    if-eq p1, v1, :cond_7

    .line 118
    .line 119
    const/4 v1, 0x2

    .line 120
    if-eq p1, v1, :cond_6

    .line 121
    .line 122
    if-eq p1, v0, :cond_5

    .line 123
    .line 124
    const/4 v1, 0x4

    .line 125
    if-eq p1, v1, :cond_4

    .line 126
    .line 127
    const/4 v1, 0x5

    .line 128
    if-eq p1, v1, :cond_3

    .line 129
    .line 130
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    :goto_1
    move-object v4, p1

    .line 135
    goto :goto_3

    .line 136
    :cond_3
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    const-string v1, ":godot"

    .line 141
    .line 142
    :goto_2
    invoke-static {p1, v1}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    goto :goto_1

    .line 147
    :cond_4
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const-string v1, ":kirikiri"

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :cond_5
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    const-string v1, ":vxace"

    .line 159
    .line 160
    goto :goto_2

    .line 161
    :cond_6
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    const-string v1, ":renpy"

    .line 166
    .line 167
    goto :goto_2

    .line 168
    :cond_7
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    const-string v1, ":renpy7"

    .line 173
    .line 174
    goto :goto_2

    .line 175
    :goto_3
    invoke-static {v2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    new-instance v1, LC1/w0;

    .line 180
    .line 181
    const/4 v6, 0x7

    .line 182
    invoke-direct/range {v1 .. v6}, LC1/w0;-><init>(LS1/c;Lcom/minhub/gamehub/data/Game;Ljava/lang/Object;Lkotlin/coroutines/Continuation;I)V

    .line 183
    .line 184
    .line 185
    invoke-static {p1, v5, v1, v0}, LV1/A;->c(LV1/x;Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;I)LV1/p0;

    .line 186
    .line 187
    .line 188
    :cond_8
    return-void
.end method
