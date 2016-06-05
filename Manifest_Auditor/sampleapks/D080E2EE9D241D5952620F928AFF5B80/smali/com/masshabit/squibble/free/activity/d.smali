.class final Lcom/masshabit/squibble/free/activity/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_1

    new-instance v3, Lcom/masshabit/squibble/free/activity/c;

    invoke-direct {v3, v2}, Lcom/masshabit/squibble/free/activity/c;-><init>(Ljava/util/HashMap;)V

    :cond_0
    :goto_0
    sget-object v4, Lcom/masshabit/squibble/free/activity/Pushable;->v:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/masshabit/squibble/free/activity/Pushable;->w:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/masshabit/squibble/free/activity/Pushable;->a()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_2

    aget-object v6, v4, v5

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_0

    new-instance v3, Lcom/masshabit/squibble/free/activity/a;

    invoke-direct {v3, v2}, Lcom/masshabit/squibble/free/activity/a;-><init>(Ljava/util/HashMap;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v2}, Lcom/masshabit/squibble/free/activity/Pushable;->a(Ljava/util/HashMap;)V

    if-eqz v3, :cond_3

    invoke-static {v3, v0}, Lcom/masshabit/squibble/free/activity/Pushable;->a(Lcom/masshabit/squibble/free/activity/Pushable;I)I

    invoke-static {v3, v1}, Lcom/masshabit/squibble/free/activity/Pushable;->b(Lcom/masshabit/squibble/free/activity/Pushable;I)I

    :cond_3
    invoke-virtual {v3, p1}, Lcom/masshabit/squibble/free/activity/Pushable;->b(Landroid/os/Parcel;)V

    return-object v3
.end method

.method public final bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    new-array v0, p1, [Lcom/masshabit/squibble/free/activity/Pushable;

    return-object v0
.end method
