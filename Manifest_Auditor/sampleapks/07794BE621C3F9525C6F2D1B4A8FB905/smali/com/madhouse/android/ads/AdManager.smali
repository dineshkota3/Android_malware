.class public Lcom/madhouse/android/ads/AdManager;
.super Ljava/lang/Object;


# static fields
.field public static final USER_GENDER_FEMALE:Ljava/lang/String; = "female"

.field public static final USER_GENDER_MALE:Ljava/lang/String; = "male"

.field private static _:Ljava/lang/String;

.field private static __:Ljava/lang/String;

.field private static ___:Ljava/lang/String;

.field private static ____:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/madhouse/android/ads/AdManager;->____:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static final _()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/madhouse/android/ads/AdManager;->_:Ljava/lang/String;

    return-object v0
.end method

.method protected static final __()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/madhouse/android/ads/AdManager;->__:Ljava/lang/String;

    return-object v0
.end method

.method protected static final ___()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/madhouse/android/ads/AdManager;->___:Ljava/lang/String;

    return-object v0
.end method

.method protected static final ____()Z
    .locals 1

    sget-boolean v0, Lcom/madhouse/android/ads/AdManager;->____:Z

    return v0
.end method

.method public static final setApplicationId(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const/16 v2, 0x1ee

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/madhouse/android/ads/AdManager;->_:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {v2}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/madhouse/android/ads/n;->_(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v2}, LI/I;->I(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/madhouse/android/ads/n;->_(Landroid/content/Context;Ljava/lang/String;[B)Z

    sput-object p1, Lcom/madhouse/android/ads/AdManager;->_:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    sput-object v1, Lcom/madhouse/android/ads/AdManager;->_:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final setEmbedBrowserEnable(Z)V
    .locals 0

    sput-boolean p0, Lcom/madhouse/android/ads/AdManager;->____:Z

    return-void
.end method

.method public static final setUserAge(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/madhouse/android/ads/AdManager;->__:Ljava/lang/String;

    return-void
.end method

.method public static final setUserGender(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/madhouse/android/ads/AdManager;->___:Ljava/lang/String;

    return-void
.end method
