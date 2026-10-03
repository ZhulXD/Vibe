.class public final synthetic Lcom/minhub/gamehub/hub/catalog/a;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroid/webkit/DownloadListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field public final synthetic c:Landroid/webkit/WebView;

.field public final synthetic d:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

.field public final synthetic e:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f:[Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;[Ljava/lang/Object;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;I)V
    .locals 0

    .line 1
    iput p6, p0, Lcom/minhub/gamehub/hub/catalog/a;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/minhub/gamehub/hub/catalog/a;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/minhub/gamehub/hub/catalog/a;->f:[Ljava/lang/Object;

    .line 6
    .line 7
    iput-object p3, p0, Lcom/minhub/gamehub/hub/catalog/a;->c:Landroid/webkit/WebView;

    .line 8
    .line 9
    iput-object p4, p0, Lcom/minhub/gamehub/hub/catalog/a;->d:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 10
    .line 11
    iput-object p5, p0, Lcom/minhub/gamehub/hub/catalog/a;->e:Ljava/util/concurrent/CountDownLatch;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/minhub/gamehub/hub/catalog/a;->a:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, v0, Lcom/minhub/gamehub/hub/catalog/a;->f:[Ljava/lang/Object;

    .line 9
    .line 10
    move-object v3, v1

    .line 11
    check-cast v3, [Ljava/lang/String;

    .line 12
    .line 13
    iget-object v5, v0, Lcom/minhub/gamehub/hub/catalog/a;->d:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 14
    .line 15
    iget-object v6, v0, Lcom/minhub/gamehub/hub/catalog/a;->e:Ljava/util/concurrent/CountDownLatch;

    .line 16
    .line 17
    iget-object v2, v0, Lcom/minhub/gamehub/hub/catalog/a;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 18
    .line 19
    iget-object v4, v0, Lcom/minhub/gamehub/hub/catalog/a;->c:Landroid/webkit/WebView;

    .line 20
    .line 21
    move-object/from16 v7, p1

    .line 22
    .line 23
    move-object/from16 v8, p2

    .line 24
    .line 25
    move-object/from16 v9, p3

    .line 26
    .line 27
    move-object/from16 v10, p4

    .line 28
    .line 29
    move-wide/from16 v11, p5

    .line 30
    .line 31
    invoke-static/range {v2 .. v12}, Lcom/minhub/gamehub/hub/catalog/RanozWebDownloaderKt;->a(Lkotlin/jvm/internal/Ref$BooleanRef;[Ljava/lang/String;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :pswitch_0
    iget-object v1, v0, Lcom/minhub/gamehub/hub/catalog/a;->f:[Ljava/lang/Object;

    .line 36
    .line 37
    move-object v8, v1

    .line 38
    check-cast v8, [Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;

    .line 39
    .line 40
    iget-object v10, v0, Lcom/minhub/gamehub/hub/catalog/a;->d:Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;

    .line 41
    .line 42
    iget-object v11, v0, Lcom/minhub/gamehub/hub/catalog/a;->e:Ljava/util/concurrent/CountDownLatch;

    .line 43
    .line 44
    iget-object v7, v0, Lcom/minhub/gamehub/hub/catalog/a;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 45
    .line 46
    iget-object v9, v0, Lcom/minhub/gamehub/hub/catalog/a;->c:Landroid/webkit/WebView;

    .line 47
    .line 48
    move-object/from16 v12, p1

    .line 49
    .line 50
    move-object/from16 v13, p2

    .line 51
    .line 52
    move-object/from16 v14, p3

    .line 53
    .line 54
    move-object/from16 v15, p4

    .line 55
    .line 56
    move-wide/from16 v16, p5

    .line 57
    .line 58
    invoke-static/range {v7 .. v17}, Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebDownloaderKt;->a(Lkotlin/jvm/internal/Ref$BooleanRef;[Lcom/minhub/gamehub/hub/catalog/BuzzHeavierWebResult;Landroid/webkit/WebView;Lcom/minhub/gamehub/hub/catalog/CfOverlayHandle;Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    nop

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
