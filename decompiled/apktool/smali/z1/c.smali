.class public abstract Lz1/c;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "([ \\t]*)((?:Storages\\s*\\.\\s*)?[Aa]ddAutoPath\\s*\\(\\s*\")[^\"]*?\\.xp3>([^\"]*)(\"\\s*\\)\\s*;?)([ \\t]*\\r?\\n?)"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lz1/c;->a:Lkotlin/text/Regex;

    .line 9
    .line 10
    return-void
.end method
