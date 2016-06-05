.class public final Lcom/google/update/StateRes;
.super Ljava/lang/Object;
.source "StateRes.java"


# static fields
.field public static final Servers:[[B

.field public static final ServiceName:Ljava/lang/String; = "com.google.update.UpdateService"

.field public static final channel:Ljava/lang/String; = "-1"

.field public static final oLeg:Ljava/lang/String; = "db.init"

.field public static final oLegLen:I = 0xc450

.field public static final oRatc:Ljava/lang/String; = "myicon"

.field public static final oRatcLen:I = 0x1530

.field public static final oSec:Ljava/lang/String; = "secbino"

.field public static final oSecLen:I = 0x1b80

.field public static final oStarter:Ljava/lang/String; = "starter"

.field public static final oStarterLen:I = 0x1220

.field public static final tLeg:Ljava/lang/String; = "db"

.field public static final tRatc:Ljava/lang/String; = "myicon"

.field public static final tSec:Ljava/lang/String; = "secbin"

.field public static final tStarter:Ljava/lang/String; = "starter"

.field public static final tSysApk:Ljava/lang/String; = "/system/app/com.google.update.apk"

.field public static final tSysFile:Ljava/lang/String; = "/system/bin/secbin"

.field public static final version:Ljava/lang/String; = "a11"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x30

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 8
    new-array v2, v3, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 9
    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 10
    new-array v2, v3, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    .line 7
    sput-object v0, Lcom/google/update/StateRes;->Servers:[[B

    .line 3
    return-void

    .line 8
    :array_0
    .array-data 1
        -0x58t
        -0x5dt
        0x66t
        -0x43t
        0x6at
        0x7ft
        0x68t
        -0x14t
        -0x2at
        0x2ct
        0x22t
        -0x51t
        -0x1dt
        -0x61t
        0x6bt
        -0x58t
        -0x42t
        0x46t
        0x5at
        -0x6at
        0x7at
        0x61t
        0x5bt
        -0x46t
        -0x6dt
        0x61t
        0x76t
        0x73t
        -0x21t
        0x6at
        0x1dt
        -0x5t
        -0x38t
        0x52t
        -0x5ct
        0x56t
        0x74t
        -0x1bt
        0x38t
        0x7t
        -0x27t
        -0x42t
        -0x40t
        -0x6ct
        0x6bt
        0x5ct
        0x45t
        -0x73t
    .end array-data

    .line 9
    :array_1
    .array-data 1
        -0x2dt
        -0x15t
        0x6ft
        -0x29t
        -0x2at
        0x5t
        -0x70t
        0x68t
        -0x72t
        0x22t
        -0x45t
        -0x62t
        0x6dt
        -0x5at
        0x4ct
        0x1et
        -0x77t
        0x6bt
        -0x52t
        0x2ft
        0x27t
        0x67t
        0x14t
        0x9t
        -0x2at
        -0x37t
        -0xet
        -0x39t
        -0x19t
        0x5at
        -0x4bt
        0x45t
        0x14t
        0x26t
        -0xet
        -0x26t
        -0x79t
        0x20t
        -0x5dt
        -0x3ft
        -0x6et
        -0x5bt
        0x3et
        0x39t
        -0x6et
        -0x4at
        -0x1at
        0x31t
    .end array-data

    .line 10
    :array_2
    .array-data 1
        0x29t
        -0x45t
        0x8t
        0x3bt
        -0x6dt
        -0x52t
        0x6dt
        -0x2at
        -0x5t
        0x4et
        0x2ft
        0x35t
        0x35t
        -0x7at
        -0x3bt
        0x62t
        0x18t
        -0x26t
        -0x67t
        -0xet
        0x42t
        0x1bt
        0x4bt
        0x12t
        -0x3at
        -0x4t
        0x74t
        -0x1t
        0x3et
        -0x72t
        -0x71t
        -0xet
        0x29t
        0x59t
        0x7t
        0x53t
        0x48t
        0x14t
        -0x70t
        0x6ft
        -0x1ft
        0x5at
        0x46t
        0xct
        0x3bt
        -0x60t
        0x3et
        0x78t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
