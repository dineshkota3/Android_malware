.class public final Lcom/sec/android/providers/drm/Waste;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "7xBDrIM1zvBYzKFgHK0NHxMO9R0kqDidypLq"

    invoke-static {v0}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/providers/drm/Waste;->a:Ljava/lang/String;

    const-string v0, "7xBDrIM1zvBYzKFgHK0NHxMO9RFklp3F3D3dypLq"

    invoke-static {v0}, Lcom/sec/android/providers/drm/Xmlns;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/providers/drm/Waste;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
