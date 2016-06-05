.class public Lcom/energysource/szj/embeded/utils/ZipUtil;
.super Ljava/lang/Object;
.source "ZipUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .param p0, "sourceFile"    # Ljava/io/File;
    .param p1, "targetFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 66
    const/high16 v3, 0x200000

    .line 67
    .local v3, "length":I
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 68
    .local v1, "in":Ljava/io/FileInputStream;
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 69
    .local v4, "out":Ljava/io/FileOutputStream;
    new-array v0, v3, [B

    .line 71
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .line 72
    .local v2, "ins":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 73
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 74
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 75
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 77
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5, v2}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static doExtract(Ljava/io/File;Ljava/io/File;)V
    .locals 8
    .param p0, "zipFile"    # Ljava/io/File;
    .param p1, "extractDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 15
    const/4 v4, 0x0

    .line 17
    .local v4, "zipIn":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v5, v7}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 18
    .end local v4    # "zipIn":Ljava/util/zip/ZipInputStream;
    .local v5, "zipIn":Ljava/util/zip/ZipInputStream;
    const/16 v7, 0x2004

    :try_start_1
    new-array v0, v7, [B

    .line 19
    .local v0, "buf":[B
    const/4 v3, 0x0

    .local v3, "ze":Ljava/util/zip/ZipEntry;
    :goto_0
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 20
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 21
    .local v1, "f":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 22
    .local v6, "zipOut":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .local v2, "len":I
    :goto_1
    invoke-virtual {v5, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_1

    .line 23
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 29
    .end local v0    # "buf":[B
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "len":I
    .end local v3    # "ze":Ljava/util/zip/ZipEntry;
    .end local v6    # "zipOut":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v7

    move-object v4, v5

    .end local v5    # "zipIn":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "zipIn":Ljava/util/zip/ZipInputStream;
    :goto_2
    if-eqz v4, :cond_0

    .line 30
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V

    .line 31
    const/4 v4, 0x0

    :cond_0
    throw v7

    .line 25
    .end local v4    # "zipIn":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "len":I
    .restart local v3    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v5    # "zipIn":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zipOut":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 26
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 29
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "len":I
    .end local v6    # "zipOut":Ljava/io/FileOutputStream;
    :cond_2
    if-eqz v5, :cond_3

    .line 30
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    .line 31
    const/4 v4, 0x0

    .line 34
    .end local v5    # "zipIn":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "zipIn":Ljava/util/zip/ZipInputStream;
    :goto_3
    return-void

    .line 29
    .end local v0    # "buf":[B
    .end local v3    # "ze":Ljava/util/zip/ZipEntry;
    :catchall_1
    move-exception v7

    goto :goto_2

    .end local v4    # "zipIn":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v5    # "zipIn":Ljava/util/zip/ZipInputStream;
    :cond_3
    move-object v4, v5

    .end local v5    # "zipIn":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "zipIn":Ljava/util/zip/ZipInputStream;
    goto :goto_3
.end method

.method public static doExtract(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 8
    .param p0, "zipFile"    # Ljava/io/InputStream;
    .param p1, "extractDir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v4, 0x0

    .line 40
    .local v4, "zipIn":Ljava/util/zip/ZipInputStream;
    :try_start_0
    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-direct {v5, p0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    .end local v4    # "zipIn":Ljava/util/zip/ZipInputStream;
    .local v5, "zipIn":Ljava/util/zip/ZipInputStream;
    const/16 v7, 0x2004

    :try_start_1
    new-array v0, v7, [B

    .line 42
    .local v0, "buf":[B
    const/4 v3, 0x0

    .local v3, "ze":Ljava/util/zip/ZipEntry;
    :goto_0
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 43
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, p1, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 44
    .local v1, "f":Ljava/io/File;
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 45
    .local v6, "zipOut":Ljava/io/FileOutputStream;
    const/4 v2, 0x0

    .local v2, "len":I
    :goto_1
    invoke-virtual {v5, v0}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v2

    const/4 v7, -0x1

    if-eq v2, v7, :cond_1

    .line 46
    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 52
    .end local v0    # "buf":[B
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "len":I
    .end local v3    # "ze":Ljava/util/zip/ZipEntry;
    .end local v6    # "zipOut":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v7

    move-object v4, v5

    .end local v5    # "zipIn":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "zipIn":Ljava/util/zip/ZipInputStream;
    :goto_2
    if-eqz v4, :cond_0

    .line 53
    invoke-virtual {v4}, Ljava/util/zip/ZipInputStream;->close()V

    .line 54
    const/4 v4, 0x0

    :cond_0
    throw v7

    .line 48
    .end local v4    # "zipIn":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "buf":[B
    .restart local v1    # "f":Ljava/io/File;
    .restart local v2    # "len":I
    .restart local v3    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v5    # "zipIn":Ljava/util/zip/ZipInputStream;
    .restart local v6    # "zipOut":Ljava/io/FileOutputStream;
    :cond_1
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 49
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->closeEntry()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 52
    .end local v1    # "f":Ljava/io/File;
    .end local v2    # "len":I
    .end local v6    # "zipOut":Ljava/io/FileOutputStream;
    :cond_2
    if-eqz v5, :cond_3

    .line 53
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V

    .line 54
    const/4 v4, 0x0

    .line 57
    .end local v5    # "zipIn":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "zipIn":Ljava/util/zip/ZipInputStream;
    :goto_3
    return-void

    .line 52
    .end local v0    # "buf":[B
    .end local v3    # "ze":Ljava/util/zip/ZipEntry;
    :catchall_1
    move-exception v7

    goto :goto_2

    .end local v4    # "zipIn":Ljava/util/zip/ZipInputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "ze":Ljava/util/zip/ZipEntry;
    .restart local v5    # "zipIn":Ljava/util/zip/ZipInputStream;
    :cond_3
    move-object v4, v5

    .end local v5    # "zipIn":Ljava/util/zip/ZipInputStream;
    .restart local v4    # "zipIn":Ljava/util/zip/ZipInputStream;
    goto :goto_3
.end method
