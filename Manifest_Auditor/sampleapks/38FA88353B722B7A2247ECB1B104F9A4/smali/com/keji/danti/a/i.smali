.class Lcom/keji/danti/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/keji/danti/a/ar;


# direct methods
.method constructor <init>(Lcom/keji/danti/a/ar;)V
    .locals 0

    iput-object p1, p0, Lcom/keji/danti/a/i;->a:Lcom/keji/danti/a/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/keji/danti/a/i;->a:Lcom/keji/danti/a/ar;

    invoke-static {v0, v2}, Lcom/keji/danti/a/ar;->a(Lcom/keji/danti/a/ar;Z)Z

    :cond_0
    return v2
.end method
