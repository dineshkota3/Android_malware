.class public final Lngjvnpslnp/iplhmk/ydtyw;
.super Ljava/lang/Object;


# static fields
.field static idfhn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lngjvnpslnp/iplhmk/ydtyw;->idfhn:Ljava/lang/String;

    return-void
.end method

.method public static idfhn()V
    .locals 4

    const/4 v3, 0x6

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lngjvnpslnp/iplhmk/ryjssy;->ryjssy:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lngjvnpslnp/iplhmk/ryjssy;->ryjssy:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lngjvnpslnp/iplhmk/ydtyw;->idfhn:Ljava/lang/String;

    sput-boolean v1, Lngjvnpslnp/iplhmk/ryjssy;->qhedrsdgx:Z

    sget-object v0, Lngjvnpslnp/iplhmk/ydtyw;->idfhn:Ljava/lang/String;

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lngjvnpslnp/iplhmk/ydtyw;->idfhn:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lngjvnpslnp/iplhmk/ydtyw;->idfhn:Ljava/lang/String;

    sput-boolean v1, Lngjvnpslnp/iplhmk/ryjssy;->hrotlwub:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lngjvnpslnp/iplhmk/ydtyw;->idfhn:Ljava/lang/String;

    sget-boolean v0, Lngjvnpslnp/iplhmk/ryjssy;->idfhn:Z

    if-eqz v0, :cond_0

    sget v0, Lngjvnpslnp/iplhmk/ryjssy;->tcgbor:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lngjvnpslnp/iplhmk/ryjssy;->tcgbor:I

    sget-object v0, Lngjvnpslnp/iplhmk/ydtyw;->idfhn:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lngjvnpslnp/iplhmk/ydtyw;->idfhn:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    sget-object v0, Lngjvnpslnp/iplhmk/yqniqkxgpoo;->idfhn:Lngjvnpslnp/iplhmk/yqniqkxgpoo;

    invoke-static {v0}, Lngjvnpslnp/iplhmk/ltwxoiu;->idfhn(Ljava/lang/Object;)V

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lngjvnpslnp/iplhmk/ydtyw;->idfhn:Ljava/lang/String;

    return-void
.end method
