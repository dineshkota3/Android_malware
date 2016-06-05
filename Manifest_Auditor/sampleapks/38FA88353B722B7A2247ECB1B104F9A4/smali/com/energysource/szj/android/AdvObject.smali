.class public Lcom/energysource/szj/android/AdvObject;
.super Ljava/lang/Object;
.source "AdvObject.java"


# instance fields
.field private height:I

.field private resContent:Ljava/lang/String;

.field private resTitle:Ljava/lang/String;

.field private showtype:I

.field private tid:Ljava/lang/String;

.field private time:J

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "advUrl"    # Ljava/lang/String;
    .param p2, "advTime"    # J
    .param p4, "advWidth"    # I
    .param p5, "advHeight"    # I
    .param p6, "advResTitle"    # Ljava/lang/String;
    .param p7, "advResContent"    # Ljava/lang/String;
    .param p8, "advTid"    # Ljava/lang/String;
    .param p9, "advShowType"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/energysource/szj/android/AdvObject;->url:Ljava/lang/String;

    .line 27
    iput-wide p2, p0, Lcom/energysource/szj/android/AdvObject;->time:J

    .line 28
    iput p4, p0, Lcom/energysource/szj/android/AdvObject;->width:I

    .line 29
    iput p5, p0, Lcom/energysource/szj/android/AdvObject;->height:I

    .line 30
    iput-object p6, p0, Lcom/energysource/szj/android/AdvObject;->resTitle:Ljava/lang/String;

    .line 31
    iput-object p7, p0, Lcom/energysource/szj/android/AdvObject;->resContent:Ljava/lang/String;

    .line 32
    iput-object p8, p0, Lcom/energysource/szj/android/AdvObject;->tid:Ljava/lang/String;

    .line 33
    iput p9, p0, Lcom/energysource/szj/android/AdvObject;->showtype:I

    .line 34
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/energysource/szj/android/AdvObject;->height:I

    return v0
.end method

.method public getResContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/energysource/szj/android/AdvObject;->resContent:Ljava/lang/String;

    return-object v0
.end method

.method public getResTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/energysource/szj/android/AdvObject;->resTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getShowtype()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/energysource/szj/android/AdvObject;->showtype:I

    return v0
.end method

.method public getTid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/energysource/szj/android/AdvObject;->tid:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/energysource/szj/android/AdvObject;->time:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/energysource/szj/android/AdvObject;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lcom/energysource/szj/android/AdvObject;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/energysource/szj/android/AdvObject;->height:I

    .line 74
    return-void
.end method

.method public setResContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "resContent"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/energysource/szj/android/AdvObject;->resContent:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setResTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "resTitle"    # Ljava/lang/String;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/energysource/szj/android/AdvObject;->resTitle:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setShowtype(I)V
    .locals 0
    .param p1, "showtype"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/energysource/szj/android/AdvObject;->showtype:I

    .line 114
    return-void
.end method

.method public setTid(Ljava/lang/String;)V
    .locals 0
    .param p1, "tid"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/energysource/szj/android/AdvObject;->tid:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setTime(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/energysource/szj/android/AdvObject;->time:J

    .line 54
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/energysource/szj/android/AdvObject;->url:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/energysource/szj/android/AdvObject;->width:I

    .line 64
    return-void
.end method
