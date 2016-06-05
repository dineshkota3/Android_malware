.class public LI/I;
.super Ljava/lang/Object;


# static fields
.field private static _:[B

.field private static __:[Ljava/lang/String;

.field private static ___:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v1, 0x100

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, LI/I;->__:[Ljava/lang/String;

    new-array v0, v1, [I

    sput-object v0, LI/I;->___:[I

    :try_start_0
    new-instance v0, LI/I;

    invoke-direct {v0}, LI/I;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x69

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    or-int/2addr v1, v2

    new-array v2, v1, [B

    sput-object v2, LI/I;->_:[B

    const/4 v2, 0x0

    int-to-byte v3, v1

    sget-object v4, LI/I;->_:[B

    move v7, v2

    move v2, v1

    move v1, v7

    :cond_0
    if-nez v2, :cond_3

    :cond_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {v0, v4, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    sub-int/2addr v2, v5

    add-int/2addr v5, v1

    :goto_1
    if-ge v1, v5, :cond_0

    aget-byte v6, v4, v1

    xor-int/2addr v6, v3

    int-to-byte v6, v6

    aput-byte v6, v4, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized I(I)Ljava/lang/String;
    .locals 7

    const-class v0, LI/I;

    monitor-enter v0

    and-int/lit16 v1, p0, 0xff

    :try_start_0
    sget-object v2, LI/I;->___:[I

    aget v2, v2, v1

    if-eq v2, p0, :cond_0

    sget-object v2, LI/I;->___:[I

    aput p0, v2, v1

    if-gez p0, :cond_1

    const v2, 0xffff

    and-int/2addr v2, p0

    :goto_0
    new-instance v3, Ljava/lang/String;

    sget-object v4, LI/I;->_:[B

    sget-object v5, LI/I;->_:[B

    const/4 v6, 0x1

    sub-int v6, v2, v6

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    invoke-direct {v3, v4, v2, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    sget-object v3, LI/I;->__:[Ljava/lang/String;

    aput-object v2, v3, v1

    :cond_0
    sget-object v2, LI/I;->__:[Ljava/lang/String;

    aget-object v1, v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    move v2, p0

    goto :goto_0
.end method
