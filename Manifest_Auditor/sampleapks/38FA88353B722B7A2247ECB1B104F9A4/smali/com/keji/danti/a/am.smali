.class Lcom/keji/danti/a/am;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/n;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/n;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/am;->a:Lcom/keji/danti/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "history"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/keji/danti/History;->history:Lcom/keji/danti/History;

    invoke-virtual {v0}, Lcom/keji/danti/History;->initData()V

    sget-object v0, Lcom/keji/danti/History;->history:Lcom/keji/danti/History;

    invoke-virtual {v0}, Lcom/keji/danti/History;->expandableListView()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "jinping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/keji/danti/Boutique;->boutique:Lcom/keji/danti/Boutique;

    invoke-virtual {v0}, Lcom/keji/danti/Boutique;->initData()V

    goto :goto_0
.end method
