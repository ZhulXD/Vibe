.class Lorg/tvp/kirikiri2/KR2Activity$3;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/tvp/kirikiri2/KR2Activity;->ShowInputBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/tvp/kirikiri2/KR2Activity$3;->val$text:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mDialogMessage:Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/tvp/kirikiri2/KR2Activity$3;->val$text:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->ShowInputBox(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
