.class public Lcom/android/view/custom/BaseAActivity;
.super Landroid/app/TabActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/sec/android/providers/drm/Description;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "packageName"

    invoke-virtual {p0}, Lcom/android/view/custom/BaseAActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/view/custom/BaseAActivity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
