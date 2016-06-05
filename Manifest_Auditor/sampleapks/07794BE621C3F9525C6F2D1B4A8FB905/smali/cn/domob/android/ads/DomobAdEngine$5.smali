.class final Lcn/domob/android/ads/DomobAdEngine$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/download/AppExchangeDownloaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/domob/android/ads/DomobAdEngine;->a(Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcn/domob/android/ads/DomobAdEngine;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DomobAdEngine;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/domob/android/ads/DomobAdEngine$5;->a:Lcn/domob/android/ads/DomobAdEngine;

    iput-object p2, p0, Lcn/domob/android/ads/DomobAdEngine$5;->b:Landroid/content/Context;

    .line 1604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadCanceled()V
    .locals 3

    .prologue
    .line 1626
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$5;->a:Lcn/domob/android/ads/DomobAdEngine;

    const/4 v1, 0x3

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine$5;->a:Lcn/domob/android/ads/DomobAdEngine;

    invoke-static {v2}, Lcn/domob/android/ads/DomobAdEngine;->c(Lcn/domob/android/ads/DomobAdEngine;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/DomobAdEngine;->a(Lcn/domob/android/ads/DomobAdEngine;ILjava/util/HashMap;)V

    .line 1628
    return-void
.end method

.method public final onDownloadFailed(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 1621
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$5;->a:Lcn/domob/android/ads/DomobAdEngine;

    const/4 v1, 0x2

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine$5;->a:Lcn/domob/android/ads/DomobAdEngine;

    invoke-static {v2}, Lcn/domob/android/ads/DomobAdEngine;->c(Lcn/domob/android/ads/DomobAdEngine;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/DomobAdEngine;->a(Lcn/domob/android/ads/DomobAdEngine;ILjava/util/HashMap;)V

    .line 1622
    return-void
.end method

.method public final onDownloadSuccess(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1613
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$5;->a:Lcn/domob/android/ads/DomobAdEngine;

    const/4 v1, 0x1

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine$5;->a:Lcn/domob/android/ads/DomobAdEngine;

    invoke-static {v2}, Lcn/domob/android/ads/DomobAdEngine;->c(Lcn/domob/android/ads/DomobAdEngine;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/DomobAdEngine;->a(Lcn/domob/android/ads/DomobAdEngine;ILjava/util/HashMap;)V

    .line 1615
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$5;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/ads/DomobActivity;->initReceiver(Landroid/content/Context;)V

    .line 1617
    return-void
.end method

.method public final onStartDownload()V
    .locals 3

    .prologue
    .line 1608
    iget-object v0, p0, Lcn/domob/android/ads/DomobAdEngine$5;->a:Lcn/domob/android/ads/DomobAdEngine;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/domob/android/ads/DomobAdEngine$5;->a:Lcn/domob/android/ads/DomobAdEngine;

    invoke-static {v2}, Lcn/domob/android/ads/DomobAdEngine;->c(Lcn/domob/android/ads/DomobAdEngine;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/domob/android/ads/DomobAdEngine;->a(Lcn/domob/android/ads/DomobAdEngine;ILjava/util/HashMap;)V

    .line 1609
    return-void
.end method
