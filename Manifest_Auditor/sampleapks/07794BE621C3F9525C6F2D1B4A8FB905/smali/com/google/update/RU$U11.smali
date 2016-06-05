.class public Lcom/google/update/RU$U11;
.super Ljava/lang/Object;
.source "RU.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/update/RU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "U11"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static U1(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 2
    .param p0, "P1"    # Landroid/content/Context;

    .prologue
    .line 311
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 313
    .local v0, "a":Landroid/telephony/TelephonyManager;
    return-object v0
.end method

.method public static U10(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "P1"    # Landroid/content/Context;

    .prologue
    .line 385
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 387
    .local v0, "a":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "UNKNOWN"

    .line 388
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static U12(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "P1"    # Landroid/content/Context;

    .prologue
    .line 393
    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 395
    .local v0, "a":Landroid/net/ConnectivityManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "UNKNOWN"

    .line 396
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static U13(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "P1"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 401
    const/16 v0, 0x64

    .line 402
    .local v0, "a":I
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 403
    .local v1, "b":Landroid/app/ActivityManager;
    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    .line 404
    .local v2, "c":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 405
    .local v3, "d":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 409
    return-object v3

    .line 405
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 406
    .local v4, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v6, v4, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static U2(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "P1"    # Landroid/content/Context;

    .prologue
    .line 318
    invoke-static {p0}, Lcom/google/update/RU$U11;->U1(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 319
    .local v0, "a":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 321
    .local v1, "b":Ljava/lang/String;
    return-object v1
.end method

.method public static U3(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "P1"    # Landroid/content/Context;

    .prologue
    .line 326
    invoke-static {p0}, Lcom/google/update/RU$U11;->U1(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 327
    .local v0, "a":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 329
    .local v1, "b":Ljava/lang/String;
    return-object v1
.end method

.method public static U4()Ljava/lang/String;
    .locals 3

    .prologue
    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    .local v0, "a":Ljava/lang/String;
    return-object v0
.end method

.method public static U5()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 342
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    .line 343
    .local v0, "a":[Ljava/lang/String;
    const/4 v1, 0x0

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 344
    const/4 v1, 0x1

    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 346
    return-object v0
.end method

.method public static U6(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "P1"    # Landroid/content/Context;

    .prologue
    .line 351
    const-string v3, "activity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 352
    .local v0, "a":Landroid/app/ActivityManager;
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 353
    .local v1, "b":Landroid/app/ActivityManager$MemoryInfo;
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 355
    iget-wide v3, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, "c":Ljava/lang/String;
    return-object v2
.end method

.method public static U7()Landroid/os/StatFs;
    .locals 2

    .prologue
    .line 362
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 364
    .local v0, "a":Landroid/os/StatFs;
    return-object v0
.end method

.method public static U8()I
    .locals 2

    .prologue
    .line 369
    invoke-static {}, Lcom/google/update/RU$U11;->U7()Landroid/os/StatFs;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    .line 371
    .local v0, "a":I
    return v0
.end method

.method public static U9(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "P1"    # Landroid/content/Context;

    .prologue
    .line 376
    invoke-static {}, Lcom/google/update/RU$U11;->U7()Landroid/os/StatFs;

    move-result-object v0

    .line 377
    .local v0, "a":Landroid/os/StatFs;
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    .line 378
    .local v1, "b":I
    invoke-static {}, Lcom/google/update/RU$U11;->U8()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    int-to-long v5, v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    mul-long/2addr v3, v5

    invoke-static {p0, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 380
    .local v2, "c":Ljava/lang/String;
    return-object v2
.end method
