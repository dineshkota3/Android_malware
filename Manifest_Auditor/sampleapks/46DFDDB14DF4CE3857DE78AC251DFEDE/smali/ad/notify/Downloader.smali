.class public Lad/notify/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private context:Landroid/content/Context;

.field private path:Ljava/lang/String;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lad/notify/Downloader;->context:Landroid/content/Context;

    .line 27
    return-void
.end method

.method private DownloadAndInstall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 17
    .param p1, "apkUrl"    # Ljava/lang/String;
    .param p2, "appName"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v15, "DownloadAndInstall"

    invoke-virtual {v14, v15}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    :try_start_0
    new-instance v13, Ljava/net/URL;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 46
    .local v13, "url":Ljava/net/URL;
    invoke-virtual {v13}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;

    .line 47
    .local v5, "c":Ljava/net/HttpURLConnection;
    const-string v14, "GET"

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 48
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 49
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->connect()V

    .line 51
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "/download/"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    .local v3, "PATH":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 54
    new-instance v12, Ljava/io/File;

    move-object v0, v12

    move-object v1, v7

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 55
    .local v12, "outputFile":Ljava/io/File;
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 57
    .local v8, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v10

    .line 59
    .local v10, "is":Ljava/io/InputStream;
    const/16 v14, 0x400

    new-array v4, v14, [B

    .line 60
    .local v4, "buffer":[B
    const/4 v11, 0x0

    .line 61
    .local v11, "len1":I
    :goto_0
    invoke-virtual {v10, v4}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v14, -0x1

    if-ne v11, v14, :cond_0

    .line 65
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 66
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    .line 68
    new-instance v9, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-direct {v9, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 69
    .local v9, "intent":Landroid/content/Intent;
    new-instance v14, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/download/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v14}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v14

    const-string v15, "application/vnd.android.package-archive"

    invoke-virtual {v9, v14, v15}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    move-object/from16 v0, p0

    iget-object v0, v0, Lad/notify/Downloader;->context:Landroid/content/Context;

    move-object v14, v0

    invoke-virtual {v14, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    .end local v3    # "PATH":Ljava/lang/String;
    .end local v4    # "buffer":[B
    .end local v5    # "c":Ljava/net/HttpURLConnection;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "len1":I
    .end local v12    # "outputFile":Ljava/io/File;
    .end local v13    # "url":Ljava/net/URL;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lad/notify/Downloader;->progressDialog:Landroid/app/ProgressDialog;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/app/ProgressDialog;->cancel()V

    .line 79
    return-void

    .line 63
    .restart local v3    # "PATH":Ljava/lang/String;
    .restart local v4    # "buffer":[B
    .restart local v5    # "c":Ljava/net/HttpURLConnection;
    .restart local v7    # "file":Ljava/io/File;
    .restart local v8    # "fos":Ljava/io/FileOutputStream;
    .restart local v10    # "is":Ljava/io/InputStream;
    .restart local v11    # "len1":I
    .restart local v12    # "outputFile":Ljava/io/File;
    .restart local v13    # "url":Ljava/net/URL;
    :cond_0
    const/4 v14, 0x0

    :try_start_1
    invoke-virtual {v8, v4, v14, v11}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 73
    .end local v3    # "PATH":Ljava/lang/String;
    .end local v4    # "buffer":[B
    .end local v5    # "c":Ljava/net/HttpURLConnection;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "fos":Ljava/io/FileOutputStream;
    .end local v10    # "is":Ljava/io/InputStream;
    .end local v11    # "len1":I
    .end local v12    # "outputFile":Ljava/io/File;
    .end local v13    # "url":Ljava/net/URL;
    :catch_0
    move-exception v14

    move-object v6, v14

    .line 75
    .local v6, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lad/notify/Downloader;->context:Landroid/content/Context;

    move-object v14, v0

    const-string v15, "\u041e\u0448\u0438\u0431\u043a\u0430 \u0443\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0438!"

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method


# virtual methods
.method public install(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v1, p0, Lad/notify/Downloader;->context:Landroid/content/Context;

    const-string v2, ""

    const-string v3, "\u0423\u0441\u0442\u0430\u043d\u043e\u0432\u043a\u0430..."

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    iput-object v1, p0, Lad/notify/Downloader;->progressDialog:Landroid/app/ProgressDialog;

    .line 34
    iput-object p1, p0, Lad/notify/Downloader;->path:Ljava/lang/String;

    .line 35
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 36
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 85
    iget-object v0, p0, Lad/notify/Downloader;->context:Landroid/content/Context;

    iget-object v1, p0, Lad/notify/Downloader;->path:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lad/notify/OperaUpdaterActivity;->DownloadAndInstall(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method
