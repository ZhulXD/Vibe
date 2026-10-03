.class public Lorg/tvp/kirikiri2/KR2Activity;
.super Lorg/cocos2dx/lib/Cocos2dxActivity;
.source "r8-map-id-c6cf1983ffca914c12120f7cf25210053c773eeac8162410aa5a458fd7588401"

# interfaces
.implements Landroidx/core/app/ActivityCompat$OnRequestPermissionsResultCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;,
        Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;,
        Lorg/tvp/kirikiri2/KR2Activity$KR2GLSurfaceView;
    }
.end annotation


# static fields
.field static final ORIENT_HORIZONTAL:I = 0x2

.field static final ORIENT_VERTICAL:I = 0x1

.field public static final RC_PHONE_STATE:I = 0x2

.field public static final RC_WRITE_EXTERNAL:I = 0x1

.field static _extSdPaths:[Ljava/lang/String;

.field static mAcitivityManager:Landroid/app/ActivityManager;

.field static mDbgMemoryInfo:Landroid/os/Debug$MemoryInfo;

.field static mDialogMessage:Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;

.field protected static mTextEdit:Landroid/view/View;

.field static memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

.field static msgHandler:Landroid/os/Handler;

.field public static sInstance:Lorg/tvp/kirikiri2/KR2Activity;

.field protected static sIntentStartupPath:Ljava/lang/String;

.field private static sStartupPathReads:I


# instance fields
.field Sp:Landroid/content/SharedPreferences;

.field mGetVolumeState:Ljava/lang/reflect/Method;

.field mMethodGetPaths:Ljava/lang/reflect/Method;

.field mStorageManager:Landroid/os/storage/StorageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/tvp/kirikiri2/KR2Activity;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mAcitivityManager:Landroid/app/ActivityManager;

    .line 10
    .line 11
    new-instance v1, Landroid/os/Debug$MemoryInfo;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/os/Debug$MemoryInfo;-><init>()V

    .line 14
    .line 15
    .line 16
    sput-object v1, Lorg/tvp/kirikiri2/KR2Activity;->mDbgMemoryInfo:Landroid/os/Debug$MemoryInfo;

    .line 17
    .line 18
    sput-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sIntentStartupPath:Ljava/lang/String;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    sput v1, Lorg/tvp/kirikiri2/KR2Activity;->sStartupPathReads:I

    .line 22
    .line 23
    new-instance v1, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;

    .line 24
    .line 25
    invoke-direct {v1}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;-><init>()V

    .line 26
    .line 27
    .line 28
    sput-object v1, Lorg/tvp/kirikiri2/KR2Activity;->mDialogMessage:Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;

    .line 29
    .line 30
    sput-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mTextEdit:Landroid/view/View;

    .line 31
    .line 32
    new-instance v0, Lorg/tvp/kirikiri2/KR2Activity$1;

    .line 33
    .line 34
    invoke-direct {v0}, Lorg/tvp/kirikiri2/KR2Activity$1;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lorg/tvp/kirikiri2/KR2Activity;->msgHandler:Landroid/os/Handler;

    .line 38
    .line 39
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 6
    .line 7
    iput-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity;->mMethodGetPaths:Ljava/lang/reflect/Method;

    .line 8
    .line 9
    iput-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity;->mGetVolumeState:Ljava/lang/reflect/Method;

    .line 10
    .line 11
    return-void
.end method

.method public static CreateFolders(Ljava/lang/String;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    sget-object p0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 15
    .line 16
    invoke-static {v0, v1, p0}, Lorg/tvp/kirikiri2/KR2Activity;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)LE/a;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {p0}, LE/a;->e()Z

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    return p0
.end method

.method public static DeleteFile(Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 7
    .line 8
    invoke-static {v0, p0}, Lorg/tvp/kirikiri2/KR2Activity;->deleteFilesInFolder(Ljava/io/File;Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v1, :cond_2

    .line 18
    .line 19
    if-eqz p0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object p0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 23
    .line 24
    invoke-static {v0, p0}, Lorg/tvp/kirikiri2/KR2Activity;->isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    .line 30
    const/4 p0, 0x0

    .line 31
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 32
    .line 33
    invoke-static {v0, p0, v1}, Lorg/tvp/kirikiri2/KR2Activity;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)LE/a;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {p0}, LE/a;->d()Z

    .line 38
    .line 39
    .line 40
    move-result p0

    .line 41
    return p0

    .line 42
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    xor-int/2addr p0, v2

    .line 47
    return p0

    .line 48
    :cond_2
    :goto_0
    return v2
.end method

.method public static GetInstance()Lorg/tvp/kirikiri2/KR2Activity;
    .locals 1

    .line 1
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 2
    .line 3
    return-object v0
.end method

.method public static GetVersion()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :catch_0
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method

.method public static MessageController(III)V
    .locals 1

    .line 1
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->msgHandler:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput p0, v0, Landroid/os/Message;->what:I

    .line 8
    .line 9
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 10
    .line 11
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 12
    .line 13
    sget-object p0, Lorg/tvp/kirikiri2/KR2Activity;->msgHandler:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public static RenameFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-static {v1}, Lorg/tvp/kirikiri2/KR2Activity;->DeleteFile(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-nez v3, :cond_2

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-static {v1}, Lorg/tvp/kirikiri2/KR2Activity;->CreateFolders(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_2

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_2
    invoke-virtual {v0, p0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    sget-object p0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 65
    .line 66
    invoke-static {v0, v2, p0}, Lorg/tvp/kirikiri2/KR2Activity;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)LE/a;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    invoke-virtual {p0, p1}, LE/a;->l(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result p0

    .line 74
    if-eqz p0, :cond_4

    .line 75
    .line 76
    :goto_0
    const/4 p0, 0x1

    .line 77
    return p0

    .line 78
    :cond_4
    :goto_1
    return v2
.end method

.method public static ShowInputBox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mDialogMessage:Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p3}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Init(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lorg/tvp/kirikiri2/KR2Activity;->msgHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance p1, Lorg/tvp/kirikiri2/KR2Activity$3;

    .line 9
    .line 10
    invoke-direct {p1, p2}, Lorg/tvp/kirikiri2/KR2Activity$3;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static ShowMessageBox(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mDialogMessage:Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1, p2}, Lorg/tvp/kirikiri2/KR2Activity$DialogMessage;->Init(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lorg/tvp/kirikiri2/KR2Activity;->msgHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance p1, Lorg/tvp/kirikiri2/KR2Activity$2;

    .line 9
    .line 10
    invoke-direct {p1}, Lorg/tvp/kirikiri2/KR2Activity$2;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public static WriteFile(Ljava/lang/String;[B)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-static {p0}, Lorg/tvp/kirikiri2/KR2Activity;->DeleteFile(Ljava/lang/String;)Z

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p0

    .line 34
    invoke-static {p0}, Lorg/tvp/kirikiri2/KR2Activity;->CreateFolders(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 38
    :try_start_0
    invoke-static {v0}, Lorg/tvp/kirikiri2/KR2Activity;->isWritable(Ljava/io/File;)Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    const/4 v2, 0x1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    new-instance v1, Ljava/io/FileOutputStream;

    .line 46
    .line 47
    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p1}, Ljava/io/OutputStream;->write([B)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    .line 54
    .line 55
    .line 56
    return v2

    .line 57
    :cond_2
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 58
    .line 59
    invoke-static {v0, p0, v1}, Lorg/tvp/kirikiri2/KR2Activity;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)LE/a;

    .line 60
    .line 61
    .line 62
    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 63
    :try_start_1
    invoke-virtual {v0}, LE/a;->i()Landroid/net/Uri;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 68
    .line 69
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 74
    .line 75
    .line 76
    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    goto :goto_1

    .line 78
    :catch_0
    const/4 v0, 0x0

    .line 79
    :goto_1
    if-eqz v0, :cond_3

    .line 80
    .line 81
    :try_start_2
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 85
    .line 86
    .line 87
    return v2

    .line 88
    :catch_1
    :cond_3
    return p0
.end method

.method public static synthetic access$000(Lorg/tvp/kirikiri2/KR2Activity;)Lorg/cocos2dx/lib/ResizeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/cocos2dx/lib/Cocos2dxActivity;->mFrameLayout:Lorg/cocos2dx/lib/ResizeLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method public static bridge synthetic b(FF)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/tvp/kirikiri2/KR2Activity;->nativeHoverMoved(FF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic c(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/tvp/kirikiri2/KR2Activity;->nativeInsertText(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic d(F)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/tvp/kirikiri2/KR2Activity;->nativeMouseScrolled(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final deleteFilesInFolder(Ljava/io/File;Landroid/content/Context;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    array-length v2, v1

    .line 16
    move v3, v0

    .line 17
    :goto_0
    if-ge v3, v2, :cond_1

    .line 18
    .line 19
    aget-object v4, v1, v3

    .line 20
    .line 21
    invoke-static {v4, p1}, Lorg/tvp/kirikiri2/KR2Activity;->deleteFilesInFolder(Ljava/io/File;Landroid/content/Context;)Z

    .line 22
    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-nez p0, :cond_3

    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 35
    .line 36
    .line 37
    move-result p0

    .line 38
    if-nez p0, :cond_3

    .line 39
    .line 40
    return v0

    .line 41
    :cond_3
    const/4 p0, 0x1

    .line 42
    return p0
.end method

.method public static bridge synthetic e(IFF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/tvp/kirikiri2/KR2Activity;->nativeTouchesBegin(IFF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static exit()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static bridge synthetic f([I[F[F)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/tvp/kirikiri2/KR2Activity;->nativeTouchesCancel([I[F[F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static bridge synthetic g(IFF)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/tvp/kirikiri2/KR2Activity;->nativeTouchesEnd(IFF)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getAvailMemory()J
    .locals 2

    .line 1
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 2
    .line 3
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 4
    .line 5
    return-wide v0
.end method

.method public static getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)LE/a;
    .locals 6

    .line 1
    invoke-static {p0, p2}, Lorg/tvp/kirikiri2/KR2Activity;->getExtSdCardFolder(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_5

    .line 9
    .line 10
    :cond_0
    const/4 v2, 0x1

    .line 11
    const/4 v3, 0x0

    .line 12
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    add-int/2addr v0, v2

    .line 27
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    move v0, v3

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    :cond_1
    move-object p0, v1

    .line 34
    move v0, v2

    .line 35
    :goto_0
    invoke-static {p2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const-string v5, "URI"

    .line 40
    .line 41
    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    goto :goto_1

    .line 52
    :cond_2
    move-object v4, v1

    .line 53
    :goto_1
    if-nez v4, :cond_3

    .line 54
    .line 55
    goto :goto_5

    .line 56
    :cond_3
    invoke-static {p2, v4}, LE/a;->g(Landroid/content/Context;Landroid/net/Uri;)LE/e;

    .line 57
    .line 58
    .line 59
    move-result-object p2

    .line 60
    if-eqz v0, :cond_4

    .line 61
    .line 62
    return-object p2

    .line 63
    :cond_4
    const-string v0, "\\/"

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    :goto_2
    array-length v0, p0

    .line 70
    if-ge v3, v0, :cond_8

    .line 71
    .line 72
    aget-object v0, p0, v3

    .line 73
    .line 74
    invoke-virtual {p2, v0}, LE/a;->f(Ljava/lang/String;)LE/a;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-nez v0, :cond_7

    .line 79
    .line 80
    :try_start_1
    array-length v0, p0

    .line 81
    sub-int/2addr v0, v2

    .line 82
    if-lt v3, v0, :cond_6

    .line 83
    .line 84
    if-eqz p1, :cond_5

    .line 85
    .line 86
    goto :goto_3

    .line 87
    :cond_5
    const-string v0, "image"

    .line 88
    .line 89
    aget-object v4, p0, v3

    .line 90
    .line 91
    invoke-virtual {p2, v0, v4}, LE/a;->c(Ljava/lang/String;Ljava/lang/String;)LE/a;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    goto :goto_4

    .line 96
    :cond_6
    :goto_3
    aget-object v0, p0, v3

    .line 97
    .line 98
    invoke-virtual {p2, v0}, LE/a;->b(Ljava/lang/String;)LE/a;

    .line 99
    .line 100
    .line 101
    move-result-object p2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    goto :goto_4

    .line 103
    :cond_7
    move-object p2, v0

    .line 104
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_8
    return-object p2

    .line 108
    :catch_1
    :goto_5
    return-object v1
.end method

.method public static getExtSdCardFolder(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->_extSdPaths:[Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lorg/tvp/kirikiri2/KR2Activity;->getExtSdCardPaths(Landroid/content/Context;)[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sput-object p1, Lorg/tvp/kirikiri2/KR2Activity;->_extSdPaths:[Ljava/lang/String;

    .line 10
    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    const/4 v0, 0x0

    .line 13
    :try_start_0
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->_extSdPaths:[Ljava/lang/String;

    .line 14
    .line 15
    array-length v1, v1

    .line 16
    if-ge p1, v1, :cond_2

    .line 17
    .line 18
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->_extSdPaths:[Ljava/lang/String;

    .line 23
    .line 24
    aget-object v2, v2, p1

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    sget-object p0, Lorg/tvp/kirikiri2/KR2Activity;->_extSdPaths:[Ljava/lang/String;

    .line 33
    .line 34
    aget-object p0, p0, p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    return-object p0

    .line 37
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    :cond_2
    return-object v0
.end method

.method private static getExtSdCardPaths(Landroid/content/Context;)[Ljava/lang/String;
    .locals 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "external"

    .line 7
    .line 8
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    array-length v3, v2

    .line 13
    const/4 v4, 0x0

    .line 14
    move v5, v4

    .line 15
    :goto_0
    if-ge v5, v3, :cond_2

    .line 16
    .line 17
    aget-object v6, v2, v5

    .line 18
    .line 19
    if-eqz v6, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {v6, v7}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v7

    .line 29
    if-nez v7, :cond_1

    .line 30
    .line 31
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v7

    .line 35
    const-string v8, "/Android/data"

    .line 36
    .line 37
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    if-gez v7, :cond_0

    .line 42
    .line 43
    new-instance v7, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    const-string v8, "Unexpected external file dir: "

    .line 46
    .line 47
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    const-string v7, "FileUtils"

    .line 62
    .line 63
    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v6

    .line 71
    invoke-virtual {v6, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v6

    .line 75
    :try_start_0
    new-instance v7, Ljava/io/File;

    .line 76
    .line 77
    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v6
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :catch_0
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_2
    new-array p0, v4, [Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    check-cast p0, [Ljava/lang/String;

    .line 97
    .line 98
    return-object p0
.end method

.method public static getIntentStartupPath()Ljava/lang/String;
    .locals 2

    .line 1
    sget v0, Lorg/tvp/kirikiri2/KR2Activity;->sStartupPathReads:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    sput v0, Lorg/tvp/kirikiri2/KR2Activity;->sStartupPathReads:I

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    const-string v1, "TVPCheckStartupArg read #"

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    sget v1, Lorg/tvp/kirikiri2/KR2Activity;->sStartupPathReads:I

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, " -> "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->sIntentStartupPath:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const-string v1, "KiriKiriGame"

    .line 34
    .line 35
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sIntentStartupPath:Ljava/lang/String;

    .line 39
    .line 40
    return-object v0
.end method

.method public static getKRDeviceId()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    return-object v0
.end method

.method public static getLocaleName()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const-string v2, "_"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/collections/unsigned/a;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0

    .line 45
    :cond_0
    return-object v1
.end method

.method public static getOutputStream(Ljava/io/File;Landroid/content/Context;J)Ljava/io/OutputStream;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lorg/tvp/kirikiri2/KR2Activity;->isWritable(Ljava/io/File;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    new-instance p1, Ljava/io/FileOutputStream;

    .line 8
    .line 9
    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 10
    .line 11
    .line 12
    return-object p1

    .line 13
    :catch_0
    move-exception p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p2, 0x0

    .line 16
    invoke-static {p0, p2, p1}, Lorg/tvp/kirikiri2/KR2Activity;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)LE/a;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p2}, LE/a;->i()Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    .line 29
    .line 30
    .line 31
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    return-object p0

    .line 33
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string p3, "Error when copying file from "

    .line 36
    .line 37
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string p2, "FileUtils"

    .line 52
    .line 53
    invoke-static {p2, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    return-object p0
.end method

.method public static getStartupPathReadCount()I
    .locals 1

    .line 1
    sget v0, Lorg/tvp/kirikiri2/KR2Activity;->sStartupPathReads:I

    .line 2
    .line 3
    return v0
.end method

.method public static getUsedMemory()J
    .locals 2

    .line 1
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mDbgMemoryInfo:Landroid/os/Debug$MemoryInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-long v0, v0

    .line 8
    return-wide v0
.end method

.method public static guideDialogForLEXA(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/widget/ImageView;

    .line 9
    .line 10
    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 11
    .line 12
    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    sget-object v2, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 16
    .line 17
    invoke-virtual {v2}, Lorg/tvp/kirikiri2/KR2Activity;->get_res_sd_operate_step()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    new-instance v0, Lorg/tvp/kirikiri2/KR2Activity$7;

    .line 33
    .line 34
    invoke-direct {v0}, Lorg/tvp/kirikiri2/KR2Activity$7;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v1, "OK"

    .line 38
    .line 39
    invoke-virtual {p0, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    new-instance v0, Lorg/tvp/kirikiri2/KR2Activity$6;

    .line 44
    .line 45
    invoke-direct {v0}, Lorg/tvp/kirikiri2/KR2Activity$6;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "Cancel"

    .line 49
    .line 50
    invoke-virtual {p0, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public static bridge synthetic h([I[F[F)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lorg/tvp/kirikiri2/KR2Activity;->nativeTouchesMove([I[F[F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static hideTextInput()V
    .locals 2

    .line 1
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->msgHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lorg/tvp/kirikiri2/KR2Activity$4;

    .line 4
    .line 5
    invoke-direct {v1}, Lorg/tvp/kirikiri2/KR2Activity$4;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static bridge synthetic i(I)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/tvp/kirikiri2/KR2Activity;->onMessageBoxOK(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static native initDump(Ljava/lang/String;)V
.end method

.method public static isOnExtSdCard(Ljava/io/File;Landroid/content/Context;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lorg/tvp/kirikiri2/KR2Activity;->getExtSdCardFolder(Ljava/io/File;Landroid/content/Context;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    return p0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    return p0
.end method

.method public static final isWritable(Ljava/io/File;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-direct {v2, p0, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 13
    .line 14
    .line 15
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    .line 25
    .line 26
    .line 27
    :catch_1
    :cond_1
    return v0
.end method

.method public static final isWritableNormal(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/tvp/kirikiri2/KR2Activity;->isWritableNormalOrSaf(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/tvp/kirikiri2/KR2Activity;->requestExternalWrite()V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Lorg/tvp/kirikiri2/KR2Activity;->isWritableNormalOrSaf(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    return p0
.end method

.method public static final isWritableNormalOrSaf(Ljava/lang/String;)Z
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "check path "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "permision"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    const-string v1, "kr2activaty"

    .line 21
    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 26
    .line 27
    new-instance v1, Ljava/io/File;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    const/4 v2, 0x0

    .line 40
    if-eqz p0, :cond_5

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    if-nez p0, :cond_0

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move p0, v2

    .line 50
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    const-string v4, "AugendiagnoseDummyFile"

    .line 53
    .line 54
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const/4 v4, 0x1

    .line 58
    add-int/2addr p0, v4

    .line 59
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    new-instance v5, Ljava/io/File;

    .line 67
    .line 68
    invoke-direct {v5, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    if-nez v3, :cond_1

    .line 76
    .line 77
    invoke-static {v5}, Lorg/tvp/kirikiri2/KR2Activity;->isWritable(Ljava/io/File;)Z

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p0, "  "

    .line 90
    .line 91
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    const-string v3, "ke2activate"

    .line 99
    .line 100
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    .line 102
    .line 103
    invoke-static {v5}, Lorg/tvp/kirikiri2/KR2Activity;->isWritable(Ljava/io/File;)Z

    .line 104
    .line 105
    .line 106
    move-result p0

    .line 107
    if-eqz p0, :cond_2

    .line 108
    .line 109
    return v4

    .line 110
    :cond_2
    invoke-static {v5, v2, v0}, Lorg/tvp/kirikiri2/KR2Activity;->getDocumentFile(Ljava/io/File;ZLandroid/content/Context;)LE/a;

    .line 111
    .line 112
    .line 113
    move-result-object p0

    .line 114
    if-nez p0, :cond_3

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {p0}, LE/a;->a()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_4

    .line 122
    .line 123
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    move v2, v4

    .line 130
    :cond_4
    invoke-virtual {p0}, LE/a;->d()Z

    .line 131
    .line 132
    .line 133
    invoke-static {v1}, LE/d;->m(Ljava/io/File;)Z

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 137
    .line 138
    .line 139
    :cond_5
    :goto_0
    return v2
.end method

.method public static bridge synthetic j(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lorg/tvp/kirikiri2/KR2Activity;->onMessageBoxText(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static native nativeCharInput(I)V
.end method

.method public static native nativeCommitText(Ljava/lang/String;I)V
.end method

.method public static native nativeDeleteBackward()V
.end method

.method private static native nativeGetContentText()Ljava/lang/String;
.end method

.method private static native nativeGetHideSystemButton()Z
.end method

.method private static native nativeHoverMoved(FF)V
.end method

.method private static native nativeInsertText(Ljava/lang/String;)V
.end method

.method public static native nativeKeyAction(IZ)Z
.end method

.method private static native nativeMouseScrolled(F)V
.end method

.method private static native nativeOnLowMemory()V
.end method

.method private static native nativeTouchesBegin(IFF)V
.end method

.method private static native nativeTouchesCancel([I[F[F)V
.end method

.method private static native nativeTouchesEnd(IFF)V
.end method

.method private static native nativeTouchesMove([I[F[F)V
.end method

.method public static native onBannerSizeChanged(II)V
.end method

.method private static native onMessageBoxOK(I)V
.end method

.method private static native onMessageBoxText(Ljava/lang/String;)V
.end method

.method private static native onNativeExit()V
.end method

.method public static native onNativeInit()V
.end method

.method private static requestExternalWrite()V
    .locals 3

    .line 1
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 2
    .line 3
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 13
    .line 14
    filled-new-array {v1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 23
    .line 24
    filled-new-array {v1}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method private static requestPhoneState()V
    .locals 3

    .line 1
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 2
    .line 3
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v2, 0x2

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 13
    .line 14
    filled-new-array {v1}, [Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 23
    .line 24
    filled-new-array {v1}, [Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public static requireLEXA(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->msgHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lorg/tvp/kirikiri2/KR2Activity$5;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lorg/tvp/kirikiri2/KR2Activity$5;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static setOrientation(I)V
    .locals 1

    .line 1
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lorg/tvp/kirikiri2/KR2Activity;->keepsHostOrientation()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    if-ne p0, v0, :cond_1

    .line 14
    .line 15
    sget-object p0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    const/4 v0, 0x2

    .line 22
    if-ne p0, v0, :cond_2

    .line 23
    .line 24
    sget-object p0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_0
    return-void
.end method

.method public static showTextInput(IIII)V
    .locals 2

    .line 1
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->msgHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1, p2, p3}, Lorg/tvp/kirikiri2/KR2Activity$ShowTextInputTask;-><init>(IIII)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public static triggerStorageAccessFramework()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.OPEN_DOCUMENT_TREE"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public static updateMemoryInfo()V
    .locals 2

    .line 1
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mAcitivityManager:Landroid/app/ActivityManager;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 6
    .line 7
    const-string v1, "activity"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/ActivityManager;

    .line 14
    .line 15
    sput-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mAcitivityManager:Landroid/app/ActivityManager;

    .line 16
    .line 17
    :cond_0
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mAcitivityManager:Landroid/app/ActivityManager;

    .line 18
    .line 19
    sget-object v1, Lorg/tvp/kirikiri2/KR2Activity;->memoryInfo:Landroid/app/ActivityManager$MemoryInfo;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 22
    .line 23
    .line 24
    sget-object v0, Lorg/tvp/kirikiri2/KR2Activity;->mDbgMemoryInfo:Landroid/os/Debug$MemoryInfo;

    .line 25
    .line 26
    invoke-static {v0}, Landroid/os/Debug;->getMemoryInfo(Landroid/os/Debug$MemoryInfo;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method


# virtual methods
.method public doSetSystemUiVisibility()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x1706

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public getStoragePath()[Ljava/lang/String;
    .locals 6

    .line 1
    const-class v0, Landroid/os/storage/StorageManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/String;

    .line 5
    .line 6
    iget-object v3, p0, Lorg/tvp/kirikiri2/KR2Activity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 7
    .line 8
    const/4 v4, 0x0

    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    const-string v3, "storage"

    .line 12
    .line 13
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroid/os/storage/StorageManager;

    .line 18
    .line 19
    iput-object v3, p0, Lorg/tvp/kirikiri2/KR2Activity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 20
    .line 21
    :try_start_0
    const-string v3, "getVolumePaths"

    .line 22
    .line 23
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    iput-object v3, p0, Lorg/tvp/kirikiri2/KR2Activity;->mMethodGetPaths:Ljava/lang/reflect/Method;

    .line 28
    .line 29
    const-string v3, "getVolumeState"

    .line 30
    .line 31
    const-class v5, Ljava/lang/String;

    .line 32
    .line 33
    filled-new-array {v5}, [Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity;->mGetVolumeState:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception v0

    .line 45
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity;->mMethodGetPaths:Ljava/lang/reflect/Method;

    .line 49
    .line 50
    if-eqz v0, :cond_1

    .line 51
    .line 52
    :try_start_1
    iget-object v3, p0, Lorg/tvp/kirikiri2/KR2Activity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 53
    .line 54
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 59
    .line 60
    move-object v2, v0

    .line 61
    :catch_1
    :cond_1
    iget-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity;->mGetVolumeState:Ljava/lang/reflect/Method;

    .line 62
    .line 63
    if-eqz v0, :cond_4

    .line 64
    .line 65
    :goto_1
    :try_start_2
    array-length v0, v2

    .line 66
    if-ge v1, v0, :cond_4

    .line 67
    .line 68
    iget-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity;->mGetVolumeState:Ljava/lang/reflect/Method;

    .line 69
    .line 70
    iget-object v3, p0, Lorg/tvp/kirikiri2/KR2Activity;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 71
    .line 72
    aget-object v5, v2, v1

    .line 73
    .line 74
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v0, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Ljava/lang/String;

    .line 83
    .line 84
    const-string v3, "mounted"

    .line 85
    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-nez v3, :cond_3

    .line 91
    .line 92
    const-string v3, "mounted_ro"

    .line 93
    .line 94
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    aput-object v4, v2, v1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 102
    .line 103
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :catch_2
    :cond_4
    return-object v2
.end method

.method public get_res_sd_operate_step()I
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    .line 1
    return-void
.end method

.method public hideSystemUI()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/tvp/kirikiri2/KR2Activity;->nativeGetHideSystemButton()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lorg/tvp/kirikiri2/KR2Activity;->doSetSystemUiVisibility()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public keepsHostOrientation()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .line 1
    const/4 v0, 0x3

    .line 2
    if-ne p1, v0, :cond_3

    .line 3
    .line 4
    iget-object p1, p0, Lorg/tvp/kirikiri2/KR2Activity;->Sp:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    const-string v1, "URI"

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move-object p1, v2

    .line 21
    :goto_0
    const/4 v3, -0x1

    .line 22
    if-ne p2, v3, :cond_1

    .line 23
    .line 24
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iget-object v4, p0, Lorg/tvp/kirikiri2/KR2Activity;->Sp:Landroid/content/SharedPreferences;

    .line 31
    .line 32
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 33
    .line 34
    .line 35
    move-result-object v4

    .line 36
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v5

    .line 40
    invoke-interface {v4, v1, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 45
    .line 46
    .line 47
    :cond_1
    if-eq p2, v3, :cond_2

    .line 48
    .line 49
    if-eqz v2, :cond_3

    .line 50
    .line 51
    iget-object p2, p0, Lorg/tvp/kirikiri2/KR2Activity;->Sp:Landroid/content/SharedPreferences;

    .line 52
    .line 53
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    invoke-interface {p2, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    and-int/2addr p1, v0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    invoke-virtual {p2, v2, p1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V

    .line 79
    .line 80
    .line 81
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    sput-object p0, Lorg/tvp/kirikiri2/KR2Activity;->sInstance:Lorg/tvp/kirikiri2/KR2Activity;

    .line 2
    .line 3
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lorg/tvp/kirikiri2/KR2Activity;->Sp:Landroid/content/SharedPreferences;

    .line 8
    .line 9
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onCreate(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0}, Lorg/tvp/kirikiri2/KR2Activity;->getExtSdCardPaths(Landroid/content/Context;)[Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    array-length v0, p1

    .line 17
    const/4 v1, 0x0

    .line 18
    :goto_0
    if-ge v1, v0, :cond_1

    .line 19
    .line 20
    aget-object v2, p1, v1

    .line 21
    .line 22
    invoke-static {v2}, Lorg/tvp/kirikiri2/KR2Activity;->isWritableNormalOrSaf(Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-nez v3, :cond_0

    .line 27
    .line 28
    invoke-static {v2}, Lorg/tvp/kirikiri2/KR2Activity;->guideDialogForLEXA(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-static {}, Lorg/tvp/kirikiri2/KR2Activity;->requestExternalWrite()V

    .line 35
    .line 36
    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v0, "/dump"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-static {p1}, Lorg/tvp/kirikiri2/KR2Activity;->initDump(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .line 1
    invoke-static {}, Lorg/tvp/kirikiri2/KR2Activity;->nativeOnLowMemory()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    const/4 p2, 0x1

    .line 5
    const-string p3, "Krkr2"

    .line 6
    .line 7
    if-eq p1, p2, :cond_1

    .line 8
    .line 9
    const/4 p2, 0x2

    .line 10
    if-eq p1, p2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string p1, "onRequestPermissionsResult: PHONE STATE"

    .line 14
    .line 15
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    const-string p1, "onRequestPermissionsResult: WRITE EXTERNAL"

    .line 20
    .line 21
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxActivity;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lorg/tvp/kirikiri2/KR2Activity;->hideSystemUI()V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method
