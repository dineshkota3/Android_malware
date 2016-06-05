.class public final Lad/notify/NotificationService;
.super Landroid/app/Service;
.source "NotificationService.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 21
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 22
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lad/notify/NotificationService;->setForeground(Z)V

    .line 23
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 41
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 28
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 30
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method
