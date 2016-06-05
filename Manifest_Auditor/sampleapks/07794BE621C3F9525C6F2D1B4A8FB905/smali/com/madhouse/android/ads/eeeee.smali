.class final Lcom/madhouse/android/ads/eeeee;
.super Ljava/lang/Object;


# static fields
.field private static $:Ljava/lang/String;

.field private static $$:Ljava/lang/String;

.field private static $$$:Ljava/lang/String;

.field private static $$$$:Ljava/lang/String;

.field private static _:I

.field private static __:Z

.field private static ___:Ljava/lang/String;

.field private static ____:Ljava/lang/String;

.field private static _____:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _(Landroid/content/Context;)I
    .locals 5

    const/16 v3, 0x4da

    const/4 v4, 0x1

    const/16 v0, 0x4dc

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/madhouse/android/ads/n;->_(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v3}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, v0

    if-le v2, v3, :cond_0

    const/16 v3, 0x4da

    :try_start_0
    invoke-static {v3}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method protected static final _(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ZLjava/lang/String;)Lcom/madhouse/android/ads/__;
    .locals 7

    sget v0, Lcom/madhouse/android/ads/eeeee;->_:I

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/madhouse/android/ads/eeeee;->_(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/madhouse/android/ads/eeeee;->_:I

    invoke-static {p0}, Lcom/madhouse/android/ads/f;->___(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/madhouse/android/ads/eeeee;->$$:Ljava/lang/String;

    :cond_0
    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    sget v0, Lcom/madhouse/android/ads/eeeee;->_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    sput-object p7, Lcom/madhouse/android/ads/eeeee;->$$$:Ljava/lang/String;

    invoke-static {p0}, Lcom/madhouse/android/ads/_;->_(Landroid/content/Context;)Lcom/madhouse/android/ads/m;

    move-result-object p7

    iget v0, p7, Lcom/madhouse/android/ads/m;->_:I

    if-eqz v0, :cond_10

    iget-object v0, p7, Lcom/madhouse/android/ads/m;->__:Ljava/lang/String;

    sput-object v0, Lcom/madhouse/android/ads/eeeee;->____:Ljava/lang/String;

    iget-object p7, p7, Lcom/madhouse/android/ads/m;->___:Ljava/lang/String;

    sput-object p7, Lcom/madhouse/android/ads/eeeee;->_____:Ljava/lang/String;

    if-eqz p5, :cond_5

    sput-object p5, Lcom/madhouse/android/ads/eeeee;->$:Ljava/lang/String;

    sget-object p5, Lcom/madhouse/android/ads/eeeee;->___:Ljava/lang/String;

    if-eqz p5, :cond_1

    sget-object v1, Lcom/madhouse/android/ads/eeeee;->___:Ljava/lang/String;

    sget-object v2, Lcom/madhouse/android/ads/eeeee;->$:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/madhouse/android/ads/eeeee;->_(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/madhouse/android/ads/eeeee;->__(Ljava/lang/String;)Lcom/madhouse/android/ads/__;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 p5, 0x2

    invoke-static {p1, p5}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/madhouse/android/ads/eeeee;->___:Ljava/lang/String;

    const/16 p5, 0x2df

    invoke-static {p5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x2e3

    invoke-static {p1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/madhouse/android/ads/eee;->___(Ljava/lang/String;)V

    const/4 p1, -0x4

    sput p1, Lcom/madhouse/android/ads/eeeee;->_:I

    sget-object p1, Lcom/madhouse/android/ads/eeeee;->$:Ljava/lang/String;

    const/4 p2, -0x4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/madhouse/android/ads/eeeee;->_(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/madhouse/android/ads/eeeee;->___:Ljava/lang/String;

    const/16 p5, 0x2ff

    invoke-static {p5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p0, 0x303

    invoke-static {p0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/madhouse/android/ads/eee;->___(Ljava/lang/String;)V

    const/4 p0, -0x1

    sput p0, Lcom/madhouse/android/ads/eeeee;->_:I

    const/4 p0, 0x0

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/madhouse/android/ads/eeeee;->___:Ljava/lang/String;

    if-nez p1, :cond_4

    const/16 p0, 0x31f

    invoke-static {p0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/madhouse/android/ads/eee;->___(Ljava/lang/String;)V

    const/4 p0, -0x1

    sput p0, Lcom/madhouse/android/ads/eeeee;->_:I

    const/4 p0, 0x0

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/madhouse/android/ads/eeeee;->___:Ljava/lang/String;

    sget-object v2, Lcom/madhouse/android/ads/eeeee;->$:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/madhouse/android/ads/eeeee;->_(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/madhouse/android/ads/eeeee;->__(Ljava/lang/String;)Lcom/madhouse/android/ads/__;

    move-result-object p0

    goto :goto_0

    :cond_5
    const/4 p5, 0x1

    invoke-static {p1, p5}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p5

    const/16 p7, 0x2df

    invoke-static {p7}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p5, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_6

    const/16 p1, 0x2e3

    invoke-static {p1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/madhouse/android/ads/eee;->___(Ljava/lang/String;)V

    const/4 p1, -0x4

    sput p1, Lcom/madhouse/android/ads/eeeee;->_:I

    sget-object p1, Lcom/madhouse/android/ads/eeeee;->$:Ljava/lang/String;

    const/4 p2, -0x4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/madhouse/android/ads/eeeee;->_(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 p7, 0x2ff

    invoke-static {p7}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p5, p7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_7

    const/16 p0, 0x303

    invoke-static {p0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/madhouse/android/ads/eee;->___(Ljava/lang/String;)V

    const/4 p0, -0x1

    sput p0, Lcom/madhouse/android/ads/eeeee;->_:I

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_7
    if-nez p5, :cond_8

    const/16 p0, 0x348

    invoke-static {p0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/madhouse/android/ads/eee;->___(Ljava/lang/String;)V

    const/4 p0, -0x1

    sput p0, Lcom/madhouse/android/ads/eeeee;->_:I

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-static {p0}, Lcom/madhouse/android/ads/f;->_(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p7

    if-eqz p7, :cond_b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p0}, Lcom/madhouse/android/ads/f;->__(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p7

    const/16 v3, 0x3f5

    invoke-static {v3}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p7

    invoke-virtual {p7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p7, 0x3f7

    invoke-static {p7}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, p7, v1, v3}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p7, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x3fb

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p7}, Lcom/madhouse/android/ads/f;->_(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    :goto_1
    const/16 v1, 0x404

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {p7, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p7

    const/4 v2, 0x0

    invoke-static {v0, v1, p7, v2}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 p7, 0x407

    invoke-static {p7}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p7

    sget-object v1, Lcom/madhouse/android/ads/eeeee;->$$:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, p7, v1, v2}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance p7, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/madhouse/android/ads/eeeee;->____:Ljava/lang/String;

    sget-object v2, Lcom/madhouse/android/ads/eeeee;->_____:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p7, v0}, Ljava/lang/String;-><init>([B)V

    sget-object v0, Lcom/madhouse/android/ads/eeeee;->____:Ljava/lang/String;

    if-eqz v0, :cond_12

    invoke-static {p7}, Lcom/madhouse/android/ads/eeeee;->___(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance p7, Ljava/lang/String;

    invoke-virtual {p5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p5

    sget-object v0, Lcom/madhouse/android/ads/eeeee;->____:Ljava/lang/String;

    sget-object v1, Lcom/madhouse/android/ads/eeeee;->_____:Ljava/lang/String;

    invoke-static {p5, v0, v1}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p5

    invoke-direct {p7, p5}, Ljava/lang/String;-><init>([B)V

    move-object p5, p7

    :goto_2
    const/16 p7, 0x40a

    invoke-static {p7}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p5, p7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    invoke-virtual {p7}, Ljava/lang/String;->length()I

    move-result p7

    add-int/2addr p7, v0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p5, p7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p5

    :goto_3
    sput-object p5, Lcom/madhouse/android/ads/eeeee;->$:Ljava/lang/String;

    if-eqz p5, :cond_c

    sget-object p5, Lcom/madhouse/android/ads/eeeee;->$:Ljava/lang/String;

    const/4 p7, 0x1

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p7

    invoke-static {p0, p5, p7}, Lcom/madhouse/android/ads/eeeee;->_(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p5, 0x2

    invoke-static {p1, p5}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/madhouse/android/ads/eeeee;->___:Ljava/lang/String;

    const/16 p5, 0x2df

    invoke-static {p5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const/16 p1, 0x2e3

    invoke-static {p1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/madhouse/android/ads/eee;->___(Ljava/lang/String;)V

    const/4 p1, -0x4

    sput p1, Lcom/madhouse/android/ads/eeeee;->_:I

    sget-object p1, Lcom/madhouse/android/ads/eeeee;->$:Ljava/lang/String;

    const/4 p2, -0x4

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/madhouse/android/ads/eeeee;->_(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0x3f7

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, p7, v2}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p7

    invoke-direct {v1, p7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 p7, 0x3fb

    invoke-static {p7}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p7

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p7

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-static {p7}, Lcom/madhouse/android/ads/f;->_(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    goto/16 :goto_1

    :cond_a
    const/4 p5, 0x0

    goto :goto_3

    :cond_b
    const/4 p5, 0x0

    goto :goto_3

    :cond_c
    const/16 p0, 0x377

    invoke-static {p0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/madhouse/android/ads/eee;->___(Ljava/lang/String;)V

    const/4 p0, -0x1

    sput p0, Lcom/madhouse/android/ads/eeeee;->_:I

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_d
    sget-object p1, Lcom/madhouse/android/ads/eeeee;->___:Ljava/lang/String;

    const/16 p5, 0x2ff

    invoke-static {p5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/16 p0, 0x303

    invoke-static {p0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/madhouse/android/ads/eee;->___(Ljava/lang/String;)V

    const/4 p0, -0x1

    sput p0, Lcom/madhouse/android/ads/eeeee;->_:I

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_e
    sget-object p1, Lcom/madhouse/android/ads/eeeee;->___:Ljava/lang/String;

    if-nez p1, :cond_f

    const/16 p0, 0x31f

    invoke-static {p0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/madhouse/android/ads/eee;->___(Ljava/lang/String;)V

    const/4 p0, -0x1

    sput p0, Lcom/madhouse/android/ads/eeeee;->_:I

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_f
    sget-object v1, Lcom/madhouse/android/ads/eeeee;->___:Ljava/lang/String;

    sget-object v2, Lcom/madhouse/android/ads/eeeee;->$:Ljava/lang/String;

    move-object v0, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/madhouse/android/ads/eeeee;->_(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/madhouse/android/ads/eeeee;->__(Ljava/lang/String;)Lcom/madhouse/android/ads/__;

    move-result-object p0

    goto/16 :goto_0

    :cond_10
    const/16 p0, 0x387

    invoke-static {p0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/madhouse/android/ads/eee;->___(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_11
    const/16 p0, 0x3a1

    invoke-static {p0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/madhouse/android/ads/eee;->____(Ljava/lang/String;)V

    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_12
    move-object p5, p7

    goto/16 :goto_2
.end method

.method private static _(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x648

    const/16 v3, 0x640

    const/16 v7, 0x404

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v0, 0x633

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p3, v6}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x637

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v5}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x63c

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2, v5}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v0, 0x407

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/madhouse/android/ads/eeeee;->$$:Ljava/lang/String;

    invoke-static {v1, v0, v2, v5}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p6, :cond_7

    invoke-static {v3}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x646

    invoke-static {v2}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v5}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p0}, Lcom/madhouse/android/ads/e;->_(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_a

    move v4, v5

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lt v4, v0, :cond_8

    invoke-static {v7}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v5}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_2
    sget-object v0, Lcom/madhouse/android/ads/eeeee;->$$$:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-static {v8}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/madhouse/android/ads/eeeee;->$$$:Ljava/lang/String;

    invoke-static {v1, v0, v2, v5}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_3
    invoke-static {}, Lcom/madhouse/android/ads/AdManager;->__()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0x64e

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/madhouse/android/ads/AdManager;->__()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v5}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    invoke-static {}, Lcom/madhouse/android/ads/AdManager;->___()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/madhouse/android/ads/AdManager;->___()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x652

    invoke-static {v2}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x657

    invoke-static {v2}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/16 v2, 0x65e

    invoke-static {v2}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0, v5}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    if-lez p4, :cond_3

    const/16 v0, 0x662

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    div-int/lit16 v2, p4, 0x3e8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v5}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    sget-object v0, Lcom/madhouse/android/ads/eeeee;->$$$$:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/16 v0, 0x668

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/madhouse/android/ads/eeeee;->$$$$:Ljava/lang/String;

    invoke-static {v1, v0, v2, v5}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    sput-object v0, Lcom/madhouse/android/ads/eeeee;->$$$$:Ljava/lang/String;

    :cond_4
    invoke-static {p0}, Lcom/madhouse/android/ads/l;->_(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    const/16 v2, 0x66e

    invoke-static {v2}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0, v5}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_5
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/madhouse/android/ads/eeeee;->____:Ljava/lang/String;

    sget-object v3, Lcom/madhouse/android/ads/eeeee;->_____:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    sget-object v1, Lcom/madhouse/android/ads/eeeee;->____:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-static {v0}, Lcom/madhouse/android/ads/eeeee;->___(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/madhouse/android/ads/eeeee;->____:Ljava/lang/String;

    sget-object v3, Lcom/madhouse/android/ads/eeeee;->_____:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    :cond_6
    return-object v0

    :cond_7
    invoke-static {v3}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x28b

    invoke-static {v2}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2, v5}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_8
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eq v4, v0, :cond_9

    const/16 v0, 0x3f5

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_9
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto/16 :goto_1

    :cond_a
    invoke-static {v7}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2, v5}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_2

    :cond_b
    invoke-static {v8}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2, v5}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3
.end method

.method protected static final _(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    if-eqz p0, :cond_3

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v0}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    invoke-static {v0}, Lcom/madhouse/android/ads/n;->_(Ljava/io/InputStream;)[B

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    const/16 v1, 0x28d

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v3, 0x28d

    invoke-static {v3}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v4

    :goto_1
    const/16 v1, 0x293

    :try_start_3
    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/madhouse/android/ads/eee;->___(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_0
    :goto_2
    move-object v0, v4

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_3
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_4
    throw v0

    :catch_1
    move-exception v0

    :cond_2
    move-object v0, v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_1

    :cond_3
    move-object v0, v4

    goto :goto_0
.end method

.method private static _(Ljava/lang/String;I)Ljava/lang/String;
    .locals 10

    const/16 v9, 0x2df

    const/16 v5, 0x28d

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, -0x1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    packed-switch p1, :pswitch_data_0

    move-object v0, v7

    :goto_0
    return-object v0

    :pswitch_0
    const/16 v1, 0x4e8

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/madhouse/android/ads/eeeee;->____:Ljava/lang/String;

    sget-object v4, Lcom/madhouse/android/ads/eeeee;->_____:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    sget-object v2, Lcom/madhouse/android/ads/eeeee;->____:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-static {v1}, Lcom/madhouse/android/ads/eeeee;->___(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/madhouse/android/ads/eeeee;->____:Ljava/lang/String;

    sget-object v3, Lcom/madhouse/android/ads/eeeee;->_____:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    :goto_1
    invoke-static {v9}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_0

    const/16 v1, 0x2ff

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    :cond_0
    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v6, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v7

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x509

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/madhouse/android/ads/eeeee;->____:Ljava/lang/String;

    sget-object v4, Lcom/madhouse/android/ads/eeeee;->_____:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    sget-object v2, Lcom/madhouse/android/ads/eeeee;->____:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-static {v1}, Lcom/madhouse/android/ads/eeeee;->___(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/madhouse/android/ads/eeeee;->____:Ljava/lang/String;

    sget-object v3, Lcom/madhouse/android/ads/eeeee;->_____:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Lcom/madhouse/android/ads/eeeee;->_(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    :goto_2
    invoke-static {v9}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_2

    const/16 v1, 0x2ff

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    :cond_2
    const/16 v1, 0x52a

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_4

    const/16 v3, 0x532

    invoke-static {v3}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x534

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v6, :cond_3

    const/4 v1, 0x1

    sput-boolean v1, Lcom/madhouse/android/ads/eeeee;->__:Z

    const/16 v1, 0x537

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/madhouse/android/ads/eee;->__(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x547

    invoke-static {v3}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v6, :cond_4

    sput-boolean v8, Lcom/madhouse/android/ads/eeeee;->__:Z

    const/16 v1, 0x54b

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/madhouse/android/ads/eee;->__(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    sput-boolean v8, Lcom/madhouse/android/ads/eeeee;->__:Z

    const/16 v1, 0x54b

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/madhouse/android/ads/eee;->__(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v0, v7

    goto/16 :goto_0

    :cond_6
    move-object v0, v1

    goto/16 :goto_2

    :cond_7
    move-object v0, v1

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static _(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x4da

    invoke-static {v2}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x4dc

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/madhouse/android/ads/n;->_(Landroid/content/Context;Ljava/lang/String;[B)Z

    return-void
.end method

.method private static _(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p3, :cond_1

    const/16 v0, 0x4ce

    :try_start_0
    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x4d0

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x4d6

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x4d0

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x4d8

    :try_start_1
    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x4d0

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x4d6

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x4d0

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static _(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 10

    const/4 v8, 0x0

    const/16 v7, 0x7530

    const/16 v6, 0x451

    const/16 v5, 0x4ac

    if-eqz p0, :cond_7

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_1

    if-eqz p2, :cond_1

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v2

    const/16 v3, 0x425

    invoke-static {v3}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x42e

    invoke-static {v4}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x433

    invoke-static {v2}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const/16 v2, 0x442

    invoke-static {v2}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, p0

    :goto_1
    const/16 v1, 0x463

    :try_start_2
    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_3

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {v0, v7}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x482

    invoke-static {v2}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x49b

    invoke-static {v2}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/16 v0, 0x410

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    :goto_2
    return-object v0

    :catch_0
    move-exception v0

    const/16 v0, 0x41b

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2

    :cond_1
    :try_start_5
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    const/16 v1, 0x45e

    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p0

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2

    :catch_3
    move-exception v0

    const/16 v0, 0x467

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2

    :catch_4
    move-exception v0

    const/16 v0, 0x474

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2

    :cond_2
    :try_start_6
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    :try_start_7
    invoke-static {v0}, Lcom/madhouse/android/ads/n;->_(Ljava/io/InputStream;)[B
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_3

    :try_start_8
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_3
    move-object v0, v1

    goto :goto_2

    :catch_5
    move-exception v0

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_2

    :cond_4
    const/16 v0, 0x4b8

    :try_start_9
    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v0

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v0, v8

    :goto_3
    const/16 v1, 0x4c3

    :try_start_a
    invoke-static {v1}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v1

    if-eqz v0, :cond_5

    :try_start_b
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_5
    move-object v0, v1

    goto/16 :goto_2

    :catch_7
    move-exception v0

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_4
    if-eqz v1, :cond_6

    :try_start_c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    :cond_6
    throw v0

    :catch_8
    move-exception v0

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto/16 :goto_2

    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :cond_7
    move-object v0, v8

    goto/16 :goto_0
.end method

.method protected static final _(Ljava/lang/String;Z)[B
    .locals 10

    const/4 v6, 0x0

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-eqz p0, :cond_3

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    const/16 v4, 0x7530

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setReadTimeout(I)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v3}, Ljava/net/URLConnection;->connect()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v3}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    invoke-static {v3}, Lcom/madhouse/android/ads/n;->_(Ljava/io/InputStream;)[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v0, :cond_0

    array-length v5, v0

    mul-int/lit16 v5, v5, 0x3e8

    sub-long v1, v3, v1

    long-to-int v1, v1

    div-int v1, v5, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/madhouse/android/ads/eeeee;->$$$$:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v3

    move-object v3, v6

    :goto_1
    const/16 v4, 0x2c3

    :try_start_3
    invoke-static {v4}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/madhouse/android/ads/eee;->___(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_1
    :goto_2
    move-object v0, v6

    goto :goto_0

    :catchall_0
    move-exception v3

    move-object v4, v6

    move-wide v7, v1

    move-object v1, v3

    move-wide v2, v7

    :goto_3
    if-eqz v4, :cond_2

    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    if-eqz v6, :cond_2

    array-length v0, v0

    mul-int/lit16 v0, v0, 0x3e8

    sub-long v2, v4, v2

    long-to-int v2, v2

    div-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/madhouse/android/ads/eeeee;->$$$$:Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_2
    :goto_4
    throw v1

    :catch_1
    move-exception v1

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v4

    move-object v7, v4

    move-object v4, v3

    move-wide v8, v1

    move-wide v2, v8

    move-object v1, v7

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v4

    goto :goto_1

    :cond_3
    move-object v0, v6

    goto :goto_0
.end method

.method private static __(Ljava/lang/String;)Lcom/madhouse/android/ads/__;
    .locals 10

    const/4 v9, -0x1

    const/16 v8, 0x532

    const/4 v7, 0x0

    const/16 v6, 0x39

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_18

    new-instance v0, Lcom/madhouse/android/ads/__;

    invoke-direct {v0}, Lcom/madhouse/android/ads/__;-><init>()V

    move v1, v7

    move v2, v7

    :goto_0
    if-ne v1, v9, :cond_0

    sget-boolean v1, Lcom/madhouse/android/ads/eeeee;->__:Z

    iput-boolean v1, v0, Lcom/madhouse/android/ads/__;->$$$$:Z

    :goto_1
    return-object v0

    :cond_0
    invoke-static {v8}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    sub-int v3, v1, v2

    invoke-static {v8}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v3, v4, :cond_1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v9, :cond_1

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x55c

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    :cond_1
    :goto_2
    invoke-static {v8}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_2
    const/16 v5, 0x567

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/madhouse/android/ads/__;->_:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/16 v5, 0x572

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/16 v5, 0x57b

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto :goto_2

    :cond_5
    const/16 v5, 0x585

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/madhouse/android/ads/__;->__:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const/16 v5, 0x58c

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/madhouse/android/ads/__;->___:Ljava/lang/String;

    goto/16 :goto_2

    :cond_7
    const/16 v5, 0x596

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/madhouse/android/ads/__;->____:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    const/16 v5, 0x59e

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/madhouse/android/ads/__;->_____:Ljava/lang/String;

    goto/16 :goto_2

    :cond_9
    const/16 v5, 0x5a7

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/madhouse/android/ads/__;->$:Ljava/lang/String;

    goto/16 :goto_2

    :cond_a
    const/16 v5, 0x5ae

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto/16 :goto_2

    :cond_b
    const/16 v5, 0x5b7

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto/16 :goto_2

    :cond_c
    const/16 v5, 0x5c1

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto/16 :goto_2

    :cond_d
    const/16 v5, 0x5c6

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/madhouse/android/ads/__;->$$:Ljava/lang/String;

    goto/16 :goto_2

    :cond_e
    const/16 v5, 0x5cf

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/madhouse/android/ads/__;->$$$:Ljava/lang/String;

    goto/16 :goto_2

    :cond_f
    const/16 v5, 0x5d6

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto/16 :goto_2

    :cond_10
    const/16 v5, 0x5de

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto/16 :goto_2

    :cond_11
    const/16 v5, 0x5e6

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto/16 :goto_2

    :cond_12
    const/16 v5, 0x5ee

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto/16 :goto_2

    :cond_13
    const/16 v5, 0x5f6

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto/16 :goto_2

    :cond_14
    const/16 v5, 0x5fd

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto/16 :goto_2

    :cond_15
    const/16 v5, 0x604

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto/16 :goto_2

    :cond_16
    const/16 v5, 0x60c

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto/16 :goto_2

    :cond_17
    const/16 v5, 0x614

    invoke-static {v5}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v6}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    goto/16 :goto_2

    :cond_18
    const/16 v0, 0x61b

    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/madhouse/android/ads/eee;->___(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method private static ___(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0x410

    :try_start_0
    invoke-static {v0}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v2

    goto :goto_0
.end method
