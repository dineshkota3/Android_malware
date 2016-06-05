.class Lcn/domob/android/download/AppExchangeDownloader$b;
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
    iput-object p1, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 267
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "rom can\'t chmod"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const-string v0, "sd\u5361\u4e0d\u5b58\u5728"

    .line 269
    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->j(Lcn/domob/android/download/AppExchangeDownloader;)Lcn/domob/android/download/AppExchangeDownloaderListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->j(Lcn/domob/android/download/AppExchangeDownloader;)Lcn/domob/android/download/AppExchangeDownloaderListener;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v1, v2, v0}, Lcn/domob/android/download/AppExchangeDownloaderListener;->onDownloadFailed(ILjava/lang/String;)V

    .line 272
    :cond_0
    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1, v0}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public a(JJ)V
    .locals 3

    .prologue
    .line 256
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "not enough size sdsize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " romsize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const-string v0, "\u7a7a\u95f4\u4e0d\u8db3"

    .line 258
    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->j(Lcn/domob/android/download/AppExchangeDownloader;)Lcn/domob/android/download/AppExchangeDownloaderListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->j(Lcn/domob/android/download/AppExchangeDownloader;)Lcn/domob/android/download/AppExchangeDownloaderListener;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lcn/domob/android/download/AppExchangeDownloaderListener;->onDownloadFailed(ILjava/lang/String;)V

    .line 261
    :cond_0
    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1, v0}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;Ljava/lang/String;)V

    .line 262
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string v2, "DomobSDK"

    .line 225
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " already exists in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0, p1}, Lcn/domob/android/download/AppExchangeDownloader;->a(Lcn/domob/android/download/AppExchangeDownloader;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->h(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/download/AppExchangeDownloader;->b(Lcn/domob/android/download/AppExchangeDownloader;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string v2, "DomobSDK"

    .line 245
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " is  not download,it will download in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0, p1}, Lcn/domob/android/download/AppExchangeDownloader;->a(Lcn/domob/android/download/AppExchangeDownloader;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->h(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/download/AppExchangeDownloader;->b(Lcn/domob/android/download/AppExchangeDownloader;Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .prologue
    const-string v2, "DomobSDK"

    .line 235
    const-string v0, "DomobSDK"

    const/4 v0, 0x3

    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    const-string v0, "DomobSDK"

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " is download but not finished in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0, p1}, Lcn/domob/android/download/AppExchangeDownloader;->a(Lcn/domob/android/download/AppExchangeDownloader;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    iget-object v1, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v1}, Lcn/domob/android/download/AppExchangeDownloader;->h(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/domob/android/download/AppExchangeDownloader;->b(Lcn/domob/android/download/AppExchangeDownloader;Ljava/lang/String;)V

    .line 240
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 278
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v2}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u65e0\u6cd5\u8fde\u63a5\u7684\u4e0b\u8f7d\u5730\u5740"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->j(Lcn/domob/android/download/AppExchangeDownloader;)Lcn/domob/android/download/AppExchangeDownloaderListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v0}, Lcn/domob/android/download/AppExchangeDownloader;->j(Lcn/domob/android/download/AppExchangeDownloader;)Lcn/domob/android/download/AppExchangeDownloaderListener;

    move-result-object v0

    const/4 v1, 0x5

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/domob/android/download/AppExchangeDownloader$b;->a:Lcn/domob/android/download/AppExchangeDownloader;

    invoke-static {v3}, Lcn/domob/android/download/AppExchangeDownloader;->c(Lcn/domob/android/download/AppExchangeDownloader;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcn/domob/android/download/AppExchangeDownloaderListener;->onDownloadFailed(ILjava/lang/String;)V

    .line 282
    :cond_0
    return-void
.end method
