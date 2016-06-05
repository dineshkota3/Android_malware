.class Lcom/keji/danti/pg;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/keji/danti/Lists;


# direct methods
.method constructor <init>(Lcom/keji/danti/Lists;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/pg;->a:Lcom/keji/danti/Lists;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/keji/danti/pg;->a:Lcom/keji/danti/Lists;

    iget-object v0, v0, Lcom/keji/danti/Lists;->b:Lcom/keji/danti/Lists;

    invoke-static {v0}, Lcom/keji/danti/a/su;->a(Landroid/app/Activity;)V

    return-void
.end method
