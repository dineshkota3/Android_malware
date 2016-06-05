.class final Lcn/domob/android/ads/DomobActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/ads/DomobActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcn/domob/android/ads/DomobActivity;


# direct methods
.method constructor <init>(Lcn/domob/android/ads/DomobActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/domob/android/ads/DomobActivity$1;->a:Lcn/domob/android/ads/DomobActivity;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 91
    sget-object v0, Lcn/domob/android/download/AppExchangeDownloader;->Download_Map:Ljava/util/Hashtable;

    iget-object v1, p0, Lcn/domob/android/ads/DomobActivity$1;->a:Lcn/domob/android/ads/DomobActivity;

    invoke-static {v1}, Lcn/domob/android/ads/DomobActivity;->a(Lcn/domob/android/ads/DomobActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/domob/android/download/AppExchangeDownloader;

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Lcn/domob/android/download/AppExchangeDownloader;->stopDownload()V

    .line 94
    invoke-virtual {v0}, Lcn/domob/android/download/AppExchangeDownloader;->getDownloadListener()Lcn/domob/android/download/AppExchangeDownloaderListener;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0}, Lcn/domob/android/download/AppExchangeDownloaderListener;->onDownloadCanceled()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/DomobActivity$1;->a:Lcn/domob/android/ads/DomobActivity;

    invoke-virtual {v0}, Lcn/domob/android/ads/DomobActivity;->finish()V

    .line 99
    return-void
.end method
