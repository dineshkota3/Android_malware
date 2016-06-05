.class public final Lngjvnpslnp/iplhmk/esqyb;
.super Ljava/lang/Object;


# static fields
.field static idfhn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    return-void
.end method

.method public static idfhn(Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x6

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "oP/Pk9K1<kq(zKlv"

    invoke-static {v0}, Lidfhn/idfhn;->idfhn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    const-string v2, "R1m("

    invoke-static {v2}, Lidfhn/idfhn;->idfhn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    const-string v2, "(<(Y(gK>K"

    invoke-static {v2}, Lidfhn/idfhn;->idfhn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    sget-object v0, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    move v2, v1

    :goto_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v2, v0, :cond_0

    :goto_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v1, v0, :cond_2

    :goto_2
    return-void

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    invoke-virtual {v4, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lngjvnpslnp/iplhmk/nossruuc;

    sget-object v5, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    sget-object v5, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v5, Lngjvnpslnp/iplhmk/ryjssy;->qhedrsdgx:Ljava/lang/String;

    iget-object v6, v0, Lngjvnpslnp/iplhmk/nossruuc;->hrotlwub:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    sput-object v0, Lngjvnpslnp/iplhmk/ryjssy;->idfhn:Lngjvnpslnp/iplhmk/nossruuc;

    sget-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    iget-object v1, v0, Lngjvnpslnp/iplhmk/nossruuc;->idfhn:Ljava/lang/Object;

    sput-object v1, Lngjvnpslnp/iplhmk/ryjssy;->idfhn:Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v1, v0, Lngjvnpslnp/iplhmk/nossruuc;->ryjssy:I

    sput v1, Lngjvnpslnp/iplhmk/ryjssy;->idfhn:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    iget v1, v0, Lngjvnpslnp/iplhmk/nossruuc;->fluhbfw:I

    sput v1, Lngjvnpslnp/iplhmk/ryjssy;->qhedrsdgx:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-boolean v1, v0, Lngjvnpslnp/iplhmk/nossruuc;->qhedrsdgx:Z

    sput-boolean v1, Lngjvnpslnp/iplhmk/ryjssy;->idfhn:Z

    sget-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    iget v1, v0, Lngjvnpslnp/iplhmk/nossruuc;->hrotlwub:I

    sput v1, Lngjvnpslnp/iplhmk/ryjssy;->hrotlwub:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget v1, v0, Lngjvnpslnp/iplhmk/nossruuc;->yqylsmjl:I

    sput v1, Lngjvnpslnp/iplhmk/ryjssy;->usdwfe:I

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    iget v0, v0, Lngjvnpslnp/iplhmk/nossruuc;->usdwfe:I

    sput v0, Lngjvnpslnp/iplhmk/ryjssy;->yqylsmjl:I

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    goto/16 :goto_2

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v2

    invoke-virtual {v4, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lngjvnpslnp/iplhmk/nossruuc;

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "4"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v2, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    sget-object v2, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "3"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v2, v0, Lngjvnpslnp/iplhmk/nossruuc;->hrotlwub:Ljava/lang/String;

    const-string v5, "hhh"

    invoke-static {v5}, Lidfhn/idfhn;->idfhn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sput-object v0, Lngjvnpslnp/iplhmk/ryjssy;->idfhn:Lngjvnpslnp/iplhmk/nossruuc;

    sget-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    iget-object v1, v0, Lngjvnpslnp/iplhmk/nossruuc;->idfhn:Ljava/lang/Object;

    sput-object v1, Lngjvnpslnp/iplhmk/ryjssy;->idfhn:Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    iget v1, v0, Lngjvnpslnp/iplhmk/nossruuc;->ryjssy:I

    sput v1, Lngjvnpslnp/iplhmk/ryjssy;->idfhn:I

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    iget v1, v0, Lngjvnpslnp/iplhmk/nossruuc;->fluhbfw:I

    sput v1, Lngjvnpslnp/iplhmk/ryjssy;->qhedrsdgx:I

    sget-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    sget-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    iget-boolean v1, v0, Lngjvnpslnp/iplhmk/nossruuc;->qhedrsdgx:Z

    sput-boolean v1, Lngjvnpslnp/iplhmk/ryjssy;->idfhn:Z

    sget-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    iget v1, v0, Lngjvnpslnp/iplhmk/nossruuc;->hrotlwub:I

    sput v1, Lngjvnpslnp/iplhmk/ryjssy;->hrotlwub:I

    sget-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    iget v1, v0, Lngjvnpslnp/iplhmk/nossruuc;->yqylsmjl:I

    sput v1, Lngjvnpslnp/iplhmk/ryjssy;->usdwfe:I

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v1, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    iget v0, v0, Lngjvnpslnp/iplhmk/nossruuc;->usdwfe:I

    sput v0, Lngjvnpslnp/iplhmk/ryjssy;->yqylsmjl:I

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "5"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lngjvnpslnp/iplhmk/esqyb;->idfhn:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_1
.end method
