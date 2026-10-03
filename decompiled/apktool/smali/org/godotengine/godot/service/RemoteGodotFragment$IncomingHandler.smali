.class final Lorg/godotengine/godot/service/RemoteGodotFragment$IncomingHandler;
.super Landroid/os/Handler;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/godotengine/godot/service/RemoteGodotFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IncomingHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/service/RemoteGodotFragment$IncomingHandler$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0015\u0012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lorg/godotengine/godot/service/RemoteGodotFragment$IncomingHandler;",
        "Landroid/os/Handler;",
        "fragmentRef",
        "Ljava/lang/ref/WeakReference;",
        "Lorg/godotengine/godot/service/RemoteGodotFragment;",
        "<init>",
        "(Ljava/lang/ref/WeakReference;)V",
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
.field private final fragmentRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/godotengine/godot/service/RemoteGodotFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lorg/godotengine/godot/service/RemoteGodotFragment;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "fragmentRef"

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
    iput-object p1, p0, Lorg/godotengine/godot/service/RemoteGodotFragment$IncomingHandler;->fragmentRef:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 1
    const-string v0, "Unable to retrieve engine error from message "

    .line 2
    .line 3
    const-string v1, "Received engine error "

    .line 4
    .line 5
    const-string v2, "Unable to retrieve engine status update from "

    .line 6
    .line 7
    const-string v3, "Received engine status "

    .line 8
    .line 9
    const-string v4, "HandleMessage: "

    .line 10
    .line 11
    const-string v5, "msg"

    .line 12
    .line 13
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v5, p0, Lorg/godotengine/godot/service/RemoteGodotFragment$IncomingHandler;->fragmentRef:Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v5

    .line 22
    check-cast v5, Lorg/godotengine/godot/service/RemoteGodotFragment;

    .line 23
    .line 24
    if-nez v5, :cond_0

    .line 25
    .line 26
    goto/16 :goto_2

    .line 27
    .line 28
    :cond_0
    :try_start_0
    sget-object v6, Lorg/godotengine/godot/service/RemoteGodotFragment;->Companion:Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;

    .line 29
    .line 30
    invoke-virtual {v6}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v7

    .line 34
    new-instance v8, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v8, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v4

    .line 46
    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    iget v4, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .line 51
    const/4 v7, 0x3

    .line 52
    const/4 v8, 0x2

    .line 53
    const-string v9, "getString(...)"

    .line 54
    .line 55
    const-string v10, ""

    .line 56
    .line 57
    const/4 v11, 0x0

    .line 58
    const/4 v12, 0x1

    .line 59
    packed-switch v4, :pswitch_data_0

    .line 60
    .line 61
    .line 62
    :try_start_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    goto/16 :goto_1

    .line 68
    .line 69
    :pswitch_0
    invoke-virtual {v6}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const-string v1, "Engine restart requested"

    .line 74
    .line 75
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    invoke-static {v5}, Lorg/godotengine/godot/service/RemoteGodotFragment;->access$getServiceBound$p(Lorg/godotengine/godot/service/RemoteGodotFragment;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_c

    .line 83
    .line 84
    invoke-static {v5}, Lorg/godotengine/godot/service/RemoteGodotFragment;->access$getEngineInitialized$p(Lorg/godotengine/godot/service/RemoteGodotFragment;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_1

    .line 89
    .line 90
    goto/16 :goto_2

    .line 91
    .line 92
    :cond_1
    invoke-static {v5}, Lorg/godotengine/godot/service/RemoteGodotFragment;->access$getRemoteGameArgs$p(Lorg/godotengine/godot/service/RemoteGodotFragment;)[Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    const/4 v1, 0x0

    .line 97
    invoke-static {v5, v11, v12, v1}, Lorg/godotengine/godot/service/RemoteGodotFragment;->stopRemoteGame$default(Lorg/godotengine/godot/service/RemoteGodotFragment;ZILjava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v5, v0}, Lorg/godotengine/godot/service/RemoteGodotFragment;->startRemoteGame([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :pswitch_1
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    const-string v1, "engineStatus"

    .line 109
    .line 110
    invoke-virtual {v0, v1, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-static {v0}, Lorg/godotengine/godot/service/GodotService$EngineStatus;->valueOf(Ljava/lang/String;)Lorg/godotengine/godot/service/GodotService$EngineStatus;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v6}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    .line 139
    .line 140
    sget-object v1, Lorg/godotengine/godot/service/RemoteGodotFragment$IncomingHandler$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 141
    .line 142
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    aget v0, v1, v0

    .line 147
    .line 148
    const/4 v1, 0x4

    .line 149
    if-eq v0, v12, :cond_8

    .line 150
    .line 151
    if-eq v0, v8, :cond_7

    .line 152
    .line 153
    if-eq v0, v7, :cond_6

    .line 154
    .line 155
    if-eq v0, v1, :cond_5

    .line 156
    .line 157
    const/4 v1, 0x5

    .line 158
    if-ne v0, v1, :cond_4

    .line 159
    .line 160
    invoke-virtual {v6}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    const-string v1, "SurfaceControlViewHost created!"

    .line 165
    .line 166
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const-string v1, "surfacePackage"

    .line 174
    .line 175
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v0}, Landroidx/core/view/o;->d(Landroid/os/Parcelable;)Landroid/view/SurfaceControlViewHost$SurfacePackage;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    if-nez v0, :cond_2

    .line 184
    .line 185
    invoke-virtual {v6}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    const-string v1, "Unable to retrieve surface package from GodotService"

    .line 190
    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    .line 193
    .line 194
    goto/16 :goto_2

    .line 195
    .line 196
    :cond_2
    invoke-static {v5}, Lorg/godotengine/godot/service/RemoteGodotFragment;->access$getRemoteSurface$p(Lorg/godotengine/godot/service/RemoteGodotFragment;)Landroid/view/SurfaceView;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    if-eqz v1, :cond_3

    .line 201
    .line 202
    invoke-static {v1, v0}, Landroidx/core/view/o;->l(Landroid/view/SurfaceView;Landroid/view/SurfaceControlViewHost$SurfacePackage;)V

    .line 203
    .line 204
    .line 205
    :cond_3
    invoke-static {v5, v12}, Lorg/godotengine/godot/service/RemoteGodotFragment;->access$setEngineInitialized$p(Lorg/godotengine/godot/service/RemoteGodotFragment;Z)V

    .line 206
    .line 207
    .line 208
    invoke-static {v5}, Lorg/godotengine/godot/service/RemoteGodotFragment;->access$startGodotEngine(Lorg/godotengine/godot/service/RemoteGodotFragment;)V

    .line 209
    .line 210
    .line 211
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 212
    .line 213
    goto/16 :goto_2

    .line 214
    .line 215
    :cond_4
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 216
    .line 217
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 218
    .line 219
    .line 220
    throw v0

    .line 221
    :cond_5
    invoke-virtual {v6}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v0

    .line 225
    const-string v1, "Engine destroyed!"

    .line 226
    .line 227
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    .line 229
    .line 230
    invoke-static {v5, v11}, Lorg/godotengine/godot/service/RemoteGodotFragment;->access$setEngineInitialized$p(Lorg/godotengine/godot/service/RemoteGodotFragment;Z)V

    .line 231
    .line 232
    .line 233
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 234
    .line 235
    goto/16 :goto_2

    .line 236
    .line 237
    :cond_6
    invoke-virtual {v6}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    const-string v1, "Engine stopped!"

    .line 242
    .line 243
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .line 245
    .line 246
    goto/16 :goto_2

    .line 247
    .line 248
    :cond_7
    invoke-virtual {v6}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    const-string v1, "Engine started!"

    .line 253
    .line 254
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    .line 256
    .line 257
    goto/16 :goto_2

    .line 258
    .line 259
    :cond_8
    invoke-virtual {v6}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    const-string v3, "Engine initialized!"

    .line 264
    .line 265
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 266
    .line 267
    .line 268
    :try_start_3
    invoke-virtual {v6}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 269
    .line 270
    .line 271
    move-result-object v0

    .line 272
    const-string v3, "Creating SurfaceControlViewHost..."

    .line 273
    .line 274
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    .line 276
    .line 277
    invoke-static {v5}, Lorg/godotengine/godot/service/RemoteGodotFragment;->access$getRemoteSurface$p(Lorg/godotengine/godot/service/RemoteGodotFragment;)Landroid/view/SurfaceView;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    if-eqz v0, :cond_c

    .line 282
    .line 283
    invoke-static {v5}, Lorg/godotengine/godot/service/RemoteGodotFragment;->access$getServiceMessenger$p(Lorg/godotengine/godot/service/RemoteGodotFragment;)Landroid/os/Messenger;

    .line 284
    .line 285
    .line 286
    move-result-object v3

    .line 287
    if-eqz v3, :cond_c

    .line 288
    .line 289
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    .line 290
    .line 291
    .line 292
    move-result-object v4

    .line 293
    iput v1, v4, Landroid/os/Message;->what:I

    .line 294
    .line 295
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    const-string v6, "hostToken"

    .line 300
    .line 301
    invoke-static {v0}, Landroidx/core/view/o;->b(Landroid/view/SurfaceView;)Landroid/os/IBinder;

    .line 302
    .line 303
    .line 304
    move-result-object v7

    .line 305
    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 306
    .line 307
    .line 308
    const-string v6, "displayId"

    .line 309
    .line 310
    invoke-virtual {v0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    .line 311
    .line 312
    .line 313
    move-result-object v7

    .line 314
    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    .line 315
    .line 316
    .line 317
    move-result v7

    .line 318
    invoke-virtual {v1, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 319
    .line 320
    .line 321
    const-string v6, "width"

    .line 322
    .line 323
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 324
    .line 325
    .line 326
    move-result v7

    .line 327
    invoke-virtual {v1, v6, v7}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 328
    .line 329
    .line 330
    const-string v6, "height"

    .line 331
    .line 332
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    invoke-virtual {v1, v6, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 337
    .line 338
    .line 339
    invoke-static {v5}, Lorg/godotengine/godot/service/RemoteGodotFragment;->access$getMessengerForReply$p(Lorg/godotengine/godot/service/RemoteGodotFragment;)Landroid/os/Messenger;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    iput-object v0, v4, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 344
    .line 345
    invoke-virtual {v3, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 346
    .line 347
    .line 348
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 349
    .line 350
    goto/16 :goto_2

    .line 351
    .line 352
    :catch_1
    move-exception v0

    .line 353
    :try_start_4
    sget-object v1, Lorg/godotengine/godot/service/RemoteGodotFragment;->Companion:Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;

    .line 354
    .line 355
    invoke-virtual {v1}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v1

    .line 359
    const-string v3, "Unable to set up SurfaceControlViewHost"

    .line 360
    .line 361
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 362
    .line 363
    .line 364
    goto/16 :goto_2

    .line 365
    .line 366
    :catch_2
    :try_start_5
    sget-object v0, Lorg/godotengine/godot/service/RemoteGodotFragment;->Companion:Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;

    .line 367
    .line 368
    invoke-virtual {v0}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    new-instance v1, Ljava/lang/StringBuilder;

    .line 373
    .line 374
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v1

    .line 384
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 385
    .line 386
    .line 387
    goto/16 :goto_2

    .line 388
    .line 389
    :pswitch_2
    :try_start_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    const-string v3, "engineError"

    .line 394
    .line 395
    invoke-virtual {v2, v3, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v2

    .line 399
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 400
    .line 401
    .line 402
    invoke-static {v2}, Lorg/godotengine/godot/service/GodotService$EngineError;->valueOf(Ljava/lang/String;)Lorg/godotengine/godot/service/GodotService$EngineError;

    .line 403
    .line 404
    .line 405
    move-result-object v2

    .line 406
    invoke-virtual {v6}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v3

    .line 410
    new-instance v4, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .line 414
    .line 415
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 416
    .line 417
    .line 418
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 419
    .line 420
    .line 421
    move-result-object v1

    .line 422
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    .line 424
    .line 425
    sget-object v1, Lorg/godotengine/godot/service/RemoteGodotFragment$IncomingHandler$WhenMappings;->$EnumSwitchMapping$1:[I

    .line 426
    .line 427
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 428
    .line 429
    .line 430
    move-result v2

    .line 431
    aget v1, v1, v2

    .line 432
    .line 433
    if-eq v1, v12, :cond_b

    .line 434
    .line 435
    if-eq v1, v8, :cond_a

    .line 436
    .line 437
    if-ne v1, v7, :cond_9

    .line 438
    .line 439
    invoke-virtual {v6}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 440
    .line 441
    .line 442
    move-result-object v1

    .line 443
    const-string v2, "SurfaceControlViewHost creation failed"

    .line 444
    .line 445
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    .line 447
    .line 448
    return-void

    .line 449
    :catch_3
    move-exception v1

    .line 450
    goto :goto_0

    .line 451
    :cond_9
    new-instance v1, Lkotlin/NoWhenBranchMatchedException;

    .line 452
    .line 453
    invoke-direct {v1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 454
    .line 455
    .line 456
    throw v1

    .line 457
    :cond_a
    invoke-virtual {v6}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    const-string v2, "Engine initialization failed"

    .line 462
    .line 463
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    .line 465
    .line 466
    return-void

    .line 467
    :cond_b
    invoke-virtual {v5, v11}, Lorg/godotengine/godot/service/RemoteGodotFragment;->stopRemoteGame(Z)V

    .line 468
    .line 469
    .line 470
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0

    .line 471
    .line 472
    return-void

    .line 473
    :goto_0
    :try_start_7
    sget-object v2, Lorg/godotengine/godot/service/RemoteGodotFragment;->Companion:Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;

    .line 474
    .line 475
    invoke-virtual {v2}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v2

    .line 479
    new-instance v3, Ljava/lang/StringBuilder;

    .line 480
    .line 481
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 482
    .line 483
    .line 484
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 488
    .line 489
    .line 490
    move-result-object v0

    .line 491
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0

    .line 492
    .line 493
    .line 494
    goto :goto_2

    .line 495
    :goto_1
    sget-object v1, Lorg/godotengine/godot/service/RemoteGodotFragment;->Companion:Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;

    .line 496
    .line 497
    invoke-virtual {v1}, Lorg/godotengine/godot/service/RemoteGodotFragment$Companion;->getTAG$lib_templateRelease()Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v1

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    .line 502
    .line 503
    const-string v3, "Unable to handle message "

    .line 504
    .line 505
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 506
    .line 507
    .line 508
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 512
    .line 513
    .line 514
    move-result-object p1

    .line 515
    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    .line 517
    .line 518
    :cond_c
    :goto_2
    return-void

    .line 519
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
