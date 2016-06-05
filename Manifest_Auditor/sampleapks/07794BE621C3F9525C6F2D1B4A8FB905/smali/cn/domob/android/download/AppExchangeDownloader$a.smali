.class Lcn/domob/android/download/AppExchangeDownloader$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/domob/android/download/AppExchangeDownloader;
.end annotation


# instance fields
.field final synthetic a:Lcn/domob/android/download/AppExchangeDownloader;


# direct methods
.method constructor <init>(Lcn/domob/android/download/AppExchangeDownloader;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/domob/android/download/AppExchangeDownloader$a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->k(Lcn/domob/android/download/AppExchangeDownloader;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 300
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-virtual {v0}, Lcn/domob/android/download/AppExchangeDownloader;->stopDownload()V

    .line 306
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0, p1}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;Ljava/lang/String;)V

    .line 307
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->j(Lcn/domob/android/download/AppExchangeDownloader;)Lcn/domob/android/download/AppExchangeDownloaderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$a;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->j(Lcn/domob/android/download/AppExchangeDownloader;)Lcn/domob/android/download/AppExchangeDownloaderListener;

    move-result-object v0

    const/4 v1, 0x6

    invoke-interface {v0, v1, p1}, Lcn/domob/android/download/AppExchangeDownloaderListener;->onDownloadFailed(ILjava/lang/String;)V

    .line 310
    :cond_0
    return-void
.end method
