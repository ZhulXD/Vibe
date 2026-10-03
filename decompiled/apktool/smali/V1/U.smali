.class public abstract LV1/U;
.super LV1/t;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LV1/T;

    .line 2
    .line 3
    sget-object v1, LV1/t;->Key:LV1/s;

    .line 4
    .line 5
    sget-object v2, LV1/S;->b:LV1/S;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lkotlin/coroutines/AbstractCoroutineContextKey;-><init>(Lkotlin/coroutines/CoroutineContext$Key;Lkotlin/jvm/functions/Function1;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
