.class public Lcn/domob/android/download/FileDownloadThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Ljava/net/URL;

.field private b:Ljava/io/File;

.field private c:I

.field private d:I

.field private e:I

.field private f:Z

.field private g:I

.field private h:Lcn/domob/android/download/DownloadTask$TaskState;

.field private i:Lcn/domob/android/download/AppExchangeDownloader$a;


# direct methods
.method constructor <init>(Ljava/net/URL;Ljava/io/File;IILcn/domob/android/download/DownloadTask$TaskState;Lcn/domob/android/download/AppExchangeDownloader$a;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "file"    # Ljava/io/File;
    .param p3, "startPosition"    # I
    .param p4, "endPosition"    # I
    .param p5, "taskState"    # Lcn/domob/android/download/DownloadTask$TaskState;
    .param p6, "downloadListener"    # Lcn/domob/android/download/AppExchangeDownloader$a;

    .prologue
    const/4 v0, 0x0

    const-string v2, "DomobSDK"

    .line 47
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcn/domob/android/download/FileDownloadThread;->f:Z

    .line 37
    iput v0, p0, Lcn/domob/android/download/FileDownloadThread;->g:I

    .line 50
    iput-object p1, p0, Lcn/domob/android/download/FileDownloadThread;->a:Ljava/net/URL;

    .line 52
    iput-object p2, p0, Lcn/domob/android/download/FileDownloadThread;->b:Ljava/io/File;

    .line 54
    iput p3, p0, Lcn/domob/android/download/FileDownloadThread;->c:I

    .line 56
    iput p3, p0, Lcn/domob/android/download/FileDownloadThread;->e:I

    .line 58
    iput p4, p0, Lcn/domob/android/download/FileDownloadThread;->d:I

    .line 60
    iput-object p5, p0, Lcn/domob/android/download/FileDownloadThread;->h:Lcn/domob/android/download/DownloadTask$TaskState;

    .line 62
    iput-object p6, p0, Lcn/domob/android/download/FileDownloadThread;->i:Lcn/domob/android/download/AppExchangeDownloader$a;

    .line 64
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "download st:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 66
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public getDownloadSize()I
    .locals 1

    .prologue
    .line 183
    iget v0, p0, Lcn/domob/android/download/FileDownloadThread;->g:I

    return v0
.end method

.method public isFinished()Z
    .locals 1

    .prologue
    .line 177
    iget-boolean v0, p0, Lcn/domob/android/download/FileDownloadThread;->f:Z

    return v0
.end method

.method public run()V
    .locals 9

    .prologue
    const-string v8, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u5f02\u5e38"

    const-string v7, "DomobSDK"

    .line 73
    .line 77
    const/16 v0, 0x2800

    new-array v0, v0, [B

    .line 82
    :try_start_0
    iget-object v1, p0, Lcn/domob/android/download/FileDownloadThread;->a:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 83
    const v2, 0x9c40

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 84
    const v2, 0xea60

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 85
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setAllowUserInteraction(Z)V

    .line 89
    const-string v2, "Range"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bytes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcn/domob/android/download/FileDownloadThread;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 90
    iget v4, p0, Lcn/domob/android/download/FileDownloadThread;->d:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-virtual {v1, v2, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lcn/domob/android/download/FileDownloadThread;->b:Ljava/io/File;

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lcn/domob/android/download/FileDownloadThread;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/data/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 97
    const-string v3, "DomobSDK"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 98
    const-string v3, "DomobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "download in rom change chmod "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcn/domob/android/download/FileDownloadThread;->b:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "chmod 777 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/domob/android/download/FileDownloadThread;->b:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 101
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    .line 102
    invoke-virtual {v4, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 105
    :cond_1
    iget v3, p0, Lcn/domob/android/download/FileDownloadThread;->c:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 107
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 111
    :goto_0
    iget v1, p0, Lcn/domob/android/download/FileDownloadThread;->e:I

    iget v4, p0, Lcn/domob/android/download/FileDownloadThread;->d:I

    if-lt v1, v4, :cond_4

    .line 151
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/domob/android/download/FileDownloadThread;->f:Z

    .line 153
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V

    .line 155
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 173
    :cond_3
    :goto_1
    return-void

    .line 112
    :cond_4
    const-string v1, "DomobSDK"

    const/4 v4, 0x3

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 113
    const-string v1, "DomobSDKdwnloadmessage"

    const-string v4, "downloading"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :cond_5
    iget-object v1, p0, Lcn/domob/android/download/FileDownloadThread;->h:Lcn/domob/android/download/DownloadTask$TaskState;

    iget-boolean v1, v1, Lcn/domob/android/download/DownloadTask$TaskState;->a:Z

    if-nez v1, :cond_3

    .line 119
    const/4 v1, 0x0

    const/16 v4, 0x2800

    invoke-virtual {v3, v0, v1, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v1

    .line 121
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    .line 123
    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 129
    iget v4, p0, Lcn/domob/android/download/FileDownloadThread;->e:I

    add-int/2addr v4, v1

    iput v4, p0, Lcn/domob/android/download/FileDownloadThread;->e:I

    .line 131
    iget v4, p0, Lcn/domob/android/download/FileDownloadThread;->e:I

    iget v5, p0, Lcn/domob/android/download/FileDownloadThread;->d:I

    if-le v4, v5, :cond_6

    .line 133
    iget v4, p0, Lcn/domob/android/download/FileDownloadThread;->g:I

    iget v5, p0, Lcn/domob/android/download/FileDownloadThread;->e:I

    iget v6, p0, Lcn/domob/android/download/FileDownloadThread;->d:I

    sub-int/2addr v5, v6

    sub-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v1, v4

    iput v1, p0, Lcn/domob/android/download/FileDownloadThread;->g:I
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 141
    :goto_2
    const-wide/16 v4, 0x1e

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 144
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 145
    const-string v4, "DomobSDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "download Interrupt error:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v1, p0, Lcn/domob/android/download/FileDownloadThread;->i:Lcn/domob/android/download/AppExchangeDownloader$a;

    const-string v4, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u5f02\u5e38"

    invoke-virtual {v1, v4}, Lcn/domob/android/download/AppExchangeDownloader$a;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 159
    :catch_1
    move-exception v0

    const-string v0, "DomobSDK"

    const-string v0, "download SocketTimeoutException "

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcn/domob/android/download/FileDownloadThread;->i:Lcn/domob/android/download/AppExchangeDownloader$a;

    const-string v1, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u7f51\u7edc\u51fa\u73b0\u5f02\u5e38"

    invoke-virtual {v0, v1}, Lcn/domob/android/download/AppExchangeDownloader$a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 137
    :cond_6
    :try_start_3
    iget v4, p0, Lcn/domob/android/download/FileDownloadThread;->g:I

    add-int/2addr v1, v4

    iput v1, p0, Lcn/domob/android/download/FileDownloadThread;->g:I
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_2

    .line 162
    :catch_2
    move-exception v0

    .line 163
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download IOException "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcn/domob/android/download/FileDownloadThread;->i:Lcn/domob/android/download/AppExchangeDownloader$a;

    const-string v1, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u5f02\u5e38"

    invoke-virtual {v0, v8}, Lcn/domob/android/download/AppExchangeDownloader$a;->a(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 167
    :catch_3
    move-exception v0

    .line 168
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download error "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lcn/domob/android/download/FileDownloadThread;->i:Lcn/domob/android/download/AppExchangeDownloader$a;

    const-string v2, "\u4e0b\u8f7d\u8fc7\u7a0b\u4e2d\u51fa\u73b0\u5f02\u5e38"

    invoke-virtual {v1, v8}, Lcn/domob/android/download/AppExchangeDownloader$a;->a(Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1
.end method
