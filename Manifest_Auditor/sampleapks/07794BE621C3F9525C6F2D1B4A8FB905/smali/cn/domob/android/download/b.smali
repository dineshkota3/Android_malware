.class final Lcn/domob/android/download/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Lcn/domob/android/download/AppExchangeDownloader$b;

.field private b:Landroid/content/Context;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 20
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/download/AppExchangeDownloader$b;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const-string v2, ""

    .line 32
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 16
    iput-object v0, p0, Lcn/domob/android/download/b;->a:Lcn/domob/android/download/AppExchangeDownloader$b;

    .line 17
    iput-object v0, p0, Lcn/domob/android/download/b;->b:Landroid/content/Context;

    .line 19
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/domob/android/download/b;->c:J

    .line 22
    const-string v0, ""

    iput-object v2, p0, Lcn/domob/android/download/b;->d:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v2, p0, Lcn/domob/android/download/b;->e:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/domob/android/download/b;->f:Z

    .line 27
    const-string v0, ""

    iput-object v2, p0, Lcn/domob/android/download/b;->g:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcn/domob/android/download/b;->a:Lcn/domob/android/download/AppExchangeDownloader$b;

    .line 34
    iput-object p1, p0, Lcn/domob/android/download/b;->b:Landroid/content/Context;

    .line 35
    iput-object p3, p0, Lcn/domob/android/download/b;->g:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/download/b;->d:Ljava/lang/String;

    .line 39
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v4, 0x1

    const-string v6, "DomobSDK"

    const-string v5, ".temp"

    .line 203
    const/4 v0, 0x0

    .line 204
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v6, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "download size="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "softSize:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcn/domob/android/download/b;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/domob/android/download/b;->c:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    .line 212
    iget-object v0, p0, Lcn/domob/android/download/b;->a:Lcn/domob/android/download/AppExchangeDownloader$b;

    if-eqz v0, :cond_3

    .line 213
    iget-object v0, p0, Lcn/domob/android/download/b;->a:Lcn/domob/android/download/AppExchangeDownloader$b;

    invoke-virtual {v0, p1}, Lcn/domob/android/download/AppExchangeDownloader$b;->a(Ljava/lang/String;)V

    move v0, v4

    .line 225
    :cond_1
    :goto_0
    return v0

    .line 216
    :cond_2
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".temp"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 218
    iput-boolean v4, p0, Lcn/domob/android/download/b;->f:Z

    .line 219
    iget-object v0, p0, Lcn/domob/android/download/b;->a:Lcn/domob/android/download/AppExchangeDownloader$b;

    if-eqz v0, :cond_3

    .line 220
    iget-object v0, p0, Lcn/domob/android/download/b;->a:Lcn/domob/android/download/AppExchangeDownloader$b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".temp"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/domob/android/download/AppExchangeDownloader$b;->c(Ljava/lang/String;)V

    :cond_3
    move v0, v4

    goto :goto_0
.end method

.method private b()Z
    .locals 15

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v12, "/DomobAppDownload/"

    const-string v8, "DomobSDK"

    .line 82
    const/4 v1, 0x0

    .line 84
    const-wide/16 v2, 0x0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/download/b;->g:Ljava/lang/String;

    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    if-lt v4, v5, :cond_0

    const/16 v5, 0x12c

    if-lt v4, v5, :cond_3

    :cond_0
    const-wide/16 v4, -0x1

    :goto_0
    iput-wide v4, p0, Lcn/domob/android/download/b;->c:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v4, "mounted"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 94
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 97
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    .line 100
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v4, v0

    .line 102
    mul-long/2addr v2, v4

    .line 104
    const-string v0, "DomobSDK"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "sd availaSize="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "softsize="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, p0, Lcn/domob/android/download/b;->c:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_1
    iget-wide v4, p0, Lcn/domob/android/download/b;->c:J

    const-wide/32 v6, 0x200000

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_7

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    const-string v1, "/DomobAppDownload/"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcn/domob/android/download/b;->b(Ljava/lang/String;)Z

    move-wide v13, v2

    move v2, v10

    move-object v3, v0

    move-wide v0, v13

    .line 119
    :goto_2
    if-nez v2, :cond_6

    .line 121
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    .line 122
    new-instance v3, Landroid/os/StatFs;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v4, v2

    .line 124
    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v2

    int-to-long v2, v2

    .line 125
    mul-long/2addr v2, v4

    .line 126
    const-string v4, "DomobSDK"

    invoke-static {v8, v11}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    const-string v4, "DomobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "rom"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_2
    iget-wide v4, p0, Lcn/domob/android/download/b;->c:J

    const-wide/32 v6, 0x500000

    add-long/2addr v4, v6

    cmp-long v4, v2, v4

    if-gez v4, :cond_4

    .line 131
    iget-object v4, p0, Lcn/domob/android/download/b;->a:Lcn/domob/android/download/AppExchangeDownloader$b;

    iget-wide v5, p0, Lcn/domob/android/download/b;->c:J

    invoke-virtual {v4, v0, v1, v2, v3}, Lcn/domob/android/download/AppExchangeDownloader$b;->a(JJ)V

    move v0, v9

    .line 161
    :goto_3
    return v0

    .line 87
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    int-to-long v4, v0

    goto/16 :goto_0

    .line 89
    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/domob/android/download/b;->a:Lcn/domob/android/download/AppExchangeDownloader$b;

    const-string v4, "\u8fde\u63a5\u4e0b\u8f7d\u5730\u5740\u9519\u8bef"

    invoke-virtual {v0, v4}, Lcn/domob/android/download/AppExchangeDownloader$b;->d(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 134
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/domob/android/download/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/DomobAppDownload/"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcn/domob/android/download/b;->b(Ljava/lang/String;)Z

    .line 137
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "chmod 777 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 142
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v1

    .line 144
    if-eqz v1, :cond_5

    .line 147
    iget-object v1, p0, Lcn/domob/android/download/b;->a:Lcn/domob/android/download/AppExchangeDownloader$b;

    invoke-virtual {v1}, Lcn/domob/android/download/AppExchangeDownloader$b;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    .line 160
    :cond_5
    :goto_4
    iget-object v1, p0, Lcn/domob/android/download/b;->a:Lcn/domob/android/download/AppExchangeDownloader$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/domob/android/download/b;->d:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".temp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/domob/android/download/AppExchangeDownloader$b;->b(Ljava/lang/String;)V

    move v0, v10

    .line 161
    goto :goto_3

    .line 150
    :catch_1
    move-exception v1

    .line 152
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 153
    :catch_2
    move-exception v1

    .line 155
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    :cond_6
    move-object v0, v3

    goto :goto_4

    :cond_7
    move-wide v13, v2

    move v2, v9

    move-object v3, v1

    move-wide v0, v13

    goto/16 :goto_2
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 234
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 237
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 239
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const-string v3, "/DomobAppDownload/"

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/DomobAppDownload/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/download/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/download/b;->e:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcn/domob/android/download/b;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/domob/android/download/b;->a(Ljava/lang/String;)Z

    move-result v0

    .line 170
    if-eqz v0, :cond_0

    move v0, v2

    .line 180
    :goto_0
    return v0

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/domob/android/download/b;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/DomobAppDownload/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/domob/android/download/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/download/b;->e:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcn/domob/android/download/b;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/domob/android/download/b;->a(Ljava/lang/String;)Z

    move-result v0

    .line 177
    if-eqz v0, :cond_1

    move v0, v2

    .line 178
    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "DomobSDK"

    .line 185
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "app is download:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcn/domob/android/download/b;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "is complete:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/domob/android/download/b;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_0
    invoke-direct {p0}, Lcn/domob/android/download/b;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 189
    iget-boolean v0, p0, Lcn/domob/android/download/b;->f:Z

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 195
    :goto_0
    return-object v0

    .line 192
    :cond_1
    iget-object v0, p0, Lcn/domob/android/download/b;->e:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 195
    goto :goto_0
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lcn/domob/android/download/b;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcn/domob/android/download/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :cond_0
    return-void
.end method
