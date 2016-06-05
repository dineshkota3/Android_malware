.class public Lcom/gp/monolith/HighScore;
.super Ljava/lang/Object;
.source "HighScore.java"


# instance fields
.field private level:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private score:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "score"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "level"    # Ljava/lang/String;

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/gp/monolith/HighScore;->score:I

    .line 9
    iput-object p2, p0, Lcom/gp/monolith/HighScore;->name:Ljava/lang/String;

    .line 10
    iput-object p3, p0, Lcom/gp/monolith/HighScore;->level:Ljava/lang/String;

    .line 11
    return-void
.end method


# virtual methods
.method public getLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/gp/monolith/HighScore;->level:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/gp/monolith/HighScore;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getScore()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/gp/monolith/HighScore;->score:I

    return v0
.end method

.method public setLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/gp/monolith/HighScore;->level:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/gp/monolith/HighScore;->name:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setScore(I)V
    .locals 0
    .param p1, "score"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/gp/monolith/HighScore;->score:I

    .line 20
    return-void
.end method
