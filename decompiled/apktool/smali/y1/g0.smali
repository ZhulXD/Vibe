.class public final Ly1/g0;
.super Landroid/webkit/WebViewClient;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Lkotlin/jvm/functions/Function1;

.field public final b:LA1/d;

.field public final c:Z

.field public final d:[B

.field public final e:I

.field public final f:Ljava/io/File;

.field public final g:Ljava/io/File;

.field public final h:Ly1/c0;

.field public final i:LC1/J;

.field public final j:Ly1/y;

.field public final k:Lkotlin/coroutines/a;

.field public final l:Ly1/y;


# direct methods
.method public constructor <init>(LC1/q;LA1/d;Z[BILjava/io/File;Ljava/io/File;Ly1/c0;LC1/J;Ly1/y;Lkotlin/coroutines/a;Ly1/y;)V
    .locals 1

    .line 1
    const-string v0, "onPageFinished"

    .line 2
    .line 3
    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onLoadError"

    .line 7
    .line 8
    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "onRendererCrash"

    .line 12
    .line 13
    invoke-static {p12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Ly1/g0;->a:Lkotlin/jvm/functions/Function1;

    .line 20
    .line 21
    iput-object p2, p0, Ly1/g0;->b:LA1/d;

    .line 22
    .line 23
    iput-boolean p3, p0, Ly1/g0;->c:Z

    .line 24
    .line 25
    iput-object p4, p0, Ly1/g0;->d:[B

    .line 26
    .line 27
    iput p5, p0, Ly1/g0;->e:I

    .line 28
    .line 29
    iput-object p6, p0, Ly1/g0;->f:Ljava/io/File;

    .line 30
    .line 31
    iput-object p7, p0, Ly1/g0;->g:Ljava/io/File;

    .line 32
    .line 33
    iput-object p8, p0, Ly1/g0;->h:Ly1/c0;

    .line 34
    .line 35
    iput-object p9, p0, Ly1/g0;->i:LC1/J;

    .line 36
    .line 37
    iput-object p10, p0, Ly1/g0;->j:Ly1/y;

    .line 38
    .line 39
    iput-object p11, p0, Ly1/g0;->k:Lkotlin/coroutines/a;

    .line 40
    .line 41
    iput-object p12, p0, Ly1/g0;->l:Ly1/y;

    .line 42
    .line 43
    return-void
.end method


# virtual methods
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Ly1/g0;->i:LC1/J;

    .line 15
    .line 16
    invoke-virtual {p1}, LC1/J;->invoke()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public final onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "url"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 12
    .line 13
    .line 14
    iget-object p2, p0, Ly1/g0;->j:Ly1/y;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Ly1/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public final onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "request"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "error"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 17
    .line 18
    .line 19
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    if-eqz p2, :cond_0

    .line 38
    .line 39
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-nez p2, :cond_1

    .line 44
    .line 45
    :cond_0
    const-string p2, "Unknown WebView error"

    .line 46
    .line 47
    :cond_1
    iget-object p3, p0, Ly1/g0;->k:Lkotlin/coroutines/a;

    .line 48
    .line 49
    invoke-virtual {p3, p1, p2}, Lkotlin/coroutines/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    :cond_2
    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "handler"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "error"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    .line 24
    .line 25
    .line 26
    move-result p2

    .line 27
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    iget-object p3, p0, Ly1/g0;->k:Lkotlin/coroutines/a;

    .line 32
    .line 33
    invoke-virtual {p3, p1, p2}, Lkotlin/coroutines/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public final onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "detail"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p2}, Lm0/o;->t(Landroid/webkit/RenderProcessGoneDetail;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p2, p0, Ly1/g0;->l:Ly1/y;

    .line 20
    .line 21
    invoke-virtual {p2, p1}, Ly1/y;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 37

    move-object/from16 v1, p0

    const-string v0, "view"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "request"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {v3}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v0, "toString(...)"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x3f

    .line 2
    invoke-static {v5, v4}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x23

    invoke-static {v6, v0}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    iget-boolean v7, v1, Ly1/g0;->c:Z

    const-string v8, ".."

    const-string v9, "."

    const-string v10, "separator"

    const-string v11, "getPath(...)"

    const-string v12, "^[A-Za-z]:"

    const-string v13, "/"

    const-string v15, "substring(...)"

    const-string v6, "next(...)"

    const-wide v16, 0x7fffffffffffffffL

    const/high16 v18, 0x10000

    const-string v5, "file"

    const-string v14, "text/plain"

    const/16 v20, 0x0

    const-string v2, "UTF-8"

    iget-object v3, v1, Ly1/g0;->g:Ljava/io/File;

    move/from16 v22, v7

    if-eqz v22, :cond_17

    const-string v7, ".ks"

    invoke-static {v0, v7}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_17

    .line 4
    invoke-static {v0}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_17

    if-eqz v3, :cond_16

    .line 5
    invoke-static {v3, v0}, Ly1/s2;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 6
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v7

    .line 8
    invoke-virtual {v3}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v23

    .line 9
    invoke-static/range {v23 .. v23}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1e

    .line 10
    :try_start_1
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v25, v0

    :try_start_2
    invoke-static/range {v24 .. v24}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v24, v7

    .line 11
    :try_start_3
    iget v7, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v7}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, v0, Landroid/system/StructStat;->st_mode:I

    invoke-static {v7}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    move-object/from16 v32, v3

    :goto_0
    move-object v7, v4

    goto :goto_1

    .line 12
    :cond_1
    new-instance v26, Ly1/t;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v32, v3

    move-object v7, v4

    :try_start_4
    iget-wide v3, v0, Landroid/system/StructStat;->st_dev:J

    move-wide/from16 v27, v3

    iget-wide v3, v0, Landroid/system/StructStat;->st_ino:J

    iget v0, v0, Landroid/system/StructStat;->st_mode:I

    move/from16 v31, v0

    move-wide/from16 v29, v3

    invoke-direct/range {v26 .. v31}, Ly1/t;-><init>(JJI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v0, v26

    goto :goto_3

    :catchall_0
    move-object/from16 v32, v3

    goto :goto_0

    :catchall_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_3

    :catchall_2
    :goto_2
    move-object/from16 v32, v3

    move-object/from16 v24, v7

    goto :goto_0

    :catchall_3
    move-object/from16 v25, v0

    goto :goto_2

    :goto_3
    if-nez v0, :cond_2

    .line 13
    :try_start_5
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :goto_4
    :try_start_6
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :goto_5
    :try_start_7
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :goto_6
    move-object/from16 v23, v7

    move-object/from16 v24, v12

    goto/16 :goto_2b

    :catchall_6
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 16
    :cond_2
    :try_start_8
    invoke-virtual/range {v23 .. v23}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 18
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3, v13}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_13

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4, v13}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_13

    .line 19
    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v23
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1b

    if-nez v23, :cond_13

    move-object/from16 v23, v7

    const/16 v7, 0x5c

    :try_start_9
    invoke-static {v3, v7}, Lkotlin/text/StringsKt;->o(Ljava/lang/CharSequence;C)Z

    move-result v19

    if-nez v19, :cond_12

    invoke-static {v4, v7}, Lkotlin/text/StringsKt;->o(Ljava/lang/CharSequence;C)Z

    move-result v24

    if-nez v24, :cond_12

    .line 20
    new-instance v7, Lkotlin/text/Regex;

    invoke-direct {v7, v12}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1a

    move-object/from16 v24, v12

    :try_start_a
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v12}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    :goto_7
    move-object v12, v8

    goto/16 :goto_21

    .line 21
    :cond_3
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v7, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v7}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_4

    move-object v7, v3

    goto :goto_8

    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 22
    :goto_8
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4, v7}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    :cond_5
    move-object v12, v8

    goto/16 :goto_1c

    :cond_6
    const/4 v12, 0x1

    .line 23
    invoke-virtual {v3, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-char v25, Ljava/io/File;->separatorChar:C

    move-object/from16 v26, v7

    new-array v7, v12, [C

    aput-char v25, v7, v20

    invoke-static {v3, v7}, Lkotlin/text/StringsKt;->I(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v3

    .line 24
    invoke-virtual/range {v26 .. v26}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x1

    new-array v7, v12, [C

    aput-char v25, v7, v20

    invoke-static {v4, v7}, Lkotlin/text/StringsKt;->I(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v4

    .line 25
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 26
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_d

    :catchall_7
    :goto_9
    move-object v12, v8

    const/4 v0, 0x0

    const/4 v3, 0x0

    goto/16 :goto_24

    .line 27
    :cond_7
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 28
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v25

    if-nez v25, :cond_9

    goto :goto_a

    :cond_9
    invoke-static {v12, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_a

    invoke-static {v12, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    if-eqz v12, :cond_8

    .line 29
    :cond_a
    :goto_a
    :try_start_b
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    goto :goto_b

    :catchall_8
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :goto_b
    :try_start_c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_9

    goto :goto_c

    :catchall_9
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :goto_c
    :try_start_d
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    goto/16 :goto_2b

    :catchall_a
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2b

    .line 32
    :cond_b
    :goto_d
    :try_start_e
    sget v7, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {}, Lm0/C;->a()I

    move-result v12

    or-int/2addr v7, v12

    or-int v7, v7, v18

    sget v12, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v7, v12

    move/from16 v12, v20

    .line 33
    invoke-static {v13, v7, v12}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v7
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    .line 34
    :try_start_f
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_17

    :goto_e
    :try_start_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_16

    if-eqz v12, :cond_c

    :try_start_11
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    invoke-static {v12, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v12, Ljava/lang/String;

    .line 35
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    sget v25, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {}, Lm0/C;->a()I

    move-result v26

    or-int v25, v25, v26

    or-int v25, v25, v18

    sget v26, Landroid/system/OsConstants;->O_NOFOLLOW:I

    move-object/from16 v27, v3

    or-int v3, v25, v26

    .line 37
    invoke-static {v7, v12, v3}, Ly1/s2;->b(Ljava/io/FileDescriptor;Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v3

    .line 38
    invoke-static {v7}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    move-object v7, v3

    move-object/from16 v3, v27

    goto :goto_e

    :catchall_b
    move-object v3, v7

    move-object v12, v8

    :catchall_c
    :goto_f
    const/4 v0, 0x0

    goto/16 :goto_24

    .line 39
    :cond_c
    :try_start_12
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v7}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v3
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_16

    move-object/from16 v25, v7

    move-object v12, v8

    .line 40
    :try_start_13
    iget-wide v7, v3, Landroid/system/StructStat;->st_dev:J

    move-wide/from16 v26, v7

    .line 41
    iget-wide v7, v0, Ly1/t;->a:J

    cmp-long v7, v26, v7

    if-nez v7, :cond_11

    .line 42
    iget-wide v7, v3, Landroid/system/StructStat;->st_ino:J

    move-wide/from16 v26, v7

    .line 43
    iget-wide v7, v0, Ly1/t;->b:J

    cmp-long v7, v26, v7

    if-nez v7, :cond_11

    .line 44
    iget v3, v3, Landroid/system/StructStat;->st_mode:I

    .line 45
    iget v0, v0, Ly1/t;->c:I

    if-eq v3, v0, :cond_d

    goto/16 :goto_19

    .line 46
    :cond_d
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_13

    move-object/from16 v3, v25

    :goto_10
    :try_start_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/String;

    .line 47
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    sget v8, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {}, Lm0/C;->a()I

    move-result v25

    or-int v8, v8, v25

    or-int v8, v8, v18

    sget v25, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int v8, v8, v25

    .line 49
    invoke-static {v3, v7, v8}, Ly1/s2;->b(Ljava/io/FileDescriptor;Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v7

    .line 50
    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    move-object v3, v7

    goto :goto_10

    .line 51
    :cond_e
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v4, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {}, Lm0/C;->a()I

    move-result v7

    or-int/2addr v4, v7

    sget v7, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v4, v7

    invoke-static {v3, v0, v4}, Ly1/s2;->b(Ljava/io/FileDescriptor;Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    .line 52
    :try_start_15
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v4

    .line 53
    iget v7, v4, Landroid/system/StructStat;->st_mode:I

    invoke-static {v7}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-wide v7, v4, Landroid/system/StructStat;->st_size:J

    cmp-long v4, v7, v16

    if-lez v4, :cond_f

    goto :goto_13

    .line 54
    :cond_f
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1f

    .line 55
    :try_start_16
    new-instance v7, Ly1/g;

    invoke-direct {v7, v4}, Ly1/g;-><init>(Ljava/io/FileInputStream;)V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    .line 56
    :try_start_17
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_d

    goto :goto_11

    :catchall_d
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    :goto_11
    :try_start_18
    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    goto :goto_12

    :catchall_e
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :goto_12
    :try_start_19
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_f

    goto/16 :goto_2d

    :catchall_f
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2d

    .line 59
    :cond_10
    :goto_13
    :try_start_1a
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_10

    goto :goto_14

    :catchall_10
    move-exception v0

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    :goto_14
    :try_start_1b
    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_11

    goto :goto_15

    :catchall_11
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    :goto_15
    :try_start_1c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_16
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_12

    goto/16 :goto_2c

    :catchall_12
    move-exception v0

    :goto_17
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2c

    :catchall_13
    :goto_18
    move-object/from16 v3, v25

    goto/16 :goto_f

    .line 62
    :cond_11
    :goto_19
    :try_start_1d
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_14

    goto :goto_1a

    :catchall_14
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :goto_1a
    :try_start_1e
    invoke-static/range {v25 .. v25}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_15

    goto :goto_1b

    :catchall_15
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    :goto_1b
    :try_start_1f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_12

    goto :goto_16

    :catchall_16
    move-object/from16 v25, v7

    move-object v12, v8

    goto :goto_18

    :catchall_17
    move-object v12, v8

    move-object v3, v7

    goto/16 :goto_f

    .line 65
    :goto_1c
    :try_start_20
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_18

    goto :goto_1d

    :catchall_18
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    :goto_1d
    :try_start_21
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_19

    goto :goto_1e

    :catchall_19
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :goto_1e
    :try_start_22
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_12

    goto :goto_16

    :catchall_1a
    :goto_1f
    move-object/from16 v24, v12

    goto/16 :goto_9

    :cond_12
    :goto_20
    move-object/from16 v24, v12

    goto/16 :goto_7

    :cond_13
    move-object/from16 v23, v7

    goto :goto_20

    :catchall_1b
    move-object/from16 v23, v7

    goto :goto_1f

    .line 68
    :goto_21
    :try_start_23
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1c

    goto :goto_22

    :catchall_1c
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :goto_22
    :try_start_24
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1d

    goto :goto_23

    :catchall_1d
    move-exception v0

    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :goto_23
    :try_start_25
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_12

    goto/16 :goto_16

    :catchall_1e
    move-object/from16 v32, v3

    move-object/from16 v23, v4

    goto :goto_1f

    .line 71
    :catchall_1f
    :goto_24
    :try_start_26
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz v0, :cond_14

    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    goto :goto_25

    :catchall_20
    move-exception v0

    goto :goto_26

    :cond_14
    :goto_25
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_20

    goto :goto_27

    :goto_26
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_27
    if-eqz v3, :cond_15

    .line 72
    :try_start_27
    invoke-static {v3}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    goto :goto_28

    :catchall_21
    move-exception v0

    goto :goto_29

    :cond_15
    :goto_28
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_21

    goto :goto_2a

    :goto_29
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :goto_2a
    :try_start_28
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_22

    goto :goto_2c

    :catchall_22
    move-exception v0

    goto/16 :goto_17

    :cond_16
    move-object/from16 v32, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v12

    :goto_2b
    move-object v12, v8

    :goto_2c
    const/4 v7, 0x0

    :goto_2d
    if-eqz v7, :cond_18

    .line 74
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-direct {v0, v14, v2, v7}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object v0

    :cond_17
    move-object/from16 v32, v3

    move-object/from16 v23, v4

    move-object/from16 v24, v12

    move-object v12, v8

    .line 75
    :cond_18
    const-string v3, "<this>"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "url"

    move-object/from16 v7, v23

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    const-string v0, "__mh_exists=1"

    invoke-static {v7, v0}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const-string v8, "getBytes(...)"

    if-nez v0, :cond_19

    move-object/from16 v25, v6

    move-object/from16 v23, v12

    const/4 v6, 0x0

    goto :goto_31

    :cond_19
    move-object/from16 v23, v12

    const/16 v12, 0x3f

    .line 77
    invoke-static {v12, v7}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x23

    invoke-static {v12, v0}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-static {v0}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 79
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1b

    const/4 v12, 0x4

    invoke-static {v0, v12}, Ly1/L1;->b(Ljava/io/File;I)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v12, 0x1

    if-ne v0, v12, :cond_1a

    goto :goto_2e

    :cond_1a
    move-object/from16 v25, v6

    goto :goto_2f

    .line 80
    :cond_1b
    :goto_2e
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const-string v12, "1"

    move-object/from16 v25, v6

    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v12, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_30

    :goto_2f
    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v12, 0x0

    new-array v6, v12, [B

    invoke-direct {v0, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 81
    :goto_30
    new-instance v6, Landroid/webkit/WebResourceResponse;

    invoke-direct {v6, v14, v2, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    :goto_31
    if-nez v6, :cond_87

    .line 82
    iget-object v0, v1, Ly1/g0;->h:Ly1/c0;

    if-eqz v0, :cond_1c

    .line 83
    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    :cond_1c
    iget-object v0, v1, Ly1/g0;->a:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1d

    invoke-interface {v0, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/q1;

    if-eqz v0, :cond_1d

    .line 85
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    new-instance v6, Landroid/webkit/WebResourceResponse;

    .line 87
    iget-object v12, v0, Ly1/q1;->a:Ljava/lang/String;

    .line 88
    new-instance v14, Ljava/io/ByteArrayInputStream;

    .line 89
    iget-object v0, v0, Ly1/q1;->b:[B

    .line 90
    invoke-direct {v14, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    move-object/from16 v26, v2

    const/4 v2, 0x0

    invoke-direct {v6, v12, v2, v14}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    goto :goto_32

    :cond_1d
    move-object/from16 v26, v2

    const/4 v6, 0x0

    :goto_32
    if-nez v6, :cond_87

    .line 91
    const-string v2, "toLowerCase(...)"

    const-string v6, "Cache-Control"

    iget-object v0, v1, Ly1/g0;->b:LA1/d;

    if-eqz v0, :cond_29

    .line 92
    const-string v12, "requestUrl"

    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    invoke-static {v7, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :try_start_29
    new-instance v12, Ljava/net/URI;

    invoke-direct {v12, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_29
    .catch Ljava/net/URISyntaxException; {:try_start_29 .. :try_end_29} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_29 .. :try_end_29} :catch_0

    .line 95
    invoke-virtual {v12}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_1f

    :catch_0
    :goto_33
    move-object/from16 v27, v2

    move-object/from16 v28, v8

    :cond_1e
    :goto_34
    const/4 v2, 0x0

    goto :goto_36

    :cond_1f
    move-object/from16 v27, v12

    .line 96
    const-string v12, "/cheat/"

    invoke-static {v14, v12}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v28

    if-nez v28, :cond_20

    goto :goto_33

    .line 97
    :cond_20
    invoke-static {v14, v12}, Lkotlin/text/StringsKt;->B(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v28, v8

    const/4 v14, 0x1

    new-array v8, v14, [C

    const/16 v14, 0x2f

    const/16 v20, 0x0

    aput-char v14, v8, v20

    invoke-static {v12, v8}, Lkotlin/text/StringsKt;->trimStart(Ljava/lang/String;[C)Ljava/lang/String;

    move-result-object v8

    .line 98
    invoke-static {v8}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_22

    :cond_21
    move-object/from16 v27, v2

    goto :goto_34

    .line 99
    :cond_22
    invoke-virtual/range {v27 .. v27}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_23

    sget-object v14, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v12, v14}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_35

    :cond_23
    const/4 v12, 0x0

    .line 100
    :goto_35
    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_24

    new-instance v12, Lt1/d;

    .line 101
    sget-object v14, Lt1/c;->c:Lt1/c;

    .line 102
    invoke-direct {v12, v14, v8}, Lt1/d;-><init>(Lt1/c;Ljava/lang/String;)V

    move-object/from16 v27, v2

    move-object v2, v12

    goto :goto_36

    .line 103
    :cond_24
    const-string v14, "https"

    invoke-static {v12, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_21

    invoke-virtual/range {v27 .. v27}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v12

    const-string v14, "appassets.androidplatform.net"

    move-object/from16 v27, v2

    const/4 v2, 0x1

    invoke-static {v12, v14, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 104
    new-instance v2, Lt1/d;

    .line 105
    sget-object v12, Lt1/c;->b:Lt1/c;

    .line 106
    invoke-direct {v2, v12, v8}, Lt1/d;-><init>(Lt1/c;Ljava/lang/String;)V

    :goto_36
    if-nez v2, :cond_25

    goto :goto_39

    .line 107
    :cond_25
    iget-object v8, v2, Lt1/d;->b:Ljava/lang/String;

    .line 108
    iget-object v2, v2, Lt1/d;->a:Lt1/c;

    .line 109
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-eqz v2, :cond_27

    const/4 v12, 0x1

    if-ne v2, v12, :cond_26

    .line 110
    iget-object v0, v0, LA1/d;->d:Ljava/lang/Object;

    check-cast v0, LA1/p;

    invoke-virtual {v0, v8}, LA1/p;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebResourceResponse;

    :goto_37
    move-object v2, v0

    goto :goto_38

    .line 111
    :cond_26
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0

    .line 112
    :cond_27
    iget-object v0, v0, LA1/d;->c:Ljava/lang/Object;

    check-cast v0, Lkotlin/coroutines/a;

    invoke-virtual {v0, v7, v8}, Lkotlin/coroutines/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebResourceResponse;

    goto :goto_37

    .line 113
    :goto_38
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v8

    if-nez v8, :cond_28

    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object v8

    :cond_28
    invoke-direct {v0, v8}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 114
    const-string v8, "Access-Control-Allow-Origin"

    const-string v12, "*"

    invoke-virtual {v0, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v8, "no-store, no-cache, must-revalidate"

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-virtual {v2, v0}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    goto :goto_3a

    :cond_29
    move-object/from16 v27, v2

    move-object/from16 v28, v8

    :goto_39
    const/4 v2, 0x0

    :goto_3a
    if-nez v2, :cond_86

    .line 117
    invoke-interface/range {p2 .. p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v0

    .line 118
    const-string v2, "getName(...)"

    const-string v8, "file://"

    if-eqz v0, :cond_2a

    :goto_3b
    move-object/from16 v36, v6

    :goto_3c
    const/4 v9, 0x0

    const/16 v22, 0x0

    goto/16 :goto_66

    :cond_2a
    if-nez v32, :cond_2b

    goto :goto_3b

    .line 119
    :cond_2b
    invoke-static {v7, v8}, Lkotlin/text/StringsKt;->K(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    goto :goto_3b

    .line 120
    :cond_2c
    invoke-static {v7}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    if-nez v12, :cond_2d

    goto :goto_3b

    :cond_2d
    move-object/from16 v14, v32

    .line 121
    invoke-static {v14, v12}, Ly1/s2;->a(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_2e

    goto :goto_3b

    .line 122
    :cond_2e
    invoke-static {v12, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    :try_start_2a
    invoke-virtual {v12}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v0

    .line 124
    invoke-virtual {v14}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v5

    .line 125
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_3a

    .line 126
    :try_start_2b
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/system/Os;->lstat(Ljava/lang/String;)Landroid/system/StructStat;

    move-result-object v14
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_25

    move-object/from16 v29, v0

    .line 127
    :try_start_2c
    iget v0, v14, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISDIR(I)Z

    move-result v0

    if-eqz v0, :cond_2f

    iget v0, v14, Landroid/system/StructStat;->st_mode:I

    invoke-static {v0}, Landroid/system/OsConstants;->S_ISLNK(I)Z

    move-result v0

    if-eqz v0, :cond_30

    :catchall_23
    :cond_2f
    :goto_3d
    move-object v0, v5

    move-object/from16 v36, v6

    goto :goto_3e

    .line 128
    :cond_30
    new-instance v30, Ly1/t;
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_23

    move-object v0, v5

    move-object/from16 v36, v6

    :try_start_2d
    iget-wide v5, v14, Landroid/system/StructStat;->st_dev:J

    move-wide/from16 v31, v5

    iget-wide v5, v14, Landroid/system/StructStat;->st_ino:J

    iget v14, v14, Landroid/system/StructStat;->st_mode:I

    move-wide/from16 v33, v5

    move/from16 v35, v14

    invoke-direct/range {v30 .. v35}, Ly1/t;-><init>(JJI)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_24

    move-object/from16 v5, v30

    goto :goto_3f

    :catchall_24
    :goto_3e
    const/4 v5, 0x0

    goto :goto_3f

    :catchall_25
    move-object/from16 v29, v0

    goto :goto_3d

    :goto_3f
    if-nez v5, :cond_31

    .line 129
    :try_start_2e
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_26

    goto :goto_40

    :catchall_26
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    :goto_40
    :try_start_2f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_27

    goto :goto_41

    :catchall_27
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :goto_41
    :try_start_30
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_28

    :goto_42
    move-object/from16 v19, v12

    goto/16 :goto_5d

    :catchall_28
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 132
    :cond_31
    :try_start_31
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual/range {v29 .. v29}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 134
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0, v13}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_41

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6, v13}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_41

    .line 135
    invoke-static {v0, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_41

    const/16 v14, 0x5c

    invoke-static {v0, v14}, Lkotlin/text/StringsKt;->o(Ljava/lang/CharSequence;C)Z

    move-result v19

    if-nez v19, :cond_41

    invoke-static {v6, v14}, Lkotlin/text/StringsKt;->o(Ljava/lang/CharSequence;C)Z

    move-result v14

    if-nez v14, :cond_41

    .line 136
    new-instance v14, Lkotlin/text/Regex;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_37

    move-object/from16 v19, v12

    move-object/from16 v12, v24

    :try_start_32
    invoke-direct {v14, v12}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v14, v12}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_32

    goto/16 :goto_5a

    .line 137
    :cond_32
    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v11, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v11}, Lkotlin/text/StringsKt;->t(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_33

    move-object v10, v0

    goto :goto_43

    :cond_33
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 138
    :goto_43
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_40

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6, v10}, Lkotlin/text/StringsKt;->N(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_34

    goto/16 :goto_56

    :cond_34
    const/4 v12, 0x1

    .line 139
    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-char v11, Ljava/io/File;->separatorChar:C

    new-array v14, v12, [C

    const/16 v20, 0x0

    aput-char v11, v14, v20

    invoke-static {v0, v14}, Lkotlin/text/StringsKt;->I(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v0

    .line 140
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x1

    new-array v10, v12, [C

    const/16 v20, 0x0

    aput-char v11, v10, v20

    invoke-static {v6, v10}, Lkotlin/text/StringsKt;->I(Ljava/lang/CharSequence;[C)Ljava/util/List;

    move-result-object v6

    .line 141
    invoke-static {v0, v6}, Lkotlin/collections/CollectionsKt;->t(Ljava/util/Collection;Ljava/util/List;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_35

    .line 142
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_35

    goto :goto_4b

    :catchall_29
    :goto_44
    const/4 v0, 0x0

    const/4 v9, 0x0

    goto/16 :goto_5e

    .line 143
    :cond_35
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_45
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_39

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 144
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_36

    goto :goto_46

    :cond_36
    invoke-static {v11, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_38

    move-object/from16 v12, v23

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_29

    if-eqz v11, :cond_37

    goto :goto_46

    :cond_37
    move-object/from16 v23, v12

    goto :goto_45

    .line 145
    :cond_38
    :goto_46
    :try_start_33
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_2a

    goto :goto_47

    :catchall_2a
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :goto_47
    :try_start_34
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_2b

    goto :goto_48

    :catchall_2b
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :goto_48
    :try_start_35
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_49
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_2c

    goto/16 :goto_5d

    :catchall_2c
    move-exception v0

    :goto_4a
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5d

    .line 148
    :cond_39
    :goto_4b
    :try_start_36
    sget v9, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {}, Lm0/C;->a()I

    move-result v10

    or-int/2addr v9, v10

    or-int v9, v9, v18

    sget v10, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v9, v10

    const/4 v12, 0x0

    .line 149
    invoke-static {v13, v9, v12}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v9
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_29

    .line 150
    :try_start_37
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object/from16 v11, v25

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, Ljava/lang/String;

    .line 151
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 152
    sget v13, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {}, Lm0/C;->a()I

    move-result v14

    or-int/2addr v13, v14

    or-int v13, v13, v18

    sget v14, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v13, v14

    .line 153
    invoke-static {v9, v10, v13}, Ly1/s2;->b(Ljava/io/FileDescriptor;Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v10

    .line 154
    invoke-static {v9}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    move-object v9, v10

    move-object/from16 v25, v11

    goto :goto_4c

    :catchall_2d
    const/4 v0, 0x0

    goto/16 :goto_5e

    :cond_3a
    move-object/from16 v11, v25

    .line 155
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v9}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    .line 156
    iget-wide v13, v0, Landroid/system/StructStat;->st_dev:J

    move-wide/from16 v23, v13

    .line 157
    iget-wide v12, v5, Ly1/t;->a:J

    cmp-long v10, v23, v12

    if-nez v10, :cond_3f

    .line 158
    iget-wide v12, v0, Landroid/system/StructStat;->st_ino:J

    .line 159
    iget-wide v14, v5, Ly1/t;->b:J

    cmp-long v10, v12, v14

    if-nez v10, :cond_3f

    .line 160
    iget v0, v0, Landroid/system/StructStat;->st_mode:I

    .line 161
    iget v5, v5, Ly1/t;->c:I

    if-eq v0, v5, :cond_3b

    goto/16 :goto_53

    .line 162
    :cond_3b
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->j(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    .line 163
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 164
    sget v10, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {}, Lm0/C;->a()I

    move-result v12

    or-int/2addr v10, v12

    or-int v10, v10, v18

    sget v12, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v10, v12

    .line 165
    invoke-static {v9, v5, v10}, Ly1/s2;->b(Ljava/io/FileDescriptor;Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v5

    .line 166
    invoke-static {v9}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    move-object v9, v5

    goto :goto_4d

    .line 167
    :cond_3c
    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->last(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget v5, Landroid/system/OsConstants;->O_RDONLY:I

    invoke-static {}, Lm0/C;->a()I

    move-result v6

    or-int/2addr v5, v6

    sget v6, Landroid/system/OsConstants;->O_NOFOLLOW:I

    or-int/2addr v5, v6

    invoke-static {v9, v0, v5}, Ly1/s2;->b(Ljava/io/FileDescriptor;Ljava/lang/String;I)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_2d

    .line 168
    :try_start_38
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v0}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v5

    .line 169
    iget v6, v5, Landroid/system/StructStat;->st_mode:I

    invoke-static {v6}, Landroid/system/OsConstants;->S_ISREG(I)Z

    move-result v6

    if-eqz v6, :cond_3e

    iget-wide v5, v5, Landroid/system/StructStat;->st_size:J

    cmp-long v5, v5, v16

    if-lez v5, :cond_3d

    goto :goto_50

    .line 170
    :cond_3d
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_3b

    .line 171
    :try_start_39
    new-instance v6, Ly1/g;

    invoke-direct {v6, v5}, Ly1/g;-><init>(Ljava/io/FileInputStream;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_2d

    .line 172
    :try_start_3a
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_2e

    goto :goto_4e

    :catchall_2e
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    :goto_4e
    :try_start_3b
    invoke-static {v9}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_2f

    goto :goto_4f

    :catchall_2f
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    :goto_4f
    :try_start_3c
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_30

    goto/16 :goto_65

    :catchall_30
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_65

    .line 175
    :cond_3e
    :goto_50
    :try_start_3d
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_31

    goto :goto_51

    :catchall_31
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :goto_51
    :try_start_3e
    invoke-static {v9}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_32

    goto :goto_52

    :catchall_32
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :goto_52
    :try_start_3f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_2c

    goto/16 :goto_49

    .line 178
    :cond_3f
    :goto_53
    :try_start_40
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_33

    goto :goto_54

    :catchall_33
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    :goto_54
    :try_start_41
    invoke-static {v9}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_34

    goto :goto_55

    :catchall_34
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    :goto_55
    :try_start_42
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_2c

    goto/16 :goto_49

    .line 181
    :cond_40
    :goto_56
    :try_start_43
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catchall {:try_start_43 .. :try_end_43} :catchall_35

    goto :goto_57

    :catchall_35
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :goto_57
    :try_start_44
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_44
    .catchall {:try_start_44 .. :try_end_44} :catchall_36

    goto :goto_58

    :catchall_36
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    :goto_58
    :try_start_45
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_45
    .catchall {:try_start_45 .. :try_end_45} :catchall_2c

    goto/16 :goto_49

    :catchall_37
    :goto_59
    move-object/from16 v19, v12

    goto/16 :goto_44

    :cond_41
    move-object/from16 v19, v12

    .line 184
    :goto_5a
    :try_start_46
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catchall {:try_start_46 .. :try_end_46} :catchall_38

    goto :goto_5b

    :catchall_38
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    :goto_5b
    :try_start_47
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_39

    goto :goto_5c

    :catchall_39
    move-exception v0

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    :goto_5c
    :try_start_48
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_2c

    goto/16 :goto_49

    :goto_5d
    const/4 v6, 0x0

    goto :goto_65

    :catchall_3a
    move-object/from16 v36, v6

    goto :goto_59

    .line 187
    :catchall_3b
    :goto_5e
    :try_start_49
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    if-eqz v0, :cond_42

    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    goto :goto_5f

    :catchall_3c
    move-exception v0

    goto :goto_60

    :cond_42
    :goto_5f
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_3c

    goto :goto_61

    :goto_60
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_61
    if-eqz v9, :cond_43

    .line 188
    :try_start_4a
    invoke-static {v9}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V

    goto :goto_62

    :catchall_3d
    move-exception v0

    goto :goto_63

    :cond_43
    :goto_62
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catchall {:try_start_4a .. :try_end_4a} :catchall_3d

    goto :goto_64

    :goto_63
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    :goto_64
    :try_start_4b
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catchall {:try_start_4b .. :try_end_4b} :catchall_3e

    goto :goto_5d

    :catchall_3e
    move-exception v0

    goto/16 :goto_4a

    :goto_65
    if-nez v6, :cond_44

    goto/16 :goto_3c

    .line 190
    :cond_44
    new-instance v0, Landroid/webkit/WebResourceResponse;

    invoke-virtual/range {v19 .. v19}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Ly1/L1;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v9, 0x0

    invoke-direct {v0, v5, v9, v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    move-object/from16 v22, v0

    :goto_66
    if-nez v22, :cond_85

    .line 191
    const-string v0, "viewport added \u2192 width="

    const-string v5, "<meta name=\"viewport\" content=\"width="

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    const-string v6, "text/html"

    iget v10, v1, Ly1/g0;->e:I

    if-gtz v10, :cond_45

    :goto_67
    move-object v0, v9

    move-object/from16 v5, v26

    move-object/from16 v10, v28

    goto/16 :goto_69

    :cond_45
    const/16 v12, 0x3f

    .line 193
    invoke-static {v12, v7}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x23

    invoke-static {v12, v11}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 194
    const-string v12, ".html"

    invoke-static {v11, v12}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_46

    goto :goto_67

    .line 195
    :cond_46
    invoke-static {v7, v8}, Lkotlin/text/StringsKt;->K(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_47

    goto :goto_67

    .line 196
    :cond_47
    :try_start_4c
    invoke-static {v11}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    if-nez v8, :cond_48

    goto :goto_67

    .line 197
    :cond_48
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_49

    goto :goto_67

    .line 198
    :cond_49
    sget-object v11, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v8, v11}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v12

    .line 199
    new-instance v13, Lkotlin/text/Regex;

    const-string v14, "<meta\\s[^>]*name=[\"\']viewport[\"\'][^>]*>"

    sget-object v15, Lkotlin/text/RegexOption;->IGNORE_CASE:Lkotlin/text/RegexOption;

    invoke-direct {v13, v14, v15}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    invoke-virtual {v13, v12}, Lkotlin/text/Regex;->containsMatchIn(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4a

    goto :goto_67

    .line 200
    :cond_4a
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", initial-scale=1.0\">"

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 201
    new-instance v13, Lkotlin/text/Regex;

    const-string v14, "<head[^>]*>"

    invoke-direct {v13, v14, v15}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 202
    new-instance v14, LE1/a;

    const/4 v15, 0x1

    invoke-direct {v14, v5, v15}, LE1/a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v13, v12, v14}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Lkotlin/jvm/functions/Function1;)Ljava/lang/String;

    move-result-object v5

    .line 203
    invoke-static {v5, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4b

    goto :goto_67

    .line 204
    :cond_4b
    const-string v12, "MinHub-HtmlVP"

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5, v11}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_4c} :catch_2

    move-object/from16 v10, v28

    :try_start_4d
    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v8, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_4d} :catch_1

    move-object/from16 v5, v26

    :try_start_4e
    invoke-direct {v0, v6, v5, v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_4e} :catch_3

    goto :goto_69

    :catch_1
    move-object/from16 v5, v26

    goto :goto_68

    :catch_2
    move-object/from16 v5, v26

    move-object/from16 v10, v28

    :catch_3
    :goto_68
    move-object v0, v9

    :goto_69
    if-nez v0, :cond_81

    .line 206
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0x3f

    .line 207
    invoke-static {v12, v7}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x23

    invoke-static {v12, v0}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string v8, "/FOSSILindex.html"

    invoke-static {v0, v8}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    const-string v11, "MinHub-MZPatch"

    if-nez v8, :cond_4c

    :catch_4
    :goto_6a
    move-object v12, v9

    goto :goto_6b

    .line 209
    :cond_4c
    :try_start_4f
    invoke-static {v0}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_4d

    goto :goto_6a

    .line 210
    :cond_4d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4e

    goto :goto_6a

    .line 211
    :cond_4e
    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_4f

    goto :goto_6a

    :cond_4f
    const-string v12, "index.html"

    invoke-direct {v8, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_50

    goto :goto_6a

    .line 213
    :cond_50
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v8, v0}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v8

    const-string v12, "main.js"

    const-string v13, "plugins/FOSSIL.js"

    invoke-static {v8, v12, v13}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 214
    const-string v12, "FOSSILindex.html generated on-the-fly"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v12, Landroid/webkit/WebResourceResponse;

    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v12, v6, v5, v13}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_4f} :catch_4

    :goto_6b
    if-nez v12, :cond_84

    .line 216
    const-string v0, "\n(function() {\n  var JS_PY = \"class _P:\\n  def __getattr__(self,n): return _P()\\n  def __call__(self,*a,**k): return _P()\\n  def __bool__(self): return False\\n  def __iter__(self): return iter([])\\nfetch=_P()\\nFetch=_P()\\nXMLHttpRequest=_P()\\nObject=_P()\\nPromise=_P()\\n\";\n  var PYODIDE_PY = \"import sys as _s\\nclass _P:\\n  def __getattr__(self,n):return _P()\\n  def __call__(self,*a,**k):return _P()\\n  def __bool__(self):return False\\nJsException=type(\'JsException\',(Exception,),{})\\nffi=_P();http=_P()\\nfor _n in(\'ffi\',\'http\',\'webloop\',\'code\',\'_core\'):\\n  _m=type(_s)(\'pyodide.\'+_n)\\n  _m.__getattr__=lambda n:_P()\\n  _s.modules[\'pyodide.\'+_n]=_m\\n\";\n  var LOVENSE_STUB = \"# Lovense disabled on Android\\n\";\n  if (typeof Module === \'undefined\') return;\n  var _mhOrigRTI = Module.onRuntimeInitialized;\n  Module.onRuntimeInitialized = function() {\n    if (_mhOrigRTI) _mhOrigRTI.call(this);\n    try {\n      Module.FS.writeFile(\'/lib/python3.12/js.py\', JS_PY);\n      console.log(\'[MinHub] js.py stub written\');\n    } catch(e) { console.warn(\'[MinHub] js.py stub failed: \' + e); }\n    try {\n      Module.FS.writeFile(\'/lib/python3.12/pyodide.py\', PYODIDE_PY);\n      console.log(\'[MinHub] pyodide.py stub written\');\n    } catch(e) { console.warn(\'[MinHub] pyodide.py stub failed: \' + e); }\n    try {\n      var FETCH_STUB = \"class _P:\\n  def __getattr__(self,n):return _P()\\n  def __call__(self,*a,**k):return _P()\\ndef __getattr__(name):return _P()\\n\";\n      Module.FS.writeFile(\'/lib/python3.12/urllib3/contrib/emscripten/fetch.py\', FETCH_STUB);\n      Module.FS.writeFile(\'/lib/python3.12/urllib3/contrib/emscripten/emscripten_fetch_worker.js\', \'\');\n      console.log(\'[MinHub] urllib3 emscripten fetch stub written\');\n    } catch(e) { console.warn(\'[MinHub] urllib3 fetch stub failed: \' + e); }\n    var lFiles = [\'Toys\',\'Functions\',\'LovenseRemoteSDK\',\'LvsConstant\',\'Pattern\',\'PatternV2\',\'PositionCommand\',\'StopFunction\'];\n    [\'/game/game/python-packages/lovenseplugin/\',\'/game/python-packages/lovenseplugin/\'].forEach(function(lp) {\n      lFiles.forEach(function(f) {\n        try { Module.FS.writeFile(lp+f+\'.py\', LOVENSE_STUB); } catch(e) {}\n      });\n    });\n    console.log(\'[MinHub] lovenseplugin stubs applied\');\n  };\n})();"

    const-string v6, "(function() {\n  if (location.protocol !== \'file:\') return;\n  // XHR interceptor: fixes two URL issues with Ren\'Py webloader on Android WebView.\n  //\n  // Issue 1 \u2014 Protocol-relative //game/... URLs (lazy-asset fetches):\n  //   Ren\'Py webloader calls emscripten.fetch_sync(\'//game/upscaled/x.png\').\n  //   Chrome resolves //game/... from file:// origin as file://game/... (host=\"game\"),\n  //   which is unreachable \u2192 status=0, empty response \u2192 \"network error\".\n  //   Fix: convert to absolute file:///...web/game/x.png using location.href as base.\n  //\n  // Issue 2 \u2014 Relative URLs missing the game/ prefix (data-index files):\n  //   Some XHR calls use bare relative paths (img/x.json) that resolve against web root,\n  //   but the files live in the game/ subdirectory.\n  //   Fix: prepend game/ for such relative URLs.\n  var ROOT_FILE_RE = /^(game\\.zip|renpy\\.js|renpy\\.data|renpy\\.wasm|renpy-pre\\.js|index\\.html)/;\n  var _xhrOpen = XMLHttpRequest.prototype.open;\n  XMLHttpRequest.prototype.open = function(method, url) {\n    if (typeof url === \'string\') {\n      if (url.startsWith(\'//game/\')) {\n        var base = location.href.substring(0, location.href.lastIndexOf(\'/\') + 1);\n        var origUrl = url;\n        url = base + url.substring(2).split(\'/\').map(function(s) { return encodeURIComponent(s); }).join(\'/\');\n        arguments[1] = url;\n        console.log(\'[MinHub] xhrProtoRel: \' + origUrl + \' \u2192 \' + url);\n      } else {\n        // Skip rerouting lazy-load manifest files (*_mfsuplub.json).\n        // If these load successfully Ren\'Py queues lazy assets which are then fetched via\n        // sync XHR in a Worker \u2014 a path we cannot intercept from the main thread.\n        // Letting the manifests fail causes Ren\'Py to use an empty asset list and load\n        // everything from game.zip instead, which works correctly on Android.\n        var isMfsuplubManifest = url.indexOf(\'_mfsuplub.json\') !== -1;\n        var isRelative = !isMfsuplubManifest &&\n            !url.startsWith(\'//\') && !url.startsWith(\'/\') &&\n            !url.startsWith(\'http://\') && !url.startsWith(\'https://\') &&\n            !url.startsWith(\'blob:\') && !url.startsWith(\'file:\') &&\n            !url.startsWith(\'game/\') && !ROOT_FILE_RE.test(url);\n        if (isRelative) {\n          var origUrl = url;\n          arguments[1] = \'game/\' + url;\n          url = arguments[1];\n          console.log(\'[MinHub] xhrReroute: \' + origUrl + \' \u2192 \' + url);\n        }\n      }\n      if (!url.startsWith(\'//\') && !url.startsWith(\'http\') && !url.startsWith(\'blob:\')) {\n        this._mhFileXHR = true;\n        this._mhFileUrl = url;\n      }\n    }\n    return _xhrOpen.apply(this, arguments);\n  };\n  // Safety net: Chrome WebView may return status=0 for file:// sync XHR even on success.\n  // After sync send() completes (readyState=4 immediately), if status=0 but the response\n  // has content, shadow the instance status with 200 so Emscripten treats it as success.\n  var _xhrSend = XMLHttpRequest.prototype.send;\n  XMLHttpRequest.prototype.send = function(body) {\n    _xhrSend.apply(this, arguments);\n    if (this._mhFileXHR && this.readyState === 4 && this.status === 0) {\n      var r = this.response;\n      var ok = r && (typeof r === \'string\' ? r.length > 0\n               : r instanceof ArrayBuffer ? r.byteLength > 0 : false);\n      if (ok) {\n        try {\n          Object.defineProperty(this, \'status\', { value: 200, configurable: true });\n          console.log(\'[MinHub] xhrStatus0Fix: \' + this._mhFileUrl);\n        } catch(e) {}\n      }\n    }\n  };\n  // fetch() polyfill: Chrome 91+ blocks fetch() for file:// URLs.\n  if (!window.fetch) return;\n  var _f = window.fetch;\n  window.fetch = function(resource, init) {\n    var u = (resource && typeof resource === \'object\' && resource.url) ? resource.url : String(resource);\n    if (u.startsWith(\'//\') && location.protocol === \'file:\') {\n      var base = location.href.replace(/\\/[^\\/]*$/, \'/\');\n      var orig = u;\n      u = base + u.substring(2).split(\'/\').map(encodeURIComponent).join(\'/\');\n      console.log(\'[MinHub] fetchPoly //\u2192file: \' + orig + \' \u2192 \' + u);\n    }\n    var isHttp = u.startsWith(\'http://\') || u.startsWith(\'https://\');\n    if (isHttp) return _f.apply(this, arguments);\n    console.log(\'[MinHub] fetchPoly XHR: \' + u);\n    var method = (init && init.method) || \'GET\';\n    var body = (init && init.body) || null;\n    return new Promise(function(resolve, reject) {\n      var xhr = new XMLHttpRequest();\n      xhr.open(method, u, true);\n      if (init && init.headers) {\n        var h = init.headers;\n        Object.keys(h).forEach(function(k) { try { xhr.setRequestHeader(k, h[k]); } catch(e) {} });\n      }\n      xhr.responseType = \'arraybuffer\';\n      xhr.onload = function() {\n        var data = new Uint8Array(xhr.response || new ArrayBuffer(0));\n        var pos = 0;\n        var reader = {\n          read: function() {\n            if (pos >= data.length) return Promise.resolve({ done: true, value: undefined });\n            var chunk = data.subarray(pos, Math.min(pos + 65536, data.length));\n            pos += chunk.length;\n            return Promise.resolve({ done: false, value: chunk });\n          },\n          cancel: function() { return Promise.resolve(); }\n        };\n        resolve({\n          ok: true, status: xhr.status > 0 ? xhr.status : 200, statusText: \'OK\',\n          headers: { get: function(h) { return (h+\'\').toLowerCase() === \'content-length\' ? String(data.length) : null; } },\n          body: { getReader: function() { return reader; } },\n          arrayBuffer: function() { return Promise.resolve(xhr.response); },\n          blob: function() { return Promise.resolve(new Blob([xhr.response])); },\n          text: function() { return Promise.resolve(new TextDecoder().decode(data)); },\n          json: function() { return Promise.resolve(JSON.parse(new TextDecoder().decode(data))); }\n        });\n      };\n      xhr.onerror = function() {\n        console.warn(\'[MinHub] fetchPoly XHR error: \' + u);\n        reject(new TypeError(\'Failed to fetch\'));\n      };\n      xhr.send(body);\n    });\n  };\n  console.log(\'[MinHub] fetchPolyfill installed\');\n})();\n"

    const-string v8, "renpy-pre.js patched didTextPatch="

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0x3f

    .line 217
    invoke-static {v12, v7}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/16 v12, 0x23

    invoke-static {v12, v13}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 218
    const-string v12, "/renpy-pre.js"

    invoke-static {v13, v12}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    const-string v14, "no-store, no-cache"

    const-string v15, "MinHub-RenpyPatch"

    if-nez v12, :cond_51

    :goto_6c
    move-object/from16 v17, v2

    move-object/from16 v26, v5

    move-object/from16 v2, v36

    goto/16 :goto_70

    .line 219
    :cond_51
    :try_start_50
    invoke-static {v13}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    if-nez v12, :cond_52

    goto :goto_6c

    .line 220
    :cond_52
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_53

    goto :goto_6c

    .line 221
    :cond_53
    sget-object v13, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v12, v13}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v12

    .line 222
    new-instance v9, Lkotlin/text/Regex;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_50 .. :try_end_50} :catch_7

    move-object/from16 v17, v2

    :try_start_51
    const-string v2, "[ \\t]*// Clear error when running without a server\\.\\r?\\n[ \\t]*if \\(location\\.href\\.startsWith\\(\'file://\'\\)\\) \\{\\r?\\n[ \\t]*[^\\n]+\\r?\\n[ \\t]*\\}\\r?\\n"

    invoke-direct {v9, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 223
    const-string v2, ""

    .line 224
    invoke-virtual {v9, v12, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    const-string v9, "if (!response.ok) {"
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_51} :catch_6

    move-object/from16 v26, v5

    .line 226
    :try_start_52
    const-string v5, "if (!response.ok && response.status !== 0) {"

    .line 227
    invoke-static {v2, v9, v5}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    const-string v5, "window.atExit = () => {\n        canvas.remove();\n        reportError(\"The game exited unexpectedly.\");\n    };"

    .line 229
    const-string v9, "window.atExit = () => {\n        canvas.remove();\n        if (window.MinHub && window.MinHub.exit) { window.MinHub.exit(); } else { window.history.back(); }\n    };"

    .line 230
    invoke-static {v2, v5, v9}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-static {v2, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/16 v21, 0x1

    xor-int/lit8 v5, v5, 0x1

    .line 232
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 234
    new-instance v28, Landroid/webkit/WebResourceResponse;

    .line 235
    const-string v29, "application/javascript"

    const-string v30, "UTF-8"

    .line 236
    const-string v32, "OK"
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_52} :catch_5

    move-object/from16 v2, v36

    .line 237
    :try_start_53
    invoke-static {v2, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v33

    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 238
    invoke-virtual {v0, v13}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v31, 0xc8

    move-object/from16 v34, v5

    .line 239
    invoke-direct/range {v28 .. v34}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_53} :catch_8

    move-object/from16 v9, v28

    goto :goto_70

    :catch_5
    :goto_6d
    move-object/from16 v2, v36

    goto :goto_6f

    :catch_6
    :goto_6e
    move-object/from16 v26, v5

    goto :goto_6d

    :catch_7
    move-object/from16 v17, v2

    goto :goto_6e

    :catch_8
    :goto_6f
    const/4 v9, 0x0

    :goto_70
    if-nez v9, :cond_83

    .line 240
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0x3f

    .line 241
    invoke-static {v12, v7}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x23

    invoke-static {v12, v0}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string v5, "/renpy.js"

    invoke-static {v0, v5}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_54

    :catch_9
    :goto_71
    const/4 v2, 0x0

    goto :goto_72

    .line 243
    :cond_54
    :try_start_54
    invoke-static {v0}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_55

    goto :goto_71

    .line 244
    :cond_55
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_56

    goto :goto_71

    .line 245
    :cond_56
    const-string v5, "renpy.js patched (Worker XHR polyfill injected)"

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v5, "(function() {\n  if (typeof window !== \'undefined\') return;\n  if (typeof XMLHttpRequest === \'undefined\') return;\n  // --- Helper to create a fetch Response-like object from ArrayBuffer ---\n  function _mhMakeResp(data, status) {\n    return {\n      ok: true,\n      status: status > 0 ? status : 200,\n      statusText: \'OK\',\n      headers: { get: function(h) { return (h+\'\').toLowerCase() === \'content-length\' ? String(data.byteLength) : null; } },\n      arrayBuffer: function() { return Promise.resolve(data); },\n      blob: function() { return Promise.resolve(new Blob([data])); },\n      text: function() { return Promise.resolve(new TextDecoder(\'utf-8\').decode(data)); },\n      json: function() { return Promise.resolve(JSON.parse(new TextDecoder(\'utf-8\').decode(data))); }\n    };\n  }\n  // --- XHR interceptor (sync path) ---\n  var _xhrOpen = XMLHttpRequest.prototype.open;\n  XMLHttpRequest.prototype.open = function(method, url) {\n    if (typeof url === \'string\' && url.startsWith(\'//game/\')) {\n      var base = self.location.href.substring(0, self.location.href.lastIndexOf(\'/\') + 1);\n      var orig = url;\n      url = base + url.substring(2).split(\'/\').map(function(s) { return encodeURIComponent(s); }).join(\'/\');\n      arguments[1] = url;\n      this._mhWorkerUrl = url;\n      if (typeof console !== \'undefined\') console.log(\'[MinHub-Worker] xhrRemap: \' + orig + \' -> \' + url);\n    } else if (typeof url === \'string\' && url.startsWith(\'file:\')) {\n      this._mhWorkerUrl = url;\n    }\n    return _xhrOpen.apply(this, arguments);\n  };\n  var _xhrSend = XMLHttpRequest.prototype.send;\n  XMLHttpRequest.prototype.send = function(body) {\n    _xhrSend.apply(this, arguments);\n    if (this._mhWorkerUrl && this.readyState === 4 && this.status === 0) {\n      var r = this.response;\n      var ok = (r instanceof ArrayBuffer) ? r.byteLength > 0\n             : (typeof r === \'string\') ? r.length > 0 : false;\n      if (!ok && this.responseText && this.responseText.length > 0) ok = true;\n      if (ok) {\n        try { Object.defineProperty(this, \'status\', { value: 200, configurable: true }); } catch(e) {}\n        if (typeof console !== \'undefined\') console.log(\'[MinHub-Worker] xhrStatus0Fix: \' + this._mhWorkerUrl);\n      }\n    }\n  };\n  // --- fetch() polyfill for Worker ---\n  if (typeof self !== \'undefined\' && typeof self.fetch === \'function\') {\n    var _origFetch = self.fetch;\n    self.fetch = function(resource, init) {\n      var u = (resource && typeof resource === \'object\' && resource.url) ? resource.url : String(resource);\n      if (typeof u === \'string\' && u.startsWith(\'//game/\')) {\n        var base = self.location.href.substring(0, self.location.href.lastIndexOf(\'/\') + 1);\n        var orig = u;\n        var fileUrl = base + u.substring(2).split(\'/\').map(function(s) { return encodeURIComponent(s); }).join(\'/\');\n        if (typeof console !== \'undefined\') console.log(\'[MinHub-Worker] fetchRemap: \' + orig + \' -> \' + fileUrl);\n        return new Promise(function(resolve, reject) {\n          var xhr = new XMLHttpRequest();\n          xhr.open(\'GET\', fileUrl, true);\n          xhr.responseType = \'arraybuffer\';\n          xhr.onload = function() {\n            if (xhr.status == 200 || xhr.status == 0) {\n              var d = xhr.response || new ArrayBuffer(0);\n              if (d.byteLength > 0) { resolve(_mhMakeResp(d, xhr.status)); return; }\n            }\n            if (typeof console !== \'undefined\') console.warn(\'[MinHub-Worker] fetchEmpty: \' + fileUrl);\n            reject(new Error(\'XHR returned empty: \' + fileUrl));\n          };\n          xhr.onerror = function() {\n            if (typeof console !== \'undefined\') console.warn(\'[MinHub-Worker] fetchXHR err: \' + fileUrl);\n            reject(new Error(\'XHR error: \' + fileUrl));\n          };\n          xhr.send(null);\n        });\n      }\n      var isHttp = u.startsWith(\'http://\') || u.startsWith(\'https://\');\n      if (isHttp) return _origFetch.apply(this, arguments);\n      if (typeof console !== \'undefined\') console.log(\'[MinHub-Worker] fetchWorker XHR: \' + u);\n      return new Promise(function(resolve, reject) {\n        var xhr = new XMLHttpRequest();\n        xhr.open(\'GET\', u, true);\n        xhr.responseType = \'arraybuffer\';\n        xhr.onload = function() {\n          if (xhr.status == 200 || xhr.status == 0) {\n            resolve(_mhMakeResp(xhr.response || new ArrayBuffer(0), xhr.status));\n          } else {\n            reject(new Error(\'XHR failed: \' + u + \' status=\' + xhr.status));\n          }\n        };\n        xhr.onerror = function() {\n          if (typeof console !== \'undefined\') console.warn(\'[MinHub-Worker] fetchWorker XHR error: \' + u);\n          reject(new Error(\'XHR error: \' + u));\n        };\n        xhr.send(null);\n      });\n    };\n    if (typeof console !== \'undefined\') console.log(\'[MinHub-Worker] fetchPolyfill installed\');\n  }\n  if (typeof console !== \'undefined\') console.log(\'[MinHub-Worker] polyfill installed\');\n})();\n"

    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    new-instance v6, Ljava/io/SequenceInputStream;

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v8, v5}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    .line 248
    new-instance v28, Landroid/webkit/WebResourceResponse;

    .line 249
    const-string v29, "application/javascript"

    const-string v30, "UTF-8"

    .line 250
    const-string v32, "OK"

    .line 251
    invoke-static {v2, v14}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v33

    const/16 v31, 0xc8

    move-object/from16 v34, v6

    .line 252
    invoke-direct/range {v28 .. v34}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_54} :catch_9

    move-object/from16 v2, v28

    :goto_72
    if-nez v2, :cond_86

    .line 253
    const-string v0, "rmmz_core.js patched ("

    const-string v2, "if(typeof process!==\"undefined\"&&typeof process.cwd!==\"function\"){process.cwd=function(){try{var h=window.location.href;var d=h.substring(0,h.lastIndexOf(\'/\'));if(d.startsWith(\'file://\'))d=d.substring(7);return decodeURIComponent(d);}catch(e){return\'\';}};}\n"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0x3f

    .line 254
    invoke-static {v12, v7}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v12, 0x23

    invoke-static {v12, v5}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 255
    const-string v6, "/rmmz_core.js"

    invoke-static {v5, v6}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    const-string v8, ")"

    const-string v9, "application/javascript"

    if-nez v6, :cond_57

    :catch_a
    :goto_73
    move-object/from16 v2, v26

    :catch_b
    const/4 v0, 0x0

    goto/16 :goto_74

    .line 256
    :cond_57
    :try_start_55
    invoke-static {v5}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    if-nez v5, :cond_58

    goto :goto_73

    .line 257
    :cond_58
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_59

    goto :goto_73

    .line 258
    :cond_59
    sget-object v6, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v5, v6}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 259
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 260
    const-string v12, "this._stretchEnabled = this._defaultStretchMode();"

    .line 261
    const-string v13, "this._stretchEnabled = (typeof this._defaultStretchMode === \'function\') ? this._defaultStretchMode() : (this._defaultStretchMode !== false);"

    .line 262
    invoke-static {v2, v12, v13}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 263
    const-string v12, "return typeof require === \"function\" && typeof process === \"object\";"

    .line 264
    const-string v13, "return typeof require === \"function\" && typeof process === \"object\" && !!(process.versions && process.versions[\'node-webkit\']);"

    .line 265
    invoke-static {v2, v12, v13}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 266
    invoke-static {}, Lkotlin/collections/CollectionsKt;->createListBuilder()Ljava/util/List;

    move-result-object v12

    .line 267
    const-string v13, "process.cwd-polyfill"

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    const-string v13, "_defaultStretchMode === \'function\'"

    invoke-static {v5, v13}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_5a

    const-string v13, "dsm-guard"

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    :cond_5a
    const-string v13, "process.versions[\'node-webkit\']"

    invoke-static {v5, v13}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5b

    const-string v5, "isnwjs-guard"

    invoke-interface {v12, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_5b
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->build(Ljava/util/List;)Ljava/util/List;

    move-result-object v28

    const/16 v32, 0x0

    const/16 v33, 0x3f

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    .line 271
    invoke-static/range {v28 .. v33}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v2, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_55} :catch_a

    move-object/from16 v2, v26

    :try_start_56
    invoke-direct {v0, v9, v2, v5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_56} :catch_b

    :goto_74
    if-nez v0, :cond_81

    .line 273
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0x3f

    .line 274
    invoke-static {v12, v7}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x23

    invoke-static {v12, v0}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 275
    const-string v5, "/rmmz_windows.js"

    invoke-static {v0, v5}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5c

    :catch_c
    :goto_75
    const/4 v0, 0x0

    goto :goto_76

    .line 276
    :cond_5c
    :try_start_57
    invoke-static {v0}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_5d

    goto :goto_75

    .line 277
    :cond_5d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_5e

    goto :goto_75

    .line 278
    :cond_5e
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v5}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    .line 279
    const-string v6, "const tone = $gameSystem.windowTone();"

    .line 280
    invoke-static {v0, v6}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_5f

    goto :goto_75

    .line 281
    :cond_5f
    const-string v12, "if (!$gameSystem) return;\n    const tone = $gameSystem.windowTone();"

    .line 282
    invoke-static {v0, v6, v12}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 283
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_60

    goto :goto_75

    .line 284
    :cond_60
    const-string v0, "rmmz_windows.js patched (updateTone guard)"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v12, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v9, v2, v12}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_57} :catch_c

    :goto_76
    if-nez v0, :cond_81

    .line 286
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0x3f

    .line 287
    invoke-static {v12, v7}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x23

    invoke-static {v12, v0}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 288
    const-string v5, "/Hendrix_Localization.js"

    invoke-static {v0, v5}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/16 v6, 0xa

    const/16 v12, 0xd

    const-string v13, "\r\n"

    const-string v14, "\n"

    if-nez v5, :cond_62

    :catch_d
    :cond_61
    :goto_77
    const/4 v6, 0x0

    goto :goto_78

    .line 289
    :cond_62
    :try_start_58
    invoke-static {v0}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_63

    goto :goto_77

    .line 290
    :cond_63
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_64

    goto :goto_77

    .line 291
    :cond_64
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v5}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13, v14}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v12, v6}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    .line 292
    const-string v15, "let content = \'\';\n        if (typeof require === \'function\') {\n            // Desktop"

    .line 293
    const-string v6, "xhr.send();\n                if (xhr.status === 200) {"

    .line 294
    invoke-static {v0, v15}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_61

    invoke-static {v0, v6}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_65

    goto :goto_77

    .line 295
    :cond_65
    const-string v12, "let content = \'\';\n        if (typeof require === \'function\' && typeof process !== \'undefined\' && typeof process.cwd === \'function\') {\n            // Desktop"

    .line 296
    invoke-static {v0, v15, v12}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    const-string v12, "xhr.send();\n                if (xhr.status === 200 || xhr.status === 0) {"

    .line 298
    invoke-static {v0, v6, v12}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    const-string v6, "Hendrix_Localization.js patched (process.cwd guard + file:// xhr status)"

    invoke-static {v11, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    new-instance v6, Landroid/webkit/WebResourceResponse;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {v0, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v12, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v9, v2, v12}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_58} :catch_d

    :goto_78
    if-nez v6, :cond_82

    .line 301
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0x3f

    .line 302
    invoke-static {v12, v7}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x23

    invoke-static {v12, v0}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    const-string v5, "/DKTools.js"

    invoke-static {v0, v5}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_66

    :catch_e
    :goto_79
    const/4 v0, 0x0

    goto :goto_7a

    .line 304
    :cond_66
    :try_start_59
    invoke-static {v0}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_67

    goto :goto_79

    .line 305
    :cond_67
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_68

    goto :goto_79

    .line 306
    :cond_68
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v5}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v13, v14}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xa

    const/16 v12, 0xd

    invoke-static {v0, v12, v6}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    .line 307
    const-string v6, "        this._stamp = {};\n\n        this._loadStamp();"

    .line 308
    invoke-static {v0, v6}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_69

    goto :goto_79

    .line 309
    :cond_69
    const-string v12, "        this._stamp = {};\n        // MinHub: Fix DKTools.IO for Android WebView NWJS_STAMP mode\n        if (!Utils.isNwjs() && this._mode === 0) {\n            var _dkON = this.normalizePath.bind(this);\n            this.normalizePath = function(p, rv) { return _dkON(p, rv).replace(/\\\\/g, \'/\'); };\n            var _dkSelf = this;\n            this.getAbsolutePath = function(p) { return _dkSelf.normalizePath(p || \'\'); };\n            this.isFile = function(fp) {\n                if (this.mode === 0) {\n                    var pts = this.normalizePath(decodeURIComponent(fp)).split(\'/\').filter(Boolean);\n                    if ((pts[pts.length-1]||\'\').indexOf(\'.\')>=0) return _.get(this._stamp,pts.concat(\'__stats__\'),{}).type===\'file\';\n                }\n                return false;\n            };\n            this.isDirectory = function(fp) {\n                if (this.mode === 0) {\n                    var pts = this.normalizePath(decodeURIComponent(fp)).split(\'/\').filter(Boolean);\n                    if ((pts[pts.length-1]||\'\').indexOf(\'.\')<0) return _.get(this._stamp,pts.concat(\'__stats__\'),{}).type===\'directory\';\n                }\n                return false;\n            };\n        }\n\n        this._loadStamp();"

    .line 310
    invoke-static {v0, v6, v12}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 311
    const-string v12, "this.getFullPath().split(\'\\\\\').filter(part => !!part);\n            const data = _.get(DKTools.IO.stamp, parts.concat(\'__stats__\'), {});"

    .line 312
    const-string v15, "this.getFullPath().split(/[\\\\\\/]/).filter(part => !!part);\n            const data = _.get(DKTools.IO.stamp, parts.concat(\'__stats__\'), {});"

    .line 313
    invoke-static {v6, v12, v15}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 314
    const-string v12, "this.getFullPath().split(\'\\\\\');\n            const temp = _.get(DKTools.IO.stamp, parts, {});"

    .line 315
    const-string v15, "this.getFullPath().split(/[\\\\\\/]/);\n            const temp = _.get(DKTools.IO.stamp, parts, {});"

    .line 316
    invoke-static {v6, v12, v15}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 317
    const-string v12, "                    if (xhr.status === 200) {\n                        object.onSuccess(processData(xhr.responseText), this);\n                    } else {\n                        this.__processError(xhr, object.onError);\n                    }"

    .line 318
    const-string v15, "                    if (xhr.status === 200 || xhr.status === 0) {\n                        object.onSuccess(processData(xhr.responseText), this);\n                    } else {\n                        this.__processError(xhr, object.onError);\n                    }"

    .line 319
    invoke-static {v6, v12, v15}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 320
    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    goto :goto_79

    .line 321
    :cond_6a
    const-string v0, "DKTools.js patched (Android STAMP compat)"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    new-instance v0, Landroid/webkit/WebResourceResponse;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v12, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v9, v2, v12}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_59} :catch_e

    :goto_7a
    if-nez v0, :cond_81

    .line 323
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0x3f

    .line 324
    invoke-static {v12, v7}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x23

    invoke-static {v12, v0}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    const-string v5, "/DKTools_Localization.js"

    invoke-static {v0, v5}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6c

    :catch_f
    :cond_6b
    :goto_7b
    move-object/from16 v30, v4

    move-object/from16 v27, v7

    move-object/from16 v28, v13

    :catch_10
    :goto_7c
    const/4 v0, 0x0

    goto/16 :goto_85

    .line 326
    :cond_6c
    :try_start_5a
    invoke-static {v0}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_6d

    goto :goto_7b

    .line 327
    :cond_6d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6e

    goto :goto_7b

    .line 328
    :cond_6e
    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v5}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v5

    .line 329
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_6f

    goto :goto_7b

    .line 330
    :cond_6f
    new-instance v6, Ljava/io/File;

    const-string v12, "locales"

    invoke-direct {v6, v0, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 332
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 333
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v15

    if-eqz v15, :cond_79

    .line 334
    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_78

    .line 335
    array-length v15, v6

    move-object/from16 v21, v6

    const/4 v6, 0x0

    :goto_7d
    if-ge v6, v15, :cond_78

    aget-object v22, v21, v6

    .line 336
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isDirectory()Z

    move-result v23

    if-eqz v23, :cond_77

    move/from16 v23, v6

    .line 337
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_74

    move/from16 v24, v15

    .line 338
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5a} :catch_f

    move-object/from16 v28, v13

    .line 339
    :try_start_5b
    array-length v13, v6

    move-object/from16 v25, v6

    const/4 v6, 0x0

    :goto_7e
    if-ge v6, v13, :cond_72

    move/from16 v26, v6

    aget-object v6, v25, v26

    .line 340
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v29

    if-eqz v29, :cond_70

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move/from16 v29, v13

    invoke-static {v6}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v13
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_5b} :catch_12

    move-object/from16 v30, v4

    :try_start_5c
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v13, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v13, v27

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_5c .. :try_end_5c} :catch_11

    move-object/from16 v27, v7

    :try_start_5d
    const-string v7, "json"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 341
    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_80

    :catch_11
    :goto_7f
    move-object/from16 v27, v7

    goto/16 :goto_7c

    :catch_12
    move-object/from16 v30, v4

    goto :goto_7f

    :cond_70
    move-object/from16 v30, v4

    move/from16 v29, v13

    move-object/from16 v13, v27

    move-object/from16 v27, v7

    :cond_71
    :goto_80
    add-int/lit8 v6, v26, 0x1

    move-object/from16 v7, v27

    move-object/from16 v4, v30

    move-object/from16 v27, v13

    move/from16 v13, v29

    goto :goto_7e

    :cond_72
    move-object/from16 v30, v4

    move-object/from16 v13, v27

    move-object/from16 v27, v7

    .line 342
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->h(Ljava/lang/Iterable;)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 343
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_81
    if-ge v7, v6, :cond_73

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    add-int/lit8 v7, v7, 0x1

    .line 344
    check-cast v25, Ljava/io/File;

    move/from16 v26, v6

    .line 345
    invoke-virtual/range {v25 .. v25}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 346
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move/from16 v6, v26

    goto :goto_81

    .line 347
    :cond_73
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->A(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_75

    goto :goto_82

    :cond_74
    move-object/from16 v30, v4

    move-object/from16 v28, v13

    move/from16 v24, v15

    move-object/from16 v13, v27

    move-object/from16 v27, v7

    .line 348
    :cond_75
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v4

    .line 349
    :goto_82
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_76

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_76
    move-object/from16 v6, v17

    goto :goto_83

    :cond_77
    move-object/from16 v30, v4

    move/from16 v23, v6

    move-object/from16 v28, v13

    move/from16 v24, v15

    move-object/from16 v13, v27

    move-object/from16 v27, v7

    .line 350
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_76

    invoke-static/range {v22 .. v22}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static/range {v22 .. v22}, Lkotlin/io/FilesKt;->getExtension(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "csv"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_76

    .line 351
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v6, v17

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_83
    add-int/lit8 v4, v23, 0x1

    move-object/from16 v17, v6

    move/from16 v15, v24

    move-object/from16 v7, v27

    move v6, v4

    move-object/from16 v27, v13

    move-object/from16 v13, v28

    move-object/from16 v4, v30

    goto/16 :goto_7d

    :cond_78
    move-object/from16 v30, v4

    move-object/from16 v27, v7

    move-object/from16 v28, v13

    .line 352
    invoke-static {v12}, Lkotlin/collections/CollectionsKt;->sort(Ljava/util/List;)V

    goto :goto_84

    :cond_79
    move-object/from16 v30, v4

    move-object/from16 v27, v7

    move-object/from16 v28, v13

    .line 353
    :goto_84
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v31

    const-string v32, ","

    const-string v33, "{"

    const-string v34, "}"

    new-instance v4, Lcom/minhub/gamehub/hub/catalog/h;

    const/16 v6, 0x13

    invoke-direct {v4, v6}, Lcom/minhub/gamehub/hub/catalog/h;-><init>(I)V

    const/16 v36, 0x18

    move-object/from16 v35, v4

    invoke-static/range {v31 .. v36}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v4

    .line 354
    const-string v22, ","

    const-string v23, "["

    const-string v24, "]"

    new-instance v6, Lcom/minhub/gamehub/hub/catalog/h;

    const/16 v7, 0x14

    invoke-direct {v6, v7}, Lcom/minhub/gamehub/hub/catalog/h;-><init>(I)V

    const/16 v26, 0x18

    move-object/from16 v25, v6

    move-object/from16 v21, v12

    invoke-static/range {v21 .. v26}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v6

    .line 355
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\n(function() {\n  if (typeof Utils !== \'undefined\' && Utils.isNwjs && Utils.isNwjs()) return;\n  var __mhLM = "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";\n  var __mhCsvFiles = "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";\n  var __mhApplyLP = function(n) {\n    if (!window.DKTools || !DKTools.Localization || !DKTools.Localization._loadData) {\n      if (n < 200) setTimeout(function() { __mhApplyLP(n + 1); }, 50); return;\n    }\n    if (DKTools.Localization.__mhLocPatched) return;\n    DKTools.Localization.__mhLocPatched = true;\n    var _orig = DKTools.Localization._loadData;\n    var __mhParseCsv = function(text, locale, delimiter) {\n      var data = {};\n      var rows = text.split(\'\\n\');\n      if (rows.length === 0) return null;\n      var header = rows[0].split(delimiter);\n      var localeIndex = -1;\n      for (var hi = 0; hi < header.length; hi++) {\n        if (header[hi].trim().toLowerCase() === locale.toLowerCase()) { localeIndex = hi; break; }\n      }\n      if (localeIndex === -1) return null;\n      for (var ri = 1; ri < rows.length; ri++) {\n        var row = rows[ri];\n        if (!row) continue;\n        var values = row.split(delimiter);\n        if (values.length <= 1) continue;\n        var key = values[0];\n        var value = values[localeIndex];\n        if (value !== undefined) {\n          value = value.replace(/[\\r\\n]+/g, \'\');\n          if (value.length >= 2 && value.charAt(0) === \'\"\' && value.charAt(value.length - 1) === \'\"\') {\n            value = value.slice(1, -1).replace(/\"\"/g, \'\"\');\n          }\n        }\n        if (data[key] === undefined) data[key] = value;\n      }\n      return data;\n    };\n    DKTools.Localization._loadData = async function(locale) {\n      var extension = this._fileExtension;\n      var dataPath = this._dataPath || \'locales/\';\n      if (extension !== \'.json\' && __mhCsvFiles.length > 0) {\n        var delimiter = \';\';\n        try {\n          if (typeof LocalizationParam !== \'undefined\') {\n            delimiter = LocalizationParam.get(\'CSV delimiter\') || \';\';\n          }\n        } catch (e) {}\n        var csvData = {};\n        var anyLoaded = false;\n        for (var ci = 0; ci < __mhCsvFiles.length; ci++) {\n          try {\n            var cxhr = new XMLHttpRequest();\n            cxhr.open(\'GET\', dataPath + __mhCsvFiles[ci], false);\n            cxhr.send();\n            if ((cxhr.status === 200 || cxhr.status === 0) && cxhr.responseText.length > 0) {\n              anyLoaded = true;\n              var parsedCsv = __mhParseCsv(cxhr.responseText, locale, delimiter);\n              if (parsedCsv) {\n                Object.keys(parsedCsv).forEach(function(k) {\n                  if (csvData[k] === undefined) csvData[k] = parsedCsv[k];\n                });\n              }\n            }\n          } catch (e) {}\n        }\n        if (anyLoaded && Object.keys(csvData).length > 0) return csvData;\n      }\n      var files = __mhLM[locale];\n      if (!files || files.length === 0) return _orig.call(this, locale);\n      var dirBase = dataPath + locale + \'/\';\n      var data = {};\n      var anyLoaded2 = false;\n      for (var i = 0; i < files.length; i++) {\n        try {\n          var xhr = new XMLHttpRequest();\n          xhr.open(\'GET\', dirBase + files[i], false);\n          xhr.send();\n          if ((xhr.status === 200 || xhr.status === 0) && xhr.responseText.length > 0) {\n            var parsed = JSON.parse(xhr.responseText);\n            anyLoaded2 = true;\n            if (Array.isArray(parsed)) {\n              data[files[i].replace(/\\.json$/i, \'\')] = parsed;\n            } else {\n              Object.keys(parsed).forEach(function(k) {\n                if (data[k] === undefined) data[k] = parsed[k];\n              });\n            }\n          }\n        } catch(e) {}\n      }\n      if (anyLoaded2) return data;\n      return _orig.call(this, locale);\n    };\n  };\n  __mhApplyLP(0);\n})();\n"

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 356
    invoke-static {v4}, Lkotlin/text/StringsKt;->trimIndent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 357
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v31

    const/16 v35, 0x0

    const/16 v36, 0x3f

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    invoke-static/range {v31 .. v36}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v0

    const/16 v25, 0x0

    const/16 v26, 0x3f

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    .line 358
    invoke-static/range {v21 .. v26}, Lkotlin/collections/CollectionsKt;->o(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "DKTools_Localization.js patched (json locales: "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; csv files: "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    new-instance v0, Landroid/webkit/WebResourceResponse;

    .line 361
    new-instance v6, Ljava/io/ByteArrayInputStream;

    .line 362
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 363
    invoke-direct {v0, v9, v2, v6}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_5d} :catch_10

    :goto_85
    if-nez v0, :cond_81

    .line 364
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v7, v27

    move-object/from16 v3, v30

    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0x3f

    .line 365
    invoke-static {v12, v7}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v12, 0x23

    invoke-static {v12, v0}, Lkotlin/text/StringsKt;->U(CLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 366
    const-string v3, "/pixi-spine.js"

    invoke-static {v0, v3}, Lkotlin/text/StringsKt;->r(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7a

    :catch_13
    :goto_86
    const/16 v16, 0x0

    goto :goto_87

    .line 367
    :cond_7a
    :try_start_5e
    invoke-static {v0}, Ly1/L1;->h(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_7b

    goto :goto_86

    .line 368
    :cond_7b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_7c

    goto :goto_86

    .line 369
    :cond_7c
    sget-object v3, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-static {v0, v3}, Lkotlin/io/FilesKt;->readText(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v4, v28

    invoke-static {v0, v4, v14}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xa

    const/16 v12, 0xd

    invoke-static {v0, v12, v6}, Lkotlin/text/StringsKt;->F(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    .line 370
    const-string v4, "Skin.prototype.addSkin = function (skin) {"

    .line 371
    invoke-static {v0, v4}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7d

    goto :goto_86

    .line 372
    :cond_7d
    const-string v5, "Skin.prototype.addSkin = function (skin) { if (!skin || !skin.bones || !skin.constraints) return;"

    .line 373
    invoke-static {v0, v4, v5}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 374
    const-string v5, "                this.lastTime = this.lastTime || Date.now();\n                var timeDelta = (Date.now() - this.lastTime) * 0.001;\n                this.lastTime = Date.now();\n                this.update(timeDelta);"

    .line 375
    invoke-static {v4, v5}, Lkotlin/text/StringsKt;->p(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7e

    .line 376
    const-string v6, "                var __mhNow = Date.now();\n                this.lastTime = this.lastTime || __mhNow;\n                this.__mhAcc = (this.__mhAcc || 0) + (__mhNow - this.lastTime);\n                this.lastTime = __mhNow;\n                if (this.__mhAcc >= 33) { this.update(this.__mhAcc * 0.001); this.__mhAcc = 0; }"

    .line 377
    invoke-static {v4, v5, v6}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 378
    :cond_7e
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    goto :goto_86

    .line 379
    :cond_7f
    const-string v0, "pixi-spine.js patched (addSkin null guard + 30fps update cap)"

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    new-instance v0, Landroid/webkit/WebResourceResponse;

    .line 381
    new-instance v5, Ljava/io/ByteArrayInputStream;

    .line 382
    invoke-virtual {v4, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 383
    invoke-direct {v0, v9, v2, v5}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_5e} :catch_13

    move-object/from16 v16, v0

    :goto_87
    if-nez v16, :cond_80

    .line 384
    invoke-static {v1, v7}, Ly1/L1;->t(Ly1/g0;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    if-nez v2, :cond_86

    .line 385
    invoke-static {v1, v7}, Ly1/L1;->w(Ly1/g0;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    if-nez v2, :cond_86

    .line 386
    invoke-static {v1, v7}, Ly1/L1;->u(Ly1/g0;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    if-nez v2, :cond_86

    .line 387
    invoke-static {v1, v7}, Ly1/L1;->x(Ly1/g0;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    if-nez v2, :cond_86

    .line 388
    invoke-static {v1, v7}, Ly1/L1;->y(Ly1/g0;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    if-nez v2, :cond_86

    .line 389
    invoke-static {v1, v7}, Ly1/L1;->e(Ly1/g0;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    if-nez v2, :cond_86

    .line 390
    invoke-static {v1, v7}, Ly1/L1;->m(Ly1/g0;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    if-nez v2, :cond_86

    .line 391
    invoke-static {v1, v7}, Ly1/L1;->a(Ly1/g0;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    if-nez v2, :cond_86

    .line 392
    invoke-super/range {p0 .. p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v2

    goto :goto_88

    :cond_80
    move-object/from16 v2, v16

    goto :goto_88

    :cond_81
    move-object v2, v0

    goto :goto_88

    :cond_82
    move-object v2, v6

    goto :goto_88

    :cond_83
    move-object v2, v9

    goto :goto_88

    :cond_84
    move-object v2, v12

    goto :goto_88

    :cond_85
    move-object/from16 v2, v22

    :cond_86
    :goto_88
    return-object v2

    :cond_87
    return-object v6
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Z
    .locals 8

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "request"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string v0, "toString(...)"

    .line 20
    .line 21
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    const-string v0, "url"

    .line 27
    .line 28
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 32
    .line 33
    new-instance v0, Ljava/net/URI;

    .line 34
    .line 35
    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p2

    .line 42
    if-eqz p2, :cond_0

    .line 43
    .line 44
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 45
    .line 46
    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string v0, "toLowerCase(...)"

    .line 51
    .line 52
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    .line 57
    move-object p2, v0

    .line 58
    goto :goto_1

    .line 59
    :cond_0
    const/4 p2, 0x0

    .line 60
    :goto_0
    if-nez p2, :cond_1

    .line 61
    .line 62
    move-object p2, v1

    .line 63
    :cond_1
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    goto :goto_2

    .line 68
    :goto_1
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 69
    .line 70
    invoke-static {p2}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p2

    .line 74
    invoke-static {p2}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    :goto_2
    invoke-static {p2}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    if-eqz v0, :cond_2

    .line 83
    .line 84
    goto :goto_3

    .line 85
    :cond_2
    move-object v1, p2

    .line 86
    :goto_3
    check-cast v1, Ljava/lang/String;

    .line 87
    .line 88
    const-string v6, "about"

    .line 89
    .line 90
    const-string v7, "javascript"

    .line 91
    .line 92
    const-string v2, "http"

    .line 93
    .line 94
    const-string v3, "https"

    .line 95
    .line 96
    const-string v4, "file"

    .line 97
    .line 98
    const-string v5, "content"

    .line 99
    .line 100
    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-static {p2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-interface {p2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result p2

    .line 112
    if-eqz p2, :cond_3

    .line 113
    .line 114
    const/4 p1, 0x0

    .line 115
    return p1

    .line 116
    :cond_3
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    const-string v1, "Unsupported navigation scheme: "

    .line 127
    .line 128
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    iget-object v0, p0, Ly1/g0;->k:Lkotlin/coroutines/a;

    .line 139
    .line 140
    invoke-virtual {v0, p2, p1}, Lkotlin/coroutines/a;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    const/4 p1, 0x1

    .line 144
    return p1
.end method
