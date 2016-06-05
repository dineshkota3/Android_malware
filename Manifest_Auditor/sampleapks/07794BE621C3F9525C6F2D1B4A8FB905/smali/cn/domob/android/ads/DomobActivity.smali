.class public Lcn/domob/android/ads/DomobActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final ActivityType:Ljava/lang/String; = "DomobActivityType"

.field public static final Type_Downloader:I = 0x2

.field public static final Type_InstallReceiver:I = 0x1

.field public static final Type_None:I


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 23
    iput-object p0, p0, Lcn/domob/android/ads/DomobActivity;->a:Landroid/content/Context;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcn/domob/android/ads/DomobActivity;->b:Ljava/lang/String;

    .line 16
    return-void
.end method

.method static synthetic a(Lcn/domob/android/ads/DomobActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static initReceiver(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-string v3, "DomobSDK"

    .line 145
    invoke-static {}, Lcn/domob/android/ads/DomobActionReceiver;->hasRegReceiver()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/domob/android/ads/DomobActionReceiver;->setRegReceiver(Z)V

    .line 148
    new-instance v0, Lcn/domob/android/ads/DomobActionReceiver;

    invoke-direct {v0}, Lcn/domob/android/ads/DomobActionReceiver;-><init>()V

    .line 149
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 150
    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 151
    const-string v2, "package"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 153
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v3, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    const-string v0, "DomobSDK"

    const-string v0, "register receiver done"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const-string v4, "DomobSDK"

    .line 43
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 44
    const-string v1, "DomobActivityType"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 45
    packed-switch v0, :pswitch_data_0

    .line 58
    invoke-virtual {p0}, Lcn/domob/android/ads/DomobActivity;->finish()V

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 49
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    move-object p1, p0

    invoke-virtual {p0}, Lcn/domob/android/ads/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/domob/android/ads/DomobActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "appName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appId"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcn/domob/android/ads/DomobActivity;->b:Ljava/lang/String;

    const-string v2, "actType"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "DomobSDK"

    const/4 v2, 0x3

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DomobSDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " is showing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_0

    const-string v2, "typeCancel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p1, Lcn/domob/android/ads/DomobActivity;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v2, "\u53d6\u6d88"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d\u662f\u5426\u53d6\u6d88?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88\u4e0b\u8f7d"

    new-instance v2, Lcn/domob/android/ads/DomobActivity$1;

    invoke-direct {v2, p1}, Lcn/domob/android/ads/DomobActivity$1;-><init>(Lcn/domob/android/ads/DomobActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u7ee7\u7eed\u4e0b\u8f7d"

    new-instance v2, Lcn/domob/android/ads/DomobActivity$2;

    invoke-direct {v2, p1}, Lcn/domob/android/ads/DomobActivity$2;-><init>(Lcn/domob/android/ads/DomobActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 53
    :pswitch_1
    const v0, 0x103000b

    invoke-virtual {p0, v0}, Lcn/domob/android/ads/DomobActivity;->setTheme(I)V

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 45
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
