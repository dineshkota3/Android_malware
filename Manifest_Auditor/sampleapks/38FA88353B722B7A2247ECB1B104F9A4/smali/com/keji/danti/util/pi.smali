.class public Lcom/keji/danti/util/pi;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/keji/danti/util/pi;

.field public static b:Landroid/content/Context;

.field private static c:Landroid/content/SharedPreferences;

.field private static d:Landroid/content/SharedPreferences$Editor;


# instance fields
.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/keji/danti/util/pi;->a:Lcom/keji/danti/util/pi;

    sput-object v0, Lcom/keji/danti/util/pi;->c:Landroid/content/SharedPreferences;

    sput-object v0, Lcom/keji/danti/util/pi;->d:Landroid/content/SharedPreferences$Editor;

    sput-object v0, Lcom/keji/danti/util/pi;->b:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/keji/danti/util/pi;->e:I

    sget-object v0, Lcom/keji/danti/util/pi;->c:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    sget-object v0, Lcom/keji/danti/util/pi;->b:Landroid/content/Context;

    const-string v1, "first_app_perferences"

    iget v2, p0, Lcom/keji/danti/util/pi;->e:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/keji/danti/util/pi;->c:Landroid/content/SharedPreferences;

    sget-object v0, Lcom/keji/danti/util/pi;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    sput-object v0, Lcom/keji/danti/util/pi;->d:Landroid/content/SharedPreferences$Editor;

    :cond_0
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/keji/danti/util/pi;->e:I

    sget-object v0, Lcom/keji/danti/util/pi;->a:Lcom/keji/danti/util/pi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/keji/danti/util/pi;

    invoke-direct {v0}, Lcom/keji/danti/util/pi;-><init>()V

    sput-object v0, Lcom/keji/danti/util/pi;->a:Lcom/keji/danti/util/pi;

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;J)J
    .locals 2

    sget-object v0, Lcom/keji/danti/util/pi;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/content/Context;)Lcom/keji/danti/util/pi;
    .locals 1

    sput-object p0, Lcom/keji/danti/util/pi;->b:Landroid/content/Context;

    sget-object v0, Lcom/keji/danti/util/pi;->a:Lcom/keji/danti/util/pi;

    if-nez v0, :cond_0

    new-instance v0, Lcom/keji/danti/util/pi;

    invoke-direct {v0, p0}, Lcom/keji/danti/util/pi;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/keji/danti/util/pi;->a:Lcom/keji/danti/util/pi;

    :cond_0
    sget-object v0, Lcom/keji/danti/util/pi;->a:Lcom/keji/danti/util/pi;

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Lcom/keji/danti/util/pi;
    .locals 1

    sget-object v0, Lcom/keji/danti/util/pi;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/keji/danti/util/pi;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/keji/danti/util/pi;->a:Lcom/keji/danti/util/pi;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Long;)Lcom/keji/danti/util/pi;
    .locals 3

    sget-object v0, Lcom/keji/danti/util/pi;->d:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {v0, p0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/keji/danti/util/pi;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/keji/danti/util/pi;->a:Lcom/keji/danti/util/pi;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/keji/danti/util/pi;
    .locals 1

    sget-object v0, Lcom/keji/danti/util/pi;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/keji/danti/util/pi;->d:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    sget-object v0, Lcom/keji/danti/util/pi;->a:Lcom/keji/danti/util/pi;

    return-object v0
.end method

.method public static b(Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/keji/danti/util/pi;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/keji/danti/util/pi;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
