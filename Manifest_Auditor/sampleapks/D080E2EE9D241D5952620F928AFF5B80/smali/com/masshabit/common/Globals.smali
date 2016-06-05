.class public Lcom/masshabit/common/Globals;
.super Ljava/lang/Object;
.source "Globals.java"


# static fields
.field private static final BEHAVIOUR_FREE:I = 0x0

.field private static final BEHAVIOUR_PAID:I = 0x1

.field public static DEBUG_BUILD:Z = false

.field public static FLURRY_KEY:Ljava/lang/String; = null

.field public static PAID_BUILD:Z = false

.field private static final TAG:Ljava/lang/String; = "Globals"

.field private static sBehaviour:I

.field private static final sFreeLevels:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    sput-object v0, Lcom/masshabit/common/Globals;->sFreeLevels:Ljava/util/Set;

    .line 31
    sget-object v0, Lcom/masshabit/common/Globals;->sFreeLevels:Ljava/util/Set;

    const-string v1, "lab_1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lcom/masshabit/common/Globals;->sFreeLevels:Ljava/util/Set;

    const-string v1, "lab_2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/masshabit/common/Globals;->sFreeLevels:Ljava/util/Set;

    const-string v1, "lab_3"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lcom/masshabit/common/Globals;->sFreeLevels:Ljava/util/Set;

    const-string v1, "lab_4"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/masshabit/common/Globals;->sFreeLevels:Ljava/util/Set;

    const-string v1, "lab_5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/masshabit/common/Globals;->sFreeLevels:Ljava/util/Set;

    const-string v1, "forest_1"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    const/4 v0, 0x0

    sput-boolean v0, Lcom/masshabit/common/Globals;->sInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static freeMode()Z
    .locals 1

    .prologue
    .line 64
    sget-boolean v0, Lcom/masshabit/common/Globals;->sInitialized:Z

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 65
    sget v0, Lcom/masshabit/common/Globals;->sBehaviour:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static init()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const-string v2, "Globals"

    .line 46
    sget-boolean v0, Lcom/masshabit/common/Globals;->PAID_BUILD:Z

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Lcom/masshabit/common/License;->instance()Lcom/masshabit/common/License;

    move-result-object v0

    invoke-virtual {v0}, Lcom/masshabit/common/License;->ready()Z

    move-result v0

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 49
    invoke-static {}, Lcom/masshabit/common/License;->instance()Lcom/masshabit/common/License;

    move-result-object v0

    invoke-virtual {v0}, Lcom/masshabit/common/License;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 51
    const-string v0, "Globals"

    const-string v0, "Using PAID behaviour"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    sput v1, Lcom/masshabit/common/Globals;->sBehaviour:I

    .line 53
    sput-boolean v1, Lcom/masshabit/common/Globals;->sInitialized:Z

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v0, "Globals"

    const-string v0, "Using FREE behaviour"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const/4 v0, 0x0

    sput v0, Lcom/masshabit/common/Globals;->sBehaviour:I

    .line 59
    sput-boolean v1, Lcom/masshabit/common/Globals;->sInitialized:Z

    goto :goto_0
.end method

.method public static isLevelIncluded(Ljava/lang/String;)Z
    .locals 2
    .param p0, "level"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 76
    sget-boolean v0, Lcom/masshabit/common/Globals;->sInitialized:Z

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 77
    sget v0, Lcom/masshabit/common/Globals;->sBehaviour:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 81
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/masshabit/common/Globals;->sFreeLevels:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static paidMode()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 70
    sget-boolean v0, Lcom/masshabit/common/Globals;->sInitialized:Z

    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 71
    sget v0, Lcom/masshabit/common/Globals;->sBehaviour:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
