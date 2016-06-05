.class public Lad/notify/ScreenItem;
.super Ljava/lang/Object;
.source "ScreenItem.java"


# instance fields
.field public buttons:Ljava/util/Vector;

.field public id:I

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lad/notify/ScreenItem;->buttons:Ljava/util/Vector;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lad/notify/ScreenItem;->text:Ljava/lang/String;

    .line 29
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 3
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "buttons"    # [Ljava/lang/String;
    .param p4, "id"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lad/notify/ScreenItem;->buttons:Ljava/util/Vector;

    .line 16
    iput-object p1, p0, Lad/notify/ScreenItem;->title:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lad/notify/ScreenItem;->text:Ljava/lang/String;

    .line 18
    iput p4, p0, Lad/notify/ScreenItem;->id:I

    .line 19
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p3

    if-lt v0, v1, :cond_0

    .line 23
    return-void

    .line 21
    :cond_0
    iget-object v1, p0, Lad/notify/ScreenItem;->buttons:Ljava/util/Vector;

    aget-object v2, p3, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 19
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
