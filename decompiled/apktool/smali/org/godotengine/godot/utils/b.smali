.class public final synthetic Lorg/godotengine/godot/utils/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Lkotlin/jvm/functions/Function0;

.field public final synthetic f:J


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/godotengine/godot/utils/b;->b:Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/godotengine/godot/utils/b;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/godotengine/godot/utils/b;->d:Ljava/lang/String;

    .line 9
    .line 10
    iput-object p4, p0, Lorg/godotengine/godot/utils/b;->e:Lkotlin/jvm/functions/Function0;

    .line 11
    .line 12
    iput-wide p5, p0, Lorg/godotengine/godot/utils/b;->f:J

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v3, p0, Lorg/godotengine/godot/utils/b;->e:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    iget-wide v4, p0, Lorg/godotengine/godot/utils/b;->f:J

    .line 4
    .line 5
    iget-object v0, p0, Lorg/godotengine/godot/utils/b;->b:Landroid/app/Activity;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/godotengine/godot/utils/b;->c:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v2, p0, Lorg/godotengine/godot/utils/b;->d:Ljava/lang/String;

    .line 10
    .line 11
    invoke-static/range {v0 .. v5}, Lorg/godotengine/godot/utils/DialogUtils$Companion;->g(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function0;J)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
