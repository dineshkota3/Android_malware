.class public Lcom/ju6/AdManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ju6/AdManager$Gender;
    }
.end annotation


# static fields
.field private static a:Z

.field private static b:J

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Z

.field private static f:Lcom/ju6/AdManager$Gender;

.field private static g:Ljava/util/GregorianCalendar;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, ""

    .line 6
    sput-boolean v1, Lcom/ju6/AdManager;->a:Z

    .line 8
    const-string v0, ""

    sput-object v2, Lcom/ju6/AdManager;->c:Ljava/lang/String;

    .line 9
    const-string v0, ""

    sput-object v2, Lcom/ju6/AdManager;->d:Ljava/lang/String;

    .line 10
    sput-boolean v1, Lcom/ju6/AdManager;->e:Z

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdTimestamp()J
    .locals 2

    .prologue
    .line 41
    sget-wide v0, Lcom/ju6/AdManager;->b:J

    return-wide v0
.end method

.method public static getAppid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/ju6/AdManager;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getBirthday()Ljava/util/GregorianCalendar;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/ju6/AdManager;->g:Ljava/util/GregorianCalendar;

    return-object v0
.end method

.method public static getBirthdayAsString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 70
    const/4 v0, 0x0

    .line 72
    invoke-static {}, Lcom/ju6/AdManager;->getBirthday()Ljava/util/GregorianCalendar;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 74
    const-string v0, "%04d%02d%02d"

    .line 75
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 76
    invoke-virtual {v1, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 77
    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 78
    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    .line 73
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 81
    :cond_0
    return-object v0
.end method

.method public static getGender()Lcom/ju6/AdManager$Gender;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/ju6/AdManager;->f:Lcom/ju6/AdManager$Gender;

    return-object v0
.end method

.method public static getGenderAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    sget-object v0, Lcom/ju6/AdManager;->f:Lcom/ju6/AdManager$Gender;

    sget-object v1, Lcom/ju6/AdManager$Gender;->MALE:Lcom/ju6/AdManager$Gender;

    if-ne v0, v1, :cond_0

    .line 54
    const-string v0, "m"

    .line 58
    :goto_0
    return-object v0

    .line 55
    :cond_0
    sget-object v0, Lcom/ju6/AdManager;->f:Lcom/ju6/AdManager$Gender;

    sget-object v1, Lcom/ju6/AdManager$Gender;->FEMALE:Lcom/ju6/AdManager$Gender;

    if-ne v0, v1, :cond_1

    .line 56
    const-string v0, "f"

    goto :goto_0

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getPwd()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/ju6/AdManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "appid"    # Ljava/lang/String;
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "testmode"    # Z

    .prologue
    .line 15
    sput-object p0, Lcom/ju6/AdManager;->c:Ljava/lang/String;

    .line 16
    sput-object p1, Lcom/ju6/AdManager;->d:Ljava/lang/String;

    .line 17
    sput-boolean p2, Lcom/ju6/AdManager;->e:Z

    .line 18
    return-void
.end method

.method public static isAdFinish()Z
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/ju6/AdManager;->a:Z

    return v0
.end method

.method public static isTestmode()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/ju6/AdManager;->e:Z

    return v0
.end method

.method public static setAdFinish()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ju6/AdManager;->a:Z

    .line 26
    return-void
.end method

.method public static setAdTimestamp()V
    .locals 2

    .prologue
    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/ju6/AdManager;->b:J

    .line 46
    return-void
.end method

.method public static setBirthday(III)V
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "day"    # I

    .prologue
    .line 90
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v1, 0x1

    sub-int v1, p1, v1

    invoke-virtual {v0, p0, v1, p2}, Ljava/util/GregorianCalendar;->set(III)V

    .line 92
    invoke-static {v0}, Lcom/ju6/AdManager;->setBirthday(Ljava/util/GregorianCalendar;)V

    .line 93
    return-void
.end method

.method public static setBirthday(Ljava/util/GregorianCalendar;)V
    .locals 0
    .param p0, "birthday"    # Ljava/util/GregorianCalendar;

    .prologue
    .line 85
    sput-object p0, Lcom/ju6/AdManager;->g:Ljava/util/GregorianCalendar;

    .line 86
    return-void
.end method

.method public static setGender(Lcom/ju6/AdManager$Gender;)V
    .locals 0
    .param p0, "gender"    # Lcom/ju6/AdManager$Gender;

    .prologue
    .line 62
    sput-object p0, Lcom/ju6/AdManager;->f:Lcom/ju6/AdManager$Gender;

    .line 63
    return-void
.end method
