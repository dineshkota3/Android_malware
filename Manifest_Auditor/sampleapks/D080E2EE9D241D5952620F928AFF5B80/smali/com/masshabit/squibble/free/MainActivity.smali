.class public Lcom/masshabit/squibble/free/MainActivity;
.super Lcom/masshabit/squibble/MainActivity;
.source "MainActivity.java"


# static fields
.field protected static final FLURRY_KEY_LITE:Ljava/lang/String; = "Y5C5P1MM11EPRSW8S43Z"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    sput-boolean v0, Lcom/masshabit/common/Globals;->DEBUG_BUILD:Z

    .line 13
    sput-boolean v0, Lcom/masshabit/common/Globals;->PAID_BUILD:Z

    .line 14
    const-string v0, "Y5C5P1MM11EPRSW8S43Z"

    sput-object v0, Lcom/masshabit/common/Globals;->FLURRY_KEY:Ljava/lang/String;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/masshabit/squibble/MainActivity;-><init>()V

    return-void
.end method
