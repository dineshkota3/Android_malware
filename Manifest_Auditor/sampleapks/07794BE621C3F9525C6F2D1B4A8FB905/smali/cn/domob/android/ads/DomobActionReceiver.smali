.class public Lcn/domob/android/ads/DomobActionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-boolean v0, Lcn/domob/android/ads/DomobActionReceiver;->a:Z

    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 55
    new-instance v0, Lcn/domob/android/ads/DomobReport;

    invoke-direct {v0, p0}, Lcn/domob/android/ads/DomobReport;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v1, Lcn/domob/android/ads/DomobReport$ReportInfo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v0}, Lcn/domob/android/ads/DomobReport$ReportInfo;-><init>(Lcn/domob/android/ads/DomobReport;)V

    .line 57
    iput p1, v1, Lcn/domob/android/ads/DomobReport$ReportInfo;->a:I

    .line 58
    const/4 v2, 0x2

    iput v2, v1, Lcn/domob/android/ads/DomobReport$ReportInfo;->b:I

    .line 59
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcn/domob/android/ads/DomobReport$ReportInfo;->c:Ljava/util/ArrayList;

    .line 60
    iget-object v2, v1, Lcn/domob/android/ads/DomobReport$ReportInfo;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {}, Lcn/domob/android/ads/DomobAdEngine;->g()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/domob/android/ads/DomobReport$ReportInfo;->d:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobReport;->a(Lcn/domob/android/ads/DomobReport$ReportInfo;)V

    .line 63
    return-void
.end method

.method public static hasRegReceiver()Z
    .locals 1

    .prologue
    .line 15
    sget-boolean v0, Lcn/domob/android/ads/DomobActionReceiver;->a:Z

    return v0
.end method

.method public static setRegReceiver(Z)V
    .locals 0
    .param p0, "reged"    # Z

    .prologue
    .line 18
    sput-boolean p0, Lcn/domob/android/ads/DomobActionReceiver;->a:Z

    .line 19
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const-string v2, "DomobSDK"

    .line 22
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    const-string v1, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 26
    const-string v1, "DomobSDK"

    invoke-virtual {p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_0
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 32
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    .line 33
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 34
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 36
    invoke-static {}, Lcn/domob/android/ads/DomobAdEngine;->f()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 38
    const/16 v2, 0x8

    invoke-static {p1, v2, v1}, Lcn/domob/android/ads/DomobActionReceiver;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 39
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 40
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :cond_1
    :goto_0
    sput-boolean v3, Lcn/domob/android/ads/DomobActionReceiver;->a:Z

    .line 50
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 51
    return-void

    .line 43
    :cond_2
    const/4 v0, 0x7

    :try_start_1
    invoke-static {p1, v0, v1}, Lcn/domob/android/ads/DomobActionReceiver;->a(Landroid/content/Context;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
