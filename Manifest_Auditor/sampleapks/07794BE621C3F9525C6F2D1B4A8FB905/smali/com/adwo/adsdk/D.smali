.class final Lcom/adwo/adsdk/D;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/AdwoAdView;


# direct methods
.method public constructor <init>(Lcom/adwo/adsdk/AdwoAdView;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/adwo/adsdk/D;->a:Lcom/adwo/adsdk/AdwoAdView;

    .line 51
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/adwo/adsdk/D;->a:Lcom/adwo/adsdk/AdwoAdView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/adwo/adsdk/AdwoAdView;->b:Z

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/adwo/adsdk/D;->a:Lcom/adwo/adsdk/AdwoAdView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/adwo/adsdk/AdwoAdView;->b:Z

    goto :goto_0
.end method
