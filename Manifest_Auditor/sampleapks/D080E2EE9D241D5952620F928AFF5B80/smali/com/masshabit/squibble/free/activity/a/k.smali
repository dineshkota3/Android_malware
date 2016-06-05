.class public final Lcom/masshabit/squibble/free/activity/a/k;
.super Lcom/masshabit/squibble/free/activity/a/Abstract;


# static fields
.field private static b:Ljava/lang/String;


# instance fields
.field private c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "http://maps.google.com/maps?f=d&daddr=endLat%20endLng&hl=zh-cn"

    sput-object v0, Lcom/masshabit/squibble/free/activity/a/k;->b:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/masshabit/squibble/free/activity/a/Abstract;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "map_x"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "map_y"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/k;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/masshabit/squibble/free/activity/e/m;)V
    .locals 0

    return-void
.end method

.method public final b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final d()V
    .locals 5

    const-string v4, ";"

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/k;->a:Ljava/lang/String;

    sget-object v1, Lcom/masshabit/squibble/free/activity/c;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "map_x"

    const/4 v2, 0x0

    const-string v3, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/masshabit/squibble/free/activity/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "map_y"

    const-string v2, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/masshabit/squibble/free/activity/a/k;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()I
    .locals 1

    const v0, 0x1080043

    return v0
.end method

.method public final f()I
    .locals 1

    const v0, 0x1080043

    return v0
.end method

.method public final g()Landroid/content/Intent;
    .locals 3

    sget-object v0, Lcom/masshabit/squibble/free/activity/a/k;->b:Ljava/lang/String;

    const-string v1, "endLat"

    const-string v2, "map_x"

    invoke-virtual {p0, v2}, Lcom/masshabit/squibble/free/activity/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "endLng"

    const-string v2, "map_y"

    invoke-virtual {p0, v2}, Lcom/masshabit/squibble/free/activity/a/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v0, 0x10000000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v1
.end method

.method protected final i()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/k;->c:[Ljava/lang/String;

    return-object v0
.end method
