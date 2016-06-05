.class public Lcom/energysource/szj/embeded/ModuleEntity;
.super Ljava/lang/Object;
.source "ModuleEntity.java"


# instance fields
.field private loadClassPath:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private size:J

.field private verify:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLoadClassPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/energysource/szj/embeded/ModuleEntity;->loadClassPath:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/energysource/szj/embeded/ModuleEntity;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/energysource/szj/embeded/ModuleEntity;->size:J

    return-wide v0
.end method

.method public getVerify()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/energysource/szj/embeded/ModuleEntity;->verify:Ljava/lang/String;

    return-object v0
.end method

.method public setLoadClassPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "loadClassPath"    # Ljava/lang/String;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/energysource/szj/embeded/ModuleEntity;->loadClassPath:Ljava/lang/String;

    .line 24
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/energysource/szj/embeded/ModuleEntity;->name:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setSize(J)V
    .locals 0
    .param p1, "size"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/energysource/szj/embeded/ModuleEntity;->size:J

    .line 40
    return-void
.end method

.method public setVerify(Ljava/lang/String;)V
    .locals 0
    .param p1, "verify"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/energysource/szj/embeded/ModuleEntity;->verify:Ljava/lang/String;

    .line 48
    return-void
.end method
