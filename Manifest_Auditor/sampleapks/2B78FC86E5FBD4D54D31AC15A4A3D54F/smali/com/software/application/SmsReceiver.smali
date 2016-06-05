.class public Lcom/software/application/SmsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SmsReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 13
    const-string v1, "PREFS"

    invoke-virtual {p1, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 14
    .local v0, "settings":Landroid/content/SharedPreferences;
    const-string v1, "PAYED_KEY"

    const-string v2, "YES"

    invoke-static {p1, v1, v2, v0}, Lcom/software/application/TextUtils;->putSettingsValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 15
    const-string v1, "SENDED_SMS_COUNTER_KEY"

    .line 16
    const-string v2, "SENDED_SMS_COUNTER_KEY"

    .line 15
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 16
    add-int/lit8 v2, v2, 0x1

    .line 15
    invoke-static {p1, v1, v2, v0}, Lcom/software/application/TextUtils;->putSettingsValue(Landroid/content/Context;Ljava/lang/String;ILandroid/content/SharedPreferences;)V

    .line 17
    return-void
.end method
