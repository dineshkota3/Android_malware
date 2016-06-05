.class public final Lcom/masshabit/squibble/free/activity/e/l;
.super Ljava/lang/Thread;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/masshabit/squibble/free/activity/e/m;

.field private d:J

.field private e:Ljava/lang/String;

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/masshabit/squibble/free/activity/e/m;I)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v2, p0, Lcom/masshabit/squibble/free/activity/e/l;->a:Ljava/lang/String;

    iput-object v2, p0, Lcom/masshabit/squibble/free/activity/e/l;->b:Ljava/lang/String;

    iput-object v2, p0, Lcom/masshabit/squibble/free/activity/e/l;->c:Lcom/masshabit/squibble/free/activity/e/m;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/masshabit/squibble/free/activity/e/l;->d:J

    iput-object v2, p0, Lcom/masshabit/squibble/free/activity/e/l;->e:Ljava/lang/String;

    iput v3, p0, Lcom/masshabit/squibble/free/activity/e/l;->f:I

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/e/l;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/masshabit/squibble/free/activity/e/l;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/masshabit/squibble/free/activity/e/l;->c:Lcom/masshabit/squibble/free/activity/e/m;

    iput v3, p0, Lcom/masshabit/squibble/free/activity/e/l;->f:I

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v0, "\""

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/masshabit/squibble/free/activity/e/l;->d:J

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_0

    const-wide/16 v0, -0x2

    iput-wide v0, p0, Lcom/masshabit/squibble/free/activity/e/l;->d:J

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v1, v6

    :goto_1
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldKey(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "Content-Length"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/masshabit/squibble/free/activity/e/l;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_2
    iget-wide v0, p0, Lcom/masshabit/squibble/free/activity/e/l;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    move v0, v6

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v3, "Content-Disposition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "filename="

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_6

    add-int/lit8 v3, v3, 0x9

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x3b

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_3
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_5
    iput-object v2, p0, Lcom/masshabit/squibble/free/activity/e/l;->e:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    move v0, v5

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public final run()V
    .locals 10

    const/4 v5, 0x0

    :goto_0
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/e/l;->a:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/e/l;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/32 v0, 0x2bf20

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lcom/masshabit/squibble/free/activity/e/l;->d:J

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/e/l;->e:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/e/l;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/e/l;->a:Ljava/lang/String;

    const/16 v4, 0x2f

    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/e/l;->e:Ljava/lang/String;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/e/l;->b:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/e/l;->e:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move v4, v5

    :goto_1
    int-to-long v5, v4

    cmp-long v0, v5, v1

    if-gez v0, :cond_3

    :try_start_1
    new-instance v5, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v5, v3, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v6, v4

    invoke-virtual {v5, v6, v7}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance v0, Ljava/net/URL;

    iget-object v6, p0, Lcom/masshabit/squibble/free/activity/e/l;->a:Ljava/lang/String;

    invoke-direct {v0, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "RANGE"

    invoke-virtual {v0, v7, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 v6, 0x400

    new-array v6, v6, [B

    :goto_2
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v0, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-lez v7, :cond_2

    int-to-long v8, v4

    cmp-long v8, v8, v1

    if-gez v8, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v8, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    add-int/2addr v4, v7

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/e/l;->c:Lcom/masshabit/squibble/free/activity/e/m;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/e/l;->c:Lcom/masshabit/squibble/free/activity/e/m;

    invoke-interface {v0, v3}, Lcom/masshabit/squibble/free/activity/e/m;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_3
    return-void

    :cond_4
    move v0, v4

    :goto_4
    iget v4, p0, Lcom/masshabit/squibble/free/activity/e/l;->f:I

    if-lez v4, :cond_5

    iget v4, p0, Lcom/masshabit/squibble/free/activity/e/l;->f:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/masshabit/squibble/free/activity/e/l;->f:I

    iget v4, p0, Lcom/masshabit/squibble/free/activity/e/l;->f:I

    if-gtz v4, :cond_5

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/e/l;->c:Lcom/masshabit/squibble/free/activity/e/m;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/e/l;->c:Lcom/masshabit/squibble/free/activity/e/m;

    invoke-interface {v0}, Lcom/masshabit/squibble/free/activity/e/m;->a()V

    goto :goto_3

    :catch_1
    move-exception v0

    move v0, v4

    const-wide/32 v4, 0x2bf20

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception v4

    goto :goto_4

    :cond_5
    move v4, v0

    goto/16 :goto_1

    :cond_6
    move v4, v5

    goto/16 :goto_1
.end method
