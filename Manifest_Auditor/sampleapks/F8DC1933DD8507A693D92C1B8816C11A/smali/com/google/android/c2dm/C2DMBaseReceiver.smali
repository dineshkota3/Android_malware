.class public abstract Lcom/google/android/c2dm/C2DMBaseReceiver;
.super Landroid/app/IntentService;
.source "C2DMBaseReceiver.java"


# static fields
.field private static final C2DM_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"

.field private static final C2DM_RETRY:Ljava/lang/String; = "com.google.android.c2dm.intent.RETRY"

.field public static final ERR_ACCOUNT_MISSING:Ljava/lang/String; = "ACCOUNT_MISSING"

.field public static final ERR_AUTHENTICATION_FAILED:Ljava/lang/String; = "AUTHENTICATION_FAILED"

.field public static final ERR_INVALID_PARAMETERS:Ljava/lang/String; = "INVALID_PARAMETERS"

.field public static final ERR_INVALID_SENDER:Ljava/lang/String; = "INVALID_SENDER"

.field public static final ERR_PHONE_REGISTRATION_ERROR:Ljava/lang/String; = "PHONE_REGISTRATION_ERROR"

.field public static final ERR_SERVICE_NOT_AVAILABLE:Ljava/lang/String; = "SERVICE_NOT_AVAILABLE"

.field public static final ERR_TOO_MANY_REGISTRATIONS:Ljava/lang/String; = "TOO_MANY_REGISTRATIONS"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "error"

.field public static final EXTRA_REGISTRATION_ID:Ljava/lang/String; = "registration_id"

.field public static final EXTRA_UNREGISTERED:Ljava/lang/String; = "unregistered"

.field public static final REGISTRATION_CALLBACK_INTENT:Ljava/lang/String; = "com.google.android.c2dm.intent.REGISTRATION"

.field private static final TAG:Ljava/lang/String; = "C2DM"

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "C2DM_LIB"

.field private static mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "senderId"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method private handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 148
    const-string v9, "registration_id"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, "registrationId":Ljava/lang/String;
    const-string v9, "error"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "error":Ljava/lang/String;
    const-string v9, "unregistered"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 152
    .local v6, "removed":Ljava/lang/String;
    const-string v9, "C2DM"

    const/4 v10, 0x3

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 153
    const-string v9, "C2DM"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "dmControl: registrationId = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 154
    const-string v11, ", error = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", removed = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 153
    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :cond_0
    if-eqz v6, :cond_2

    .line 159
    invoke-static {p1}, Lcom/google/android/c2dm/C2DMessaging;->clearRegistrationId(Landroid/content/Context;)V

    .line 160
    invoke-virtual {p0, p1}, Lcom/google/android/c2dm/C2DMBaseReceiver;->onUnregistered(Landroid/content/Context;)V

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 162
    :cond_2
    if-eqz v3, :cond_3

    .line 164
    invoke-static {p1}, Lcom/google/android/c2dm/C2DMessaging;->clearRegistrationId(Landroid/content/Context;)V

    .line 166
    const-string v9, "C2DM"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Registration error "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0, p1, v3}, Lcom/google/android/c2dm/C2DMBaseReceiver;->onError(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    const-string v9, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 169
    invoke-static {p1}, Lcom/google/android/c2dm/C2DMessaging;->getBackoff(Landroid/content/Context;)J

    move-result-wide v1

    .line 171
    .local v1, "backoffTimeMs":J
    const-string v9, "C2DM"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Scheduling registration retry, backoff = "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    new-instance v7, Landroid/content/Intent;

    const-string v9, "com.google.android.c2dm.intent.RETRY"

    invoke-direct {v7, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 174
    .local v7, "retryIntent":Landroid/content/Intent;
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 173
    invoke-static {p1, v9, v7, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 176
    .local v8, "retryPIntent":Landroid/app/PendingIntent;
    const-string v9, "alarm"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 177
    .local v0, "am":Landroid/app/AlarmManager;
    const/4 v9, 0x3

    invoke-virtual {v0, v9, v1, v2, v8}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 181
    const-wide/16 v9, 0x2

    mul-long/2addr v1, v9

    .line 182
    invoke-static {p1, v1, v2}, Lcom/google/android/c2dm/C2DMessaging;->setBackoff(Landroid/content/Context;J)V

    goto :goto_0

    .line 186
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "backoffTimeMs":J
    .end local v7    # "retryIntent":Landroid/content/Intent;
    .end local v8    # "retryPIntent":Landroid/app/PendingIntent;
    :cond_3
    :try_start_0
    invoke-virtual {p0, p1, v5}, Lcom/google/android/c2dm/C2DMBaseReceiver;->onRegistered(Landroid/content/Context;Ljava/lang/String;)V

    .line 187
    invoke-static {p1, v5}, Lcom/google/android/c2dm/C2DMessaging;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 188
    :catch_0
    move-exception v4

    .line 189
    .local v4, "ex":Ljava/io/IOException;
    const-string v9, "C2DM"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "Registration error "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static runIntentInService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 129
    sget-object v2, Lcom/google/android/c2dm/C2DMBaseReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    .line 132
    const-string v2, "power"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 133
    .local v0, "pm":Landroid/os/PowerManager;
    const/4 v2, 0x1

    .line 134
    const-string v3, "C2DM_LIB"

    .line 133
    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    sput-object v2, Lcom/google/android/c2dm/C2DMBaseReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 136
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    sget-object v2, Lcom/google/android/c2dm/C2DMBaseReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".C2DMReceiver"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 141
    .local v1, "receiver":Ljava/lang/String;
    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 145
    return-void
.end method


# virtual methods
.method public abstract onError(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/c2dm/C2DMBaseReceiver;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.REGISTRATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-direct {p0, v0, p1}, Lcom/google/android/c2dm/C2DMBaseReceiver;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_0
    :goto_0
    sget-object v1, Lcom/google/android/c2dm/C2DMBaseReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 120
    return-void

    .line 106
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    invoke-virtual {p0, v0, p1}, Lcom/google/android/c2dm/C2DMBaseReceiver;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 111
    .end local v0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception v1

    .line 118
    sget-object v2, Lcom/google/android/c2dm/C2DMBaseReceiver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 119
    throw v1

    .line 108
    .restart local v0    # "context":Landroid/content/Context;
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.c2dm.intent.RETRY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const v1, 0x7f070011

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/c2dm/C2DMessaging;->register(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected abstract onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public onRegistered(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "registrationId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    return-void
.end method

.method public onUnregistered(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    return-void
.end method
