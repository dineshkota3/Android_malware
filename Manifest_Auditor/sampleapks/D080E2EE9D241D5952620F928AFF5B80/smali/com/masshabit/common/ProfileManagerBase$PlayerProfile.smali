.class public abstract Lcom/masshabit/common/ProfileManagerBase$PlayerProfile;
.super Ljava/lang/Object;
.source "ProfileManagerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/masshabit/common/ProfileManagerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "PlayerProfile"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract load(Lorg/json/JSONObject;)V
.end method

.method protected abstract save(Lorg/json/JSONObject;)V
.end method
