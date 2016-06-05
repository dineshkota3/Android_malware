.class public Lcom/keji/danti/b/pb;
.super Lcom/keji/danti/b/pa;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static f:Lcom/keji/danti/b/pb;

.field private static final g:[Ljava/lang/String;

.field private static final h:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/keji/danti/b/pb;->f:Lcom/keji/danti/b/pb;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "hiId"

    aput-object v1, v0, v2

    const-string v1, "hiPid"

    aput-object v1, v0, v3

    const-string v1, "hiCreateTime"

    aput-object v1, v0, v4

    const-string v1, "hiTime"

    aput-object v1, v0, v5

    sput-object v0, Lcom/keji/danti/b/pb;->g:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "INTEGER PRIMARY KEY"

    aput-object v1, v0, v2

    const-string v1, "INTEGER"

    aput-object v1, v0, v3

    const-string v1, "DATETIME"

    aput-object v1, v0, v4

    const-string v1, "DATETIME"

    aput-object v1, v0, v5

    sput-object v0, Lcom/keji/danti/b/pb;->h:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "HistoryInfo"

    sget-object v1, Lcom/keji/danti/b/pb;->g:[Ljava/lang/String;

    sget-object v2, Lcom/keji/danti/b/pb;->h:[Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/keji/danti/b/pa;-><init>(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static c()Lcom/keji/danti/b/pb;
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/keji/danti/b/pb;->f:Lcom/keji/danti/b/pb;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/keji/danti/b/pb;->f:Lcom/keji/danti/b/pb;

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Lcom/keji/danti/b/pb;

    sget-object v1, Lcom/keji/danti/util/pi;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/keji/danti/b/pb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/keji/danti/b/pb;->f:Lcom/keji/danti/b/pb;

    const-string v0, "db_init_HistoryInfo"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/keji/danti/util/pi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/keji/danti/b/pb;->f:Lcom/keji/danti/b/pb;

    goto :goto_0

    :cond_1
    const-string v0, "db_init_HistoryInfo"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/keji/danti/util/pi;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/keji/danti/util/pi;

    sget-object v0, Lcom/keji/danti/b/pb;->f:Lcom/keji/danti/b/pb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "hiPid"

    aput-object v1, v0, v2

    const-string v1, "hiCreateTime"

    aput-object v1, v0, v3

    const-string v1, "hiTime"

    aput-object v1, v0, v4

    new-array v1, v5, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-virtual {p0}, Lcom/keji/danti/b/pb;->b()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-virtual {p0, v0, v1}, Lcom/keji/danti/b/pb;->a([Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public d()Ljava/util/List;
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "hiPid"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "hiTime"

    aput-object v2, v1, v0

    const-string v2, "hiCreateTime >= datetime(\'now\', \'start of day\')"

    const-string v6, "hiCreateTime desc limit 10"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/keji/danti/b/pb;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "hiPid"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "hiTime"

    aput-object v2, v1, v0

    const-string v2, "hiCreateTime >= datetime(\'now\', \'-1 day\', \'start of day\') and hiCreateTime < datetime(\'now\', \'start of day\')"

    const-string v6, "hiCreateTime desc limit 10"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/keji/danti/b/pb;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 7

    const/4 v3, 0x0

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v2, "hiPid"

    aput-object v2, v1, v0

    const/4 v0, 0x1

    const-string v2, "hiTime"

    aput-object v2, v1, v0

    const-string v2, "hiCreateTime < datetime(\'now\', \'-1 day\', \'start of day\')"

    const-string v6, "hiCreateTime desc limit 10"

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/keji/danti/b/pb;->a([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
