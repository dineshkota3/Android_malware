.class public final Lngjvnpslnp/iplhmk/hbhut;
.super Ljava/lang/Object;


# static fields
.field static idfhn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lngjvnpslnp/iplhmk/hbhut;->idfhn:Ljava/lang/String;

    return-void
.end method

.method public static idfhn()V
    .locals 13

    const/16 v12, 0x9

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x6

    const/4 v8, 0x0

    sget v0, Lngjvnpslnp/iplhmk/ryjssy;->yqylsmjl:I

    if-lez v0, :cond_3

    sget-object v0, Lngjvnpslnp/iplhmk/yqniqkxgpoo;->idfhn:Lngjvnpslnp/iplhmk/nmycxbb;

    if-eqz v0, :cond_0

    sget-object v0, Lngjvnpslnp/iplhmk/yqniqkxgpoo;->idfhn:Lngjvnpslnp/iplhmk/yqniqkxgpoo;

    sget-object v1, Lngjvnpslnp/iplhmk/yqniqkxgpoo;->idfhn:Lngjvnpslnp/iplhmk/nmycxbb;

    invoke-virtual {v0, v1}, Lngjvnpslnp/iplhmk/yqniqkxgpoo;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lngjvnpslnp/iplhmk/yqniqkxgpoo;->idfhn:Lngjvnpslnp/iplhmk/nmycxbb;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lngjvnpslnp/iplhmk/hbhut;->idfhn:Ljava/lang/String;

    :cond_0
    sget-object v0, Lngjvnpslnp/iplhmk/ryjssy;->idfhn:Lngjvnpslnp/iplhmk/nossruuc;

    iget-object v0, v0, Lngjvnpslnp/iplhmk/nossruuc;->idfhn:Lngjvnpslnp/iplhmk/fluhbfw;

    if-eqz v0, :cond_3

    sget-object v0, Lngjvnpslnp/iplhmk/ryjssy;->idfhn:Lngjvnpslnp/iplhmk/nossruuc;

    iget v0, v0, Lngjvnpslnp/iplhmk/nossruuc;->qhedrsdgx:I

    sget v1, Lngjvnpslnp/iplhmk/ryjssy;->ryjssy:I

    if-ne v0, v1, :cond_1

    sget-object v0, Lngjvnpslnp/iplhmk/ryjssy;->idfhn:Lngjvnpslnp/iplhmk/nossruuc;

    iget-boolean v0, v0, Lngjvnpslnp/iplhmk/nossruuc;->idfhn:Z

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lngjvnpslnp/iplhmk/ryjssy;->idfhn:Lngjvnpslnp/iplhmk/nossruuc;

    iget-boolean v0, v0, Lngjvnpslnp/iplhmk/nossruuc;->idfhn:Z

    if-nez v0, :cond_3

    sget-object v0, Lngjvnpslnp/iplhmk/ryjssy;->idfhn:Lngjvnpslnp/iplhmk/nossruuc;

    iget v0, v0, Lngjvnpslnp/iplhmk/nossruuc;->qhedrsdgx:I

    sget v1, Lngjvnpslnp/iplhmk/ryjssy;->ryjssy:I

    if-gt v0, v1, :cond_3

    :cond_2
    const-string v0, "uKPvK1gG K1Y(v Kl R(g0 8:x>y ubu"

    invoke-static {v0}, Lidfhn/idfhn;->idfhn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lngjvnpslnp/iplhmk/kedxraow;->idfhn(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lngjvnpslnp/iplhmk/hbhut;->idfhn:Ljava/lang/String;

    :try_start_0
    const-string v0, "oP/Pk<PgGkI,v(P0"

    invoke-static {v0}, Lidfhn/idfhn;->idfhn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lngjvnpslnp/iplhmk/hbhut;->idfhn:Ljava/lang/String;

    const-string v1, "R<((W"

    invoke-static {v1}, Lidfhn/idfhn;->idfhn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lngjvnpslnp/iplhmk/hbhut;->idfhn:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lngjvnpslnp/iplhmk/hbhut;->idfhn:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lngjvnpslnp/iplhmk/ryjssy;->idfhn:Lngjvnpslnp/iplhmk/nossruuc;

    iget-wide v4, v4, Lngjvnpslnp/iplhmk/nossruuc;->idfhn:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lngjvnpslnp/iplhmk/hbhut;->idfhn:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lngjvnpslnp/iplhmk/hbhut;->idfhn:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lngjvnpslnp/iplhmk/hbhut;->idfhn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-string v0, "u(g01gG S1gP< ubu"

    invoke-static {v0}, Lidfhn/idfhn;->idfhn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lngjvnpslnp/iplhmk/kedxraow;->idfhn(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lngjvnpslnp/iplhmk/ryjssy;->idfhn:Lngjvnpslnp/iplhmk/nossruuc;

    iget-object v0, v0, Lngjvnpslnp/iplhmk/nossruuc;->idfhn:Lngjvnpslnp/iplhmk/fluhbfw;

    iget-object v0, v0, Lngjvnpslnp/iplhmk/fluhbfw;->qhedrsdgx:Ljava/lang/String;

    sget-object v1, Lngjvnpslnp/iplhmk/ryjssy;->idfhn:Lngjvnpslnp/iplhmk/nossruuc;

    iget-object v1, v1, Lngjvnpslnp/iplhmk/nossruuc;->idfhn:Lngjvnpslnp/iplhmk/fluhbfw;

    iget-object v1, v1, Lngjvnpslnp/iplhmk/fluhbfw;->hrotlwub:Ljava/lang/String;

    invoke-static {v0, v1}, Lngjvnpslnp/iplhmk/jcdehfydu;->idfhn(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lngjvnpslnp/iplhmk/hbhut;->idfhn:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lngjvnpslnp/iplhmk/hbhut;->idfhn:Ljava/lang/String;

    :cond_3
    sput-boolean v8, Lngjvnpslnp/iplhmk/ryjssy;->yqylsmjl:Z

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lngjvnpslnp/iplhmk/hbhut;->idfhn:Ljava/lang/String;

    const-string v0, "uKlW R(g01gG"

    invoke-static {v0}, Lidfhn/idfhn;->idfhn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lngjvnpslnp/iplhmk/kedxraow;->idfhn(Ljava/lang/String;)V

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lngjvnpslnp/iplhmk/hbhut;->idfhn:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "8"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lngjvnpslnp/iplhmk/yqniqkxgpoo;->idfhn:Lngjvnpslnp/iplhmk/yqniqkxgpoo;

    invoke-static {v0}, Lngjvnpslnp/iplhmk/gsnuxoavi;->idfhn(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lngjvnpslnp/iplhmk/qhedrsdgx;->idfhn()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lngjvnpslnp/iplhmk/kedxraow;->idfhn(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lngjvnpslnp/iplhmk/hbhut;->idfhn:Ljava/lang/String;

    sget-object v0, Lngjvnpslnp/iplhmk/hbhut;->idfhn:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lngjvnpslnp/iplhmk/hbhut;->idfhn:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lngjvnpslnp/iplhmk/hbhut;->idfhn:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto/16 :goto_0
.end method
