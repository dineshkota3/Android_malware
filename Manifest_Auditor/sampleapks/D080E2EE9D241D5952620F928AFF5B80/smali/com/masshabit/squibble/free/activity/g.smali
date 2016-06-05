.class public Lcom/masshabit/squibble/free/activity/g;
.super Ljava/lang/Thread;


# static fields
.field private static a:I

.field private static i:I

.field private static j:Ljava/lang/String;

.field private static k:I

.field private static l:Ljava/util/Date;

.field private static m:Ljava/util/Date;

.field private static n:J

.field private static o:J


# instance fields
.field private b:I

.field private c:Lcom/masshabit/squibble/free/activity/e;

.field private d:Z

.field private e:Lcom/masshabit/squibble/free/activity/d/c;

.field private f:Lorg/apache/http/util/ByteArrayBuffer;

.field private g:Lcom/masshabit/squibble/free/activity/Pushable;

.field private h:Landroid/app/NotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const v0, 0x493e0

    sput v0, Lcom/masshabit/squibble/free/activity/g;->a:I

    sput v2, Lcom/masshabit/squibble/free/activity/g;->i:I

    sput-object v1, Lcom/masshabit/squibble/free/activity/g;->j:Ljava/lang/String;

    sput v2, Lcom/masshabit/squibble/free/activity/g;->k:I

    sput-object v1, Lcom/masshabit/squibble/free/activity/g;->l:Ljava/util/Date;

    sput-object v1, Lcom/masshabit/squibble/free/activity/g;->m:Ljava/util/Date;

    sput-wide v3, Lcom/masshabit/squibble/free/activity/g;->n:J

    sput-wide v3, Lcom/masshabit/squibble/free/activity/g;->o:J

    return-void
.end method

.method public constructor <init>(Lcom/masshabit/squibble/free/activity/e;)V
    .locals 13

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/masshabit/squibble/free/activity/g;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->c:Lcom/masshabit/squibble/free/activity/e;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/masshabit/squibble/free/activity/g;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->e:Lcom/masshabit/squibble/free/activity/d/c;

    new-instance v0, Lorg/apache/http/util/ByteArrayBuffer;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->f:Lorg/apache/http/util/ByteArrayBuffer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->g:Lcom/masshabit/squibble/free/activity/Pushable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->h:Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/g;->c:Lcom/masshabit/squibble/free/activity/e;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Lcom/masshabit/squibble/free/activity/e;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/g;->h:Landroid/app/NotificationManager;

    new-instance v0, Lcom/masshabit/squibble/free/activity/d/c;

    const/4 v1, 0x5

    new-array v1, v1, [Lcom/masshabit/squibble/free/activity/d/e;

    const/4 v2, 0x0

    new-instance v3, Lcom/masshabit/squibble/free/activity/d/e;

    sget-object v4, Lcom/masshabit/squibble/free/activity/o;->a:Lcom/masshabit/squibble/free/activity/o;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/masshabit/squibble/free/activity/d/b;

    const/4 v8, 0x0

    new-instance v9, Lcom/masshabit/squibble/free/activity/d/b;

    new-instance v10, Lcom/masshabit/squibble/free/activity/d/a;

    sget-object v11, Lcom/masshabit/squibble/free/activity/n;->a:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {v10, v11}, Lcom/masshabit/squibble/free/activity/d/a;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lcom/masshabit/squibble/free/activity/d/d;

    const-string v12, "processSTARTAction"

    invoke-direct {v11, v12, p0}, Lcom/masshabit/squibble/free/activity/d/d;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v9, v10, v11}, Lcom/masshabit/squibble/free/activity/d/b;-><init>(Lcom/masshabit/squibble/free/activity/d/a;Lcom/masshabit/squibble/free/activity/d/d;)V

    aput-object v9, v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/masshabit/squibble/free/activity/d/e;-><init>(Ljava/lang/Object;Lcom/masshabit/squibble/free/activity/d/d;Lcom/masshabit/squibble/free/activity/d/d;[Lcom/masshabit/squibble/free/activity/d/b;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lcom/masshabit/squibble/free/activity/d/e;

    sget-object v4, Lcom/masshabit/squibble/free/activity/o;->b:Lcom/masshabit/squibble/free/activity/o;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    new-array v7, v7, [Lcom/masshabit/squibble/free/activity/d/b;

    const/4 v8, 0x0

    new-instance v9, Lcom/masshabit/squibble/free/activity/d/b;

    new-instance v10, Lcom/masshabit/squibble/free/activity/d/a;

    sget-object v11, Lcom/masshabit/squibble/free/activity/n;->b:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {v10, v11}, Lcom/masshabit/squibble/free/activity/d/a;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lcom/masshabit/squibble/free/activity/d/d;

    const-string v12, "processIDLEAction"

    invoke-direct {v11, v12, p0}, Lcom/masshabit/squibble/free/activity/d/d;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v9, v10, v11}, Lcom/masshabit/squibble/free/activity/d/b;-><init>(Lcom/masshabit/squibble/free/activity/d/a;Lcom/masshabit/squibble/free/activity/d/d;)V

    aput-object v9, v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/masshabit/squibble/free/activity/d/e;-><init>(Ljava/lang/Object;Lcom/masshabit/squibble/free/activity/d/d;Lcom/masshabit/squibble/free/activity/d/d;[Lcom/masshabit/squibble/free/activity/d/b;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lcom/masshabit/squibble/free/activity/d/e;

    sget-object v4, Lcom/masshabit/squibble/free/activity/o;->c:Lcom/masshabit/squibble/free/activity/o;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/masshabit/squibble/free/activity/d/b;

    const/4 v8, 0x0

    new-instance v9, Lcom/masshabit/squibble/free/activity/d/b;

    new-instance v10, Lcom/masshabit/squibble/free/activity/d/a;

    sget-object v11, Lcom/masshabit/squibble/free/activity/n;->c:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {v10, v11}, Lcom/masshabit/squibble/free/activity/d/a;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lcom/masshabit/squibble/free/activity/d/d;

    const-string v12, "processDOWNLOAD_OK_Action"

    invoke-direct {v11, v12, p0}, Lcom/masshabit/squibble/free/activity/d/d;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v9, v10, v11}, Lcom/masshabit/squibble/free/activity/d/b;-><init>(Lcom/masshabit/squibble/free/activity/d/a;Lcom/masshabit/squibble/free/activity/d/d;)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/masshabit/squibble/free/activity/d/b;

    new-instance v10, Lcom/masshabit/squibble/free/activity/d/a;

    sget-object v11, Lcom/masshabit/squibble/free/activity/n;->d:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {v10, v11}, Lcom/masshabit/squibble/free/activity/d/a;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lcom/masshabit/squibble/free/activity/d/d;

    const-string v12, "processDOWNLOAD_FAILUE_Action"

    invoke-direct {v11, v12, p0}, Lcom/masshabit/squibble/free/activity/d/d;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v9, v10, v11}, Lcom/masshabit/squibble/free/activity/d/b;-><init>(Lcom/masshabit/squibble/free/activity/d/a;Lcom/masshabit/squibble/free/activity/d/d;)V

    aput-object v9, v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/masshabit/squibble/free/activity/d/e;-><init>(Ljava/lang/Object;Lcom/masshabit/squibble/free/activity/d/d;Lcom/masshabit/squibble/free/activity/d/d;[Lcom/masshabit/squibble/free/activity/d/b;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lcom/masshabit/squibble/free/activity/d/e;

    sget-object v4, Lcom/masshabit/squibble/free/activity/o;->d:Lcom/masshabit/squibble/free/activity/o;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/masshabit/squibble/free/activity/d/b;

    const/4 v8, 0x0

    new-instance v9, Lcom/masshabit/squibble/free/activity/d/b;

    new-instance v10, Lcom/masshabit/squibble/free/activity/d/a;

    sget-object v11, Lcom/masshabit/squibble/free/activity/n;->e:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {v10, v11}, Lcom/masshabit/squibble/free/activity/d/a;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lcom/masshabit/squibble/free/activity/d/d;

    const-string v12, "processPARSE_OK_Action"

    invoke-direct {v11, v12, p0}, Lcom/masshabit/squibble/free/activity/d/d;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v9, v10, v11}, Lcom/masshabit/squibble/free/activity/d/b;-><init>(Lcom/masshabit/squibble/free/activity/d/a;Lcom/masshabit/squibble/free/activity/d/d;)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/masshabit/squibble/free/activity/d/b;

    new-instance v10, Lcom/masshabit/squibble/free/activity/d/a;

    sget-object v11, Lcom/masshabit/squibble/free/activity/n;->f:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {v10, v11}, Lcom/masshabit/squibble/free/activity/d/a;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lcom/masshabit/squibble/free/activity/d/d;

    const-string v12, "processPARSE_FAILUE_Action"

    invoke-direct {v11, v12, p0}, Lcom/masshabit/squibble/free/activity/d/d;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v9, v10, v11}, Lcom/masshabit/squibble/free/activity/d/b;-><init>(Lcom/masshabit/squibble/free/activity/d/a;Lcom/masshabit/squibble/free/activity/d/d;)V

    aput-object v9, v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/masshabit/squibble/free/activity/d/e;-><init>(Ljava/lang/Object;Lcom/masshabit/squibble/free/activity/d/d;Lcom/masshabit/squibble/free/activity/d/d;[Lcom/masshabit/squibble/free/activity/d/b;)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Lcom/masshabit/squibble/free/activity/d/e;

    sget-object v4, Lcom/masshabit/squibble/free/activity/o;->e:Lcom/masshabit/squibble/free/activity/o;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    new-array v7, v7, [Lcom/masshabit/squibble/free/activity/d/b;

    const/4 v8, 0x0

    new-instance v9, Lcom/masshabit/squibble/free/activity/d/b;

    new-instance v10, Lcom/masshabit/squibble/free/activity/d/a;

    sget-object v11, Lcom/masshabit/squibble/free/activity/n;->g:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {v10, v11}, Lcom/masshabit/squibble/free/activity/d/a;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lcom/masshabit/squibble/free/activity/d/d;

    const-string v12, "processTRANSACT_OK_Action"

    invoke-direct {v11, v12, p0}, Lcom/masshabit/squibble/free/activity/d/d;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v9, v10, v11}, Lcom/masshabit/squibble/free/activity/d/b;-><init>(Lcom/masshabit/squibble/free/activity/d/a;Lcom/masshabit/squibble/free/activity/d/d;)V

    aput-object v9, v7, v8

    const/4 v8, 0x1

    new-instance v9, Lcom/masshabit/squibble/free/activity/d/b;

    new-instance v10, Lcom/masshabit/squibble/free/activity/d/a;

    sget-object v11, Lcom/masshabit/squibble/free/activity/n;->h:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {v10, v11}, Lcom/masshabit/squibble/free/activity/d/a;-><init>(Ljava/lang/Object;)V

    new-instance v11, Lcom/masshabit/squibble/free/activity/d/d;

    const-string v12, "processTRANSACT_FAILUE_Action"

    invoke-direct {v11, v12, p0}, Lcom/masshabit/squibble/free/activity/d/d;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {v9, v10, v11}, Lcom/masshabit/squibble/free/activity/d/b;-><init>(Lcom/masshabit/squibble/free/activity/d/a;Lcom/masshabit/squibble/free/activity/d/d;)V

    aput-object v9, v7, v8

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/masshabit/squibble/free/activity/d/e;-><init>(Ljava/lang/Object;Lcom/masshabit/squibble/free/activity/d/d;Lcom/masshabit/squibble/free/activity/d/d;[Lcom/masshabit/squibble/free/activity/d/b;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/masshabit/squibble/free/activity/d/c;-><init>([Lcom/masshabit/squibble/free/activity/d/e;)V

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->e:Lcom/masshabit/squibble/free/activity/d/c;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/masshabit/squibble/free/activity/g;->n:J

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/masshabit/squibble/free/activity/g;->o:J

    :try_start_0
    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SKIP_START_TIME"

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/e/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/masshabit/squibble/free/activity/g;->n:J

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SKIP_TIME"

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/e/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/masshabit/squibble/free/activity/g;->o:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "POOL_TIME_EVERY_ONCE"

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/e/k;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/masshabit/squibble/free/activity/g;->a:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sget v0, Lcom/masshabit/squibble/free/activity/g;->a:I

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e/d;->a(I)V

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1f40

    sput v0, Lcom/masshabit/squibble/free/activity/g;->a:I

    sget v0, Lcom/masshabit/squibble/free/activity/g;->a:I

    iput v0, p0, Lcom/masshabit/squibble/free/activity/g;->b:I

    :cond_0
    sget-object v0, Lcom/masshabit/squibble/free/activity/n;->a:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/n;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public static a(I)V
    .locals 4

    sput p0, Lcom/masshabit/squibble/free/activity/g;->a:I

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "POOL_TIME_EVERY_ONCE"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/masshabit/squibble/free/activity/g;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/masshabit/squibble/free/activity/e/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static a(J)V
    .locals 6

    const-string v5, ""

    const-wide/16 v0, 0x3c

    mul-long/2addr v0, p0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/masshabit/squibble/free/activity/g;->o:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/masshabit/squibble/free/activity/g;->n:J

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SKIP_START_TIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/masshabit/squibble/free/activity/g;->n:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/masshabit/squibble/free/activity/e/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SKIP_TIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/masshabit/squibble/free/activity/g;->o:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/masshabit/squibble/free/activity/e/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/masshabit/squibble/free/activity/c;)V
    .locals 5

    new-instance v0, Landroid/app/Notification;

    invoke-virtual {p1}, Lcom/masshabit/squibble/free/activity/c;->e()I

    move-result v1

    sget-object v2, Lcom/masshabit/squibble/free/activity/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/masshabit/squibble/free/activity/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/4 v1, 0x0

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e;->g()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/q;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    :cond_0
    :goto_1
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/masshabit/squibble/free/activity/g;->c:Lcom/masshabit/squibble/free/activity/e;

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1}, Lcom/masshabit/squibble/free/activity/c;->d()Lcom/masshabit/squibble/free/activity/a/Abstract;

    move-result-object v1

    instance-of v1, v1, Lcom/masshabit/squibble/free/activity/a/r;

    if-eqz v1, :cond_1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    :goto_2
    invoke-static {p1}, Lcom/masshabit/squibble/free/activity/e/q;->a(Lcom/masshabit/squibble/free/activity/Pushable;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "ACTIVITY_PARAM_KEY"

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/g;->c:Lcom/masshabit/squibble/free/activity/e;

    invoke-virtual {p1}, Lcom/masshabit/squibble/free/activity/c;->i()I

    move-result v3

    const/high16 v4, 0x8000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/g;->c:Lcom/masshabit/squibble/free/activity/e;

    sget-object v3, Lcom/masshabit/squibble/free/activity/c;->b:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/masshabit/squibble/free/activity/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/masshabit/squibble/free/activity/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v4}, Lcom/masshabit/squibble/free/activity/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v1, 0x1

    iput v1, v0, Landroid/app/Notification;->defaults:I

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/g;->h:Landroid/app/NotificationManager;

    invoke-virtual {p1}, Lcom/masshabit/squibble/free/activity/c;->i()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v3

    goto/16 :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_2
.end method

.method static synthetic a(Lcom/masshabit/squibble/free/activity/g;Lcom/masshabit/squibble/free/activity/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/c;)V

    return-void
.end method

.method private a(Lcom/masshabit/squibble/free/activity/n;)V
    .locals 2

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->e:Lcom/masshabit/squibble/free/activity/d/c;

    new-instance v1, Lcom/masshabit/squibble/free/activity/d/a;

    invoke-direct {v1, p1}, Lcom/masshabit/squibble/free/activity/d/a;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/masshabit/squibble/free/activity/d/c;->a(Lcom/masshabit/squibble/free/activity/d/a;)Z

    return-void
.end method

.method private a(Lcom/masshabit/squibble/free/activity/o;)V
    .locals 4

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->e:Lcom/masshabit/squibble/free/activity/d/c;

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/d/c;->b()[Lcom/masshabit/squibble/free/activity/d/e;

    move-result-object v0

    check-cast v0, [Lcom/masshabit/squibble/free/activity/d/e;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_1

    aget-object v1, v0, v2

    invoke-virtual {v1}, Lcom/masshabit/squibble/free/activity/d/e;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/squibble/free/activity/o;

    invoke-virtual {v1, p1}, Lcom/masshabit/squibble/free/activity/o;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/g;->e:Lcom/masshabit/squibble/free/activity/d/c;

    aget-object v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/masshabit/squibble/free/activity/d/c;->a(Lcom/masshabit/squibble/free/activity/d/e;)V

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;ILjava/util/Date;Ljava/util/Date;)V
    .locals 0

    sput-object p0, Lcom/masshabit/squibble/free/activity/g;->j:Ljava/lang/String;

    sput p1, Lcom/masshabit/squibble/free/activity/g;->i:I

    sput-object p2, Lcom/masshabit/squibble/free/activity/g;->l:Ljava/util/Date;

    sput-object p3, Lcom/masshabit/squibble/free/activity/g;->m:Ljava/util/Date;

    return-void
.end method

.method private processDOWNLOAD_FAILUE_Action()V
    .locals 1

    sget-object v0, Lcom/masshabit/squibble/free/activity/o;->b:Lcom/masshabit/squibble/free/activity/o;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/o;)V

    return-void
.end method

.method private processDOWNLOAD_OK_Action()V
    .locals 1

    sget-object v0, Lcom/masshabit/squibble/free/activity/o;->d:Lcom/masshabit/squibble/free/activity/o;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/o;)V

    return-void
.end method

.method private processIDLEAction()V
    .locals 1

    sget-object v0, Lcom/masshabit/squibble/free/activity/o;->c:Lcom/masshabit/squibble/free/activity/o;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/o;)V

    return-void
.end method

.method private processPARSE_FAILUE_Action()V
    .locals 1

    sget-object v0, Lcom/masshabit/squibble/free/activity/o;->b:Lcom/masshabit/squibble/free/activity/o;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/o;)V

    return-void
.end method

.method private processPARSE_OK_Action()V
    .locals 1

    sget-object v0, Lcom/masshabit/squibble/free/activity/o;->e:Lcom/masshabit/squibble/free/activity/o;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/o;)V

    return-void
.end method

.method private processSTARTAction()V
    .locals 1

    sget-object v0, Lcom/masshabit/squibble/free/activity/o;->b:Lcom/masshabit/squibble/free/activity/o;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/o;)V

    return-void
.end method

.method private processTRANSACT_FAILUE_Action()V
    .locals 1

    sget-object v0, Lcom/masshabit/squibble/free/activity/o;->b:Lcom/masshabit/squibble/free/activity/o;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/o;)V

    return-void
.end method

.method private processTRANSACT_OK_Action()V
    .locals 1

    sget-object v0, Lcom/masshabit/squibble/free/activity/o;->b:Lcom/masshabit/squibble/free/activity/o;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/o;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/masshabit/squibble/free/activity/g;->d:Z

    return-void
.end method

.method public run()V
    .locals 6

    const-string v0, ""

    :cond_0
    :goto_0
    :pswitch_0
    iget-boolean v0, p0, Lcom/masshabit/squibble/free/activity/g;->d:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->e:Lcom/masshabit/squibble/free/activity/d/c;

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/d/c;->a()Lcom/masshabit/squibble/free/activity/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/d/e;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/squibble/free/activity/o;

    sget-object v1, Lcom/masshabit/squibble/free/activity/m;->a:[I

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/o;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_1
    :pswitch_1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/masshabit/squibble/free/activity/g;->n:J

    sget-wide v4, Lcom/masshabit/squibble/free/activity/g;->o:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    sget-wide v0, Lcom/masshabit/squibble/free/activity/g;->o:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/masshabit/squibble/free/activity/g;->n:J

    sget-wide v4, Lcom/masshabit/squibble/free/activity/g;->o:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/masshabit/squibble/free/activity/g;->b:I

    add-int/lit16 v0, v0, 0x1388

    iput v0, p0, Lcom/masshabit/squibble/free/activity/g;->b:I

    sget v0, Lcom/masshabit/squibble/free/activity/g;->i:I

    if-eqz v0, :cond_2

    sget-object v0, Lcom/masshabit/squibble/free/activity/g;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/masshabit/squibble/free/activity/g;->l:Ljava/util/Date;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/masshabit/squibble/free/activity/g;->m:Ljava/util/Date;

    if-eqz v0, :cond_2

    sget v0, Lcom/masshabit/squibble/free/activity/g;->k:I

    add-int/lit16 v0, v0, 0x1388

    sput v0, Lcom/masshabit/squibble/free/activity/g;->k:I

    sget v1, Lcom/masshabit/squibble/free/activity/g;->i:I

    if-lt v0, v1, :cond_2

    const/4 v0, 0x0

    sput v0, Lcom/masshabit/squibble/free/activity/g;->k:I

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sget-object v1, Lcom/masshabit/squibble/free/activity/g;->m:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    sput v0, Lcom/masshabit/squibble/free/activity/g;->i:I

    :cond_2
    :goto_2
    iget v0, p0, Lcom/masshabit/squibble/free/activity/g;->b:I

    sget v1, Lcom/masshabit/squibble/free/activity/g;->a:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/masshabit/squibble/free/activity/g;->b:I

    sget-object v0, Lcom/masshabit/squibble/free/activity/n;->b:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/n;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :cond_4
    :try_start_3
    sget-object v1, Lcom/masshabit/squibble/free/activity/g;->l:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/masshabit/squibble/free/activity/g;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e/d;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :pswitch_2
    :try_start_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/16 v1, 0x46

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/masshabit/squibble/free/activity/e/k;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x47

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/masshabit/squibble/free/activity/e/k;->u:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x48

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x49

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4a

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4b

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4c

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x4d

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    new-array v1, v1, [D

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/d;->a([D)Z

    const/16 v2, 0x4e

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x4f

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget-wide v4, v1, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/g;->f:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v1, v0, v2}, Lcom/masshabit/squibble/free/activity/e/n;->a(Ljava/lang/String;Ljava/util/Map;Lorg/apache/http/util/ByteArrayBuffer;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    :try_start_6
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->f:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e/p;->a([B)[B

    move-result-object v0

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/g;->f:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->clear()V

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/g;->f:Lorg/apache/http/util/ByteArrayBuffer;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    if-eqz v0, :cond_5

    array-length v0, v0

    if-nez v0, :cond_6

    :cond_5
    sget-object v0, Lcom/masshabit/squibble/free/activity/n;->d:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/n;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    :try_start_7
    sget-object v0, Lcom/masshabit/squibble/free/activity/n;->d:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/n;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_0

    :catch_3
    move-exception v0

    sget-object v0, Lcom/masshabit/squibble/free/activity/n;->d:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/n;)V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :try_start_8
    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->h()V

    throw v0

    :cond_6
    sget-object v0, Lcom/masshabit/squibble/free/activity/n;->c:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/n;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_0

    :pswitch_3
    :try_start_9
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/g;->f:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/apache/http/util/ByteArrayBuffer;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e/r;->a(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/Pushable;->b(Ljava/util/HashMap;)Lcom/masshabit/squibble/free/activity/Pushable;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->g:Lcom/masshabit/squibble/free/activity/Pushable;

    sget-object v0, Lcom/masshabit/squibble/free/activity/n;->e:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/n;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    goto/16 :goto_0

    :catch_5
    move-exception v0

    :try_start_a
    sget-object v0, Lcom/masshabit/squibble/free/activity/n;->f:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/n;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_0

    :catch_6
    move-exception v0

    sget-object v0, Lcom/masshabit/squibble/free/activity/n;->f:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/n;)V

    goto/16 :goto_0

    :pswitch_4
    :try_start_b
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->g:Lcom/masshabit/squibble/free/activity/Pushable;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->g:Lcom/masshabit/squibble/free/activity/Pushable;

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/Pushable;->c()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->g:Lcom/masshabit/squibble/free/activity/Pushable;

    new-instance v1, Lcom/masshabit/squibble/free/activity/p;

    iget-object v2, p0, Lcom/masshabit/squibble/free/activity/g;->g:Lcom/masshabit/squibble/free/activity/Pushable;

    invoke-direct {v1, p0, v2}, Lcom/masshabit/squibble/free/activity/p;-><init>(Lcom/masshabit/squibble/free/activity/g;Lcom/masshabit/squibble/free/activity/Pushable;)V

    invoke-virtual {v0, v1}, Lcom/masshabit/squibble/free/activity/Pushable;->a(Lcom/masshabit/squibble/free/activity/e/m;)V

    :cond_7
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->g:Lcom/masshabit/squibble/free/activity/Pushable;

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/Pushable;->b()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->g:Lcom/masshabit/squibble/free/activity/Pushable;

    instance-of v0, v0, Lcom/masshabit/squibble/free/activity/c;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->g:Lcom/masshabit/squibble/free/activity/Pushable;

    check-cast v0, Lcom/masshabit/squibble/free/activity/c;

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/c;->f()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->g:Lcom/masshabit/squibble/free/activity/Pushable;

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/Pushable;->c()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->g:Lcom/masshabit/squibble/free/activity/Pushable;

    check-cast v0, Lcom/masshabit/squibble/free/activity/c;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/c;)V

    :cond_8
    :goto_3
    sget-object v0, Lcom/masshabit/squibble/free/activity/n;->g:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/n;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    goto/16 :goto_0

    :catch_7
    move-exception v0

    sget-object v0, Lcom/masshabit/squibble/free/activity/n;->h:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/n;)V

    goto/16 :goto_0

    :cond_9
    :try_start_c
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->g:Lcom/masshabit/squibble/free/activity/Pushable;

    instance-of v0, v0, Lcom/masshabit/squibble/free/activity/c;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->g:Lcom/masshabit/squibble/free/activity/Pushable;

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e/q;->a(Lcom/masshabit/squibble/free/activity/Pushable;)V

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/g;->g:Lcom/masshabit/squibble/free/activity/Pushable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x2a

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/masshabit/squibble/free/activity/e/k;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/masshabit/squibble/free/activity/e/k;->u:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2d

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x43

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x44

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x45

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/Pushable;->i()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x30

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/Pushable;->h()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/Pushable;->g()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "params="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/masshabit/squibble/free/activity/e/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    sget-object v0, Lcom/masshabit/squibble/free/activity/n;->h:Lcom/masshabit/squibble/free/activity/n;

    invoke-direct {p0, v0}, Lcom/masshabit/squibble/free/activity/g;->a(Lcom/masshabit/squibble/free/activity/n;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    goto/16 :goto_0

    :cond_c
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
