.class public Lcom/keji/danti/History;
.super Landroid/app/ExpandableListActivity;


# static fields
.field public static history:Lcom/keji/danti/History;


# instance fields
.field a:Lcom/keji/danti/a/ss;

.field public pd:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/keji/danti/History;->history:Lcom/keji/danti/History;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/ExpandableListActivity;-><init>()V

    iput-object v0, p0, Lcom/keji/danti/History;->pd:Landroid/app/ProgressDialog;

    iput-object v0, p0, Lcom/keji/danti/History;->a:Lcom/keji/danti/a/ss;

    return-void
.end method


# virtual methods
.method public expandableListView()V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/keji/danti/History;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ExpandableListAdapter;->getGroupCount()I

    move-result v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0}, Lcom/keji/danti/History;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p0}, Lcom/keji/danti/History;->getExpandableListView()Landroid/widget/ExpandableListView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public initData()V
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/keji/danti/History;->pd:Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/keji/danti/History;->pd:Landroid/app/ProgressDialog;

    const-string v1, "\u52a0\u8f7d\u6570\u636e\u4e2d\uff0c\u8bf7\u7a0d\u7b49..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/keji/danti/History;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/keji/danti/History;->a:Lcom/keji/danti/a/ss;

    if-nez v0, :cond_0

    new-instance v0, Lcom/keji/danti/a/ss;

    invoke-direct {v0}, Lcom/keji/danti/a/ss;-><init>()V

    iput-object v0, p0, Lcom/keji/danti/History;->a:Lcom/keji/danti/a/ss;

    :cond_0
    iget-object v0, p0, Lcom/keji/danti/History;->a:Lcom/keji/danti/a/ss;

    invoke-virtual {v0, p0}, Lcom/keji/danti/a/ss;->a(Landroid/content/Context;)Lcom/keji/danti/a/l;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/ExpandableListActivity;->onCreate(Landroid/os/Bundle;)V

    sput-object p0, Lcom/keji/danti/History;->history:Lcom/keji/danti/History;

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    sget-object v0, Lcom/keji/danti/MainA;->main:Lcom/keji/danti/MainA;

    invoke-virtual {v0}, Lcom/keji/danti/MainA;->getKernel()Lcom/keji/danti/a/n;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/keji/danti/a/n;->a(I)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
