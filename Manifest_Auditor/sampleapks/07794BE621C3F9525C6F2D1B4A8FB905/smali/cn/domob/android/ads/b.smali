.class final Lcn/domob/android/ads/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;[B)V
    .locals 6

    .prologue
    const-string v0, "DomobSDK"

    .line 47
    const/4 v0, 0x0

    .line 49
    :try_start_0
    sget-object v1, Lcn/domob/android/ads/DBHelper;->b:Landroid/net/Uri;

    invoke-virtual {p0, v1, p1}, Lcn/domob/android/ads/DBHelper;->b(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    .line 51
    :cond_0
    sget-object v1, Lcn/domob/android/ads/DBHelper;->b:Landroid/net/Uri;

    invoke-virtual {p0, v1}, Lcn/domob/android/ads/DBHelper;->a(Landroid/net/Uri;)I

    .line 52
    const-string v1, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    const-string v1, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "save image:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to cache!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 56
    const-string v2, "_name"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "_image"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 58
    const-string v2, "_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 59
    sget-object v2, Lcn/domob/android/ads/DBHelper;->b:Landroid/net/Uri;

    invoke-virtual {p0, v2, v1}, Lcn/domob/android/ads/DBHelper;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 69
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 70
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 72
    :cond_3
    return-void

    .line 61
    :cond_4
    :try_start_2
    const-string v1, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 62
    const-string v1, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is already in cache."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 65
    :catch_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 66
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_0

    .line 65
    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method protected static a(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/android/ads/DBHelper;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[B>;)Z"
        }
    .end annotation

    .prologue
    const-string v0, "DomobSDK"

    .line 15
    const/4 v0, 0x0

    .line 16
    const/4 v1, 0x0

    .line 18
    :try_start_0
    sget-object v2, Lcn/domob/android/ads/DBHelper;->b:Landroid/net/Uri;

    invoke-virtual {p0, v2, p2}, Lcn/domob/android/ads/DBHelper;->b(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 19
    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 20
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 21
    const-string v2, "_image"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 22
    if-eqz v2, :cond_3

    .line 23
    const-string v3, "DomobSDK"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    const-string v3, "DomobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "load image from cache:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    invoke-virtual {p3, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    const/4 v0, 0x1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    .line 38
    :goto_0
    if-eqz v0, :cond_1

    .line 39
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_1
    return v1

    .line 30
    :cond_2
    :try_start_2
    const-string v2, "DomobSDK"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 31
    const-string v2, "DomobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "fail to load image:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_0

    .line 34
    :catch_0
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 35
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 34
    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_1

    :cond_3
    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_0
.end method

.method protected static b(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/domob/android/ads/DBHelper;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "[B>;)Z"
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x3

    const-string v7, "DomobSDK"

    .line 75
    const/4 v0, 0x0

    .line 76
    const/4 v1, 0x0

    .line 78
    :try_start_0
    sget-object v2, Lcn/domob/android/ads/DBHelper;->a:Landroid/net/Uri;

    invoke-virtual {p0, v2, p2}, Lcn/domob/android/ads/DBHelper;->b(Landroid/net/Uri;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 79
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_2

    .line 80
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 81
    const-string v2, "_image"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    .line 82
    if-eqz v2, :cond_6

    .line 83
    const-string v3, "DomobSDK"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 84
    const-string v3, "DomobSDK"

    const-string v4, "success to load from resources DB."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_0
    invoke-virtual {p3, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    move v1, v9

    .line 119
    :goto_0
    if-eqz v0, :cond_1

    .line 120
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_1
    return v1

    .line 90
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcn/domob/android/ads/DBHelper;->a()Landroid/content/Context;

    move-result-object v2

    .line 91
    if-eqz v2, :cond_6

    .line 92
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 93
    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 94
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 95
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .line 96
    if-eqz v4, :cond_4

    .line 97
    const-string v5, "DomobSDK"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 98
    const-string v5, "DomobSDK"

    const-string v6, "success to load from preload resources."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_3
    invoke-virtual {p3, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v9

    .line 103
    :cond_4
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 107
    if-eqz v2, :cond_6

    .line 108
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto :goto_0

    .line 112
    :catch_0
    move-exception v2

    move-object v10, v2

    move v2, v0

    move-object v0, v10

    .line 113
    const-string v3, "DomobSDK"

    const-string v3, "cannot load it from res this time."

    invoke-static {v7, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v3, "DomobSDK"

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 115
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    move-object v0, v1

    move v1, v2

    goto :goto_0

    :cond_6
    move-object v10, v1

    move v1, v0

    move-object v0, v10

    goto :goto_0
.end method
