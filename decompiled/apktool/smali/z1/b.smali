.class public abstract Lz1/b;
.super Ljava/lang/Object;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"


# static fields
.field public static final a:Lkotlin/text/Regex;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lkotlin/text/Regex;

    .line 2
    .line 3
    const-string v1, "^[ \\t]*Scripts\\s*\\.\\s*execStorage\\s*\\([^)]*k2compat_(deskinfo|console)\\.tjs[^)]*\\)\\s*;?[ \\t]*\\r?\\n?"

    .line 4
    .line 5
    sget-object v2, Lkotlin/text/RegexOption;->MULTILINE:Lkotlin/text/RegexOption;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;Lkotlin/text/RegexOption;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lz1/b;->a:Lkotlin/text/Regex;

    .line 11
    .line 12
    return-void
.end method
