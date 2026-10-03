.class final Lorg/renpy/android/RenpyPrivateArchive$Result;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/renpy/android/RenpyPrivateArchive;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Result"
.end annotation


# instance fields
.field final extracted:Z

.field final failure:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p2}, Lorg/renpy/android/RenpyPrivateArchive$Result;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method private constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lorg/renpy/android/RenpyPrivateArchive$Result;->extracted:Z

    .line 4
    iput-object p2, p0, Lorg/renpy/android/RenpyPrivateArchive$Result;->failure:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public ok()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/renpy/android/RenpyPrivateArchive$Result;->failure:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method
