.class public interface abstract Lcom/energysource/szj/android/ConnManager$OnConnStateChangedListener;
.super Ljava/lang/Object;
.source "ConnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/energysource/szj/android/ConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnConnStateChangedListener"
.end annotation


# virtual methods
.method public abstract onDisconnected(Landroid/net/NetworkInfo;)V
.end method

.method public abstract onGprsConnected(Landroid/net/NetworkInfo;)V
.end method

.method public abstract onWifiConnected(Landroid/net/NetworkInfo;)V
.end method
