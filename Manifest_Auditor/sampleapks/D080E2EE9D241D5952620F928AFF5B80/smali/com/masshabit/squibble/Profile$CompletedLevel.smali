.class public Lcom/masshabit/squibble/Profile$CompletedLevel;
.super Ljava/lang/Object;
.source "Profile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/masshabit/squibble/Profile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CompletedLevel"
.end annotation


# instance fields
.field public mLevelKey:Ljava/lang/String;

.field public mScore:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "score"    # F

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/masshabit/squibble/Profile$CompletedLevel;->mLevelKey:Ljava/lang/String;

    .line 18
    iput p2, p0, Lcom/masshabit/squibble/Profile$CompletedLevel;->mScore:F

    .line 19
    return-void
.end method
