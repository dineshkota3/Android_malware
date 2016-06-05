.class final Lcn/domob/android/download/a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/download/AppExchangeDownloader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcn/domob/android/download/AppExchangeDownloader;


# direct methods
.method constructor <init>(Lcn/domob/android/download/AppExchangeDownloader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    .line 148
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x64

    const/4 v5, 0x0

    const-string v8, "\u4e0b\u8f7d\u5b8c\u6bd5"

    const-string v7, "DomobSDK"

    .line 151
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 153
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->a(Lcn/domob/android/download/AppExchangeDownloader;)I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget v0, p1, Landroid/os/Message;->what:I

    if-eq v0, v6, :cond_1

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 156
    :cond_1
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcn/domob/android/download/AppExchangeDownloader;->a(Lcn/domob/android/download/AppExchangeDownloader;I)V

    .line 157
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcn/domob/android/download/AppExchangeDownloader;->b(Lcn/domob/android/download/AppExchangeDownloader;I)V

    .line 161
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->b(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {}, Lcn/domob/android/download/AppExchangeDownloader;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v3}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5df2\u4e0b\u8f7d"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v4}, Lcn/domob/android/download/AppExchangeDownloader;->d(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 162
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->e(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->f(Lcn/domob/android/download/AppExchangeDownloader;)I

    move-result v1

    iget-object v2, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->b(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 164
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->g(Lcn/domob/android/download/AppExchangeDownloader;)I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 165
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v7, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " download success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->h(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 170
    iget-object v1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    iget-object v2, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->h(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v3}, Lcn/domob/android/download/AppExchangeDownloader;->h(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, ".temp"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/domob/android/download/AppExchangeDownloader;->a(Lcn/domob/android/download/AppExchangeDownloader;Ljava/lang/String;)V

    .line 171
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->h(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 175
    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->Download_Map:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->i(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->j(Lcn/domob/android/download/AppExchangeDownloader;)Lcn/domob/android/download/AppExchangeDownloaderListener;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->j(Lcn/domob/android/download/AppExchangeDownloader;)Lcn/domob/android/download/AppExchangeDownloaderListener;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->h(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcn/domob/android/download/AppExchangeDownloaderListener;->onDownloadSuccess(Ljava/lang/String;)V

    .line 179
    :cond_3
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0, v5}, Lcn/domob/android/download/AppExchangeDownloader;->b(Lcn/domob/android/download/AppExchangeDownloader;I)V

    .line 181
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->b(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/Notification;

    move-result-object v0

    const v1, 0x1080082

    iput v1, v0, Landroid/app/Notification;->icon:I

    .line 182
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->b(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/Notification;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6bd5"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 183
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->b(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/Notification;

    move-result-object v0

    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 184
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->h(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {}, Lcn/domob/android/download/AppExchangeDownloader;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v3}, Lcn/domob/android/download/AppExchangeDownloader;->f(Lcn/domob/android/download/AppExchangeDownloader;)I

    move-result v3

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/domob/android/download/AppExchangeDownloader;->a(Lcn/domob/android/download/AppExchangeDownloader;Landroid/app/PendingIntent;)V

    .line 186
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->b(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/Notification;

    move-result-object v0

    invoke-static {}, Lcn/domob/android/download/AppExchangeDownloader;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v3}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\u4e0b\u8f7d\u5b8c\u6bd5"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    iget-object v4, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v4}, Lcn/domob/android/download/AppExchangeDownloader;->d(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 187
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->e(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/NotificationManager;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->f(Lcn/domob/android/download/AppExchangeDownloader;)I

    move-result v1

    iget-object v2, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->b(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 188
    iget-object v0, p0, Lcn/domob/android/download/a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->h(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->a(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 189
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    invoke-static {}, Lcn/domob/android/download/AppExchangeDownloader;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
