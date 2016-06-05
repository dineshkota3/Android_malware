.class final Lcn/domob/android/ads/i$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/domob/android/download/AppExchangeDownloaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcn/domob/android/ads/i;

.field private final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/i;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/domob/android/ads/i$7;->a:Lcn/domob/android/ads/i;

    iput-object p2, p0, Lcn/domob/android/ads/i$7;->b:Landroid/content/Context;

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadCanceled()V
    .locals 2

    .prologue
    .line 977
    iget-object v0, p0, Lcn/domob/android/ads/i$7;->a:Lcn/domob/android/ads/i;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/i;I)V

    .line 979
    return-void
.end method

.method public final onDownloadFailed(ILjava/lang/String;)V
    .locals 2

    .prologue
    .line 972
    iget-object v0, p0, Lcn/domob/android/ads/i$7;->a:Lcn/domob/android/ads/i;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/i;I)V

    .line 973
    return-void
.end method

.method public final onDownloadSuccess(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 965
    iget-object v0, p0, Lcn/domob/android/ads/i$7;->a:Lcn/domob/android/ads/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/i;I)V

    .line 967
    iget-object v0, p0, Lcn/domob/android/ads/i$7;->b:Landroid/content/Context;

    invoke-static {v0}, Lcn/domob/android/ads/DomobActivity;->initReceiver(Landroid/content/Context;)V

    .line 968
    return-void
.end method

.method public final onStartDownload()V
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Lcn/domob/android/ads/i$7;->a:Lcn/domob/android/ads/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/domob/android/ads/i;->a(Lcn/domob/android/ads/i;I)V

    .line 961
    return-void
.end method
