.class final enum Lcom/masshabit/squibble/free/activity/o;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/masshabit/squibble/free/activity/o;

.field public static final enum b:Lcom/masshabit/squibble/free/activity/o;

.field public static final enum c:Lcom/masshabit/squibble/free/activity/o;

.field public static final enum d:Lcom/masshabit/squibble/free/activity/o;

.field public static final enum e:Lcom/masshabit/squibble/free/activity/o;

.field private static final synthetic f:[Lcom/masshabit/squibble/free/activity/o;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/masshabit/squibble/free/activity/o;

    const-string v1, "START"

    invoke-direct {v0, v1, v2}, Lcom/masshabit/squibble/free/activity/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/masshabit/squibble/free/activity/o;->a:Lcom/masshabit/squibble/free/activity/o;

    new-instance v0, Lcom/masshabit/squibble/free/activity/o;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/masshabit/squibble/free/activity/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/masshabit/squibble/free/activity/o;->b:Lcom/masshabit/squibble/free/activity/o;

    new-instance v0, Lcom/masshabit/squibble/free/activity/o;

    const-string v1, "DOWNLOAD"

    invoke-direct {v0, v1, v4}, Lcom/masshabit/squibble/free/activity/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/masshabit/squibble/free/activity/o;->c:Lcom/masshabit/squibble/free/activity/o;

    new-instance v0, Lcom/masshabit/squibble/free/activity/o;

    const-string v1, "PARSE"

    invoke-direct {v0, v1, v5}, Lcom/masshabit/squibble/free/activity/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/masshabit/squibble/free/activity/o;->d:Lcom/masshabit/squibble/free/activity/o;

    new-instance v0, Lcom/masshabit/squibble/free/activity/o;

    const-string v1, "TRANSACT"

    invoke-direct {v0, v1, v6}, Lcom/masshabit/squibble/free/activity/o;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/masshabit/squibble/free/activity/o;->e:Lcom/masshabit/squibble/free/activity/o;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/masshabit/squibble/free/activity/o;

    sget-object v1, Lcom/masshabit/squibble/free/activity/o;->a:Lcom/masshabit/squibble/free/activity/o;

    aput-object v1, v0, v2

    sget-object v1, Lcom/masshabit/squibble/free/activity/o;->b:Lcom/masshabit/squibble/free/activity/o;

    aput-object v1, v0, v3

    sget-object v1, Lcom/masshabit/squibble/free/activity/o;->c:Lcom/masshabit/squibble/free/activity/o;

    aput-object v1, v0, v4

    sget-object v1, Lcom/masshabit/squibble/free/activity/o;->d:Lcom/masshabit/squibble/free/activity/o;

    aput-object v1, v0, v5

    sget-object v1, Lcom/masshabit/squibble/free/activity/o;->e:Lcom/masshabit/squibble/free/activity/o;

    aput-object v1, v0, v6

    sput-object v0, Lcom/masshabit/squibble/free/activity/o;->f:[Lcom/masshabit/squibble/free/activity/o;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/masshabit/squibble/free/activity/o;
    .locals 1

    sget-object v0, Lcom/masshabit/squibble/free/activity/o;->f:[Lcom/masshabit/squibble/free/activity/o;

    invoke-virtual {v0}, [Lcom/masshabit/squibble/free/activity/o;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/masshabit/squibble/free/activity/o;

    return-object v0
.end method
