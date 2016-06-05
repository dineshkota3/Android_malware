.class final Lcom/madhouse/android/ads/e;
.super Ljava/lang/Object;


# static fields
.field private static _:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/madhouse/android/ads/e;->_:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final _(Landroid/content/Context;)Ljava/util/List;
    .locals 9

    const/16 v8, 0x671

    invoke-static {p0}, Lcom/madhouse/android/ads/e;->__(Landroid/content/Context;)V

    sget-object v0, Lcom/madhouse/android/ads/e;->_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->fileList()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    move-object v1, v0

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {p0}, Lcom/madhouse/android/ads/e;->____(Landroid/content/Context;)V

    :cond_2
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v8}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v8}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/madhouse/android/ads/e;->_(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v3

    sget-object v4, Lcom/madhouse/android/ads/e;->_:Ljava/util/List;

    new-instance v5, Lcom/madhouse/android/ads/ee;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v8}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    array-length v3, v3

    invoke-direct {v5, v0, v3}, Lcom/madhouse/android/ads/ee;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/madhouse/android/ads/e;->_:Ljava/util/List;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/madhouse/android/ads/ee;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/madhouse/android/ads/ee;

    invoke-static {p0}, Lcom/madhouse/android/ads/e;->_([Lcom/madhouse/android/ads/ee;)Ljava/util/List;

    move-result-object v0

    goto :goto_2
.end method

.method private static _([Lcom/madhouse/android/ads/ee;)Ljava/util/List;
    .locals 7

    const/16 v6, 0x671

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    aget-object v3, p0, v2

    iget-object v4, v3, Lcom/madhouse/android/ads/ee;->_:Ljava/lang/String;

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, v3, Lcom/madhouse/android/ads/ee;->_:Ljava/lang/String;

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected static final _(Landroid/content/Context;Ljava/lang/String;[B)V
    .locals 5

    const/16 v4, 0x671

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/madhouse/android/ads/e;->__(Landroid/content/Context;)V

    :goto_1
    sget-object v0, Lcom/madhouse/android/ads/e;->_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_2

    sget-object v0, Lcom/madhouse/android/ads/e;->_:Ljava/util/List;

    new-instance v1, Lcom/madhouse/android/ads/ee;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v4}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    array-length v3, p2

    invoke-direct {v1, v2, v3}, Lcom/madhouse/android/ads/ee;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/madhouse/android/ads/e;->___(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/madhouse/android/ads/e;->____(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v4}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/madhouse/android/ads/n;->_(Landroid/content/Context;Ljava/lang/String;[B)Z

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/madhouse/android/ads/e;->_:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/madhouse/android/ads/ee;

    iget-object v0, v0, Lcom/madhouse/android/ads/ee;->_:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private static _()[B
    .locals 5

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v0, Lcom/madhouse/android/ads/e;->_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :try_start_0
    sget-object v0, Lcom/madhouse/android/ads/e;->_:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/madhouse/android/ads/ee;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/ee;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    const/16 v0, 0x4da

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v3, 0x0

    aget-byte v3, v0, v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    move v4, v0

    :goto_0
    if-lt v4, v2, :cond_0

    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v0, Lcom/madhouse/android/ads/e;->_:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/madhouse/android/ads/ee;

    invoke-virtual {v0}, Lcom/madhouse/android/ads/ee;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method protected static final _(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x671

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/madhouse/android/ads/n;->_(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static __(Landroid/content/Context;)V
    .locals 5

    const/16 v0, 0x684

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/madhouse/android/ads/n;->_(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v1, Lcom/madhouse/android/ads/e;->_:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Ljava/util/StringTokenizer;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    const/16 v0, 0x4da

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3f5

    invoke-static {v2}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Lcom/madhouse/android/ads/ee;

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/madhouse/android/ads/ee;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/madhouse/android/ads/e;->_:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static ___(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    sget-object v0, Lcom/madhouse/android/ads/e;->_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v2, v6

    move v3, v0

    :goto_0
    if-gez v3, :cond_1

    :goto_1
    if-ltz v1, :cond_0

    move v2, v6

    :goto_2
    if-le v2, v1, :cond_3

    :cond_0
    return-void

    :cond_1
    sget-object v0, Lcom/madhouse/android/ads/e;->_:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/madhouse/android/ads/ee;

    iget v4, v0, Lcom/madhouse/android/ads/ee;->__:I

    add-int/2addr v4, v2

    const/high16 v5, 0x100000

    if-le v4, v5, :cond_2

    move v1, v3

    goto :goto_1

    :cond_2
    iget v0, v0, Lcom/madhouse/android/ads/ee;->__:I

    add-int/2addr v0, v2

    add-int/lit8 v2, v3, -0x1

    move v3, v2

    move v2, v0

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/madhouse/android/ads/e;->_:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/madhouse/android/ads/ee;

    iget-object v0, v0, Lcom/madhouse/android/ads/ee;->_:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2
.end method

.method private static ____(Landroid/content/Context;)V
    .locals 2

    const/16 v1, 0x684

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/madhouse/android/ads/e;->_()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/madhouse/android/ads/n;->_(Landroid/content/Context;Ljava/lang/String;[B)Z

    return-void
.end method
