.class public final Lcom/masshabit/squibble/free/activity/e/k;
.super Ljava/lang/Object;


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static E:Ljava/lang/String;

.field public static F:Ljava/lang/String;

.field public static G:Ljava/lang/String;

.field public static H:Ljava/lang/String;

.field public static I:Ljava/lang/String;

.field public static J:Ljava/lang/String;

.field public static K:Ljava/lang/String;

.field public static L:Ljava/lang/String;

.field private static M:Landroid/content/Context;

.field private static N:[Ljava/lang/String;

.field private static O:I

.field private static P:Z

.field private static Q:Ljava/util/Vector;

.field private static R:Ljava/util/Vector;

.field static final a:[[Ljava/lang/String;

.field public static b:[B

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;

.field public static final e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    new-array v0, v6, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "@question@"

    aput-object v2, v1, v4

    const-string v2, "?"

    aput-object v2, v1, v5

    aput-object v1, v0, v4

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "@and@"

    aput-object v2, v1, v4

    const-string v2, "&"

    aput-object v2, v1, v5

    aput-object v1, v0, v5

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->a:[[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->b:[B

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->c:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->d:Ljava/lang/String;

    sget-object v0, Lcom/masshabit/squibble/free/activity/e/k;->c:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->e:Ljava/lang/String;

    sget-object v0, Lcom/masshabit/squibble/free/activity/e/k;->c:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->f:Ljava/lang/String;

    sget-object v0, Lcom/masshabit/squibble/free/activity/e/k;->c:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->g:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->h:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->i:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->j:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->k:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->l:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->m:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->n:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->o:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->p:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->q:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->r:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->s:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->t:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->u:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->v:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->w:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->x:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->y:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->z:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->A:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->B:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->C:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->D:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->E:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->F:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->G:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->H:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->I:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->J:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->K:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->L:Ljava/lang/String;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->M:Landroid/content/Context;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->N:[Ljava/lang/String;

    sput v4, Lcom/masshabit/squibble/free/activity/e/k;->O:I

    sput-boolean v4, Lcom/masshabit/squibble/free/activity/e/k;->P:Z

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->Q:Ljava/util/Vector;

    sput-object v3, Lcom/masshabit/squibble/free/activity/e/k;->R:Ljava/util/Vector;

    return-void

    :array_0
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
    .end array-data
.end method

.method public constructor <init>(Lcom/masshabit/squibble/free/activity/e;)V
    .locals 3

    const-string v1, "1234567890"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/masshabit/squibble/free/activity/e/k;->M:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Lcom/masshabit/squibble/free/activity/e;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "1234567890"

    sput-object v1, Lcom/masshabit/squibble/free/activity/e/k;->h:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->i:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->j:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->k:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->l:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->m:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->n:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->o:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->p:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->q:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->r:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->s:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->t:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->u:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "1234567890"

    sput-object v1, Lcom/masshabit/squibble/free/activity/e/k;->u:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->v:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->w:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->x:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->y:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->z:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->A:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->B:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->C:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->D:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->E:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->F:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->G:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->H:Ljava/lang/String;

    const-string v0, "yyyy-MM-dd kk:mm:ss"

    sget-wide v1, Landroid/os/Build;->TIME:J

    invoke-static {v0, v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->I:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->J:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->K:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5d

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ls"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e/q;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1"

    :goto_0
    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->L:Ljava/lang/String;

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->m()V

    return-void

    :cond_2
    const-string v0, "0"

    goto :goto_0
.end method

.method public static a()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/masshabit/squibble/free/activity/e/k;->M:Landroid/content/Context;

    return-object v0
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0xb

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move-object v1, p0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_1

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    move-object v1, v3

    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v4, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ";"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    move-object v1, v2

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public static a([Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    move v1, v3

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/masshabit/squibble/free/activity/e/k;->N:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/masshabit/squibble/free/activity/e/k;->N:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    sget-object v2, Lcom/masshabit/squibble/free/activity/e/k;->N:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    sget-object v2, Lcom/masshabit/squibble/free/activity/e/k;->N:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    sget-object v1, Lcom/masshabit/squibble/free/activity/e/k;->N:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    sput-object p0, Lcom/masshabit/squibble/free/activity/e/k;->N:[Ljava/lang/String;

    sput v3, Lcom/masshabit/squibble/free/activity/e/k;->O:I

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->l()V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    const-string v0, "10.7"

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    const-string v0, "10.7"

    return-object v0
.end method

.method public static h()V
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/masshabit/squibble/free/activity/e/k;->O:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/masshabit/squibble/free/activity/e/k;->O:I

    sget-object v1, Lcom/masshabit/squibble/free/activity/e/k;->N:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    sget-boolean v0, Lcom/masshabit/squibble/free/activity/e/k;->P:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->m()V

    sput v2, Lcom/masshabit/squibble/free/activity/e/k;->O:I

    sput-boolean v2, Lcom/masshabit/squibble/free/activity/e/k;->P:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->n()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/masshabit/squibble/free/activity/e/k;->P:Z

    goto :goto_0
.end method

.method public static i()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/masshabit/squibble/free/activity/e;->b:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/masshabit/squibble/free/activity/e/k;->N:[Ljava/lang/String;

    sget v2, Lcom/masshabit/squibble/free/activity/e/k;->O:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/getAdXml.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static j()V
    .locals 7

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/c;->a()Ljava/util/Vector;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->Q:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->R:Ljava/util/Vector;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/masshabit/squibble/free/activity/e/k;->Q:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    sget-object v0, Lcom/masshabit/squibble/free/activity/e/k;->Q:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/squibble/free/activity/e/b;

    iget-object v2, v0, Lcom/masshabit/squibble/free/activity/e/b;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/masshabit/squibble/free/activity/e/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    sget-object v3, Lcom/masshabit/squibble/free/activity/e/k;->R:Ljava/util/Vector;

    new-instance v4, Lcom/masshabit/squibble/free/activity/e/b;

    iget-object v5, v0, Lcom/masshabit/squibble/free/activity/e/b;->a:Ljava/lang/String;

    iget-object v6, v0, Lcom/masshabit/squibble/free/activity/e/b;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/masshabit/squibble/free/activity/e/b;->d:Ljava/lang/String;

    invoke-direct {v4, v5, v2, v6, v0}, Lcom/masshabit/squibble/free/activity/e/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static k()[Lcom/masshabit/squibble/free/activity/e/b;
    .locals 2

    sget-object v0, Lcom/masshabit/squibble/free/activity/e/k;->R:Ljava/util/Vector;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/masshabit/squibble/free/activity/e/b;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/masshabit/squibble/free/activity/e/b;

    return-object v0
.end method

.method private static l()V
    .locals 4

    sget-object v0, Lcom/masshabit/squibble/free/activity/e/k;->M:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "hLength"

    sget-object v2, Lcom/masshabit/squibble/free/activity/e/k;->N:[Ljava/lang/String;

    array-length v2, v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/masshabit/squibble/free/activity/e/k;->N:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hkey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/masshabit/squibble/free/activity/e/k;->N:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/q;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "lasthIndex"

    sget v2, Lcom/masshabit/squibble/free/activity/e/k;->O:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static m()V
    .locals 6

    const/4 v5, 0x0

    sget-object v0, Lcom/masshabit/squibble/free/activity/e/k;->M:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "hLength"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_1

    new-array v1, v1, [Ljava/lang/String;

    sput-object v1, Lcom/masshabit/squibble/free/activity/e/k;->N:[Ljava/lang/String;

    move v1, v5

    :goto_0
    sget-object v2, Lcom/masshabit/squibble/free/activity/e/k;->N:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/masshabit/squibble/free/activity/e/k;->N:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hkey"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    sget-object v2, Lcom/masshabit/squibble/free/activity/e/k;->N:[Ljava/lang/String;

    sget-object v3, Lcom/masshabit/squibble/free/activity/e/k;->N:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/masshabit/squibble/free/activity/e/q;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "lasthIndex"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/masshabit/squibble/free/activity/e/k;->O:I

    :goto_1
    return-void

    :cond_1
    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->n()V

    invoke-static {}, Lcom/masshabit/squibble/free/activity/e/k;->l()V

    goto :goto_1
.end method

.method private static n()V
    .locals 2

    const/16 v0, 0x54

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/e/p;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/masshabit/squibble/free/activity/e/k;->N:[Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/masshabit/squibble/free/activity/e/k;->O:I

    return-void
.end method
