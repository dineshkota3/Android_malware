.class public Lcom/keji/danti/a/ss;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/keji/danti/a/l;


# instance fields
.field a:Lcom/keji/danti/History;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Lcom/keji/danti/a/l;
    .locals 3

    check-cast p1, Lcom/keji/danti/History;

    iput-object p1, p0, Lcom/keji/danti/a/ss;->a:Lcom/keji/danti/History;

    iget-object v0, p0, Lcom/keji/danti/a/ss;->a:Lcom/keji/danti/History;

    new-instance v1, Lcom/keji/danti/a/ph;

    iget-object v2, p0, Lcom/keji/danti/a/ss;->a:Lcom/keji/danti/History;

    invoke-direct {v1, p0, v2}, Lcom/keji/danti/a/ph;-><init>(Lcom/keji/danti/a/ss;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/keji/danti/History;->setListAdapter(Landroid/widget/ExpandableListAdapter;)V

    return-object p0
.end method
