.class Lcom/admogo/AdMogoLayout$PingUrlRunnable;
.super Ljava/lang/Object;
.source "AdMogoLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admogo/AdMogoLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PingUrlRunnable"
.end annotation


# instance fields
.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput-object p1, p0, Lcom/admogo/AdMogoLayout$PingUrlRunnable;->url:Ljava/lang/String;

    .line 733
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/16 v5, 0x1f40

    const-string v7, "AdsMOGO SDK"

    .line 737
    new-instance v3, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v3}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 738
    .local v3, "httpParameters":Lorg/apache/http/params/HttpParams;
    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 739
    invoke-static {v3, v5}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 740
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    .line 741
    .local v1, "httpClient":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    iget-object v5, p0, Lcom/admogo/AdMogoLayout$PingUrlRunnable;->url:Ljava/lang/String;

    invoke-direct {v2, v5}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 744
    .local v2, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    :try_start_0
    invoke-interface {v1, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    .line 745
    .local v4, "httpResponse":Lorg/apache/http/HttpResponse;
    const-string v5, "AdsMOGO SDK"

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    .line 746
    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 745
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 755
    .end local v4    # "httpResponse":Lorg/apache/http/HttpResponse;
    :goto_0
    return-void

    .line 748
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 749
    .local v0, "e":Lorg/apache/http/client/ClientProtocolException;
    const-string v5, "AdsMOGO SDK"

    .line 750
    const-string v5, "Caught ClientProtocolException in PingUrlRunnable"

    .line 749
    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 751
    .end local v0    # "e":Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 752
    .local v0, "e":Ljava/io/IOException;
    const-string v5, "AdsMOGO SDK"

    .line 753
    const-string v5, "Caught IOException in PingUrlRunnable"

    .line 752
    invoke-static {v7, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
