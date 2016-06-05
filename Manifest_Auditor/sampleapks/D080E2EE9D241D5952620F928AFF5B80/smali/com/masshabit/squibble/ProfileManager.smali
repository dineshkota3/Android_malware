.class public Lcom/masshabit/squibble/ProfileManager;
.super Lcom/masshabit/common/ProfileManagerBase;
.source "ProfileManager.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/masshabit/common/ProfileManagerBase;-><init>(Landroid/content/Context;)V

    .line 13
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/masshabit/squibble/ProfileManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    sget-object v0, Lcom/masshabit/squibble/ProfileManager;->sInstance:Lcom/masshabit/common/ProfileManagerBase;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 18
    new-instance v0, Lcom/masshabit/squibble/ProfileManager;

    invoke-direct {v0, p0}, Lcom/masshabit/squibble/ProfileManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/masshabit/squibble/ProfileManager;->sInstance:Lcom/masshabit/common/ProfileManagerBase;

    .line 19
    sget-object p0, Lcom/masshabit/squibble/ProfileManager;->sInstance:Lcom/masshabit/common/ProfileManagerBase;

    .end local p0    # "context":Landroid/content/Context;
    check-cast p0, Lcom/masshabit/squibble/ProfileManager;

    return-object p0

    .line 17
    .restart local p0    # "context":Landroid/content/Context;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected allocatePlayerProfile()Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/masshabit/squibble/Profile;

    invoke-direct {v0}, Lcom/masshabit/squibble/Profile;-><init>()V

    return-object v0
.end method
