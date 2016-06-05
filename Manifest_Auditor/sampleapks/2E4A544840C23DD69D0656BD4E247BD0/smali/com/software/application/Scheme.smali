.class public Lcom/software/application/Scheme;
.super Ljava/lang/Object;
.source "Scheme.java"


# instance fields
.field public list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public smsQuantity:I


# direct methods
.method public constructor <init>(ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "smsQuantity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 16
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput p1, p0, Lcom/software/application/Scheme;->smsQuantity:I

    .line 18
    iput-object p2, p0, Lcom/software/application/Scheme;->list:Ljava/util/ArrayList;

    .line 19
    return-void
.end method
