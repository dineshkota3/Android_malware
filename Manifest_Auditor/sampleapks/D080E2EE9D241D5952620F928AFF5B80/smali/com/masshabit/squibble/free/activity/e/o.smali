.class public final Lcom/masshabit/squibble/free/activity/e/o;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Vector;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/o;->a:Ljava/util/Vector;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/e/o;->b:Ljava/lang/String;

    const/16 v0, 0x61

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/e/o;->c:Ljava/lang/String;

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/e/o;->d:Ljava/lang/String;

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/e/o;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/e/o;->f:[Ljava/lang/String;

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/e/o;->g:[Ljava/lang/String;

    iput-object v1, p0, Lcom/masshabit/squibble/free/activity/e/o;->h:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/masshabit/squibble/free/activity/e/o;->i:I

    const-string v0, "@enter@"

    const-string v1, "\n"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/e/o;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/masshabit/squibble/free/activity/e/o;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/masshabit/squibble/free/activity/e/o;->e:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ";"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [[Ljava/lang/String;

    move v2, v5

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    aget-object v2, v2, v5

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/b;->b(Ljava/lang/String;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static a()V
    .locals 9

    const-string v0, "lt"

    const-string v0, "lp"

    const-string v0, "lk"

    const-string v0, "lc"

    :try_start_0
    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ll"

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/e/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/masshabit/squibble/free/activity/e/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lc"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/masshabit/squibble/free/activity/e/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lp"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/masshabit/squibble/free/activity/e/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lt"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/masshabit/squibble/free/activity/e/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long v5, v7, v5

    const-wide/32 v7, 0x240c8400

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    invoke-static {v3, v2, v4}, Lcom/masshabit/squibble/free/activity/e/o;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/masshabit/squibble/free/activity/e/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lc"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/masshabit/squibble/free/activity/e/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/masshabit/squibble/free/activity/e/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/masshabit/squibble/free/activity/e/k;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/masshabit/squibble/free/activity/e/o;

    invoke-direct {v0, p0, p1, p2}, Lcom/masshabit/squibble/free/activity/e/o;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/masshabit/squibble/free/activity/e/o;->a:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-direct {v0}, Lcom/masshabit/squibble/free/activity/e/o;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-direct {v0}, Lcom/masshabit/squibble/free/activity/e/o;->c()V

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    sget-object v0, Lcom/masshabit/squibble/free/activity/e/o;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/squibble/free/activity/e/o;

    invoke-direct {v0, p0, p1}, Lcom/masshabit/squibble/free/activity/e/o;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 15

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v14, "@percent@"

    const-string v13, "%"

    move-object v0, p0

    :goto_0
    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ll"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/masshabit/squibble/free/activity/e/o;->a:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/masshabit/squibble/free/activity/e/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/masshabit/squibble/free/activity/e/o;->a:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/masshabit/squibble/free/activity/e/o;->d:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/masshabit/squibble/free/activity/e/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lc"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/masshabit/squibble/free/activity/e/o;->a:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/masshabit/squibble/free/activity/e/o;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/masshabit/squibble/free/activity/e/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/masshabit/squibble/free/activity/e/o;->a:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/masshabit/squibble/free/activity/e/o;->e:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/masshabit/squibble/free/activity/e/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/masshabit/squibble/free/activity/e/o;->a:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/masshabit/squibble/free/activity/e/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget v1, v0, Lcom/masshabit/squibble/free/activity/e/o;->i:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, v0, Lcom/masshabit/squibble/free/activity/e/o;->i:I

    if-ne v1, v11, :cond_2

    iget-object v1, v0, Lcom/masshabit/squibble/free/activity/e/o;->h:[Ljava/lang/String;

    aget-object v1, v1, v10

    iget-object v2, v0, Lcom/masshabit/squibble/free/activity/e/o;->h:[Ljava/lang/String;

    aget-object v2, v2, v11

    invoke-static {v1, v2}, Lcom/masshabit/squibble/free/activity/e/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    iget-object v1, v0, Lcom/masshabit/squibble/free/activity/e/o;->b:Ljava/lang/String;

    iget-object v2, v0, Lcom/masshabit/squibble/free/activity/e/o;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lcom/masshabit/squibble/free/activity/e/o;->b:Ljava/lang/String;

    iget-object v3, v0, Lcom/masshabit/squibble/free/activity/e/o;->c:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ")@("

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v2, 0x3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v0, Lcom/masshabit/squibble/free/activity/e/o;->b:Ljava/lang/String;

    invoke-virtual {v3, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/masshabit/squibble/free/activity/e/o;->i:I

    const-string v2, ",,"

    const-string v3, "@comma@"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@semicolon@"

    const-string v3, ";"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Lcom/masshabit/squibble/free/activity/e/o;->f:[Ljava/lang/String;

    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Lcom/masshabit/squibble/free/activity/e/o;->g:[Ljava/lang/String;

    array-length v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Lcom/masshabit/squibble/free/activity/e/o;->h:[Ljava/lang/String;

    move v2, v10

    :goto_2
    array-length v3, v1

    if-ge v2, v3, :cond_c

    aget-object v3, v1, v2

    const-string v4, "@comma@"

    const-string v5, ","

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "constant="

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/masshabit/squibble/free/activity/e/o;->h:[Ljava/lang/String;

    const/16 v5, 0x9

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    iget-object v3, v0, Lcom/masshabit/squibble/free/activity/e/o;->f:[Ljava/lang/String;

    aput-object v12, v3, v2

    iget-object v3, v0, Lcom/masshabit/squibble/free/activity/e/o;->g:[Ljava/lang/String;

    aput-object v12, v3, v2

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget v1, v0, Lcom/masshabit/squibble/free/activity/e/o;->i:I

    if-nez v1, :cond_4

    invoke-direct {v0}, Lcom/masshabit/squibble/free/activity/e/o;->c()V

    :cond_3
    return-void

    :cond_4
    iget v1, v0, Lcom/masshabit/squibble/free/activity/e/o;->i:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, v0, Lcom/masshabit/squibble/free/activity/e/o;->h:[Ljava/lang/String;

    aget-object v1, v1, v10

    iget-object v2, v0, Lcom/masshabit/squibble/free/activity/e/o;->h:[Ljava/lang/String;

    aget-object v2, v2, v11

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iget-object v4, v0, Lcom/masshabit/squibble/free/activity/e/o;->h:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    new-array v5, v5, [I

    move v6, v10

    :goto_4
    array-length v7, v5

    if-ge v6, v7, :cond_5

    aget-object v7, v4, v6

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_5
    iget-object v4, v0, Lcom/masshabit/squibble/free/activity/e/o;->h:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v4, v4, v6

    const-string v6, ":"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v6, v10

    move-object v7, v12

    :goto_5
    array-length v8, v5

    sub-int/2addr v8, v11

    if-ge v6, v8, :cond_7

    aget v8, v5, v6

    int-to-double v8, v8

    cmpl-double v8, v2, v8

    if-lez v8, :cond_6

    add-int/lit8 v8, v6, 0x1

    aget v8, v5, v8

    int-to-double v8, v8

    cmpg-double v8, v2, v8

    if-gez v8, :cond_6

    aget-object v7, v4, v6

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_7
    invoke-static {v1, v7}, Lcom/masshabit/squibble/free/activity/e/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    const-string v4, "%%"

    const-string v5, "@percent@"

    invoke-virtual {v3, v4, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_b

    iget-object v5, v0, Lcom/masshabit/squibble/free/activity/e/o;->h:[Ljava/lang/String;

    aput-object v12, v5, v2

    if-lez v4, :cond_9

    iget-object v5, v0, Lcom/masshabit/squibble/free/activity/e/o;->f:[Ljava/lang/String;

    invoke-virtual {v3, v10, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "@percent@"

    const-string v7, "%"

    invoke-virtual {v6, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    :cond_9
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v11

    if-ge v4, v5, :cond_a

    iget-object v5, v0, Lcom/masshabit/squibble/free/activity/e/o;->g:[Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "@percent@"

    const-string v4, "%"

    invoke-virtual {v3, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v2

    :cond_a
    iget-object v3, v0, Lcom/masshabit/squibble/free/activity/e/o;->f:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/masshabit/squibble/free/activity/e/o;->g:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_1

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    throw v0

    :cond_b
    iget-object v4, v0, Lcom/masshabit/squibble/free/activity/e/o;->f:[Ljava/lang/String;

    const-string v5, "@percent@"

    const-string v5, "%"

    invoke-virtual {v3, v14, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v4, v2

    iget-object v3, v0, Lcom/masshabit/squibble/free/activity/e/o;->g:[Ljava/lang/String;

    iget-object v4, v0, Lcom/masshabit/squibble/free/activity/e/o;->f:[Ljava/lang/String;

    aget-object v4, v4, v2

    aput-object v4, v3, v2

    goto/16 :goto_3

    :cond_c
    move v1, v10

    :goto_6
    iget-object v2, v0, Lcom/masshabit/squibble/free/activity/e/o;->h:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_e

    iget-object v2, v0, Lcom/masshabit/squibble/free/activity/e/o;->h:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_d

    move v1, v10

    :goto_7
    if-eqz v1, :cond_3

    goto/16 :goto_0

    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_e
    move v1, v11

    goto :goto_7
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/e/o;->h:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    move v1, v5

    :goto_0
    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/e/o;->f:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/e/o;->f:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/e/o;->f:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/e/o;->g:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/e/o;->f:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    const-string v2, "null"

    aput-object v2, v0, v1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/e/o;->f:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/e/o;->f:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/e/o;->f:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/e/o;->g:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    aget-object v2, v0, v1

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/e/o;->g:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_0

    aget-object v3, v0, v1

    invoke-virtual {v3, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/e/o;->g:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/e/o;->g:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1

    :cond_3
    move v1, v5

    :goto_2
    array-length v2, v0

    if-ge v1, v2, :cond_a

    aget-object v2, v0, v1

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/e/o;->h:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_5

    move v1, v5

    :goto_3
    if-eqz v1, :cond_9

    move v2, v5

    :goto_4
    array-length v3, v0

    if-ge v2, v3, :cond_6

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/e/o;->h:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/e/o;->h:[Ljava/lang/String;

    aget-object v4, v0, v2

    aput-object v4, v3, v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    :try_start_0
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/e/o;->e:Ljava/lang/String;

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@from@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "@body@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v2, v5

    :goto_5
    sget-object v3, Lcom/masshabit/squibble/free/activity/e/k;->a:[[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_7

    sget-object v3, Lcom/masshabit/squibble/free/activity/e/k;->a:[[Ljava/lang/String;

    aget-object v3, v3, v2

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sget-object v4, Lcom/masshabit/squibble/free/activity/e/k;->a:[[Ljava/lang/String;

    aget-object v4, v4, v2

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x31

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/masshabit/squibble/free/activity/e/k;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x32

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/masshabit/squibble/free/activity/e/k;->u:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2d

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2f

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x43

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x44

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x45

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x33

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v2, 0x37

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/e/o;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "params="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/masshabit/squibble/free/activity/e/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-direct {p0}, Lcom/masshabit/squibble/free/activity/e/o;->b()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_9
    :goto_6
    return v1

    :catch_0
    move-exception v0

    invoke-direct {p0}, Lcom/masshabit/squibble/free/activity/e/o;->c()V

    goto :goto_6

    :cond_a
    move v1, v4

    goto/16 :goto_3
.end method

.method private c()V
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lcom/masshabit/squibble/free/activity/e/o;->a:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ll"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/masshabit/squibble/free/activity/e/o;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/masshabit/squibble/free/activity/e/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/masshabit/squibble/free/activity/e/o;->a:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/e/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/masshabit/squibble/free/activity/e/o;->a:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/e/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/masshabit/squibble/free/activity/e/o;->a:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/e/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/masshabit/squibble/free/activity/e/o;->a:Ljava/util/Vector;

    invoke-virtual {v2, p0}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/e/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/e/o;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/e/o;->d:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/e/o;->d:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [[Ljava/lang/String;

    move v2, v5

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v2, v1, v0

    aget-object v2, v2, v5

    aget-object v3, v1, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-static {v2, v3}, Lcom/masshabit/squibble/free/activity/e/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
