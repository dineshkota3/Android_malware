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

    .line 85
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

    const-string v12, "|"

    const-string v11, "android.intent.action.VIEW"

    .line 87
    .line 88
    iget-object v0, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-byte v1, v0, Lcom/adwo/adsdk/f;->f:B

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v0, v0, Lcom/adwo/adsdk/f;->i:Lcom/adwo/adsdk/h;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v0, v0, Lcom/adwo/adsdk/f;->i:Lcom/adwo/adsdk/h;

    invoke-interface {v0}, Lcom/adwo/adsdk/h;->f()V

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v0, v0, Lcom/adwo/adsdk/f;->d:Ljava/lang/String;

    .line 97
    iget-object v2, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v2, v2, Lcom/adwo/adsdk/f;->d:Ljava/lang/String;

    const-string v3, "clk?p0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v2, v2, Lcom/adwo/adsdk/f;->d:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&p1="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 100
    :cond_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 101
    sget v0, Lcom/adwo/adsdk/i;->f:I

    sget v3, Lcom/adwo/adsdk/i;->b:I

    if-ne v0, v3, :cond_6

    .line 102
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_13

    .line 103
    const/4 v2, 0x1

    :try_start_1
    invoke-static {v2}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 104
    sget v2, Lcom/adwo/adsdk/O;->b:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 105
    sget v2, Lcom/adwo/adsdk/O;->b:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 124
    :goto_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 125
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    .line 126
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 138
    :goto_1
    if-ne v1, v10, :cond_9

    .line 140
    :try_start_2
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 175
    :goto_2
    iget-object v2, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v2, v2, Lcom/adwo/adsdk/f;->i:Lcom/adwo/adsdk/h;

    if-eqz v2, :cond_2

    .line 176
    iget-object v2, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v2, v2, Lcom/adwo/adsdk/f;->i:Lcom/adwo/adsdk/h;

    invoke-interface {v2}, Lcom/adwo/adsdk/h;->e()V

    .line 179
    :cond_2
    if-eqz v0, :cond_4

    .line 180
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 181
    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_3
    :pswitch_0
    move-object v1, v0

    move-object v0, v2

    .line 353
    :goto_4
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 355
    :try_start_3
    iget-object v2, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v2, v2, Lcom/adwo/adsdk/f;->a:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 357
    sget-object v0, Lcom/adwo/adsdk/i;->h:Ljava/util/Set;

    iget-object v2, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget v2, v2, Lcom/adwo/adsdk/f;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_e

    .line 365
    :cond_4
    :goto_5
    iget-object v0, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v0, v0, Lcom/adwo/adsdk/f;->g:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 366
    iget-object v0, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v0, v0, Lcom/adwo/adsdk/f;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/adwo/adsdk/i;->c(Ljava/lang/String;)V

    .line 368
    :cond_5
    return-void

    .line 106
    :cond_6
    :try_start_4
    sget v0, Lcom/adwo/adsdk/i;->f:I

    sget v3, Lcom/adwo/adsdk/i;->c:I

    if-eq v0, v3, :cond_7

    .line 107
    sget v0, Lcom/adwo/adsdk/i;->f:I

    sget v3, Lcom/adwo/adsdk/i;->d:I

    if-ne v0, v3, :cond_8

    .line 108
    :cond_7
    new-instance v0, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 109
    new-instance v4, Ljava/net/InetSocketAddress;

    new-instance v5, Ljava/lang/String;

    .line 110
    sget-object v6, Lcom/adwo/adsdk/O;->i:[B

    const-string v7, "utf-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v6, 0x50

    .line 109
    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 108
    invoke-direct {v0, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 111
    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_14
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_13

    .line 112
    const/4 v2, 0x1

    :try_start_5
    invoke-static {v2}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 113
    sget v2, Lcom/adwo/adsdk/O;->b:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 114
    sget v2, Lcom/adwo/adsdk/O;->b:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .line 127
    :catch_0
    move-exception v2

    .line 128
    :goto_6
    const-string v2, "Adwo SDK"

    .line 129
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Malformed click URL.  Will try to follow anyway."

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

    .line 115
    :cond_8
    :try_start_6
    sget v0, Lcom/adwo/adsdk/i;->f:I

    sget v3, Lcom/adwo/adsdk/i;->e:I

    if-ne v0, v3, :cond_1b

    .line 116
    new-instance v0, Ljava/net/Proxy;

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    .line 117
    new-instance v4, Ljava/net/InetSocketAddress;

    new-instance v5, Ljava/lang/String;

    .line 118
    sget-object v6, Lcom/adwo/adsdk/O;->h:[B

    const-string v7, "utf-8"

    invoke-direct {v5, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const/16 v6, 0x50

    .line 117
    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    .line 116
    invoke-direct {v0, v3, v4}, Ljava/net/Proxy;-><init>(Ljava/net/Proxy$Type;Ljava/net/SocketAddress;)V

    .line 119
    invoke-virtual {v2, v0}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_13

    .line 120
    const/4 v2, 0x1

    :try_start_7
    invoke-static {v2}, Ljava/net/HttpURLConnection;->setFollowRedirects(Z)V

    .line 121
    sget v2, Lcom/adwo/adsdk/O;->b:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 122
    sget v2, Lcom/adwo/adsdk/O;->b:I

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V
    :try_end_7
    .catch Ljava/net/MalformedURLException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 131
    :catch_1
    move-exception v2

    .line 134
    :goto_7
    const-string v2, "Adwo SDK"

    .line 135
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Could not determine final click destination URL.  Will try to follow anyway.  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    iget-object v4, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v4, v4, Lcom/adwo/adsdk/f;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 133
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v8

    goto/16 :goto_1

    .line 142
    :catch_2
    move-exception v0

    const-string v0, "Adwo SDK"

    .line 143
    const-string v2, "Could not get ad click url from  server."

    .line 142
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v8

    goto/16 :goto_2

    .line 147
    :cond_9
    :try_start_8
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_12
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v2

    .line 148
    if-eqz v2, :cond_1a

    .line 149
    :try_start_9
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 151
    :goto_8
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_b

    .line 154
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v5, "UTF-8"

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move-object v3, v4

    .line 160
    :goto_9
    if-eqz v2, :cond_a

    .line 161
    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 163
    :cond_a
    if-eqz v0, :cond_f

    .line 164
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    move-object v0, v3

    goto/16 :goto_2

    .line 152
    :cond_b
    :try_start_b
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_8

    .line 157
    :catch_3
    move-exception v3

    :goto_a
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

    .line 160
    if-eqz v2, :cond_c

    .line 161
    :try_start_d
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 163
    :cond_c
    if-eqz v0, :cond_19

    .line 164
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4

    move-object v0, v8

    goto/16 :goto_2

    .line 166
    :catch_4
    move-exception v0

    move-object v0, v8

    goto/16 :goto_2

    .line 158
    :catchall_0
    move-exception v1

    move-object v2, v8

    .line 160
    :goto_b
    if-eqz v2, :cond_d

    .line 161
    :try_start_e
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 163
    :cond_d
    if-eqz v0, :cond_e

    .line 164
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_11

    .line 171
    :cond_e
    :goto_c
    throw v1

    :catch_5
    move-exception v0

    :cond_f
    move-object v0, v3

    goto/16 :goto_2

    .line 184
    :pswitch_1
    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_10

    .line 185
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 186
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 188
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 190
    iget-object v2, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v2, v2, Lcom/adwo/adsdk/f;->g:Ljava/lang/String;

    if-eqz v2, :cond_18

    .line 191
    iget-object v2, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v2, v2, Lcom/adwo/adsdk/f;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/adwo/adsdk/i;->c(Ljava/lang/String;)V

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    .line 193
    goto/16 :goto_4

    .line 199
    :cond_10
    :try_start_f
    iget-object v1, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v1, v1, Lcom/adwo/adsdk/f;->a:Landroid/content/Context;

    .line 200
    const-class v3, Lcom/adwo/adsdk/AdwoAdBrowserActivity;

    .line 198
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 201
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 202
    const/high16 v1, 0x10000000

    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 203
    const-string v1, "url"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_f .. :try_end_f} :catch_6

    move-object v1, v2

    .line 238
    :goto_d
    iget-object v2, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v2, v2, Lcom/adwo/adsdk/f;->g:Ljava/lang/String;

    if-eqz v2, :cond_17

    .line 239
    iget-object v2, p0, Lcom/adwo/adsdk/g;->a:Lcom/adwo/adsdk/f;

    iget-object v2, v2, Lcom/adwo/adsdk/f;->g:Ljava/lang/String;

    invoke-static {v2}, Lcom/adwo/adsdk/i;->c(Ljava/lang/String;)V

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    .line 241
    goto/16 :goto_4

    .line 211
    :catch_6
    move-exception v1

    .line 215
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 218
    :try_start_10
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 219
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 220
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 229
    const-string v2, "CONFIGURATION ERROR:  com.adwo.adsdk.AdwoAdBrowserActivity must be registered in your AndroidManifest.xml file. "

    invoke-static {v2}, Lcom/adwo/adsdk/i;->a(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_7

    goto :goto_d

    :catch_7
    move-exception v2

    goto :goto_d

    .line 249
    :pswitch_2
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 250
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 251
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_11
    .catch Ljava/lang/NullPointerException; {:try_start_11 .. :try_end_11} :catch_8

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_4

    .line 252
    :catch_8
    move-exception v1

    .line 253
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    .line 255
    goto/16 :goto_4

    .line 258
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

    .line 259
    :try_start_13
    const-string v1, "android.intent.action.DIAL"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 260
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_10

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_4

    .line 261
    :catch_9
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    .line 262
    :goto_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v2

    .line 264
    goto/16 :goto_4

    .line 267
    :pswitch_4
    const-string v1, "|"

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 269
    const-string v1, "|"

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 270
    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 271
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 277
    :goto_f
    :try_start_14
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v4, "com.google.android.apps.maps"

    .line 279
    const-string v5, "com.google.android.maps.MapsActivity"

    .line 278
    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "http://maps.google.com/maps?q="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 283
    const-string v3, ")&z=22"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 281
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 280
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_a

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_4

    .line 274
    :cond_11
    const-string v1, ""

    move-object v3, v0

    goto :goto_f

    .line 284
    :catch_a
    move-exception v1

    .line 285
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    .line 287
    goto/16 :goto_4

    .line 290
    :pswitch_5
    :try_start_15
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_b

    .line 291
    :try_start_16
    const-string v2, "query"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_4

    .line 292
    :catch_b
    move-exception v1

    .line 293
    :goto_10
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    .line 295
    goto/16 :goto_4

    .line 299
    :pswitch_6
    const-string v1, "|"

    invoke-virtual {v0, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 300
    const-string v1, "|"

    invoke-virtual {v0, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 301
    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 302
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 305
    :goto_11
    :try_start_17
    const-string v4, "android.intent.action.SENDTO"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 306
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

    .line 307
    const-string v3, "sms_body"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_c

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_4

    .line 308
    :catch_c
    move-exception v1

    .line 309
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    .line 311
    goto/16 :goto_4

    .line 314
    :pswitch_7
    :try_start_18
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 318
    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 319
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

    .line 320
    const/4 v3, 0x0

    aget-object v3, v1, v3

    .line 321
    const/4 v4, 0x1

    aget-object v4, v1, v4

    .line 322
    const/4 v5, 0x2

    aget-object v1, v1, v5

    move-object v13, v4

    move-object v4, v1

    move-object v1, v13

    .line 324
    :goto_12
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 325
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    .line 326
    const-string v3, "android.intent.extra.EMAIL"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 327
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    const-string v1, "message/rfc882"

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_d

    move-object v1, v0

    move-object v0, v2

    goto/16 :goto_4

    .line 330
    :catch_d
    move-exception v1

    .line 331
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    move-object v0, v2

    .line 333
    goto/16 :goto_4

    .line 336
    :pswitch_8
    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const-string v1, ".wav"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 337
    :cond_12
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    invoke-static {v0}, Lcom/adwo/adsdk/O;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 340
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 343
    :cond_13
    :pswitch_9
    const-string v1, ".3gp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 344
    const-string v1, ".mpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 345
    :cond_14
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v2, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    invoke-static {v0}, Lcom/adwo/adsdk/O;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_3

    .line 358
    :catch_e
    move-exception v0

    .line 361
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

    .line 292
    :catch_f
    move-exception v2

    move-object v13, v2

    move-object v2, v1

    move-object v1, v13

    goto/16 :goto_10

    .line 261
    :catch_10
    move-exception v1

    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_e

    :catch_11
    move-exception v0

    goto/16 :goto_c

    .line 158
    :catchall_1
    move-exception v1

    goto/16 :goto_b

    .line 157
    :catch_12
    move-exception v2

    move-object v2, v8

    goto/16 :goto_a

    .line 131
    :catch_13
    move-exception v0

    move-object v0, v8

    goto/16 :goto_7

    .line 127
    :catch_14
    move-exception v0

    move-object v0, v8

    goto/16 :goto_6

    :cond_15
    move-object v1, v8

    move-object v3, v8

    move-object v4, v8

    goto/16 :goto_12

    :cond_16
    move-object v1, v8

    move-object v3, v8

    goto/16 :goto_11

    :cond_17
    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_4

    :cond_18
    move-object v13, v1

    move-object v1, v0

    move-object v0, v13

    goto/16 :goto_4

    :cond_19
    move-object v0, v8

    goto/16 :goto_2

    :cond_1a
    move-object v3, v8

    goto/16 :goto_9

    :cond_1b
    move-object v0, v8

    goto/16 :goto_0

    .line 181
    nop

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
