.class Ljp/bravo/honda/DobraKorzina$3;
.super Ljava/lang/Object;
.source "DobraKorzina.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/bravo/honda/DobraKorzina;->setstartdisplay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/bravo/honda/DobraKorzina;


# direct methods
.method constructor <init>(Ljp/bravo/honda/DobraKorzina;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Ljp/bravo/honda/DobraKorzina$3;->this$0:Ljp/bravo/honda/DobraKorzina;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 93
    iget-object v0, p0, Ljp/bravo/honda/DobraKorzina$3;->this$0:Ljp/bravo/honda/DobraKorzina;

    invoke-virtual {v0}, Ljp/bravo/honda/DobraKorzina;->setroolsdisplay()V

    .line 94
    return-void
.end method
