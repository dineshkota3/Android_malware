.class final Lcn/domob/android/ads/DomobAdView$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/DomobAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field private a:Lcn/domob/android/ads/DomobAdView;

.field private b:Lcn/domob/android/ads/DomobAdBuilder;

.field private c:I

.field private d:Z

.field private synthetic e:Lcn/domob/android/ads/DomobAdView;


# direct methods
.method public constructor <init>(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;IZ)V
    .locals 0

    .prologue
    .line 985
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView$d;->e:Lcn/domob/android/ads/DomobAdView;

    .line 980
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 981
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdView$d;->a:Lcn/domob/android/ads/DomobAdView;

    .line 982
    iput-object p2, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    .line 983
    iput p3, p0, Lcn/domob/android/ads/DomobAdView$d;->c:I

    .line 984
    iput-boolean p4, p0, Lcn/domob/android/ads/DomobAdView$d;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const-string v3, "DomobSDK"

    .line 989
    :try_start_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->a:Lcn/domob/android/ads/DomobAdView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_4

    .line 990
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    const-string v0, "DomobSDK"

    const-string v1, "show ad!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WindowVisibility:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdView$d;->e:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v2}, Lcn/domob/android/ads/DomobAdView;->k(Lcn/domob/android/ads/DomobAdView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WindowFocus:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdView$d;->e:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v2}, Lcn/domob/android/ads/DomobAdView;->l(Lcn/domob/android/ads/DomobAdView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->e:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdView;->k(Lcn/domob/android/ads/DomobAdView;)I

    move-result v0

    if-nez v0, :cond_4

    .line 997
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->e:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdView;->l(Lcn/domob/android/ads/DomobAdView;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 999
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobAdBuilder;->setVisibility(I)V

    .line 1000
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->a:Lcn/domob/android/ads/DomobAdView;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobAdView;->addView(Landroid/view/View;)V

    .line 1002
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->a:Lcn/domob/android/ads/DomobAdView;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v1}, Lcn/domob/android/ads/DomobAdBuilder;->b()Lcn/domob/android/ads/DomobAdEngine;

    invoke-static {v0}, Lcn/domob/android/ads/DomobAdView;->h(Lcn/domob/android/ads/DomobAdView;)V

    .line 1005
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView$d;->d:Z

    if-eqz v0, :cond_2

    .line 1006
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->a:Lcn/domob/android/ads/DomobAdView;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-static {v0, v1}, Lcn/domob/android/ads/DomobAdView;->b(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;)V

    .line 1039
    :cond_1
    :goto_0
    return-void

    .line 1008
    :cond_2
    iget v0, p0, Lcn/domob/android/ads/DomobAdView$d;->c:I

    if-nez v0, :cond_1

    .line 1009
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->a()Ljava/lang/String;

    move-result-object v0

    .line 1011
    if-eqz v0, :cond_3

    const-string v1, "fr2l"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1012
    :cond_3
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->a:Lcn/domob/android/ads/DomobAdView;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdView$d;->a:Lcn/domob/android/ads/DomobAdView;

    invoke-static {v2}, Lcn/domob/android/ads/DomobReport;->a(Lcn/domob/android/ads/DomobAdView;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/DomobAdView;->a(Lcn/domob/android/ads/DomobAdView;Lcn/domob/android/ads/DomobAdBuilder;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    const-string v1, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unhandled exception in showAdThread.run() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1024
    :cond_4
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    if-eqz v0, :cond_1

    .line 1025
    const-string v0, "DomobSDK"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1026
    const-string v0, "DomobSDK"

    const-string v0, "error or view is invisible, clear resources!"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_5
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->a:Lcn/domob/android/ads/DomobAdView;

    iget-object v1, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0, v1}, Lcn/domob/android/ads/DomobAdView;->removeView(Landroid/view/View;)V

    .line 1029
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobAdBuilder;->c()V

    .line 1030
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->b:Lcn/domob/android/ads/DomobAdBuilder;

    .line 1032
    iget-boolean v0, p0, Lcn/domob/android/ads/DomobAdView$d;->d:Z

    if-eqz v0, :cond_1

    .line 1033
    const-string v0, "DomobSDK"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1034
    const-string v0, "DomobSDK"

    const-string v0, "reset mNoAd"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :cond_6
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdView$d;->e:Lcn/domob/android/ads/DomobAdView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/domob/android/ads/DomobAdView;->a:Z

    goto :goto_0
.end method
