.class public Lcom/admogo/AdMogoManager;
.super Ljava/lang/Object;
.source "AdMogoManager.java"


# static fields
.field private static final PREFS_STRING_CONFIG:Ljava/lang/String; = "config"

.field private static final PREFS_STRING_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field private static configExpireTimeout:J

.field public static getRation:Ljava/lang/String;

.field public static lastRation:Lcom/admogo/obj/Ration;


# instance fields
.field private adType:I

.field public ad_type:I

.field public birthday:Ljava/lang/String;

.field private contextReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private cpuInfo:Ljava/lang/String;

.field public deviceIDHash:Ljava/lang/String;

.field public deviceName:Ljava/lang/String;

.field private extra:Lcom/admogo/obj/Extra;

.field public gender:Ljava/lang/String;

.field private getCountryCode:Ljava/lang/String;

.field public keyAdMogo:Ljava/lang/String;

.field public keywords:Ljava/lang/String;

.field public location:Landroid/location/Location;

.field private memoryInfo:Ljava/lang/String;

.field public networkType:Ljava/lang/String;

.field private operInfo:Ljava/lang/String;

.field public os:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private rationsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/admogo/obj/Ration;",
            ">;"
        }
    .end annotation
.end field

.field rollovers:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Lcom/admogo/obj/Ration;",
            ">;"
        }
    .end annotation
.end field

.field public final scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private screenSize:Ljava/lang/String;

.field private totalWeight:D

.field private versionCode:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 67
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/admogo/AdMogoManager;->configExpireTimeout:J

    .line 98
    const-string v0, ""

    sput-object v0, Lcom/admogo/AdMogoManager;->getRation:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/String;I)V
    .locals 9
    .param p2, "keyAdMogo"    # Ljava/lang/String;
    .param p3, "adType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p1, "contextReference":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/content/Context;>;"
    const-string v8, "AdsMOGO SDK"

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const-wide/16 v5, 0x0

    iput-wide v5, p0, Lcom/admogo/AdMogoManager;->totalWeight:D

    .line 101
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    iput-object v5, p0, Lcom/admogo/AdMogoManager;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 108
    const-string v5, "AdsMOGO SDK"

    const-string v5, "Creating adMogoManager..."

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iput-object p1, p0, Lcom/admogo/AdMogoManager;->contextReference:Ljava/lang/ref/WeakReference;

    .line 110
    iput-object p2, p0, Lcom/admogo/AdMogoManager;->keyAdMogo:Ljava/lang/String;

    .line 111
    iput p3, p0, Lcom/admogo/AdMogoManager;->adType:I

    .line 112
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    .line 113
    const-string v6, "window"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 112
    check-cast v0, Landroid/view/WindowManager;

    .line 114
    .local v0, "WM":Landroid/view/WindowManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 115
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 114
    iput-object v5, p0, Lcom/admogo/AdMogoManager;->screenSize:Ljava/lang/String;

    .line 119
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/admogo/AdMogoManager;->packageName:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 121
    iget-object v6, p0, Lcom/admogo/AdMogoManager;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/PackageInfo;->versionCode:I

    int-to-double v5, v5

    .line 120
    iput-wide v5, p0, Lcom/admogo/AdMogoManager;->versionCode:D
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lcom/admogo/GetUserInfo;->getNetworkType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/admogo/AdMogoManager;->networkType:Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lcom/admogo/GetUserInfo;->getOperators(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/admogo/AdMogoManager;->operInfo:Ljava/lang/String;

    .line 128
    invoke-static {}, Lcom/admogo/GetUserInfo;->GetCPUInfo()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/admogo/AdMogoManager;->cpuInfo:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/Context;

    invoke-static {v5}, Lcom/admogo/GetUserInfo;->getMemoryInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/admogo/AdMogoManager;->memoryInfo:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :goto_1
    :try_start_2
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 138
    .local v4, "md":Ljava/security/MessageDigest;
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v5, "android_id"

    invoke-direct {v1, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 139
    .local v1, "deviceIDString":Ljava/lang/StringBuffer;
    const-string v5, "AdMogo"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    .line 140
    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v5

    invoke-static {v5}, Lcom/admogo/util/AdMogoUtil;->convertToHex([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/admogo/AdMogoManager;->deviceIDHash:Ljava/lang/String;

    .line 143
    sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/admogo/AdMogoManager;->os:Ljava/lang/String;

    .line 145
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/admogo/AdMogoManager;->deviceName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2

    .line 149
    .end local v1    # "deviceIDString":Ljava/lang/StringBuffer;
    .end local v4    # "md":Ljava/security/MessageDigest;
    :goto_2
    const-string v5, "AdsMOGO SDK"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Hashed device ID is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/admogo/AdMogoManager;->deviceIDHash:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    const-string v5, "AdsMOGO SDK"

    const-string v5, "AdsMOGO SDK Version : 1.0.3"

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v5, "AdsMOGO SDK"

    const-string v5, "Finished creating adMogoManager"

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 122
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 123
    .local v3, "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    iput-wide v5, p0, Lcom/admogo/AdMogoManager;->versionCode:D

    goto/16 :goto_0

    .line 130
    .end local v3    # "e1":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 131
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "getPhoneInfo"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 146
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    move-object v2, v5

    .line 147
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, "00000000000000000000000000000000"

    iput-object v5, p0, Lcom/admogo/AdMogoManager;->deviceIDHash:Ljava/lang/String;

    goto :goto_2
.end method

.method private convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p1, "is"    # Ljava/io/InputStream;

    .prologue
    const/4 v6, 0x0

    const-string v8, "Caught IOException in convertStreamToString()"

    const-string v7, "AdsMOGO SDK"

    .line 386
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 387
    const/16 v5, 0x2000

    .line 386
    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 388
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 392
    .local v1, "line":Ljava/lang/String;
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-nez v1, :cond_0

    .line 401
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 409
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    .line 393
    :cond_0
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 395
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 396
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "AdsMOGO SDK"

    .line 397
    const-string v5, "Caught IOException in convertStreamToString()"

    .line 396
    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 401
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v4, v6

    .line 398
    goto :goto_1

    .line 402
    :catch_1
    move-exception v0

    .line 403
    const-string v4, "AdsMOGO SDK"

    .line 404
    const-string v4, "Caught IOException in convertStreamToString()"

    .line 403
    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v6

    .line 405
    goto :goto_1

    .line 399
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 401
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 407
    throw v4

    .line 402
    :catch_2
    move-exception v0

    .line 403
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "AdsMOGO SDK"

    .line 404
    const-string v4, "Caught IOException in convertStreamToString()"

    .line 403
    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v6

    .line 405
    goto :goto_1

    .line 402
    .end local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v0

    .line 403
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v4, "AdsMOGO SDK"

    .line 404
    const-string v4, "Caught IOException in convertStreamToString()"

    .line 403
    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v6

    .line 405
    goto :goto_1
.end method

.method private fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p1, "urlString"    # Ljava/lang/String;

    .prologue
    .line 562
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 563
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {v3}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    .line 564
    .local v2, "is":Ljava/io/InputStream;
    const-string v4, "src"

    invoke-static {v2, v4}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 565
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 569
    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "url":Ljava/net/URL;
    :goto_0
    return-object v4

    .line 567
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 568
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "AdsMOGO SDK"

    const-string v5, "Unable to fetchImage(): "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private parseConfigurationString(Ljava/lang/String;)V
    .locals 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    const-string v4, "Unable to parse response from JSON. This may or may not be fatal."

    const-string v3, "AdsMOGO SDK"

    .line 415
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 417
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "extra"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/admogo/AdMogoManager;->parseExtraJson(Lorg/json/JSONObject;)V

    .line 418
    const-string v2, "rations"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/admogo/AdMogoManager;->parseRationsJson(Lorg/json/JSONArray;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 431
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 421
    .local v0, "e":Lorg/json/JSONException;
    const-string v2, "AdsMOGO SDK"

    .line 422
    const-string v2, "Unable to parse response from JSON. This may or may not be fatal."

    .line 421
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 424
    new-instance v2, Lcom/admogo/obj/Extra;

    invoke-direct {v2}, Lcom/admogo/obj/Extra;-><init>()V

    iput-object v2, p0, Lcom/admogo/AdMogoManager;->extra:Lcom/admogo/obj/Extra;

    goto :goto_0

    .line 425
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 426
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "AdsMOGO SDK"

    .line 427
    const-string v2, "Unable to parse response from JSON. This may or may not be fatal."

    .line 426
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    new-instance v2, Lcom/admogo/obj/Extra;

    invoke-direct {v2}, Lcom/admogo/obj/Extra;-><init>()V

    iput-object v2, p0, Lcom/admogo/AdMogoManager;->extra:Lcom/admogo/obj/Extra;

    goto :goto_0
.end method

.method private parseCustomJsonString(Ljava/lang/String;)Lcom/admogo/obj/Custom;
    .locals 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 520
    new-instance v0, Lcom/admogo/obj/Custom;

    invoke-direct {v0}, Lcom/admogo/obj/Custom;-><init>()V

    .line 522
    .local v0, "custom":Lcom/admogo/obj/Custom;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 524
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "ad_type"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v0, Lcom/admogo/obj/Custom;->type:I

    .line 525
    const-string v3, "img_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/admogo/obj/Custom;->imageLink:Ljava/lang/String;

    .line 526
    const-string v3, "redirect_url"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/admogo/obj/Custom;->link:Ljava/lang/String;

    .line 527
    const-string v3, "ad_text"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/admogo/obj/Custom;->description:Ljava/lang/String;

    .line 529
    iget-object v3, v0, Lcom/admogo/obj/Custom;->imageLink:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/admogo/AdMogoManager;->fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v0, Lcom/admogo/obj/Custom;->image:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v0

    .line 536
    .end local v2    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 530
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 531
    .local v1, "e":Lorg/json/JSONException;
    const-string v3, "AdsMOGO SDK"

    .line 532
    const-string v4, "Caught JSONException in parseCustomJsonString()"

    .line 531
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 533
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private parseExtraJson(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const-string v4, "red"

    const-string v4, "green"

    const-string v4, "blue"

    const-string v4, "alpha"

    .line 434
    new-instance v2, Lcom/admogo/obj/Extra;

    invoke-direct {v2}, Lcom/admogo/obj/Extra;-><init>()V

    .line 437
    .local v2, "extra":Lcom/admogo/obj/Extra;
    :try_start_0
    const-string v4, "cycle_time"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/admogo/obj/Extra;->cycleTime:I

    .line 438
    const-string v4, "location_on"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/admogo/obj/Extra;->locationOn:I

    .line 439
    const-string v4, "transition"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/admogo/obj/Extra;->transition:I

    .line 446
    const-string v4, "background_color_rgb"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 447
    .local v0, "backgroundColor":Lorg/json/JSONObject;
    const-string v4, "red"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/admogo/obj/Extra;->bgRed:I

    .line 448
    const-string v4, "green"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/admogo/obj/Extra;->bgGreen:I

    .line 449
    const-string v4, "blue"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/admogo/obj/Extra;->bgBlue:I

    .line 450
    const-string v4, "alpha"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0xff

    iput v4, v2, Lcom/admogo/obj/Extra;->bgAlpha:I

    .line 452
    const-string v4, "text_color_rgb"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 453
    .local v3, "textColor":Lorg/json/JSONObject;
    const-string v4, "red"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/admogo/obj/Extra;->fgRed:I

    .line 454
    const-string v4, "green"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/admogo/obj/Extra;->fgGreen:I

    .line 455
    const-string v4, "blue"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v2, Lcom/admogo/obj/Extra;->fgBlue:I

    .line 456
    const-string v4, "alpha"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit16 v4, v4, 0xff

    iput v4, v2, Lcom/admogo/obj/Extra;->fgAlpha:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    .end local v0    # "backgroundColor":Lorg/json/JSONObject;
    .end local v3    # "textColor":Lorg/json/JSONObject;
    :goto_0
    iput-object v2, p0, Lcom/admogo/AdMogoManager;->extra:Lcom/admogo/obj/Extra;

    .line 464
    return-void

    .line 457
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 458
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "AdsMOGO SDK"

    .line 459
    const-string v5, "Exception in parsing config.extra JSON. This may or may not be fatal."

    .line 458
    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private parseMogoJsonString(Ljava/lang/String;)Lcom/admogo/obj/Mogo;
    .locals 5
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 541
    new-instance v2, Lcom/admogo/obj/Mogo;

    invoke-direct {v2}, Lcom/admogo/obj/Mogo;-><init>()V

    .line 543
    .local v2, "mogo":Lcom/admogo/obj/Mogo;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 545
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "banner_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/admogo/obj/Mogo;->type:I

    .line 546
    const-string v3, "img_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/admogo/obj/Mogo;->imageLink:Ljava/lang/String;

    .line 547
    const-string v3, "redirect_url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/admogo/obj/Mogo;->link:Ljava/lang/String;

    .line 548
    const-string v3, "ad_text"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/admogo/obj/Mogo;->description:Ljava/lang/String;

    .line 550
    iget-object v3, v2, Lcom/admogo/obj/Mogo;->imageLink:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/admogo/AdMogoManager;->fetchImage(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v2, Lcom/admogo/obj/Mogo;->image:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 557
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 551
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 552
    .local v0, "e":Lorg/json/JSONException;
    const-string v3, "AdsMOGO SDK"

    .line 553
    const-string v4, "Caught JSONException in parseMogoJsonString()"

    .line 552
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 554
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private parseRationsJson(Lorg/json/JSONArray;)V
    .locals 10
    .param p1, "json"    # Lorg/json/JSONArray;

    .prologue
    const-string v6, "key"

    .line 467
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 469
    .local v5, "rationsList":Ljava/util/List;, "Ljava/util/List<Lcom/admogo/obj/Ration;>;"
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/admogo/AdMogoManager;->totalWeight:D

    .line 473
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-lt v1, v6, :cond_0

    .line 512
    :goto_1
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 514
    iput-object v5, p0, Lcom/admogo/AdMogoManager;->rationsList:Ljava/util/List;

    .line 515
    iget-object v6, p0, Lcom/admogo/AdMogoManager;->rationsList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    iput-object v6, p0, Lcom/admogo/AdMogoManager;->rollovers:Ljava/util/Iterator;

    .line 516
    return-void

    .line 474
    :cond_0
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 475
    .local v2, "jsonRation":Lorg/json/JSONObject;
    if-nez v2, :cond_1

    .line 473
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    :cond_1
    new-instance v4, Lcom/admogo/obj/Ration;

    invoke-direct {v4}, Lcom/admogo/obj/Ration;-><init>()V

    .line 481
    .local v4, "ration":Lcom/admogo/obj/Ration;
    const-string v6, "nid"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/admogo/obj/Ration;->nid:Ljava/lang/String;

    .line 482
    const-string v6, "type"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/admogo/obj/Ration;->type:I

    .line 483
    const-string v6, "nname"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/admogo/obj/Ration;->name:Ljava/lang/String;

    .line 484
    const-string v6, "weight"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    int-to-double v6, v6

    iput-wide v6, v4, Lcom/admogo/obj/Ration;->weight:D

    .line 485
    const-string v6, "priority"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    iput v6, v4, Lcom/admogo/obj/Ration;->priority:I

    .line 487
    sget-object v6, Lcom/admogo/AdMogoManager;->getRation:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/admogo/obj/Ration;->name:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v4, Lcom/admogo/obj/Ration;->weight:D

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/admogo/AdMogoManager;->getRation:Ljava/lang/String;

    .line 490
    iget v6, v4, Lcom/admogo/obj/Ration;->type:I

    packed-switch v6, :pswitch_data_0

    .line 498
    const-string v6, "key"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    .line 502
    :goto_3
    iget-wide v6, p0, Lcom/admogo/AdMogoManager;->totalWeight:D

    iget-wide v8, v4, Lcom/admogo/obj/Ration;->weight:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/admogo/AdMogoManager;->totalWeight:D

    .line 504
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 506
    .end local v2    # "jsonRation":Lorg/json/JSONObject;
    .end local v4    # "ration":Lcom/admogo/obj/Ration;
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 507
    .local v0, "e":Lorg/json/JSONException;
    const-string v6, "AdsMOGO SDK"

    .line 508
    const-string v7, "JSONException in parsing config.rations JSON. This may or may not be fatal."

    .line 507
    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 492
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "jsonRation":Lorg/json/JSONObject;
    .restart local v4    # "ration":Lcom/admogo/obj/Ration;
    :pswitch_0
    :try_start_2
    const-string v6, "key"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 493
    .local v3, "keyObj":Lorg/json/JSONObject;
    const-string v6, "siteID"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/admogo/obj/Ration;->key:Ljava/lang/String;

    .line 494
    const-string v6, "publisherID"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/admogo/obj/Ration;->key2:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    .line 490
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public static setConfigExpireTimeout(J)V
    .locals 0
    .param p0, "configExpireTimeout"    # J

    .prologue
    .line 155
    sput-wide p0, Lcom/admogo/AdMogoManager;->configExpireTimeout:J

    .line 156
    return-void
.end method


# virtual methods
.method public fetchConfig()V
    .locals 24

    .prologue
    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->contextReference:Ljava/lang/ref/WeakReference;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/Context;

    .line 304
    .local v7, "context":Landroid/content/Context;
    if-nez v7, :cond_0

    .line 383
    :goto_0
    return-void

    .line 308
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->keyAdMogo:Ljava/lang/String;

    move-object/from16 v19, v0

    .line 309
    const/16 v20, 0x0

    .line 308
    move-object v0, v7

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 310
    .local v4, "adMogoPrefs":Landroid/content/SharedPreferences;
    const-string v19, "config"

    const/16 v20, 0x0

    move-object v0, v4

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 311
    .local v15, "jsonString":Ljava/lang/String;
    const-string v19, "timestamp"

    const-wide/16 v20, -0x1

    move-object v0, v4

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v16

    .line 313
    .local v16, "timestamp":J
    if-eqz v15, :cond_1

    .line 314
    sget-wide v19, Lcom/admogo/AdMogoManager;->configExpireTimeout:J

    const-wide/16 v21, -0x1

    cmp-long v19, v19, v21

    if-eqz v19, :cond_1

    .line 315
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 316
    sget-wide v21, Lcom/admogo/AdMogoManager;->configExpireTimeout:J

    add-long v21, v21, v16

    cmp-long v19, v19, v21

    if-gez v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->getCountryCode:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    .line 317
    :cond_1
    const-string v19, "AdsMOGO SDK"

    .line 318
    const-string v20, "Stored config info not present or expired, fetching fresh data"

    .line 317
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    new-instance v11, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v11}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 322
    .local v11, "httpClient":Lorg/apache/http/client/HttpClient;
    const/4 v5, 0x2

    .line 323
    .local v5, "ad_Type_info":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/admogo/AdMogoManager;->adType:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 324
    const/4 v5, 0x2

    .line 335
    :cond_2
    :goto_1
    const-string v19, "http://cfg.adsmogo.com/GetInfo.ashx?appid=%s&appver=%d&v=%s&client=2&pn=%s&userver=%s&adtype=%s&country=%s&nt=%s&mno=%s&uuid=%s&os=%s&dn=%s&size=%s%s&ram=%s"

    const/16 v20, 0xf

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->keyAdMogo:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    .line 336
    const/16 v22, 0x113

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x2

    const-string v22, "1.0.3"

    aput-object v22, v20, v21

    const/16 v21, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x4

    .line 337
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/admogo/AdMogoManager;->versionCode:D

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v20, v21

    const/16 v21, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->getCountryCode:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->networkType:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x8

    .line 338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->operInfo:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->deviceIDHash:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->os:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->deviceName:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->screenSize:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0xd

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->cpuInfo:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->memoryInfo:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    .line 335
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    .line 340
    .local v18, "url":Ljava/lang/String;
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 343
    .local v12, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v11, v12}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v13

    .line 346
    .local v13, "httpResponse":Lorg/apache/http/HttpResponse;
    const-string v19, "Showing Config:\n Mogo_ID: %s\n CountryCode: %s"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->keyAdMogo:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->getCountryCode:Ljava/lang/String;

    move-object/from16 v22, v0

    aput-object v22, v20, v21

    .line 345
    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "configInfo":Ljava/lang/String;
    const-string v19, "AdsMOGO SDK"

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v19, "AdsMOGO SDK"

    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v20

    .line 351
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 350
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    .line 354
    .local v10, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v10, :cond_3

    .line 355
    const/4 v14, 0x0

    .line 356
    .local v14, "inputStream":Ljava/io/InputStream;
    invoke-interface {v13}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v19

    const/16 v20, 0xc8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_3

    .line 357
    invoke-interface {v10}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v14

    .line 358
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/admogo/AdMogoManager;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v15

    .line 359
    const-string v19, "AdsMOGO SDK"

    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "Prefs{"

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->keyAdMogo:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 360
    const-string v21, "}: {\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "config"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\": \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 361
    move-object/from16 v0, v20

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\", \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 362
    const-string v21, "timestamp"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\": "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 363
    const-string v21, "}"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 359
    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 366
    .local v9, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v19, "config"

    move-object v0, v9

    move-object/from16 v1, v19

    move-object v2, v15

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 367
    const-string v19, "timestamp"

    .line 368
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 367
    move-object v0, v9

    move-object/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 369
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 382
    .end local v5    # "ad_Type_info":I
    .end local v6    # "configInfo":Ljava/lang/String;
    .end local v9    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v10    # "entity":Lorg/apache/http/HttpEntity;
    .end local v11    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v12    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v13    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v14    # "inputStream":Ljava/io/InputStream;
    .end local v18    # "url":Ljava/lang/String;
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/admogo/AdMogoManager;->parseConfigurationString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 325
    .restart local v5    # "ad_Type_info":I
    .restart local v11    # "httpClient":Lorg/apache/http/client/HttpClient;
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/admogo/AdMogoManager;->adType:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 326
    move-object/from16 v0, p0

    iget v0, v0, Lcom/admogo/AdMogoManager;->adType:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 327
    move-object/from16 v0, p0

    iget v0, v0, Lcom/admogo/AdMogoManager;->adType:I

    move/from16 v19, v0

    const/16 v20, 0x4

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_5

    .line 328
    move-object/from16 v0, p0

    iget v0, v0, Lcom/admogo/AdMogoManager;->adType:I

    move/from16 v19, v0

    const/16 v20, 0x5

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 329
    :cond_5
    const/16 v5, 0x8

    goto/16 :goto_1

    .line 330
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/admogo/AdMogoManager;->adType:I

    move/from16 v19, v0

    const/16 v20, 0x7

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 331
    const/16 v5, 0x20

    goto/16 :goto_1

    .line 332
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/admogo/AdMogoManager;->adType:I

    move/from16 v19, v0

    const/16 v20, 0x6

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 333
    const/16 v5, 0x80

    goto/16 :goto_1

    .line 372
    .restart local v12    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v18    # "url":Ljava/lang/String;
    :catch_0
    move-exception v19

    move-object/from16 v8, v19

    .line 373
    .local v8, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v19, "AdsMOGO SDK"

    .line 374
    const-string v20, "Caught ClientProtocolException in fetchConfig()"

    .line 373
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 375
    .end local v8    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v19

    move-object/from16 v8, v19

    .line 376
    .local v8, "e":Ljava/io/IOException;
    const-string v19, "AdsMOGO SDK"

    const-string v20, "Caught IOException in fetchConfig()"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 380
    .end local v5    # "ad_Type_info":I
    .end local v8    # "e":Ljava/io/IOException;
    .end local v11    # "httpClient":Lorg/apache/http/client/HttpClient;
    .end local v12    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v18    # "url":Ljava/lang/String;
    :cond_8
    const-string v19, "AdsMOGO SDK"

    const-string v20, "Using stored config data"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public getCustom(Ljava/lang/String;)Lcom/admogo/obj/Custom;
    .locals 13
    .param p1, "nid"    # Ljava/lang/String;

    .prologue
    const-string v12, "AdsMOGO SDK"

    .line 208
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 224
    .local v2, "httpClient":Lorg/apache/http/client/HttpClient;
    const-string v8, "http://cus.adsmogo.com/custom.ashx?appid=%s&nid=%s&uuid=%s&client=2&country=%s"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/admogo/AdMogoManager;->keyAdMogo:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p1, v9, v10

    const/4 v10, 0x2

    .line 225
    iget-object v11, p0, Lcom/admogo/AdMogoManager;->deviceIDHash:Ljava/lang/String;

    aput-object v11, v9, v10

    const/4 v10, 0x3

    iget-object v11, p0, Lcom/admogo/AdMogoManager;->getCountryCode:Ljava/lang/String;

    aput-object v11, v9, v10

    .line 224
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v7, "url":Ljava/lang/String;
    new-instance v3, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v3, v7}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 230
    .local v3, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 232
    .local v4, "httpResponse":Lorg/apache/http/HttpResponse;
    const-string v8, "AdsMOGO SDK"

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 236
    .local v1, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v1, :cond_0

    .line 237
    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 238
    .local v5, "inputStream":Ljava/io/InputStream;
    invoke-direct {p0, v5}, Lcom/admogo/AdMogoManager;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, "jsonString":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/admogo/AdMogoManager;->parseCustomJsonString(Ljava/lang/String;)Lcom/admogo/obj/Custom;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 248
    .end local v1    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v5    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "jsonString":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 241
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 242
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v8, "AdsMOGO SDK"

    .line 243
    const-string v8, "Caught ClientProtocolException in getCustom()"

    .line 242
    invoke-static {v12, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 248
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_0
    :goto_1
    const/4 v8, 0x0

    goto :goto_0

    .line 244
    :catch_1
    move-exception v8

    move-object v0, v8

    .line 245
    .local v0, "e":Ljava/io/IOException;
    const-string v8, "AdsMOGO SDK"

    const-string v8, "Caught IOException in getCustom()"

    invoke-static {v12, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public getExtra()Lcom/admogo/obj/Extra;
    .locals 4

    .prologue
    .line 159
    iget-wide v0, p0, Lcom/admogo/AdMogoManager;->totalWeight:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 160
    const-string v0, "AdsMOGO SDK"

    .line 161
    const-string v1, "Sum of ration weights is 0 - no ads to be shown"

    .line 160
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    const/4 v0, 0x0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/admogo/AdMogoManager;->extra:Lcom/admogo/obj/Extra;

    goto :goto_0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "location"

    .line 578
    iget-object v5, p0, Lcom/admogo/AdMogoManager;->contextReference:Ljava/lang/ref/WeakReference;

    if-nez v5, :cond_0

    move-object v5, v8

    .line 610
    :goto_0
    return-object v5

    .line 582
    :cond_0
    iget-object v5, p0, Lcom/admogo/AdMogoManager;->contextReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 583
    .local v1, "context":Landroid/content/Context;
    if-nez v1, :cond_1

    move-object v5, v8

    .line 584
    goto :goto_0

    .line 587
    :cond_1
    const/4 v4, 0x0

    .line 590
    .local v4, "location":Landroid/location/Location;
    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    .line 589
    if-nez v5, :cond_3

    .line 592
    const-string v5, "location"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 591
    check-cast v3, Landroid/location/LocationManager;

    .line 595
    .local v3, "lm":Landroid/location/LocationManager;
    new-instance v2, Landroid/location/Criteria;

    invoke-direct {v2}, Landroid/location/Criteria;-><init>()V

    .line 596
    .local v2, "criteria":Landroid/location/Criteria;
    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 597
    invoke-virtual {v2, v6}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 598
    invoke-virtual {v2, v6}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 599
    invoke-virtual {v2, v6}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 600
    invoke-virtual {v2, v7}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 601
    invoke-virtual {v3, v2, v7}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, "best":Ljava/lang/String;
    invoke-virtual {v3, v0}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .end local v0    # "best":Ljava/lang/String;
    .end local v2    # "criteria":Landroid/location/Criteria;
    .end local v3    # "lm":Landroid/location/LocationManager;
    :cond_2
    :goto_1
    move-object v5, v4

    .line 610
    goto :goto_0

    .line 604
    :cond_3
    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    .line 603
    if-nez v5, :cond_2

    .line 606
    const-string v5, "location"

    invoke-virtual {v1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 605
    check-cast v3, Landroid/location/LocationManager;

    .line 608
    .restart local v3    # "lm":Landroid/location/LocationManager;
    const-string v5, "network"

    invoke-virtual {v3, v5}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 607
    goto :goto_1
.end method

.method public getMogo(Ljava/lang/String;)Lcom/admogo/obj/Mogo;
    .locals 18
    .param p1, "nid"    # Ljava/lang/String;

    .prologue
    .line 252
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 254
    .local v6, "httpClient":Lorg/apache/http/client/HttpClient;
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getGender()Lcom/admogo/AdMogoTargeting$Gender;

    move-result-object v14

    invoke-virtual {v14}, Lcom/admogo/AdMogoTargeting$Gender;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/admogo/AdMogoManager;->gender:Ljava/lang/String;

    .line 255
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getKeywords()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/admogo/AdMogoManager;->keywords:Ljava/lang/String;

    .line 257
    invoke-static {}, Lcom/admogo/AdMogoTargeting;->getBirthDate()Ljava/util/GregorianCalendar;

    move-result-object v5

    .line 258
    .local v5, "gc":Ljava/util/GregorianCalendar;
    const/4 v14, 0x1

    invoke-virtual {v5, v14}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v13

    .line 259
    .local v13, "year":I
    const/4 v14, 0x2

    invoke-virtual {v5, v14}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v11

    .line 260
    .local v11, "month":I
    const/4 v14, 0x5

    invoke-virtual {v5, v14}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v2

    .line 261
    .local v2, "date":I
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/admogo/AdMogoManager;->birthday:Ljava/lang/String;

    .line 262
    const/16 v14, 0xa

    if-ge v11, v14, :cond_0

    .line 263
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->birthday:Ljava/lang/String;

    move-object v15, v0

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/admogo/AdMogoManager;->birthday:Ljava/lang/String;

    .line 266
    :goto_0
    const/16 v14, 0xa

    if-ge v2, v14, :cond_1

    .line 267
    new-instance v14, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->birthday:Ljava/lang/String;

    move-object v15, v0

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v15, "0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/admogo/AdMogoManager;->birthday:Ljava/lang/String;

    .line 271
    :goto_1
    const-string v14, "http://www.adsmogo.com/adserv.php?appid=%s&nid=%s&type=%d&uuid=%s&client=2&adtype=%s&country=%s"

    const/16 v15, 0x8

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->keyAdMogo:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x1

    aput-object p1, v15, v16

    const/16 v16, 0x2

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->deviceIDHash:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->getCountryCode:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x4

    const/16 v17, 0x113

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->networkType:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x6

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->os:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    const/16 v16, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->deviceName:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    .line 271
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 275
    .local v12, "url":Ljava/lang/String;
    new-instance v7, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v7, v12}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 279
    .local v7, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v6, v7}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v8

    .line 281
    .local v8, "httpResponse":Lorg/apache/http/HttpResponse;
    const-string v14, "AdsMOGO SDK"

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    .line 285
    .local v4, "entity":Lorg/apache/http/HttpEntity;
    if-eqz v4, :cond_2

    .line 286
    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v9

    .line 287
    .local v9, "inputStream":Ljava/io/InputStream;
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-direct {v0, v1}, Lcom/admogo/AdMogoManager;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v10

    .line 288
    .local v10, "jsonString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/admogo/AdMogoManager;->parseMogoJsonString(Ljava/lang/String;)Lcom/admogo/obj/Mogo;
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 297
    .end local v4    # "entity":Lorg/apache/http/HttpEntity;
    .end local v8    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v9    # "inputStream":Ljava/io/InputStream;
    .end local v10    # "jsonString":Ljava/lang/String;
    :goto_2
    return-object v14

    .line 265
    .end local v7    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .end local v12    # "url":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->birthday:Ljava/lang/String;

    move-object v14, v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/admogo/AdMogoManager;->birthday:Ljava/lang/String;

    goto/16 :goto_0

    .line 269
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/admogo/AdMogoManager;->birthday:Ljava/lang/String;

    move-object v14, v0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/admogo/AdMogoManager;->birthday:Ljava/lang/String;

    goto/16 :goto_1

    .line 290
    .restart local v7    # "httpGet":Lorg/apache/http/client/methods/HttpGet;
    .restart local v12    # "url":Ljava/lang/String;
    :catch_0
    move-exception v14

    move-object v3, v14

    .line 291
    .local v3, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v14, "AdsMOGO SDK"

    .line 292
    const-string v15, "Caught ClientProtocolException in getMogo()"

    .line 291
    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 297
    .end local v3    # "e":Lorg/apache/http/client/ClientProtocolException;
    :cond_2
    :goto_3
    const/4 v14, 0x0

    goto :goto_2

    .line 293
    :catch_1
    move-exception v14

    move-object v3, v14

    .line 294
    .local v3, "e":Ljava/io/IOException;
    const-string v14, "AdsMOGO SDK"

    const-string v15, "Caught IOException in getMogo()"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method public getRation()Lcom/admogo/obj/Ration;
    .locals 11

    .prologue
    .line 169
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    .line 171
    .local v3, "random":Ljava/util/Random;
    invoke-virtual {v3}, Ljava/util/Random;->nextDouble()D

    move-result-wide v7

    iget-wide v9, p0, Lcom/admogo/AdMogoManager;->totalWeight:D

    mul-double v1, v7, v9

    .line 172
    .local v1, "r":D
    const-wide/16 v5, 0x0

    .line 174
    .local v5, "s":D
    const-string v7, "AdsMOGO SDK"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Dart is <"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "> of <"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/admogo/AdMogoManager;->totalWeight:D

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v7, p0, Lcom/admogo/AdMogoManager;->rationsList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 177
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/admogo/obj/Ration;>;"
    const/4 v4, 0x0

    .line 178
    .local v4, "ration":Lcom/admogo/obj/Ration;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 186
    :goto_0
    return-object v4

    .line 179
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "ration":Lcom/admogo/obj/Ration;
    check-cast v4, Lcom/admogo/obj/Ration;

    .line 180
    .restart local v4    # "ration":Lcom/admogo/obj/Ration;
    iget-wide v7, v4, Lcom/admogo/obj/Ration;->weight:D

    add-double/2addr v5, v7

    .line 181
    cmpl-double v7, v5, v1

    if-ltz v7, :cond_0

    goto :goto_0
.end method

.method public getRollover()Lcom/admogo/obj/Ration;
    .locals 2

    .prologue
    .line 190
    iget-object v1, p0, Lcom/admogo/AdMogoManager;->rollovers:Ljava/util/Iterator;

    if-nez v1, :cond_0

    .line 191
    const/4 v1, 0x0

    .line 200
    :goto_0
    return-object v1

    .line 194
    :cond_0
    const/4 v0, 0x0

    .line 195
    .local v0, "ration":Lcom/admogo/obj/Ration;
    iget-object v1, p0, Lcom/admogo/AdMogoManager;->rollovers:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 196
    iget-object v1, p0, Lcom/admogo/AdMogoManager;->rollovers:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "ration":Lcom/admogo/obj/Ration;
    check-cast v0, Lcom/admogo/obj/Ration;

    .line 197
    .restart local v0    # "ration":Lcom/admogo/obj/Ration;
    sput-object v0, Lcom/admogo/AdMogoManager;->lastRation:Lcom/admogo/obj/Ration;

    :cond_1
    move-object v1, v0

    .line 200
    goto :goto_0
.end method

.method public resetRollover()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/admogo/AdMogoManager;->rationsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/admogo/AdMogoManager;->rollovers:Ljava/util/Iterator;

    .line 205
    return-void
.end method

.method public setLocation(Ljava/lang/String;)V
    .locals 0
    .param p1, "counCode"    # Ljava/lang/String;

    .prologue
    .line 574
    iput-object p1, p0, Lcom/admogo/AdMogoManager;->getCountryCode:Ljava/lang/String;

    .line 575
    return-void
.end method
