.class final Lcn/domob/android/ads/q;
.super Lcn/domob/android/ads/d;
.source "SourceFile"


# instance fields
.field private m:Ljava/net/HttpURLConnection;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a;ILjava/util/Map;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcn/domob/android/ads/a;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 14
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcn/domob/android/ads/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/domob/android/ads/a;ILjava/util/Map;Ljava/lang/String;)V

    .line 15
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "connect url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/domob/android/ads/q;->a:Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    .line 25
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/domob/android/ads/q;->a:Ljava/net/URL;

    .line 22
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private g()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 127
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method final a()Z
    .locals 8

    .prologue
    const/4 v1, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v5, "DomobSDK"

    .line 28
    const-string v0, "DomobSDK"

    invoke-static {v5, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const-string v0, "DomobSDK"

    const-string v0, "initConn"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    iget-object v0, p0, Lcn/domob/android/ads/q;->a:Ljava/net/URL;

    if-eqz v0, :cond_c

    .line 36
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 37
    invoke-direct {p0}, Lcn/domob/android/ads/q;->g()V

    .line 39
    iget-object v0, p0, Lcn/domob/android/ads/q;->b:Ljava/net/Proxy;

    if-eqz v0, :cond_5

    .line 40
    iget-object v0, p0, Lcn/domob/android/ads/q;->a:Ljava/net/URL;

    iget-object v1, p0, Lcn/domob/android/ads/q;->b:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    .line 44
    :goto_0
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_7

    .line 46
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcn/domob/android/ads/q;->e:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 47
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    iget v1, p0, Lcn/domob/android/ads/q;->e:I

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 49
    iget-object v0, p0, Lcn/domob/android/ads/q;->f:Ljava/util/Map;

    if-eqz v0, :cond_6

    .line 50
    iget-object v0, p0, Lcn/domob/android/ads/q;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 51
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 53
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 54
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/domob/android/ads/q;->f:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 59
    iget-object v3, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 106
    :catch_0
    move-exception v0

    .line 107
    const-string v1, "DomobSDK"

    const-string v1, "Error happened in connection."

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    move v0, v7

    .line 111
    :goto_2
    if-nez v0, :cond_3

    .line 112
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/domob/android/ads/q;->h:[B

    .line 115
    :cond_3
    iget-object v1, p0, Lcn/domob/android/ads/q;->c:Lcn/domob/android/ads/a;

    if-eqz v1, :cond_4

    .line 116
    iget-object v1, p0, Lcn/domob/android/ads/q;->c:Lcn/domob/android/ads/a;

    invoke-interface {v1, p0}, Lcn/domob/android/ads/a;->a(Lcn/domob/android/ads/d;)V

    .line 119
    :cond_4
    invoke-direct {p0}, Lcn/domob/android/ads/q;->g()V

    .line 121
    :goto_3
    return v0

    .line 42
    :cond_5
    :try_start_1
    iget-object v0, p0, Lcn/domob/android/ads/q;->a:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 64
    :cond_6
    iget-object v0, p0, Lcn/domob/android/ads/q;->g:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 65
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 67
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    iget-object v2, p0, Lcn/domob/android/ads/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Length"

    iget-object v2, p0, Lcn/domob/android/ads/q;->g:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v0, 0x1000

    invoke-direct {v1, v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 72
    iget-object v0, p0, Lcn/domob/android/ads/q;->g:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 74
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 82
    :cond_7
    :goto_4
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcn/domob/android/ads/q;->j:I

    .line 83
    iget v0, p0, Lcn/domob/android/ads/q;->j:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_2

    iget v0, p0, Lcn/domob/android/ads/q;->j:I

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_2

    .line 84
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/q;->k:Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/q;->l:Ljava/lang/String;

    .line 86
    const-string v0, "DomobSDK"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 88
    const-string v0, "DomobSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resp type:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/domob/android/ads/q;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",mRespEncoding:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/domob/android/ads/q;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_8
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/q;->a:Ljava/net/URL;

    .line 91
    iget-boolean v0, p0, Lcn/domob/android/ads/q;->i:Z

    if-eqz v0, :cond_9

    .line 93
    new-instance v0, Ljava/io/BufferedInputStream;

    iget-object v1, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/16 v2, 0x1000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 94
    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 96
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x1000

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 97
    :goto_5
    invoke-virtual {v0, v1}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_b

    .line 100
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcn/domob/android/ads/q;->h:[B

    :cond_9
    move v0, v6

    .line 104
    goto/16 :goto_2

    .line 78
    :cond_a
    iget-object v0, p0, Lcn/domob/android/ads/q;->m:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    goto/16 :goto_4

    .line 98
    :cond_b
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :cond_c
    move v0, v7

    goto/16 :goto_3
.end method

.method public final run()V
    .locals 1

    .prologue
    .line 138
    :try_start_0
    invoke-virtual {p0}, Lcn/domob/android/ads/q;->a()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
