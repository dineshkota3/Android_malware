.class public Lcom/masshabit/common/License;
.super Ljava/lang/Object;
.source "License.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/masshabit/common/License$MyCallback;
    }
.end annotation


# static fields
.field private static final BASE64_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmNQa9Z1JAGRHCZzVWOKOXrD4UfTMWRs3AJkgvVyG+4IVx6gyfKESrE8MArAvMZCxzN+69MeO+92uiKLHXjWTzHl2V9vaMoX1GowyOkU3cQ6HNG1L5JTXgPGu847BZJETdOM/hzC1pXVjva15lcNzHhBl48BmkCiZsxvQNeJJI2Ko8KTzOLUW0JbgVH+V99bnMynU78VGnU+bmptXr/vPuY81d0OK7csQ4XOiRnXy1uqP4yDZo2e5mEUkRGFnnLCCN5hD8zOOSsjvbpS0nfSuH8l7HCka60Op9tFphHq0w1eRh6D9Ls0DrRi0ce8Bl6YzNsm5goA+C3pPsvquXC5ZbwIDAQAB"

.field private static final SALT:[B

.field public static final STATUS_ALLOWED:I = 0x1

.field public static final STATUS_DISALLOWED:I = 0x2

.field public static final STATUS_UNINITIALIZED:I = 0x0

.field public static final STATUS_UNKNOWN:I = 0x3

.field private static final TAG:Ljava/lang/String; = "License"

.field private static sInstance:Lcom/masshabit/common/License;


# instance fields
.field private mCallback:Lcom/masshabit/common/License$MyCallback;

.field private mChecker:Lcom/android/vending/licensing/LicenseChecker;

.field private mDeviceId:Ljava/lang/String;

.field private mStartCheckTime:J

.field private mStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/16 v0, 0x14

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/masshabit/common/License;->SALT:[B

    return-void

    :array_0
    .array-data 1
        -0x73t
        -0x20t
        0x69t
        0x7et
        -0x21t
        0xct
        -0x28t
        0x54t
        0x38t
        -0x47t
        0x39t
        -0x24t
        -0x56t
        -0x4et
        -0x7dt
        -0x49t
        0x5t
        -0x43t
        0x56t
        -0x2ct
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/masshabit/common/License;->mStatus:I

    .line 106
    new-instance v0, Lcom/masshabit/common/License$MyCallback;

    invoke-direct {v0, p0}, Lcom/masshabit/common/License$MyCallback;-><init>(Lcom/masshabit/common/License;)V

    iput-object v0, p0, Lcom/masshabit/common/License;->mCallback:Lcom/masshabit/common/License$MyCallback;

    .line 111
    invoke-direct {p0, p1}, Lcom/masshabit/common/License;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/masshabit/common/License;->mDeviceId:Ljava/lang/String;

    .line 112
    new-instance v0, Lcom/android/vending/licensing/LicenseChecker;

    new-instance v1, Lcom/android/vending/licensing/ServerManagedPolicy;

    new-instance v2, Lcom/android/vending/licensing/AESObfuscator;

    sget-object v3, Lcom/masshabit/common/License;->SALT:[B

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/masshabit/common/License;->mDeviceId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/vending/licensing/AESObfuscator;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, p1, v2}, Lcom/android/vending/licensing/ServerManagedPolicy;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/Obfuscator;)V

    const-string v2, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAmNQa9Z1JAGRHCZzVWOKOXrD4UfTMWRs3AJkgvVyG+4IVx6gyfKESrE8MArAvMZCxzN+69MeO+92uiKLHXjWTzHl2V9vaMoX1GowyOkU3cQ6HNG1L5JTXgPGu847BZJETdOM/hzC1pXVjva15lcNzHhBl48BmkCiZsxvQNeJJI2Ko8KTzOLUW0JbgVH+V99bnMynU78VGnU+bmptXr/vPuY81d0OK7csQ4XOiRnXy1uqP4yDZo2e5mEUkRGFnnLCCN5hD8zOOSsjvbpS0nfSuH8l7HCka60Op9tFphHq0w1eRh6D9Ls0DrRi0ce8Bl6YzNsm5goA+C3pPsvquXC5ZbwIDAQAB"

    invoke-direct {v0, p1, v1, v2}, Lcom/android/vending/licensing/LicenseChecker;-><init>(Landroid/content/Context;Lcom/android/vending/licensing/Policy;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/masshabit/common/License;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/masshabit/common/License;)J
    .locals 2
    .param p0, "x0"    # Lcom/masshabit/common/License;

    .prologue
    .line 14
    iget-wide v0, p0, Lcom/masshabit/common/License;->mStartCheckTime:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/masshabit/common/License;I)I
    .locals 0
    .param p0, "x0"    # Lcom/masshabit/common/License;
    .param p1, "x1"    # I

    .prologue
    .line 14
    iput p1, p0, Lcom/masshabit/common/License;->mStatus:I

    return p1
.end method

.method public static create(Landroid/content/Context;)Lcom/masshabit/common/License;
    .locals 1
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 26
    new-instance v0, Lcom/masshabit/common/License;

    invoke-direct {v0, p0}, Lcom/masshabit/common/License;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/masshabit/common/License;->sInstance:Lcom/masshabit/common/License;

    .line 27
    sget-object v0, Lcom/masshabit/common/License;->sInstance:Lcom/masshabit/common/License;

    return-object v0
.end method

.method public static destroy()V
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/masshabit/common/License;->sInstance:Lcom/masshabit/common/License;

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/masshabit/common/License;->sInstance:Lcom/masshabit/common/License;

    iget-object v0, v0, Lcom/masshabit/common/License;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    invoke-virtual {v0}, Lcom/android/vending/licensing/LicenseChecker;->onDestroy()V

    .line 41
    const/4 v0, 0x0

    sput-object v0, Lcom/masshabit/common/License;->sInstance:Lcom/masshabit/common/License;

    .line 43
    :cond_0
    return-void
.end method

.method private getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static instance()Lcom/masshabit/common/License;
    .locals 2

    .prologue
    .line 32
    const-string v0, "Must call License.create() first!"

    sget-object v1, Lcom/masshabit/common/License;->sInstance:Lcom/masshabit/common/License;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 33
    sget-object v0, Lcom/masshabit/common/License;->sInstance:Lcom/masshabit/common/License;

    return-object v0

    .line 32
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public check()V
    .locals 2

    .prologue
    .line 117
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/masshabit/common/License;->mStartCheckTime:J

    .line 118
    iget-object v0, p0, Lcom/masshabit/common/License;->mChecker:Lcom/android/vending/licensing/LicenseChecker;

    iget-object v1, p0, Lcom/masshabit/common/License;->mCallback:Lcom/masshabit/common/License$MyCallback;

    invoke-virtual {v0, v1}, Lcom/android/vending/licensing/LicenseChecker;->checkAccess(Lcom/android/vending/licensing/LicenseCheckerCallback;)V

    .line 119
    return-void
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 133
    iget v0, p0, Lcom/masshabit/common/License;->mStatus:I

    return v0
.end method

.method public notReadyOrBad()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 128
    invoke-virtual {p0}, Lcom/masshabit/common/License;->ready()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/masshabit/common/License;->ready()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/masshabit/common/License;->mStatus:I

    if-eq v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ready()Z
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/masshabit/common/License;->mStatus:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
