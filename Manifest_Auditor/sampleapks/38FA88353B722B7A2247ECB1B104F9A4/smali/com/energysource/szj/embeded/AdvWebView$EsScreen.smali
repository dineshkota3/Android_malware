.class Lcom/energysource/szj/embeded/AdvWebView$EsScreen;
.super Ljava/lang/Object;
.source "AdvWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/energysource/szj/embeded/AdvWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "EsScreen"
.end annotation


# static fields
.field private static final esInstance:Lcom/energysource/szj/embeded/AdvWebView$EsScreen;


# instance fields
.field height:I

.field width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    new-instance v0, Lcom/energysource/szj/embeded/AdvWebView$EsScreen;

    invoke-direct {v0}, Lcom/energysource/szj/embeded/AdvWebView$EsScreen;-><init>()V

    sput-object v0, Lcom/energysource/szj/embeded/AdvWebView$EsScreen;->esInstance:Lcom/energysource/szj/embeded/AdvWebView$EsScreen;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/energysource/szj/embeded/AdvWebView$EsScreen;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/energysource/szj/embeded/AdvWebView$EsScreen;->esInstance:Lcom/energysource/szj/embeded/AdvWebView$EsScreen;

    return-object v0
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lcom/energysource/szj/embeded/AdvWebView$EsScreen;->height:I

    return v0
.end method

.method public getScreen()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/energysource/szj/embeded/AdvWebView$EsScreen;->esInstance:Lcom/energysource/szj/embeded/AdvWebView$EsScreen;

    iget v1, v1, Lcom/energysource/szj/embeded/AdvWebView$EsScreen;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/energysource/szj/embeded/AdvWebView$EsScreen;->esInstance:Lcom/energysource/szj/embeded/AdvWebView$EsScreen;

    iget v1, v1, Lcom/energysource/szj/embeded/AdvWebView$EsScreen;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 105
    iget v0, p0, Lcom/energysource/szj/embeded/AdvWebView$EsScreen;->width:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/energysource/szj/embeded/AdvWebView$EsScreen;->height:I

    .line 118
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 109
    iput p1, p0, Lcom/energysource/szj/embeded/AdvWebView$EsScreen;->width:I

    .line 110
    return-void
.end method
