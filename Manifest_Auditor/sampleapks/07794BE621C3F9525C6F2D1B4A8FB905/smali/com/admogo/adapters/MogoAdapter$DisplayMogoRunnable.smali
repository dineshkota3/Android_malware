.class Lcom/admogo/adapters/MogoAdapter$DisplayMogoRunnable;
.super Ljava/lang/Object;
.source "MogoAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admogo/adapters/MogoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayMogoRunnable"
.end annotation


# instance fields
.field private mogoAdapter:Lcom/admogo/adapters/MogoAdapter;


# direct methods
.method public constructor <init>(Lcom/admogo/adapters/MogoAdapter;)V
    .locals 0
    .param p1, "mogoAdapter"    # Lcom/admogo/adapters/MogoAdapter;

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/admogo/adapters/MogoAdapter$DisplayMogoRunnable;->mogoAdapter:Lcom/admogo/adapters/MogoAdapter;

    .line 202
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/admogo/adapters/MogoAdapter$DisplayMogoRunnable;->mogoAdapter:Lcom/admogo/adapters/MogoAdapter;

    invoke-virtual {v0}, Lcom/admogo/adapters/MogoAdapter;->displayMogo()V

    .line 206
    return-void
.end method
