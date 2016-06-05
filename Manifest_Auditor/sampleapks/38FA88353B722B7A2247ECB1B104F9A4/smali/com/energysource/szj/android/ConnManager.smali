.class public Lcom/energysource/szj/android/ConnManager;
.super Ljava/lang/Object;
.source "ConnManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/energysource/szj/android/ConnManager$OnConnStateChangedListener;
    }
.end annotation


# static fields
.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_NONE:I = 0x0

.field public static final NETWORK_TYPE_WIFI:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ConnManager"

.field private static final sConnManager:Lcom/energysource/szj/android/ConnManager;


# instance fields
.field private mListener:Lcom/energysource/szj/android/ConnManager$OnConnStateChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/energysource/szj/android/ConnManager;

    invoke-direct {v0}, Lcom/energysource/szj/android/ConnManager;-><init>()V

    sput-object v0, Lcom/energysource/szj/android/ConnManager;->sConnManager:Lcom/energysource/szj/android/ConnManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/energysource/szj/android/ConnManager;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/energysource/szj/android/ConnManager;->sConnManager:Lcom/energysource/szj/android/ConnManager;

    return-object v0
.end method

.method private getNetworkType(Landroid/net/NetworkInfo;)I
    .locals 4
    .param p1, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 52
    if-nez p1, :cond_0

    .line 53
    const/4 v1, 0x0

    .line 66
    .local v1, "type":I
    :goto_0
    return v1

    .line 55
    .end local v1    # "type":I
    :cond_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 56
    .local v0, "state":Landroid/net/NetworkInfo$State;
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v2, :cond_1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v0, v2, :cond_3

    .line 57
    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 58
    const/4 v1, 0x2

    .restart local v1    # "type":I
    goto :goto_0

    .line 60
    .end local v1    # "type":I
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "type":I
    goto :goto_0

    .line 63
    .end local v1    # "type":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "type":I
    goto :goto_0
.end method


# virtual methods
.method public getCurrentNetworkType(Landroid/content/Context;)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 46
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/energysource/szj/android/ConnManager;->getNetworkType(Landroid/net/NetworkInfo;)I

    move-result v1

    return v1
.end method

.method public handleConnStateChanged(Landroid/net/NetworkInfo;Landroid/content/Context;)V
    .locals 4
    .param p1, "info"    # Landroid/net/NetworkInfo;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    const-string v2, "ConnManager"

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/energysource/szj/android/ConnManager;->mListener:Lcom/energysource/szj/android/ConnManager$OnConnStateChangedListener;

    .line 72
    .local v0, "listener":Lcom/energysource/szj/android/ConnManager$OnConnStateChangedListener;
    if-nez v0, :cond_1

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-string v2, "SZJService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 96
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    invoke-direct {p0, p1}, Lcom/energysource/szj/android/ConnManager;->getNetworkType(Landroid/net/NetworkInfo;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 78
    :pswitch_0
    const-string v2, "ConnManager"

    const-string v3, "Lost connection!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/energysource/szj/android/ConnManager$OnConnStateChangedListener;->onDisconnected(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 83
    :pswitch_1
    const-string v2, "ConnManager"

    const-string v3, "GPRS is connecting..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/energysource/szj/android/ConnManager$OnConnStateChangedListener;->onGprsConnected(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 88
    :pswitch_2
    const-string v2, "ConnManager"

    const-string v3, "Wi-Fi is connecting..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/energysource/szj/android/ConnManager$OnConnStateChangedListener;->onWifiConnected(Landroid/net/NetworkInfo;)V

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public isConnecting(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    invoke-virtual {p0, p1}, Lcom/energysource/szj/android/ConnManager;->getCurrentNetworkType(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGprsConnected(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 34
    invoke-virtual {p0, p1}, Lcom/energysource/szj/android/ConnManager;->getCurrentNetworkType(Landroid/content/Context;)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWifiConnected(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/energysource/szj/android/ConnManager;->getCurrentNetworkType(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnConnStateChangedListener(Lcom/energysource/szj/android/ConnManager$OnConnStateChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/energysource/szj/android/ConnManager$OnConnStateChangedListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/energysource/szj/android/ConnManager;->mListener:Lcom/energysource/szj/android/ConnManager$OnConnStateChangedListener;

    .line 100
    return-void
.end method
