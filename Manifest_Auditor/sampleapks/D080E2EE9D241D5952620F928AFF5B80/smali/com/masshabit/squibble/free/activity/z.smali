.class final Lcom/masshabit/squibble/free/activity/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/masshabit/squibble/free/activity/h;


# direct methods
.method constructor <init>(Lcom/masshabit/squibble/free/activity/h;)V
    .locals 0

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/z;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/z;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-virtual {v0}, Lcom/masshabit/squibble/free/activity/h;->finish()V

    return-void
.end method
