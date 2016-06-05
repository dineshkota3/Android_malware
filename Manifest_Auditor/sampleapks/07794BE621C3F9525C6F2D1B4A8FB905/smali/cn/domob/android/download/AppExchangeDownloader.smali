.class public Lcn/domob/android/download/AppExchangeDownloader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Act_Type:Ljava/lang/String; = "actType"

.field public static final App_Download_Path:Ljava/lang/String; = "downloadPath"

.field public static final App_Id:Ljava/lang/String; = "appId"

.field public static final App_Name:Ljava/lang/String; = "appName"

.field public static final App_Notify_Id:Ljava/lang/String; = "notifyId"

.field public static Download_Map:Ljava/util/Hashtable; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcn/domob/android/download/AppExchangeDownloader;",
            ">;"
        }
    .end annotation
.end field

.field public static final Type_Cancel:Ljava/lang/String; = "typeCancel"

.field public static final Type_Install:Ljava/lang/String; = "typeInstall"

.field private static a:Landroid/content/Context;

.field private static h:I

.field private static i:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Landroid/app/Notification;

.field private c:Landroid/app/NotificationManager;

.field private d:I

.field private e:I

.field private f:Lcn/domob/android/download/AppExchangeDownloaderListener;

.field private g:Ljava/lang/String;

.field private j:I

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Landroid/app/PendingIntent;

.field private o:Landroid/os/Handler;

.field private p:Lcn/domob/android/download/DownloadTask;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/download/AppExchangeDownloader;->a:Landroid/content/Context;

    .line 32
    const/4 v0, 0x0

    sput v0, Lcn/domob/android/download/AppExchangeDownloader;->h:I

    .line 35
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/android/download/AppExchangeDownloader;->Download_Map:Ljava/util/Hashtable;

    .line 37
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcn/domob/android/download/AppExchangeDownloader;->i:Ljava/util/Hashtable;

    .line 21
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 4
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const-string v3, "DomobSDK"

    const-string v1, ""

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/app/Notification;

    .line 25
    iput-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->c:Landroid/app/NotificationManager;

    .line 26
    iput v2, p0, Lcn/domob/android/download/AppExchangeDownloader;->d:I

    .line 27
    iput v2, p0, Lcn/domob/android/download/AppExchangeDownloader;->e:I

    .line 28
    iput-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->f:Lcn/domob/android/download/AppExchangeDownloaderListener;

    .line 29
    const-string v0, ""

    iput-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->g:Ljava/lang/String;

    .line 38
    iput v2, p0, Lcn/domob/android/download/AppExchangeDownloader;->j:I

    .line 58
    const-string v0, ""

    iput-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->k:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->l:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->m:Ljava/lang/String;

    .line 148
    new-instance v0, Lcn/domob/android/download/a;

    invoke-direct {v0, p0}, Lcn/domob/android/download/a;-><init>(Lcn/domob/android/download/AppExchangeDownloader;)V

    iput-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->o:Landroid/os/Handler;

    .line 100
    invoke-virtual {p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcn/domob/android/download/AppExchangeDownloader;->a:Landroid/content/Context;

    .line 102
    iput-object p1, p0, Lcn/domob/android/download/AppExchangeDownloader;->k:Ljava/lang/String;

    .line 104
    iput-object p2, p0, Lcn/domob/android/download/AppExchangeDownloader;->l:Ljava/lang/String;

    .line 106
    iput-object p3, p0, Lcn/domob/android/download/AppExchangeDownloader;->m:Ljava/lang/String;

    .line 109
    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    sget v0, Lcn/domob/android/download/AppExchangeDownloader;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/domob/android/download/AppExchangeDownloader;->h:I

    .line 111
    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->i:Ljava/util/Hashtable;

    sget v1, Lcn/domob/android/download/AppExchangeDownloader;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget v0, Lcn/domob/android/download/AppExchangeDownloader;->h:I

    iput v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->d:I

    .line 116
    :goto_0
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " notification_id is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    return-void

    .line 114
    :cond_1
    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->i:Ljava/util/Hashtable;

    invoke-virtual {v0, p3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->d:I

    goto :goto_0
.end method

.method static synthetic a(Lcn/domob/android/download/AppExchangeDownloader;)I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->j:I

    return v0
.end method

.method static synthetic a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->a:Landroid/content/Context;

    return-object v0
.end method

.method static a(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 202
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 204
    return-object v0
.end method

.method static synthetic a(Lcn/domob/android/download/AppExchangeDownloader;I)V
    .locals 0

    .prologue
    .line 38
    iput p1, p0, Lcn/domob/android/download/AppExchangeDownloader;->j:I

    return-void
.end method

.method static synthetic a(Lcn/domob/android/download/AppExchangeDownloader;Landroid/app/PendingIntent;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcn/domob/android/download/AppExchangeDownloader;->n:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic a(Lcn/domob/android/download/AppExchangeDownloader;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcn/domob/android/download/AppExchangeDownloader;->g:Ljava/lang/String;

    return-void
.end method

.method public static appIsDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const-string v4, "DomobSDK"

    .line 327
    invoke-static {p1}, Lcn/domob/android/download/AppExchangeDownloader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    new-instance v1, Lcn/domob/android/download/b;

    invoke-direct {v1, p0, v0, p1, v3}, Lcn/domob/android/download/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/download/AppExchangeDownloader$b;)V

    .line 329
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v4, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " is  exsist"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    invoke-virtual {v1}, Lcn/domob/android/download/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 333
    if-nez v0, :cond_1

    move-object v0, v3

    .line 336
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic b(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/app/Notification;

    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 352
    const-string v0, ""

    .line 354
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 355
    invoke-virtual {v1}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 356
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 357
    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 358
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 361
    :goto_0
    return-object v0

    .line 359
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcn/domob/android/download/AppExchangeDownloader;I)V
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcn/domob/android/download/AppExchangeDownloader;->e:I

    return-void
.end method

.method static synthetic b(Lcn/domob/android/download/AppExchangeDownloader;Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string v2, "DomobSDK"

    .line 288
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "begin download in "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcn/domob/android/download/DownloadTask;

    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->k:Ljava/lang/String;

    new-instance v2, Lcn/domob/android/download/AppExchangeDownloader$a;

    invoke-direct {v2, p0}, Lcn/domob/android/download/AppExchangeDownloader$a;-><init>(Lcn/domob/android/download/AppExchangeDownloader;)V

    invoke-direct {v0, v1, p1, v2}, Lcn/domob/android/download/DownloadTask;-><init>(Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/download/AppExchangeDownloader$a;)V

    iput-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->p:Lcn/domob/android/download/DownloadTask;

    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->p:Lcn/domob/android/download/DownloadTask;

    invoke-virtual {v0}, Lcn/domob/android/download/DownloadTask;->start()V

    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->Download_Map:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic c(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcn/domob/android/download/AppExchangeDownloader;Ljava/lang/String;)V
    .locals 6

    .prologue
    const-string v5, "\u4e0b\u8f7d\u5931\u8d25"

    .line 364
    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->a:Landroid/content/Context;

    iget v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->d:I

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/app/Notification;

    const v2, 0x1080078

    iput v2, v1, Landroid/app/Notification;->icon:I

    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/app/Notification;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/domob/android/download/AppExchangeDownloader;->l:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/app/Notification;

    sget-object v2, Lcn/domob/android/download/AppExchangeDownloader;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/domob/android/download/AppExchangeDownloader;->l:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/app/Notification;

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->c:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->d:I

    iget-object v2, p0, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method static synthetic d(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->n:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public static downloadApp(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lcn/domob/android/download/AppExchangeDownloaderListener;)V
    .locals 7
    .param p0, "downloadUrl"    # Ljava/lang/String;
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcn/domob/android/download/AppExchangeDownloaderListener;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x3

    const-string v3, "DomobSDK"

    .line 73
    invoke-static {p0}, Lcn/domob/android/download/AppExchangeDownloader;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 75
    sget-object v1, Lcn/domob/android/download/AppExchangeDownloader;->Download_Map:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    const-string v0, "\u5f53\u524d\u5e94\u7528\u5df2\u5728\u4e0b\u8f7d"

    invoke-interface {p3, v6, v0}, Lcn/domob/android/download/AppExchangeDownloaderListener;->onDownloadFailed(ILjava/lang/String;)V

    .line 77
    const-string v0, "DomobSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "app"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is downloading"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    .end local p0    # "downloadUrl":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 82
    .restart local p0    # "downloadUrl":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcn/domob/android/download/AppExchangeDownloader;->Download_Map:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 83
    const-string v0, "\u6700\u5927\u4e0b\u8f7d\u6570\u4e3a3\u4e2a"

    invoke-interface {p3, v2, v0}, Lcn/domob/android/download/AppExchangeDownloaderListener;->onDownloadFailed(ILjava/lang/String;)V

    .line 84
    const-string v0, "download"

    const-string v1, "max"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string v0, "DomobSDK"

    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    const-string v0, "DomobSDK"

    const-string v0, "max download is 3"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 90
    :cond_2
    new-instance v1, Lcn/domob/android/download/AppExchangeDownloader;

    invoke-direct {v1, p0, p1, v0, p2}, Lcn/domob/android/download/AppExchangeDownloader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 91
    iput-object p3, v1, Lcn/domob/android/download/AppExchangeDownloader;->f:Lcn/domob/android/download/AppExchangeDownloaderListener;

    .line 92
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, v1, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/app/Notification;

    iget-object v0, v1, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/app/Notification;

    const v2, 0x1080081

    iput v2, v0, Landroid/app/Notification;->icon:I

    iget-object v0, v1, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/app/Notification;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcn/domob/android/download/AppExchangeDownloader;->l:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d\uff0c\u8bf7\u7a0d\u5019..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->a:Landroid/content/Context;

    iget v2, v1, Lcn/domob/android/download/AppExchangeDownloader;->d:I

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    sget-object v4, Lcn/domob/android/download/AppExchangeDownloader;->a:Landroid/content/Context;

    const-class v5, Lcn/domob/android/ads/DomobActivity;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v4, "appName"

    iget-object v5, v1, Lcn/domob/android/download/AppExchangeDownloader;->l:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "appId"

    iget-object v5, v1, Lcn/domob/android/download/AppExchangeDownloader;->m:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "actType"

    const-string v5, "typeCancel"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "DomobActivityType"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x8000000

    invoke-static {v0, v2, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v1, Lcn/domob/android/download/AppExchangeDownloader;->n:Landroid/app/PendingIntent;

    iget-object v0, v1, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/app/Notification;

    sget-object v2, Lcn/domob/android/download/AppExchangeDownloader;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcn/domob/android/download/AppExchangeDownloader;->l:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u5df2\u4e0b\u8f7d0%"

    iget-object v5, v1, Lcn/domob/android/download/AppExchangeDownloader;->n:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->a:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "downloadUrl":Ljava/lang/String;
    check-cast p0, Landroid/app/NotificationManager;

    iput-object p0, v1, Lcn/domob/android/download/AppExchangeDownloader;->c:Landroid/app/NotificationManager;

    iget-object v0, v1, Lcn/domob/android/download/AppExchangeDownloader;->c:Landroid/app/NotificationManager;

    iget v2, v1, Lcn/domob/android/download/AppExchangeDownloader;->d:I

    iget-object v3, v1, Lcn/domob/android/download/AppExchangeDownloader;->b:Landroid/app/Notification;

    invoke-virtual {v0, v2, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    new-instance v0, Lcn/domob/android/download/b;

    sget-object v2, Lcn/domob/android/download/AppExchangeDownloader;->a:Landroid/content/Context;

    iget-object v3, v1, Lcn/domob/android/download/AppExchangeDownloader;->m:Ljava/lang/String;

    iget-object v4, v1, Lcn/domob/android/download/AppExchangeDownloader;->k:Ljava/lang/String;

    new-instance v5, Lcn/domob/android/download/AppExchangeDownloader$b;

    invoke-direct {v5, v1}, Lcn/domob/android/download/AppExchangeDownloader$b;-><init>(Lcn/domob/android/download/AppExchangeDownloader;)V

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/domob/android/download/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/download/AppExchangeDownloader$b;)V

    invoke-virtual {v0}, Lcn/domob/android/download/b;->start()V

    .line 93
    invoke-interface {p3}, Lcn/domob/android/download/AppExchangeDownloaderListener;->onStartDownload()V

    goto/16 :goto_0
.end method

.method static synthetic e(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/NotificationManager;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->c:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic f(Lcn/domob/android/download/AppExchangeDownloader;)I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->d:I

    return v0
.end method

.method static synthetic g(Lcn/domob/android/download/AppExchangeDownloader;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->e:I

    return v0
.end method

.method static synthetic h(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j(Lcn/domob/android/download/AppExchangeDownloader;)Lcn/domob/android/download/AppExchangeDownloaderListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->f:Lcn/domob/android/download/AppExchangeDownloaderListener;

    return-object v0
.end method

.method static synthetic k(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->o:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getDownloadListener()Lcn/domob/android/download/AppExchangeDownloaderListener;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->f:Lcn/domob/android/download/AppExchangeDownloaderListener;

    return-object v0
.end method

.method public stopDownload()V
    .locals 3

    .prologue
    const-string v2, "DomobSDK"

    .line 341
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stop download  cancel notify "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    :cond_0
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->p:Lcn/domob/android/download/DownloadTask;

    if-eqz v0, :cond_1

    .line 345
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->p:Lcn/domob/android/download/DownloadTask;

    invoke-virtual {v0}, Lcn/domob/android/download/DownloadTask;->a()V

    .line 347
    :cond_1
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader;->c:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->d:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 348
    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->Download_Map:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    return-void
.end method
