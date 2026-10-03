.class public final synthetic Ly1/v0;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Landroid/widget/LinearLayout;

.field public final synthetic c:Ljava/util/LinkedHashMap;

.field public final synthetic d:Ly1/x0;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic g:LP/H0;


# direct methods
.method public constructor <init>(LP/H0;Landroid/widget/LinearLayout;Ljava/util/LinkedHashMap;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Ly1/x0;)V
    .locals 0

    .line 1
    iput-object p2, p0, Ly1/v0;->b:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    iput-object p3, p0, Ly1/v0;->c:Ljava/util/LinkedHashMap;

    .line 4
    .line 5
    iput-object p6, p0, Ly1/v0;->d:Ly1/x0;

    .line 6
    .line 7
    iput-object p4, p0, Ly1/v0;->e:Ljava/util/List;

    .line 8
    .line 9
    iput-object p5, p0, Ly1/v0;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    .line 11
    iput-object p1, p0, Ly1/v0;->g:LP/H0;

    .line 12
    .line 13
    const-string p5, "editor$refresh(Landroid/widget/LinearLayout;Ljava/util/LinkedHashMap;Lcom/minhub/gamehub/game/GodotCheatDialog;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/minhub/gamehub/game/GodotCheatDialog$Colors;)V"

    .line 14
    .line 15
    const/4 p6, 0x0

    .line 16
    const/4 p2, 0x0

    .line 17
    const-class p3, Lkotlin/jvm/internal/Intrinsics$Kotlin;

    .line 18
    .line 19
    const-string p4, "refresh"

    .line 20
    .line 21
    move-object p1, p0

    .line 22
    invoke-direct/range {p1 .. p6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v4, p0, Ly1/v0;->f:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iget-object v0, p0, Ly1/v0;->g:LP/H0;

    .line 4
    .line 5
    iget-object v1, p0, Ly1/v0;->b:Landroid/widget/LinearLayout;

    .line 6
    .line 7
    iget-object v2, p0, Ly1/v0;->c:Ljava/util/LinkedHashMap;

    .line 8
    .line 9
    iget-object v3, p0, Ly1/v0;->e:Ljava/util/List;

    .line 10
    .line 11
    iget-object v5, p0, Ly1/v0;->d:Ly1/x0;

    .line 12
    .line 13
    invoke-static/range {v0 .. v5}, Ly1/x0;->f(LP/H0;Landroid/widget/LinearLayout;Ljava/util/LinkedHashMap;Ljava/util/List;Lkotlin/jvm/internal/Ref$ObjectRef;Ly1/x0;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    return-object v0
.end method
