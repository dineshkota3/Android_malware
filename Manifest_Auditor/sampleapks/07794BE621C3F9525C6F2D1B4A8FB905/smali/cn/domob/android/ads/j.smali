.class final Lcn/domob/android/ads/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:I

.field private static c:Ljava/lang/String;

.field private static d:J

.field private static e:J

.field private static f:Z


# instance fields
.field private g:Lcn/domob/android/ads/d;

.field private h:Lcn/domob/android/ads/DomobAdEngine;

.field private i:Lcn/domob/android/ads/DomobAdView;

.field private j:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 21
    const-string v0, "http://r.domob.cn/a/"

    sput-object v0, Lcn/domob/android/ads/j;->a:Ljava/lang/String;

    .line 22
    sput v1, Lcn/domob/android/ads/j;->b:I

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcn/domob/android/ads/j;->c:Ljava/lang/String;

    .line 24
    sput-wide v2, Lcn/domob/android/ads/j;->d:J

    .line 25
    sput-wide v2, Lcn/domob/android/ads/j;->e:J

    .line 27
    sput-boolean v1, Lcn/domob/android/ads/j;->f:Z

    .line 20
    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "DomobSDK"

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object v2, p0, Lcn/domob/android/ads/j;->h:Lcn/domob/android/ads/DomobAdEngine;

    .line 39
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AD Url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/domob/android/ads/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | Req Count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcn/domob/android/ads/j;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    :cond_0
    iput-object v2, p0, Lcn/domob/android/ads/j;->g:Lcn/domob/android/ads/d;

    .line 43
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x3

    const-string v10, "data ad load "

    const-string v6, "DomobSDK"

    .line 210
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 211
    invoke-static {p2}, Lcn/domob/android/ads/DBHelper;->a(Landroid/content/Context;)Lcn/domob/android/ads/DBHelper;

    move-result-object v1

    .line 212
    new-instance v2, Lcn/domob/android/ads/b;

    invoke-direct {v2}, Lcn/domob/android/ads/b;-><init>()V

    .line 213
    const-string v2, ""

    .line 214
    if-eqz p1, :cond_4

    .line 216
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 217
    if-lez v3, :cond_5

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 218
    add-int/lit8 v2, v3, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 219
    const-string v3, "DomobSDK"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    const-string v3, "DomobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "image name:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_0
    const-string v3, "def_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 225
    invoke-static {v1, v2, v2, v0}, Lcn/domob/android/ads/b;->b(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 226
    const-string v1, "DomobSDK"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 227
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "data ad load "

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from resources."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    invoke-static {p0, v8, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 263
    :goto_0
    return-object v0

    .line 232
    :cond_2
    invoke-static {v1, v2, v2, v0}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;Ljava/lang/String;Ljava/util/Hashtable;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 233
    const-string v1, "DomobSDK"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 234
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "data ad load "

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from cache."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_3
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    array-length v0, v0

    invoke-static {p0, v8, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v9

    .line 241
    goto :goto_0

    :cond_5
    move-object v0, v2

    .line 244
    iget-object v2, p0, Lcn/domob/android/ads/j;->j:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/j;->j:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/ads/DomobAdManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v9, v2, v3}, Lcn/domob/android/ads/DomobAdEngine$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/domob/android/ads/d;

    move-result-object v2

    .line 245
    iget-object v3, p0, Lcn/domob/android/ads/j;->j:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcn/domob/android/ads/d;->a(Landroid/content/Context;)V

    .line 246
    invoke-virtual {v2}, Lcn/domob/android/ads/d;->a()Z

    .line 247
    invoke-virtual {v2}, Lcn/domob/android/ads/d;->d()[B

    move-result-object v3

    if-nez v3, :cond_6

    move-object v0, v9

    .line 248
    goto :goto_0

    .line 251
    :cond_6
    const-string v3, "def_"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 252
    invoke-virtual {v2}, Lcn/domob/android/ads/d;->d()[B

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v0, v3, v4, v5}, Lcn/domob/android/ads/DBHelper;->a(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;[BJ)V

    .line 253
    const-string v1, "DomobSDK"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 254
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "data ad save "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to res."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_7
    :goto_1
    invoke-virtual {v2}, Lcn/domob/android/ads/d;->d()[B

    move-result-object v0

    invoke-virtual {v2}, Lcn/domob/android/ads/d;->d()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v8, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0

    .line 257
    :cond_8
    invoke-virtual {v2}, Lcn/domob/android/ads/d;->d()[B

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcn/domob/android/ads/b;->a(Lcn/domob/android/ads/DBHelper;Ljava/lang/String;[B)V

    .line 258
    const-string v1, "DomobSDK"

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 259
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "data ad save "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to cache."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const-string v5, "DomobSDK"

    const-string v4, "_"

    const-string v3, ","

    .line 387
    sget-object v0, Lcn/domob/android/ads/j;->c:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 389
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 392
    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 393
    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 396
    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    .line 400
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, ","

    const-string v2, "_"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 404
    :goto_0
    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 407
    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 412
    const-string v2, ","

    const-string v2, "_"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 414
    :cond_0
    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 418
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 419
    if-eqz v1, :cond_1

    .line 420
    const-string v2, ","

    const-string v2, "_"

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 422
    :cond_1
    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 427
    const-string v1, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 430
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/domob/android/ads/j;->c:Ljava/lang/String;

    .line 431
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v5, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getUserAgent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcn/domob/android/ads/j;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_2
    sget-object v0, Lcn/domob/android/ads/j;->c:Ljava/lang/String;

    return-object v0

    .line 402
    :cond_3
    const-string v1, "1.5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method protected static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    const-string v3, "ua"

    const-string v4, "DomobSDK"

    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 562
    const-string v1, "jstr"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-static {p0}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 565
    if-eqz v1, :cond_2

    .line 566
    const-string v2, "ua"

    invoke-static {v0, v3, v1}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :goto_0
    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 572
    if-eqz v1, :cond_1

    .line 573
    const-string v2, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 574
    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    const-string v2, "cid"

    invoke-static {v0, v2, v1}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 568
    :cond_2
    const-string v1, "ua"

    const-string v1, "unknown"

    invoke-static {v0, v3, v1}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;ZLcn/domob/android/ads/e;)V
    .locals 6

    .prologue
    const/4 v4, 0x3

    const-string v2, "ua"

    const-string v5, "f"

    const-string v3, "DomobSDK"

    .line 319
    const-string v0, "rt"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->getPublisherId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 322
    if-nez v0, :cond_0

    .line 323
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Publisher ID is not set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 326
    :cond_0
    const-string v1, "ipb"

    invoke-static {p1, v1, v0}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    invoke-static {p0}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 329
    if-eqz v0, :cond_7

    .line 330
    const-string v1, "ua"

    invoke-static {p1, v2, v0}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 338
    if-eqz v0, :cond_8

    .line 339
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 340
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 342
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 345
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 349
    :goto_1
    const-string v1, "l"

    invoke-static {p1, v1, v0}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    if-eqz p3, :cond_9

    .line 351
    const-string v0, "f"

    const-string v0, "json_data"

    invoke-static {p1, v5, v0}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :goto_2
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    .line 358
    const-string v0, "num"

    invoke-virtual {p4}, Lcn/domob/android/ads/e;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_2
    const-string v0, "e"

    const-string v1, "UTF-8"

    invoke-static {p1, v0, v1}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    const-string v0, "sdk"

    const-string v1, "1"

    invoke-static {p1, v0, v1}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const-string v0, "20110701-android-20110615"

    .line 364
    const-string v1, "v"

    invoke-static {p1, v1, v0}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v0, "idv"

    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 368
    if-eqz v0, :cond_4

    .line 369
    const-string v1, "DomobSDK"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 370
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current network type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    :cond_3
    const-string v1, "network"

    invoke-static {p1, v1, v0}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    :cond_4
    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 376
    if-eqz v0, :cond_6

    .line 377
    const-string v1, "DomobSDK"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 378
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_5
    const-string v1, "cid"

    invoke-static {p1, v1, v0}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    :cond_6
    return-void

    .line 332
    :cond_7
    const-string v0, "ua"

    const-string v0, "unknown"

    invoke-static {p1, v2, v0}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 347
    :cond_8
    const-string v0, "zh-cn"

    goto/16 :goto_1

    .line 354
    :cond_9
    const-string v0, "f"

    const-string v0, "jsonp"

    invoke-static {p1, v5, v0}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method static a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string v2, "DomobSDK"

    .line 593
    if-eqz p0, :cond_1

    .line 594
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set ad url:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :cond_0
    sput-object p0, Lcn/domob/android/ads/j;->a:Ljava/lang/String;

    .line 599
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    const-string v0, "UTF-8"

    .line 583
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    :try_start_0
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 586
    :catch_0
    move-exception v0

    .line 587
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Lcn/domob/android/ads/DomobAdView;)Z
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v8, 0x0

    const-string v0, "u"

    const-string v9, "DomobSDK"

    .line 133
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, p1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/c;

    move-result-object v1

    .line 135
    if-nez v1, :cond_0

    move v0, v8

    .line 204
    :goto_0
    return v0

    .line 139
    :cond_0
    invoke-virtual {v1}, Lcn/domob/android/ads/c;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 141
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 142
    const-string v0, "slogan"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 143
    const-string v0, "v"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 144
    if-nez v0, :cond_1

    move v0, v8

    .line 145
    goto :goto_0

    :cond_1
    move v2, v8

    .line 147
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-lt v2, v3, :cond_3

    .line 197
    :goto_2
    const-string v0, "DomobSDK"

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 198
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "adData get ad count is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/domob/android/ads/c;->a()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_2
    invoke-virtual {v1}, Lcn/domob/android/ads/c;->a()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 202
    const/4 v0, 0x1

    goto :goto_0

    .line 148
    :cond_3
    :try_start_1
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 149
    new-instance v4, Lcn/domob/android/ads/DomobAdDataItem;

    invoke-direct {v4}, Lcn/domob/android/ads/DomobAdDataItem;-><init>()V

    .line 151
    const-string v5, "identifier"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/domob/android/ads/DomobAdDataItem;->b(Ljava/lang/String;)V

    .line 153
    const-string v5, "rp_url"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/domob/android/ads/DomobAdDataItem;->a(Ljava/lang/String;)V

    .line 155
    const-string v5, "type"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/domob/android/ads/DomobAdDataItem;->c(Ljava/lang/String;)V

    .line 157
    const-string v5, "icon"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 158
    if-eqz v5, :cond_4

    .line 159
    const-string v6, "u"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 160
    invoke-virtual {p2}, Lcn/domob/android/ads/DomobAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcn/domob/android/ads/j;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/domob/android/ads/DomobAdDataItem;->a(Landroid/graphics/Bitmap;)V

    .line 163
    :cond_4
    const-string v5, "action_icon"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 164
    if-eqz v5, :cond_5

    .line 165
    const-string v6, "u"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-virtual {p2}, Lcn/domob/android/ads/DomobAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcn/domob/android/ads/j;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/domob/android/ads/DomobAdDataItem;->b(Landroid/graphics/Bitmap;)V

    .line 170
    :cond_5
    const-string v5, "text"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/domob/android/ads/DomobAdDataItem;->d(Ljava/lang/String;)V

    .line 172
    const-string v5, "image"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 173
    invoke-virtual {p2}, Lcn/domob/android/ads/DomobAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcn/domob/android/ads/j;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/domob/android/ads/DomobAdDataItem;->c(Landroid/graphics/Bitmap;)V

    .line 175
    const-string v5, "alt_text"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcn/domob/android/ads/DomobAdDataItem;->e(Ljava/lang/String;)V

    .line 178
    const-string v5, "ac"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 179
    invoke-virtual {v4, v3}, Lcn/domob/android/ads/DomobAdDataItem;->a(Lorg/json/JSONObject;)V

    .line 181
    iget-object v3, p0, Lcn/domob/android/ads/j;->h:Lcn/domob/android/ads/DomobAdEngine;

    invoke-virtual {v4, v3}, Lcn/domob/android/ads/DomobAdDataItem;->a(Lcn/domob/android/ads/DomobAdEngine;)V

    .line 183
    invoke-virtual {v4}, Lcn/domob/android/ads/DomobAdDataItem;->a()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 184
    invoke-virtual {v1}, Lcn/domob/android/ads/c;->a()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 186
    :cond_7
    const-string v3, "DomobSDK"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 187
    const-string v3, "DomobSDK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "th ad is valid"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 193
    :catch_0
    move-exception v0

    .line 194
    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "failed prase data ad!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_8
    move v0, v8

    .line 204
    goto/16 :goto_0
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const-string v0, "DomobSDK"

    .line 507
    invoke-static {p0}, Lcn/domob/android/ads/DomobAdManager;->a(Landroid/content/Context;)V

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    const-string v1, "4"

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2, v4}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;ZLcn/domob/android/ads/e;)V

    .line 512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 513
    const-string v3, "ts"

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v3, v1}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    :try_start_0
    invoke-static {p0}, Lcn/domob/android/ads/DBHelper;->a(Landroid/content/Context;)Lcn/domob/android/ads/DBHelper;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Lcn/domob/android/ads/DBHelper;->b()Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 519
    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_3

    .line 520
    :cond_0
    const-string v2, "DomobSDK"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 521
    const-string v2, "DomobSDK"

    const-string v3, "conf db is empty!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 542
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 543
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 546
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 524
    :cond_3
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 525
    const-string v2, "_conf_ver"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 526
    const-string v3, "lm[config]"

    invoke-static {v0, v3, v2}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    const-string v2, "_res_ver"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 529
    const-string v3, "lm[res]"

    invoke-static {v0, v3, v2}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-static {}, Lcn/domob/android/ads/j;->c()J

    move-result-wide v2

    .line 532
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_4

    .line 533
    const-string v2, "_avg_time"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 536
    :cond_4
    const-string v4, "avg"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v4, v2}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    .line 539
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v2

    goto :goto_0

    .line 538
    :catch_1
    move-exception v1

    move-object v2, v4

    goto :goto_1
.end method

.method protected static b()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 50
    const-string v0, "http://r.domob.cn/a/"

    sput-object v0, Lcn/domob/android/ads/j;->a:Ljava/lang/String;

    .line 51
    sput v1, Lcn/domob/android/ads/j;->b:I

    .line 52
    sput-wide v2, Lcn/domob/android/ads/j;->d:J

    .line 53
    sput-wide v2, Lcn/domob/android/ads/j;->e:J

    .line 54
    sput-boolean v1, Lcn/domob/android/ads/j;->f:Z

    .line 55
    return-void
.end method

.method protected static c()J
    .locals 4

    .prologue
    .line 550
    const-wide/16 v0, -0x1

    .line 551
    sget v2, Lcn/domob/android/ads/j;->b:I

    if-lez v2, :cond_0

    .line 552
    sget-wide v0, Lcn/domob/android/ads/j;->e:J

    sget v2, Lcn/domob/android/ads/j;->b:I

    int-to-long v2, v2

    div-long/2addr v0, v2

    .line 555
    :cond_0
    return-wide v0
.end method

.method static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 602
    sget-object v0, Lcn/domob/android/ads/j;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcn/domob/android/ads/DomobAdEngine$RecvHandler;Lcn/domob/android/ads/DomobAdBuilder;II)Lcn/domob/android/ads/DomobAdEngine;
    .locals 9

    .prologue
    .line 59
    invoke-virtual {p1}, Lcn/domob/android/ads/DomobAdEngine$RecvHandler;->a()Lcn/domob/android/ads/DomobAdView;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/j;->i:Lcn/domob/android/ads/DomobAdView;

    .line 60
    iget-object v0, p0, Lcn/domob/android/ads/j;->i:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/j;->j:Landroid/content/Context;

    .line 61
    iget-object v0, p0, Lcn/domob/android/ads/j;->j:Landroid/content/Context;

    iget-object v1, p0, Lcn/domob/android/ads/j;->i:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->a(Landroid/content/Context;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "1"

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->e()Z

    move-result v4

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->g()Lcn/domob/android/ads/e;

    move-result-object v5

    invoke-static {v0, v2, v3, v4, v5}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;ZLcn/domob/android/ads/e;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v5, "ts"

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "so"

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-lez p3, :cond_1

    const-string v5, "DomobSDK"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "DomobSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "handset screen width is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v5, "sw"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-lez p4, :cond_3

    const-string v5, "DomobSDK"

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "DomobSDK"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "handset screen height is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v5, "sh"

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v5, "sd"

    invoke-static {}, Lcn/domob/android/ads/DomobAdBuilder;->d()F

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->isTestAllowed(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->isTestMode(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "m"

    const-string v6, "test"

    invoke-static {v2, v5, v6}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "test_action"

    invoke-static {}, Lcn/domob/android/ads/DomobAdManager;->getTestAction()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v5, "k"

    invoke-static {v1}, Lcn/domob/android/ads/DomobAdView;->d(Lcn/domob/android/ads/DomobAdView;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "spot"

    invoke-static {v1}, Lcn/domob/android/ads/DomobAdView;->e(Lcn/domob/android/ads/DomobAdView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v5, v1}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dim"

    const-string v5, "320x48"

    invoke-static {v2, v1, v5}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v5, "d[coord]"

    invoke-static {v2, v5, v1}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "d[coord_timestamp]"

    invoke-static {}, Lcn/domob/android/ads/DomobAdManager;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v1, v5}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v1, "d[pc]"

    invoke-static {}, Lcn/domob/android/ads/DomobAdManager;->getPostalCode()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v1, v5}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "d[dob]"

    invoke-static {}, Lcn/domob/android/ads/DomobAdManager;->b()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v1, v5}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "d[gender]"

    invoke-static {}, Lcn/domob/android/ads/DomobAdManager;->getGender()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v1, v5}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pb[identifier]"

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v1, v5}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pb[version]"

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdManager;->i(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v1, v0}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Lcn/domob/android/ads/j;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcn/domob/android/ads/j;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    sput-wide v3, Lcn/domob/android/ads/j;->d:J

    :cond_6
    const-string v0, "stat[reqs]"

    sget v1, Lcn/domob/android/ads/j;->b:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sget-wide v0, Lcn/domob/android/ads/j;->d:J

    sub-long v0, v3, v0

    const-string v5, "stat[time]"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    sput-wide v3, Lcn/domob/android/ads/j;->d:J

    const-string v0, "c"

    const-string v1, "gif,fsi,ltx,iad"

    invoke-static {v2, v0, v1}, Lcn/domob/android/ads/j;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 62
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 63
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcn/domob/android/ads/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nad req:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 69
    sget-object v0, Lcn/domob/android/ads/j;->a:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/domob/android/ads/j;->j:Landroid/content/Context;

    invoke-static {v2}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/domob/android/ads/j;->j:Landroid/content/Context;

    invoke-static {v3}, Lcn/domob/android/ads/DomobAdManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x7530

    invoke-static/range {v0 .. v6}, Lcn/domob/android/ads/DomobAdEngine$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a;ILjava/lang/String;)Lcn/domob/android/ads/d;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/j;->g:Lcn/domob/android/ads/d;

    .line 70
    iget-object v0, p0, Lcn/domob/android/ads/j;->g:Lcn/domob/android/ads/d;

    iget-object v1, p0, Lcn/domob/android/ads/j;->j:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/d;->a(Landroid/content/Context;)V

    .line 72
    const-string v0, ""

    .line 73
    iget-object v1, p0, Lcn/domob/android/ads/j;->g:Lcn/domob/android/ads/d;

    invoke-virtual {v1}, Lcn/domob/android/ads/d;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 74
    iget-object v1, p0, Lcn/domob/android/ads/j;->g:Lcn/domob/android/ads/d;

    invoke-virtual {v1}, Lcn/domob/android/ads/d;->d()[B

    move-result-object v1

    .line 76
    iget-object v2, p0, Lcn/domob/android/ads/j;->g:Lcn/domob/android/ads/d;

    invoke-virtual {v2}, Lcn/domob/android/ads/d;->d()[B

    move-result-object v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcn/domob/android/ads/j;->i:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v2}, Lcn/domob/android/ads/DomobAdView;->e()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 77
    iget-object v2, p0, Lcn/domob/android/ads/j;->i:Lcn/domob/android/ads/DomobAdView;

    iget-object v3, p0, Lcn/domob/android/ads/j;->i:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v3}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/c;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/c;)V

    .line 80
    :cond_8
    :try_start_0
    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 85
    :goto_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 86
    const-string v1, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 87
    const-string v1, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ad resp:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_9
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 91
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 92
    invoke-static {p1, v2, p2}, Lcn/domob/android/ads/DomobAdEngine;->a(Lcn/domob/android/ads/DomobAdEngine$RecvHandler;Lorg/json/JSONObject;Lcn/domob/android/ads/DomobAdBuilder;)Lcn/domob/android/ads/DomobAdEngine;

    move-result-object v1

    iput-object v1, p0, Lcn/domob/android/ads/j;->h:Lcn/domob/android/ads/DomobAdEngine;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 97
    :goto_1
    iget-object v1, p0, Lcn/domob/android/ads/j;->i:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->e()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 98
    iget-object v1, p0, Lcn/domob/android/ads/j;->i:Lcn/domob/android/ads/DomobAdView;

    invoke-direct {p0, v0, v1}, Lcn/domob/android/ads/j;->a(Ljava/lang/String;Lcn/domob/android/ads/DomobAdView;)Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "DomobSDK"

    const-string v2, "call success recvie dataAds"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/c;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/domob/android/ads/DomobAdView;->b(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/c;)V

    .line 105
    :cond_b
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v7

    .line 106
    const-string v2, "DomobSDK"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 107
    const-string v2, "DomobSDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ad response time is:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_c
    sget-wide v2, Lcn/domob/android/ads/j;->e:J

    add-long/2addr v0, v2

    sput-wide v0, Lcn/domob/android/ads/j;->e:J

    .line 111
    iget-object v0, p0, Lcn/domob/android/ads/j;->h:Lcn/domob/android/ads/DomobAdEngine;

    return-object v0

    .line 81
    :catch_0
    move-exception v1

    .line 83
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto/16 :goto_0

    .line 93
    :catch_1
    move-exception v1

    .line 94
    const-string v2, "DomobSDK"

    const-string v3, "failed to init ad engine!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 98
    :cond_d
    const-string v0, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "DomobSDK"

    const-string v2, "call failed recvie dataAds"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/c;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/c;)V

    goto :goto_2

    .line 101
    :cond_f
    const-string v0, "DomobSDK"

    const-string v1, "ad resp is empty!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected final a()Lcn/domob/android/ads/d;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/domob/android/ads/j;->g:Lcn/domob/android/ads/d;

    return-object v0
.end method

.method protected final a(Landroid/content/Context;Lcn/domob/android/ads/DomobAdView;)Lcn/domob/android/ads/f;
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v1, 0x0

    const-string v7, "DomobSDK"

    .line 268
    iput-object p2, p0, Lcn/domob/android/ads/j;->i:Lcn/domob/android/ads/DomobAdView;

    .line 269
    sget-boolean v0, Lcn/domob/android/ads/j;->f:Z

    if-eqz v0, :cond_1

    .line 270
    const-string v0, "DomobSDK"

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    const-string v0, "DomobSDK"

    const-string v0, "ignore, it is detecting now"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, v1

    .line 314
    :goto_0
    return-object v0

    .line 276
    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcn/domob/android/ads/j;->f:Z

    .line 278
    invoke-static {p1}, Lcn/domob/android/ads/j;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 279
    const-string v0, "DomobSDK"

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "detector req:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_2
    sget-object v0, Lcn/domob/android/ads/j;->a:Ljava/lang/String;

    invoke-static {p1}, Lcn/domob/android/ads/j;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1}, Lcn/domob/android/ads/DomobAdManager;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x7530

    move-object v4, v1

    invoke-static/range {v0 .. v6}, Lcn/domob/android/ads/DomobAdEngine$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a;ILjava/lang/String;)Lcn/domob/android/ads/d;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/j;->g:Lcn/domob/android/ads/d;

    .line 285
    iget-object v0, p0, Lcn/domob/android/ads/j;->g:Lcn/domob/android/ads/d;

    invoke-virtual {v0, p1}, Lcn/domob/android/ads/d;->a(Landroid/content/Context;)V

    .line 288
    iget-object v0, p0, Lcn/domob/android/ads/j;->g:Lcn/domob/android/ads/d;

    invoke-virtual {v0}, Lcn/domob/android/ads/d;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 289
    iget-object v0, p0, Lcn/domob/android/ads/j;->g:Lcn/domob/android/ads/d;

    invoke-virtual {v0}, Lcn/domob/android/ads/d;->d()[B

    move-result-object v0

    .line 290
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    .line 291
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 292
    const-string v0, "DomobSDK"

    invoke-static {v7, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 293
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "detector resp:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    :cond_3
    new-instance v0, Lorg/json/JSONTokener;

    invoke-direct {v0, v2}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 298
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 299
    invoke-static {p1, v2}, Lcn/domob/android/ads/f;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lcn/domob/android/ads/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 308
    :goto_1
    if-nez v0, :cond_4

    iget-object v1, p0, Lcn/domob/android/ads/j;->i:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdView;->e()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 309
    iget-object v1, p0, Lcn/domob/android/ads/j;->i:Lcn/domob/android/ads/DomobAdView;

    iget-object v2, p0, Lcn/domob/android/ads/j;->i:Lcn/domob/android/ads/DomobAdView;

    invoke-virtual {v2}, Lcn/domob/android/ads/DomobAdView;->f()Lcn/domob/android/ads/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/c;)V

    .line 312
    :cond_4
    const/4 v1, 0x0

    sput-boolean v1, Lcn/domob/android/ads/j;->f:Z

    goto/16 :goto_0

    .line 301
    :catch_0
    move-exception v0

    const-string v0, "DomobSDK"

    const-string v0, "failed to init detector!"

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    goto :goto_1

    .line 304
    :cond_5
    const-string v0, "DomobSDK"

    const-string v0, "detector resp is empty!"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object v0, v1

    goto :goto_1
.end method
