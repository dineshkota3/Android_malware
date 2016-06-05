.class public final Lidfhn/qhedrsdgx;
.super Ljava/lang/Object;


# static fields
.field static idfhn:Ljava/lang/String;


# instance fields
.field public idfhn:I

.field public idfhn:[Ljava/lang/String;

.field private final qhedrsdgx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, ""

    sput-object v0, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    const/16 v3, 0xa

    const/16 v2, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lidfhn/qhedrsdgx;->idfhn:I

    iput v3, p0, Lidfhn/qhedrsdgx;->qhedrsdgx:I

    sget-object v0, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    sget-object v0, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lidfhn/qhedrsdgx;->idfhn:[Ljava/lang/String;

    sget-object v0, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(B)V
    .locals 1

    invoke-direct {p0}, Lidfhn/qhedrsdgx;-><init>()V

    sget-object v0, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    sget-object v0, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final idfhn(Ljava/lang/String;)I
    .locals 8

    const/4 v3, 0x5

    const/4 v7, 0x2

    iget v1, p0, Lidfhn/qhedrsdgx;->idfhn:I

    sget-object v0, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    sget-object v0, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "7"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object v0, p0, Lidfhn/qhedrsdgx;->idfhn:[Ljava/lang/String;

    array-length v0, v0

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lidfhn/qhedrsdgx;->idfhn:[Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    iget v2, p0, Lidfhn/qhedrsdgx;->qhedrsdgx:I

    add-int/2addr v2, v1

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lidfhn/qhedrsdgx;->idfhn:[Ljava/lang/String;

    sget-object v2, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    :try_start_0
    const-string v2, "oP/Pk<PgGkuwRK(Y"

    invoke-static {v2}, Lidfhn/idfhn;->idfhn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "8"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v3, "PvvPwzlWw"

    invoke-static {v3}, Lidfhn/idfhn;->idfhn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-string v6, "oP/Pk<PgGkeVo(zK"

    invoke-static {v6}, Lidfhn/idfhn;->idfhn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "oP/Pk<PgGkeVo(zK"

    invoke-static {v6}, Lidfhn/idfhn;->idfhn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sget-object v3, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    sget-object v3, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x2

    iget-object v5, p0, Lidfhn/qhedrsdgx;->idfhn:[Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v0, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    sget-object v0, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    const/4 v0, 0x7

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lidfhn/qhedrsdgx;->idfhn:[Ljava/lang/String;

    iget v2, p0, Lidfhn/qhedrsdgx;->idfhn:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lidfhn/qhedrsdgx;->idfhn:I

    aput-object p1, v0, v2

    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lidfhn/qhedrsdgx;->idfhn:Ljava/lang/String;

    goto :goto_0
.end method
