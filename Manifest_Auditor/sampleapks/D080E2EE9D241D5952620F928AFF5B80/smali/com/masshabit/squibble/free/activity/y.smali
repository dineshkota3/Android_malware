.class final Lcom/masshabit/squibble/free/activity/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/masshabit/squibble/free/activity/h;


# direct methods
.method constructor <init>(Lcom/masshabit/squibble/free/activity/h;)V
    .locals 0

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/y;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/y;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-static {v0}, Lcom/masshabit/squibble/free/activity/h;->a(Lcom/masshabit/squibble/free/activity/h;)[Z

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/y;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/h;->a(Lcom/masshabit/squibble/free/activity/h;)[Z

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/y;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/h;->a(Lcom/masshabit/squibble/free/activity/h;)[Z

    move-result-object v1

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    move v0, v2

    :goto_2
    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/y;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/h;->a(Lcom/masshabit/squibble/free/activity/h;)[Z

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/y;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/h;->a(Lcom/masshabit/squibble/free/activity/h;)[Z

    move-result-object v1

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/y;->a:Lcom/masshabit/squibble/free/activity/h;

    iget-object v0, v0, Lcom/masshabit/squibble/free/activity/h;->f:Landroid/widget/Button;

    const-string v1, "\u5168\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/y;->a:Lcom/masshabit/squibble/free/activity/h;

    iget-object v0, v0, Lcom/masshabit/squibble/free/activity/h;->e:Landroid/widget/ArrayAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/y;->a:Lcom/masshabit/squibble/free/activity/h;

    iget-object v0, v0, Lcom/masshabit/squibble/free/activity/h;->e:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void

    :cond_3
    move v0, v2

    :goto_4
    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/y;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/h;->a(Lcom/masshabit/squibble/free/activity/h;)[Z

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/masshabit/squibble/free/activity/y;->a:Lcom/masshabit/squibble/free/activity/h;

    invoke-static {v1}, Lcom/masshabit/squibble/free/activity/h;->a(Lcom/masshabit/squibble/free/activity/h;)[Z

    move-result-object v1

    aput-boolean v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/y;->a:Lcom/masshabit/squibble/free/activity/h;

    iget-object v0, v0, Lcom/masshabit/squibble/free/activity/h;->f:Landroid/widget/Button;

    const-string v1, "\u5168\u4e0d\u9009"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_1
.end method
