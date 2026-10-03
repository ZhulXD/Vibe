.class public final Lorg/godotengine/godot/variant/Callable;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation build Lc/a;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/godotengine/godot/variant/Callable$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0011\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0007\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0011\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J!\u0010\u0006\u001a\u0004\u0018\u00010\u00012\u0012\u0010\u0007\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00010\u0008\"\u00020\u0001\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u0003H\u0002J\u0008\u0010\u000b\u001a\u00020\u000cH\u0004R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lorg/godotengine/godot/variant/Callable;",
        "",
        "nativeCallablePointer",
        "",
        "<init>",
        "(J)V",
        "call",
        "params",
        "",
        "([Ljava/lang/Object;)Ljava/lang/Object;",
        "getNativePointer",
        "finalize",
        "",
        "Companion",
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


# static fields
.field public static final Companion:Lorg/godotengine/godot/variant/Callable$Companion;


# instance fields
.field private final nativeCallablePointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/godotengine/godot/variant/Callable$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lorg/godotengine/godot/variant/Callable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lorg/godotengine/godot/variant/Callable;->Companion:Lorg/godotengine/godot/variant/Callable$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/godotengine/godot/variant/Callable;->nativeCallablePointer:J

    .line 5
    .line 6
    return-void
.end method

.method public static final synthetic access$nativeCall(J[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/godotengine/godot/variant/Callable;->nativeCall(J[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$nativeCallObject(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/godotengine/godot/variant/Callable;->nativeCallObject(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$nativeCallObjectDeferred(JLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lorg/godotengine/godot/variant/Callable;->nativeCallObjectDeferred(JLjava/lang/String;[Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$releaseNativePointer(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/godotengine/godot/variant/Callable;->releaseNativePointer(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final varargs call(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lorg/godotengine/godot/variant/Callable;->Companion:Lorg/godotengine/godot/variant/Callable$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/godotengine/godot/variant/Callable$Companion;->call(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final varargs callDeferred(JLjava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .line 1
    sget-object v0, Lorg/godotengine/godot/variant/Callable;->Companion:Lorg/godotengine/godot/variant/Callable$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/godotengine/godot/variant/Callable$Companion;->callDeferred(JLjava/lang/String;[Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private final getNativePointer()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lorg/godotengine/godot/variant/Callable;->nativeCallablePointer:J

    .line 2
    .line 3
    return-wide v0
.end method

.method private static final native nativeCall(J[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeCallObject(JLjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native nativeCallObjectDeferred(JLjava/lang/String;[Ljava/lang/Object;)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method

.method private static final native releaseNativePointer(J)V
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation
.end method


# virtual methods
.method public final varargs call([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-wide v0, p0, Lorg/godotengine/godot/variant/Callable;->nativeCallablePointer:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 3
    :cond_0
    sget-object v2, Lorg/godotengine/godot/variant/Callable;->Companion:Lorg/godotengine/godot/variant/Callable$Companion;

    invoke-static {v2, v0, v1, p1}, Lorg/godotengine/godot/variant/Callable$Companion;->access$nativeCall(Lorg/godotengine/godot/variant/Callable$Companion;J[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final finalize()V
    .locals 3

    .line 1
    sget-object v0, Lorg/godotengine/godot/variant/Callable;->Companion:Lorg/godotengine/godot/variant/Callable$Companion;

    .line 2
    .line 3
    iget-wide v1, p0, Lorg/godotengine/godot/variant/Callable;->nativeCallablePointer:J

    .line 4
    .line 5
    invoke-static {v0, v1, v2}, Lorg/godotengine/godot/variant/Callable$Companion;->access$releaseNativePointer(Lorg/godotengine/godot/variant/Callable$Companion;J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
