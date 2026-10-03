.class public final Ll1/j;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/reflect/Field;

.field public final c:Ljava/lang/String;

.field public final d:Z

.field public final e:Z

.field public final synthetic f:Ljava/lang/reflect/Method;

.field public final synthetic g:Z

.field public final synthetic h:Li1/y;

.field public final synthetic i:Li1/l;

.field public final synthetic j:Lcom/google/gson/reflect/TypeToken;

.field public final synthetic k:Z

.field public final synthetic l:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Field;ZZLjava/lang/reflect/Method;ZLi1/y;Li1/l;Lcom/google/gson/reflect/TypeToken;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p5, p0, Ll1/j;->f:Ljava/lang/reflect/Method;

    .line 5
    .line 6
    iput-boolean p6, p0, Ll1/j;->g:Z

    .line 7
    .line 8
    iput-object p7, p0, Ll1/j;->h:Li1/y;

    .line 9
    .line 10
    iput-object p8, p0, Ll1/j;->i:Li1/l;

    .line 11
    .line 12
    iput-object p9, p0, Ll1/j;->j:Lcom/google/gson/reflect/TypeToken;

    .line 13
    .line 14
    iput-boolean p10, p0, Ll1/j;->k:Z

    .line 15
    .line 16
    iput-boolean p11, p0, Ll1/j;->l:Z

    .line 17
    .line 18
    iput-object p1, p0, Ll1/j;->a:Ljava/lang/String;

    .line 19
    .line 20
    iput-object p2, p0, Ll1/j;->b:Ljava/lang/reflect/Field;

    .line 21
    .line 22
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    iput-object p1, p0, Ll1/j;->c:Ljava/lang/String;

    .line 27
    .line 28
    iput-boolean p3, p0, Ll1/j;->d:Z

    .line 29
    .line 30
    iput-boolean p4, p0, Ll1/j;->e:Z

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final a(Lp1/b;Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Ll1/j;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Ll1/j;->f:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    :try_start_0
    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 16
    :catch_0
    move-exception p1

    .line 17
    const/4 p2, 0x0

    .line 18
    invoke-static {v0, p2}, Ln1/c;->d(Ljava/lang/reflect/AccessibleObject;Z)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    new-instance v0, Li1/p;

    .line 23
    .line 24
    const-string v1, "Accessor "

    .line 25
    .line 26
    const-string v2, " threw exception"

    .line 27
    .line 28
    invoke-static {v1, p2, v2}, LE/b;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_1
    iget-object v0, p0, Ll1/j;->b:Ljava/lang/reflect/Field;

    .line 41
    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :goto_0
    if-ne v0, p2, :cond_2

    .line 47
    .line 48
    :goto_1
    return-void

    .line 49
    :cond_2
    iget-object p2, p0, Ll1/j;->a:Ljava/lang/String;

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Lp1/b;->g(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-boolean p2, p0, Ll1/j;->g:Z

    .line 55
    .line 56
    iget-object v1, p0, Ll1/j;->h:Li1/y;

    .line 57
    .line 58
    if-eqz p2, :cond_3

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    new-instance p2, Ll1/g;

    .line 62
    .line 63
    iget-object v2, p0, Ll1/j;->j:Lcom/google/gson/reflect/TypeToken;

    .line 64
    .line 65
    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iget-object v3, p0, Ll1/j;->i:Li1/l;

    .line 70
    .line 71
    invoke-direct {p2, v3, v1, v2}, Ll1/g;-><init>(Li1/l;Li1/y;Ljava/lang/reflect/Type;)V

    .line 72
    .line 73
    .line 74
    move-object v1, p2

    .line 75
    :goto_2
    invoke-virtual {v1, p1, v0}, Li1/y;->b(Lp1/b;Ljava/lang/Object;)V

    .line 76
    .line 77
    .line 78
    return-void
.end method
