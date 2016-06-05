.class public Lcom/masshabit/squibble/MenuScreen$DialogResponse;
.super Ljava/lang/Object;
.source "MenuScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/masshabit/squibble/MenuScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "DialogResponse"
.end annotation


# instance fields
.field public mArg:Ljava/lang/Object;

.field public mFunction:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0
    .param p1, "function"    # I
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/masshabit/squibble/MenuScreen$DialogResponse;->mFunction:I

    iput-object p2, p0, Lcom/masshabit/squibble/MenuScreen$DialogResponse;->mArg:Ljava/lang/Object;

    return-void
.end method
