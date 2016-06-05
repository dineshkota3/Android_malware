.class final Lcom/adwo/adsdk/g;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/adwo/adsdk/f;


# direct methods
.method constructor <init>(Lcom/adwo/adsdk/f;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    .line 83
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 14

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v12, "android.intent.action.VIEW"

    const-string v11, "|"

    .line 85
    .line 86
    iget-object v0, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-byte v1, v0, Lcom/adwo/adsdk/f;->f:B

    .line 91
    :try_start_0
    iget-object v0, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v0, v0, Lcom/adwo/adsdk/f;->i:Lcom/adwo/adsdk/h;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v0, v0, Lcom/adwo/adsdk/f;->i:Lcom/adwo/adsdk/h;

    invoke-interface {v0}, Lcom/adwo/adsdk/h;->f()V

    .line 94
    :cond_0
    new-instance v0, Ljava/net/URL;

    iget-object v2, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v2, v2, Lcom/adwo/adsdk/f;->d:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 97
    sget v2, Lcom/adwo/adsdk/i;->f:I

    sget v3, Lcom/adwo/adsdk/i;->b:I

    if-ne v2, v3, :cond_5

    .line 98
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_13

    .line 99
    const/4 v2, 0x1

    :try_start_1
    invoke-static {v2}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 100
    sget v2, Lcom/adwo/adsdk/M;->b:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 101
    sget v2, Lcom/adwo/adsdk/M;->b:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 119
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 120
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 121
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 142
    :goto_1
    if-ne v1, v10, :cond_8

    .line 144
    :try_start_2
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 182
    :goto_2
    iget-object v2, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v2, v2, Lcom/adwo/adsdk/f;->i:Lcom/adwo/adsdk/h;

    if-eqz v2, :cond_1

    .line 183
    iget-object v2, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v2, v2, Lcom/adwo/adsdk/f;->i:Lcom/adwo/adsdk/h;

    invoke-interface {v2}, Lcom/adwo/adsdk/h;->e()V

    .line 186
    :cond_1
    if-eqz v0, :cond_3

    .line 187
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 188
    packed-switch v1, :pswitch_data_0

    :cond_2
    :goto_3
    :pswitch_0
    move-object v1, v0

    move-object v0, v2

    .line 346
    :goto_4
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 349
    :try_start_3
    iget-object v2, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v2, v2, Lcom/adwo/adsdk/f;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 351
    sget-object v0, Lcom/adwo/adsdk/i;->h:Ljava/util/Set;

    iget-object v2, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget v2, v2, Lcom/adwo/adsdk/f;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_e

    .line 362
    :cond_3
    :goto_5
    iget-object v0, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v0, v0, Lcom/adwo/adsdk/f;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 363
    iget-object v0, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v0, v0, Lcom/adwo/adsdk/f;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/adwo/adsdk/i;->c(Ljava/lang/String;)V

    .line 365
    :cond_4
    :goto_6
    return-void

    .line 102
    :cond_5
    :try_start_4
    sget v2, Lcom/adwo/adsdk/i;->f:I

    sget v3, Lcom/adwo/adsdk/i;->c:I

    if-eq v2, v3, :cond_6

    .line 103
    sget v2, Lcom/adwo/adsdk/i;->f:I

    sget v3, Lcom/adwo/adsdk/i;->d:I

    if-ne v2, v3, :cond_7

    .line 104
    :cond_6
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 105
    new-instance v4, Ljava/net/InetSocketAddress;

    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/adwo/adsdk/M;->i:[B

    const-string v7, "utf-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v6, 0x50

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 104
    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 106
    invoke-virtual {v0, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_13

    .line 107
    const/4 v2, 0x1

    :try_start_5
    invoke-static {v2}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 108
    sget v2, Lcom/adwo/adsdk/M;->b:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 109
    sget v2, Lcom/adwo/adsdk/M;->b:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 123
    :catch_0
    move-exception v2

    .line 124
    :goto_7
    const-string v2, "Adwo SDK"

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Malformed click URL.  Will try to follow anyway."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    iget-object v4, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v4, v4, Lcom/adwo/adsdk/f;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 125
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 124
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v8

    goto/16 :goto_1

    .line 110
    :cond_7
    :try_start_6
    sget v2, Lcom/adwo/adsdk/i;->f:I

    sget v3, Lcom/adwo/adsdk/i;->e:I

    if-ne v2, v3, :cond_17

    .line 111
    new-instance v2, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 112
    new-instance v4, Ljava/net/InetSocketAddress;

    new-instance v5, Ljava/lang/String;

    .line 113
    sget-object v6, Lcom/adwo/adsdk/M;->h:[B

    const-string v7, "utf-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v6, 0x50

    .line 112
    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 111
    invoke-direct {v2, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 114
    invoke-virtual {v0, v2}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_13

    .line 115
    const/4 v2, 0x1

    :try_start_7
    invoke-static {v2}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 116
    sget v2, Lcom/adwo/adsdk/M;->b:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 117
    sget v2, Lcom/adwo/adsdk/M;->b:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 127
    :catch_1
    move-exception v2

    .line 128
    :goto_8
    const-string v2, "Adwo SDK"

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not determine final click destination URL.  Will try to follow anyway.  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    iget-object v4, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v4, v4, Lcom/adwo/adsdk/f;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v8

    goto/16 :goto_1

    .line 147
    :catch_2
    move-exception v0

    const-string v0, "Adwo SDK"

    .line 148
    const-string v2, "Could not get ad click url from  server."

    .line 147
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    goto/16 :goto_2

    .line 153
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v2

    .line 154
    if-eqz v2, :cond_16

    .line 156
    :try_start_9
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 158
    :goto_9
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_a

    .line 161
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v3, v4

    .line 168
    :goto_a
    if-eqz v2, :cond_9

    .line 169
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 171
    :cond_9
    if-eqz v0, :cond_e

    .line 172
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    move-object v0, v3

    goto/16 :goto_2

    .line 159
    :cond_a
    :try_start_b
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_9

    .line 165
    :catch_3
    move-exception v3

    :goto_b
    :try_start_c
    const-string v3, "Adwo SDK"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Connection off "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 168
    if-eqz v2, :cond_b

    .line 169
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 171
    :cond_b
    if-eqz v0, :cond_15

    .line 172
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    move-object v0, v8

    goto/16 :goto_2

    .line 174
    :catch_4
    move-exception v0

    move-object v0, v8

    goto/16 :goto_2

    .line 166
    :catchall_0
    move-exception v1

    move-object v2, v8

    .line 168
    :goto_c
    if-eqz v2, :cond_c

    .line 169
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 171
    :cond_c
    if-eqz v0, :cond_d

    .line 172
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_11

    .line 178
    :cond_d
    :goto_d
    throw v1

    :catch_5
    move-exception v0

    :cond_e
    move-object v0, v3

    goto/16 :goto_2

    .line 193
    :pswitch_1
    :try_start_f
    iget-object v1, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v1, v1, Lcom/adwo/adsdk/f;->a:Landroid/content/Context;

    const-class v3, Lcom/adwo/adsdk/AdwoAdBrowserActivity;

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 194
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 196
    const-string v1, "url"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    iget-object v1, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v1, v1, Lcom/adwo/adsdk/f;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 200
    sget-object v1, Lcom/adwo/adsdk/i;->h:Ljava/util/Set;

    iget-object v2, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget v2, v2, Lcom/adwo/adsdk/f;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_f} :catch_6

    .line 227
    :goto_e
    iget-object v0, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v0, v0, Lcom/adwo/adsdk/f;->g:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 228
    iget-object v0, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v0, v0, Lcom/adwo/adsdk/f;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/adwo/adsdk/i;->c(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 204
    :catch_6
    move-exception v1

    .line 208
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 211
    :try_start_10
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 213
    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 215
    iget-object v0, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v0, v0, Lcom/adwo/adsdk/f;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 217
    sget-object v0, Lcom/adwo/adsdk/i;->h:Ljava/util/Set;

    iget-object v1, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget v1, v1, Lcom/adwo/adsdk/f;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 219
    const-string v0, "CONFIGURATION ERROR:  com.adwo.adsdk.AdwoAdBrowserActivity must be registered in your AndroidManifest.xml file. "

    invoke-static {v0}, Lcom/adwo/adsdk/i;->a(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_e

    :catch_7
    move-exception v0

    goto :goto_e

    .line 238
    :pswitch_2
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 239
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 240
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_8

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_4

    .line 241
    :catch_8
    move-exception v1

    .line 242
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    .line 244
    goto/16 :goto_4

    .line 247
    :pswitch_3
    :try_start_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "tel:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_9

    move-result-object v0

    .line 248
    :try_start_13
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 249
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_4

    .line 250
    :catch_9
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    .line 251
    :goto_f
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    .line 253
    goto/16 :goto_4

    .line 256
    :pswitch_4
    const-string v1, "|"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 258
    const-string v1, "|"

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 259
    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 260
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v13, v3

    move-object v3, v1

    move-object v1, v13

    .line 266
    :goto_10
    :try_start_14
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v4, "com.google.android.apps.maps"

    .line 268
    const-string v5, "com.google.android.maps.MapsActivity"

    .line 267
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 270
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://maps.google.com/maps?q="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 272
    const-string v3, ")&z=22"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 269
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_4

    .line 263
    :cond_f
    const-string v1, ""

    move-object v3, v1

    move-object v1, v0

    goto :goto_10

    .line 273
    :catch_a
    move-exception v1

    .line 274
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    .line 276
    goto/16 :goto_4

    .line 279
    :pswitch_5
    :try_start_15
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    .line 280
    :try_start_16
    const-string v2, "query"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_4

    .line 281
    :catch_b
    move-exception v1

    .line 282
    :goto_11
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    .line 284
    goto/16 :goto_4

    .line 288
    :pswitch_6
    const-string v1, "|"

    invoke-virtual {v0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 289
    const-string v1, "|"

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 290
    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 291
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 294
    :goto_12
    :try_start_17
    const-string v4, "android.intent.action.SENDTO"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "smsto:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 296
    const-string v3, "sms_body"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_4

    .line 297
    :catch_c
    move-exception v1

    .line 298
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    .line 300
    goto/16 :goto_4

    .line 303
    :pswitch_7
    :try_start_18
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 307
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 308
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v1, v5

    const/4 v5, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 309
    const/4 v3, 0x0

    aget-object v3, v1, v3

    .line 310
    const/4 v4, 0x1

    aget-object v4, v1, v4

    .line 311
    const/4 v5, 0x2

    aget-object v1, v1, v5

    move-object v13, v4

    move-object v4, v1

    move-object v1, v13

    .line 313
    :goto_13
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 314
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    .line 315
    const-string v3, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 316
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 317
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v1, "message/rfc882"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_4

    .line 319
    :catch_d
    move-exception v1

    .line 320
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    .line 322
    goto/16 :goto_4

    .line 325
    :pswitch_8
    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_10

    .line 326
    const-string v1, ".wav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 328
    :cond_10
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    invoke-static {v0}, Lcom/adwo/adsdk/M;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    :cond_11
    :pswitch_9
    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 335
    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 336
    const-string v1, ".mpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 338
    :cond_12
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    invoke-static {v0}, Lcom/adwo/adsdk/M;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 354
    :catch_e
    move-exception v0

    .line 357
    const-string v2, "Adwo SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not intent to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_5

    .line 281
    :catch_f
    move-exception v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_11

    .line 250
    :catch_10
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_f

    :catch_11
    move-exception v0

    goto/16 :goto_d

    .line 166
    :catchall_1
    move-exception v1

    goto/16 :goto_c

    .line 165
    :catch_12
    move-exception v2

    move-object v2, v8

    goto/16 :goto_b

    .line 127
    :catch_13
    move-exception v0

    move-object v0, v8

    goto/16 :goto_8

    .line 123
    :catch_14
    move-exception v0

    move-object v0, v8

    goto/16 :goto_7

    :cond_13
    move-object v1, v8

    move-object v3, v8

    move-object v4, v8

    goto/16 :goto_13

    :cond_14
    move-object v1, v8

    move-object v3, v8

    goto/16 :goto_12

    :cond_15
    move-object v0, v8

    goto/16 :goto_2

    :cond_16
    move-object v3, v8

    goto/16 :goto_a

    :cond_17
    move-object v0, v8

    goto/16 :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
