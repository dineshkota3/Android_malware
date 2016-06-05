.class public final Lcom/sec/android/providers/drm/Description;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "7xBDrIM1zvBYrIMCHxiRrWByzxsRrt5h8eDOypLqKLFklp3F3D3j"

    invoke-static {v0}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/providers/drm/Description;->a:Ljava/lang/String;

    const-string v0, "7xBDrIM1zvBOzKlOuCRIHcBlcy09KLuFiDRd3pMccY__"

    invoke-static {v0}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/providers/drm/Description;->b:Ljava/lang/String;

    const-string v0, "7xBDrIM1zvBOzKlO7CMO8WB0iyiFl3MPqpzq"

    invoke-static {v0}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/providers/drm/Description;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
