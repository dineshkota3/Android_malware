.class public Lcom/energysource/szj/android/AppInstallManager;
.super Ljava/lang/Object;
.source "AppInstallManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/energysource/szj/android/AppInstallManager$AppListener;
    }
.end annotation


# static fields
.field private static instance:Lcom/energysource/szj/android/AppInstallManager;


# instance fields
.field private appListener:Lcom/energysource/szj/android/AppInstallManager$AppListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lcom/energysource/szj/android/AppInstallManager;

    invoke-direct {v0}, Lcom/energysource/szj/android/AppInstallManager;-><init>()V

    sput-object v0, Lcom/energysource/szj/android/AppInstallManager;->instance:Lcom/energysource/szj/android/AppInstallManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    return-void
.end method

.method public static getInstance()Lcom/energysource/szj/android/AppInstallManager;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/energysource/szj/android/AppInstallManager;->instance:Lcom/energysource/szj/android/AppInstallManager;

    return-object v0
.end method


# virtual methods
.method public handlerListener(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    .line 17
    .local v0, "pkg":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 18
    iget-object v2, p0, Lcom/energysource/szj/android/AppInstallManager;->appListener:Lcom/energysource/szj/android/AppInstallManager$AppListener;

    if-nez v2, :cond_1

    .line 19
    new-instance v1, Landroid/content/Intent;

    const-string v2, "SZJService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 20
    .local v1, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 32
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 22
    :cond_1
    iget-object v2, p0, Lcom/energysource/szj/android/AppInstallManager;->appListener:Lcom/energysource/szj/android/AppInstallManager$AppListener;

    invoke-interface {v2, v0}, Lcom/energysource/szj/android/AppInstallManager$AppListener;->installApp(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 25
    iget-object v2, p0, Lcom/energysource/szj/android/AppInstallManager;->appListener:Lcom/energysource/szj/android/AppInstallManager$AppListener;

    if-nez v2, :cond_3

    .line 26
    new-instance v1, Landroid/content/Intent;

    const-string v2, "SZJService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 27
    .restart local v1    # "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 29
    .end local v1    # "serviceIntent":Landroid/content/Intent;
    :cond_3
    iget-object v2, p0, Lcom/energysource/szj/android/AppInstallManager;->appListener:Lcom/energysource/szj/android/AppInstallManager$AppListener;

    invoke-interface {v2, v0}, Lcom/energysource/szj/android/AppInstallManager$AppListener;->unInstallApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setOnAppListener(Lcom/energysource/szj/android/AppInstallManager$AppListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/energysource/szj/android/AppInstallManager$AppListener;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/energysource/szj/android/AppInstallManager;->appListener:Lcom/energysource/szj/android/AppInstallManager$AppListener;

    .line 36
    return-void
.end method
