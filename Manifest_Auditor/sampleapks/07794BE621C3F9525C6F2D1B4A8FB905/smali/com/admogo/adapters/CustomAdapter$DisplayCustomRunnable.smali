.class Lcom/admogo/adapters/CustomAdapter$DisplayCustomRunnable;
.super Ljava/lang/Object;
.source "CustomAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/admogo/adapters/CustomAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisplayCustomRunnable"
.end annotation


# instance fields
.field private customAdapter:Lcom/admogo/adapters/CustomAdapter;


# direct methods
.method public constructor <init>(Lcom/admogo/adapters/CustomAdapter;)V
    .locals 0
    .param p1, "customAdapter"    # Lcom/admogo/adapters/CustomAdapter;

    .prologue
    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    iput-object p1, p0, Lcom/admogo/adapters/CustomAdapter$DisplayCustomRunnable;->customAdapter:Lcom/admogo/adapters/CustomAdapter;

    .line 203
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/admogo/adapters/CustomAdapter$DisplayCustomRunnable;->customAdapter:Lcom/admogo/adapters/CustomAdapter;

    invoke-virtual {v0}, Lcom/admogo/adapters/CustomAdapter;->displayCustom()V

    .line 207
    return-void
.end method
