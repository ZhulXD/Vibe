.class final Lorg/godotengine/godot/service/GodotService$IncomingHandler;
.super Landroid/os/Handler;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/service/GodotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IncomingHandler"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0011"
    }
    d2 = {
        "Lorg/godotengine/godot/service/GodotService$IncomingHandler;",
        "Landroid/os/Handler;",
        "serviceRef",
        "Ljava/lang/ref/WeakReference;",
        "Lorg/godotengine/godot/service/GodotService;",
        "<init>",
        "(Ljava/lang/ref/WeakReference;)V",
        "viewHost",
        "Landroid/view/SurfaceControlViewHost;",
        "getViewHost",
        "()Landroid/view/SurfaceControlViewHost;",
        "setViewHost",
        "(Landroid/view/SurfaceControlViewHost;)V",
        "handleMessage",
        "",
        "msg",
        "Landroid/os/Message;",
        "lib_templateRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final serviceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/godotengine/godot/service/GodotService;",
            ">;"
        }
    .end annotation
.end field

.field private viewHost:Landroid/view/SurfaceControlViewHost;


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/godotengine/godot/service/GodotService;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "serviceRef"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lorg/godotengine/godot/service/GodotService$IncomingHandler;->serviceRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getViewHost()Landroid/view/SurfaceControlViewHost;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/godotengine/godot/service/GodotService$IncomingHandler;->viewHost:Landroid/view/SurfaceControlViewHost;

    .line 2
    .line 3
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    const-string v0, "msg"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lorg/godotengine/godot/service/GodotService$IncomingHandler;->serviceRef:Ljava/lang/ref/WeakReference;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lorg/godotengine/godot/service/GodotService;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    goto/16 :goto_1

    .line 17
    .line 18
    :cond_0
    invoke-static {}, Lorg/godotengine/godot/service/GodotService;->access$getTAG$cp()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "HandleMessage: "

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 40
    .line 41
    if-nez v1, :cond_1

    .line 42
    .line 43
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    :try_start_0
    invoke-static {v0}, Lorg/godotengine/godot/service/GodotService;->access$getListener$p(Lorg/godotengine/godot/service/GodotService;)Lorg/godotengine/godot/service/GodotService$RemoteListener;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    new-instance v1, Lorg/godotengine/godot/service/GodotService$RemoteListener;

    .line 54
    .line 55
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 56
    .line 57
    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 58
    .line 59
    .line 60
    iget-object v3, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 61
    .line 62
    const-string v4, "replyTo"

    .line 63
    .line 64
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-direct {v1, v2, v3}, Lorg/godotengine/godot/service/GodotService$RemoteListener;-><init>(Ljava/lang/ref/WeakReference;Landroid/os/Messenger;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v1}, Lorg/godotengine/godot/service/GodotService;->access$setListener$p(Lorg/godotengine/godot/service/GodotService;Lorg/godotengine/godot/service/GodotService$RemoteListener;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :catch_0
    move-exception p1

    .line 75
    goto/16 :goto_2

    .line 76
    .line 77
    :cond_2
    invoke-virtual {v1}, Lorg/godotengine/godot/service/GodotService$RemoteListener;->getReplyTo()Landroid/os/Messenger;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v2, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 82
    .line 83
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-nez v1, :cond_3

    .line 88
    .line 89
    invoke-static {}, Lorg/godotengine/godot/service/GodotService;->access$getTAG$cp()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v1, "Engine is already bound to another client"

    .line 94
    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .line 97
    .line 98
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 99
    .line 100
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    const/16 v1, 0x64

    .line 105
    .line 106
    iput v1, v0, Landroid/os/Message;->what:I

    .line 107
    .line 108
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    const-string v2, "engineError"

    .line 113
    .line 114
    const-string v3, "ALREADY_BOUND"

    .line 115
    .line 116
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 120
    .line 121
    .line 122
    return-void

    .line 123
    :cond_3
    :goto_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 124
    .line 125
    if-eqz v1, :cond_e

    .line 126
    .line 127
    const/4 v2, 0x1

    .line 128
    if-eq v1, v2, :cond_d

    .line 129
    .line 130
    const/4 v2, 0x2

    .line 131
    if-eq v1, v2, :cond_c

    .line 132
    .line 133
    const/4 v3, 0x3

    .line 134
    if-eq v1, v3, :cond_b

    .line 135
    .line 136
    const/4 v3, 0x4

    .line 137
    if-eq v1, v3, :cond_4

    .line 138
    .line 139
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :cond_4
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 144
    .line 145
    const/16 v3, 0x1e

    .line 146
    .line 147
    const/4 v4, 0x0

    .line 148
    if-ge v1, v3, :cond_5

    .line 149
    .line 150
    invoke-static {}, Lorg/godotengine/godot/service/GodotService;->access$getTAG$cp()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    const-string v1, "SDK version is less than the minimum required (30)"

    .line 155
    .line 156
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .line 158
    .line 159
    invoke-static {v0}, Lorg/godotengine/godot/service/GodotService;->access$getListener$p(Lorg/godotengine/godot/service/GodotService;)Lorg/godotengine/godot/service/GodotService$RemoteListener;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    if-eqz p1, :cond_8

    .line 164
    .line 165
    sget-object v0, Lorg/godotengine/godot/service/GodotService$EngineError;->SCVH_CREATION_FAILED:Lorg/godotengine/godot/service/GodotService$EngineError;

    .line 166
    .line 167
    invoke-static {p1, v0, v4, v2, v4}, Lorg/godotengine/godot/service/GodotService$RemoteListener;->onEngineError$default(Lorg/godotengine/godot/service/GodotService$RemoteListener;Lorg/godotengine/godot/service/GodotService$EngineError;Landroid/os/Bundle;ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    return-void

    .line 171
    :cond_5
    iget-object v1, p0, Lorg/godotengine/godot/service/GodotService$IncomingHandler;->viewHost:Landroid/view/SurfaceControlViewHost;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .line 173
    const-string v3, "surfacePackage"

    .line 174
    .line 175
    const-string v5, "Attached Godot engine to SurfaceControlViewHost"

    .line 176
    .line 177
    if-eqz v1, :cond_6

    .line 178
    .line 179
    :try_start_1
    invoke-static {}, Lorg/godotengine/godot/service/GodotService;->access$getTAG$cp()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-static {p1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    .line 185
    .line 186
    invoke-static {v0}, Lorg/godotengine/godot/service/GodotService;->access$getListener$p(Lorg/godotengine/godot/service/GodotService;)Lorg/godotengine/godot/service/GodotService$RemoteListener;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    if-eqz p1, :cond_8

    .line 191
    .line 192
    sget-object v0, Lorg/godotengine/godot/service/GodotService$EngineStatus;->SCVH_CREATED:Lorg/godotengine/godot/service/GodotService$EngineStatus;

    .line 193
    .line 194
    invoke-static {v1}, Landroidx/core/view/o;->e(Landroid/view/SurfaceControlViewHost;)Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    filled-new-array {v1}, [Lkotlin/Pair;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    invoke-static {v1}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 207
    .line 208
    .line 209
    move-result-object v1

    .line 210
    invoke-virtual {p1, v0, v1}, Lorg/godotengine/godot/service/GodotService$RemoteListener;->onEngineStatusUpdate(Lorg/godotengine/godot/service/GodotService$EngineStatus;Landroid/os/Bundle;)V

    .line 211
    .line 212
    .line 213
    return-void

    .line 214
    :cond_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    invoke-virtual {p1}, Landroid/os/BaseBundle;->isEmpty()Z

    .line 219
    .line 220
    .line 221
    move-result v1

    .line 222
    if-eqz v1, :cond_7

    .line 223
    .line 224
    invoke-static {}, Lorg/godotengine/godot/service/GodotService;->access$getTAG$cp()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    const-string v1, "Invalid message data from binding client.. Aborting"

    .line 229
    .line 230
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    .line 232
    .line 233
    invoke-static {v0}, Lorg/godotengine/godot/service/GodotService;->access$getListener$p(Lorg/godotengine/godot/service/GodotService;)Lorg/godotengine/godot/service/GodotService$RemoteListener;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    if-eqz p1, :cond_8

    .line 238
    .line 239
    sget-object v0, Lorg/godotengine/godot/service/GodotService$EngineError;->SCVH_CREATION_FAILED:Lorg/godotengine/godot/service/GodotService$EngineError;

    .line 240
    .line 241
    invoke-static {p1, v0, v4, v2, v4}, Lorg/godotengine/godot/service/GodotService$RemoteListener;->onEngineError$default(Lorg/godotengine/godot/service/GodotService$RemoteListener;Lorg/godotengine/godot/service/GodotService$EngineError;Landroid/os/Bundle;ILjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    return-void

    .line 245
    :cond_7
    invoke-static {v0}, Lorg/godotengine/godot/service/GodotService;->access$getGodot(Lorg/godotengine/godot/service/GodotService;)Lorg/godotengine/godot/Godot;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {v1}, Lorg/godotengine/godot/Godot;->getContainerLayout$lib_templateRelease()Landroid/widget/FrameLayout;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    if-nez v1, :cond_9

    .line 254
    .line 255
    invoke-static {}, Lorg/godotengine/godot/service/GodotService;->access$getTAG$cp()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    const-string v1, "Invalid godot layout.. Aborting"

    .line 260
    .line 261
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .line 263
    .line 264
    invoke-static {v0}, Lorg/godotengine/godot/service/GodotService;->access$getListener$p(Lorg/godotengine/godot/service/GodotService;)Lorg/godotengine/godot/service/GodotService$RemoteListener;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    if-eqz p1, :cond_8

    .line 269
    .line 270
    sget-object v0, Lorg/godotengine/godot/service/GodotService$EngineError;->SCVH_CREATION_FAILED:Lorg/godotengine/godot/service/GodotService$EngineError;

    .line 271
    .line 272
    invoke-static {p1, v0, v4, v2, v4}, Lorg/godotengine/godot/service/GodotService$RemoteListener;->onEngineError$default(Lorg/godotengine/godot/service/GodotService$RemoteListener;Lorg/godotengine/godot/service/GodotService$EngineError;Landroid/os/Bundle;ILjava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    :cond_8
    :goto_1
    return-void

    .line 276
    :cond_9
    const-string v2, "hostToken"

    .line 277
    .line 278
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    .line 279
    .line 280
    .line 281
    move-result-object v2

    .line 282
    const-string v4, "width"

    .line 283
    .line 284
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    const-string v6, "height"

    .line 289
    .line 290
    invoke-virtual {p1, v6}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 291
    .line 292
    .line 293
    move-result v6

    .line 294
    const-string v7, "displayId"

    .line 295
    .line 296
    invoke-virtual {p1, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    const-class v7, Landroid/hardware/display/DisplayManager;

    .line 301
    .line 302
    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v7

    .line 306
    check-cast v7, Landroid/hardware/display/DisplayManager;

    .line 307
    .line 308
    invoke-virtual {v7, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    .line 309
    .line 310
    .line 311
    move-result-object p1

    .line 312
    invoke-static {}, Lorg/godotengine/godot/service/GodotService;->access$getTAG$cp()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    const-string v8, "Setting up SurfaceControlViewHost"

    .line 317
    .line 318
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .line 320
    .line 321
    invoke-static {}, Landroidx/core/view/o;->i()V

    .line 322
    .line 323
    .line 324
    invoke-static {v0, p1, v2}, Landroidx/core/view/o;->f(Lorg/godotengine/godot/service/GodotService;Landroid/view/Display;Landroid/os/IBinder;)Landroid/view/SurfaceControlViewHost;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-static {p1, v1, v4, v6}, Landroidx/core/view/o;->k(Landroid/view/SurfaceControlViewHost;Landroid/widget/FrameLayout;II)V

    .line 329
    .line 330
    .line 331
    invoke-static {}, Lorg/godotengine/godot/service/GodotService;->access$getTAG$cp()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    invoke-static {v0}, Lorg/godotengine/godot/service/GodotService;->access$getListener$p(Lorg/godotengine/godot/service/GodotService;)Lorg/godotengine/godot/service/GodotService$RemoteListener;

    .line 339
    .line 340
    .line 341
    move-result-object v0

    .line 342
    if-eqz v0, :cond_a

    .line 343
    .line 344
    sget-object v1, Lorg/godotengine/godot/service/GodotService$EngineStatus;->SCVH_CREATED:Lorg/godotengine/godot/service/GodotService$EngineStatus;

    .line 345
    .line 346
    invoke-static {p1}, Landroidx/core/view/o;->e(Landroid/view/SurfaceControlViewHost;)Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 351
    .line 352
    .line 353
    move-result-object v2

    .line 354
    filled-new-array {v2}, [Lkotlin/Pair;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    invoke-static {v2}, Landroidx/core/os/BundleKt;->bundleOf([Lkotlin/Pair;)Landroid/os/Bundle;

    .line 359
    .line 360
    .line 361
    move-result-object v2

    .line 362
    invoke-virtual {v0, v1, v2}, Lorg/godotengine/godot/service/GodotService$RemoteListener;->onEngineStatusUpdate(Lorg/godotengine/godot/service/GodotService$EngineStatus;Landroid/os/Bundle;)V

    .line 363
    .line 364
    .line 365
    :cond_a
    iput-object p1, p0, Lorg/godotengine/godot/service/GodotService$IncomingHandler;->viewHost:Landroid/view/SurfaceControlViewHost;

    .line 366
    .line 367
    return-void

    .line 368
    :cond_b
    invoke-static {v0}, Lorg/godotengine/godot/service/GodotService;->access$destroyEngine(Lorg/godotengine/godot/service/GodotService;)V

    .line 369
    .line 370
    .line 371
    return-void

    .line 372
    :cond_c
    invoke-static {v0}, Lorg/godotengine/godot/service/GodotService;->access$stopEngine(Lorg/godotengine/godot/service/GodotService;)V

    .line 373
    .line 374
    .line 375
    return-void

    .line 376
    :cond_d
    invoke-static {v0}, Lorg/godotengine/godot/service/GodotService;->access$startEngine(Lorg/godotengine/godot/service/GodotService;)V

    .line 377
    .line 378
    .line 379
    return-void

    .line 380
    :cond_e
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 381
    .line 382
    .line 383
    move-result-object p1

    .line 384
    const-string v1, "commandLineParameters"

    .line 385
    .line 386
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object p1

    .line 390
    invoke-static {v0, p1}, Lorg/godotengine/godot/service/GodotService;->access$initEngine(Lorg/godotengine/godot/service/GodotService;[Ljava/lang/String;)Landroid/widget/FrameLayout;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 391
    .line 392
    .line 393
    return-void

    .line 394
    :goto_2
    invoke-static {}, Lorg/godotengine/godot/service/GodotService;->access$getTAG$cp()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    const-string v1, "Unable to handle message"

    .line 399
    .line 400
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    .line 402
    .line 403
    return-void
.end method

.method public final setViewHost(Landroid/view/SurfaceControlViewHost;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/godotengine/godot/service/GodotService$IncomingHandler;->viewHost:Landroid/view/SurfaceControlViewHost;

    .line 2
    .line 3
    return-void
.end method
