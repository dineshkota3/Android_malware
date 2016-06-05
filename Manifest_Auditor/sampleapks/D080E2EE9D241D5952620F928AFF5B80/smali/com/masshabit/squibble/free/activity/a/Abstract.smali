.class public abstract Lcom/masshabit/squibble/free/activity/a/Abstract;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Ljava/lang/String;

.field private b:Landroid/content/Context;

.field private c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/masshabit/squibble/free/activity/a/a;

    invoke-direct {v0}, Lcom/masshabit/squibble/free/activity/a/a;-><init>()V

    sput-object v0, Lcom/masshabit/squibble/free/activity/a/Abstract;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/Abstract;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/Abstract;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/Abstract;->c:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/a/Abstract;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/masshabit/squibble/free/activity/a/Abstract;->c:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/masshabit/squibble/free/activity/a/Abstract;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/Abstract;->c:Ljava/util/HashMap;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/Abstract;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/Abstract;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/masshabit/squibble/free/activity/a/Abstract;->b:Landroid/content/Context;

    return-void
.end method

.method public abstract a(Lcom/masshabit/squibble/free/activity/e/m;)V
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/Abstract;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract d()V
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract e()I
.end method

.method public abstract f()I
.end method

.method public abstract g()Landroid/content/Intent;
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected abstract i()[Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/Abstract;->c:Ljava/util/HashMap;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/Abstract;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/Abstract;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/masshabit/squibble/free/activity/a/Abstract;->i()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, v1

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/masshabit/squibble/free/activity/a/Abstract;->c:Ljava/util/HashMap;

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    return-void
.end method
