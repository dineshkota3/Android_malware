.class public Ljp/bravo/honda/FServices;
.super Landroid/app/Service;
.source "FServices.java"


# instance fields
.field final LOG_TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 9
    const-string v0, "myLogs"

    iput-object v0, p0, Ljp/bravo/honda/FServices;->LOG_TAG:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    const-string v0, "myLogs"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 15
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 24
    const-string v0, "myLogs"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 19
    const/4 v0, 0x1

    return v0
.end method
