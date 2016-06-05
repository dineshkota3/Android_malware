.class public Lcom/gp/monolith/HighScoreTable;
.super Ljava/lang/Object;
.source "HighScoreTable.java"


# instance fields
.field private activity:Landroid/app/Activity;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private highScoreTableSize:I

.field private highScores:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/gp/monolith/HighScore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "highScoreTableSize"    # I

    .prologue
    const/4 v8, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lcom/gp/monolith/HighScoreTable;->highScores:Ljava/util/Vector;

    .line 11
    iput-object p1, p0, Lcom/gp/monolith/HighScoreTable;->activity:Landroid/app/Activity;

    .line 12
    iget-object v6, p0, Lcom/gp/monolith/HighScoreTable;->activity:Landroid/app/Activity;

    invoke-virtual {v6, v8}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 14
    .local v4, "prefs":Landroid/content/SharedPreferences;
    iput p2, p0, Lcom/gp/monolith/HighScoreTable;->highScoreTableSize:I

    .line 15
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    iput-object v6, p0, Lcom/gp/monolith/HighScoreTable;->editor:Landroid/content/SharedPreferences$Editor;

    .line 16
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p2, :cond_0

    .line 25
    return-void

    .line 19
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "score"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 20
    .local v5, "score":I
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "name"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "teacake"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 21
    .local v3, "name":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "level"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 22
    .local v2, "level":Ljava/lang/String;
    new-instance v0, Lcom/gp/monolith/HighScore;

    invoke-direct {v0, v5, v3, v2}, Lcom/gp/monolith/HighScore;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .local v0, "hs":Lcom/gp/monolith/HighScore;
    iget-object v6, p0, Lcom/gp/monolith/HighScoreTable;->highScores:Ljava/util/Vector;

    invoke-virtual {v6, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 16
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getHighScore(I)Lcom/gp/monolith/HighScore;
    .locals 1
    .param p1, "highscorepos"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/gp/monolith/HighScoreTable;->highScores:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "this":Lcom/gp/monolith/HighScoreTable;
    check-cast p0, Lcom/gp/monolith/HighScore;

    return-object p0
.end method

.method public getHighScoreCount()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/gp/monolith/HighScoreTable;->highScoreTableSize:I

    return v0
.end method

.method public isHighScore(I)Z
    .locals 2
    .param p1, "score"    # I

    .prologue
    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/gp/monolith/HighScoreTable;->highScores:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 53
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/gp/monolith/HighScoreTable;->highScores:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gp/monolith/HighScore;

    invoke-virtual {v1}, Lcom/gp/monolith/HighScore;->getScore()I

    move-result v1

    if-ge v1, p1, :cond_1

    .line 50
    const/4 v1, 0x1

    goto :goto_1

    .line 45
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public isHighScore(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "score"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "level"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 29
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/gp/monolith/HighScoreTable;->highScores:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_0

    .line 41
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/gp/monolith/HighScoreTable;->highScores:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gp/monolith/HighScore;

    invoke-virtual {v2}, Lcom/gp/monolith/HighScore;->getScore()I

    move-result v2

    if-ge v2, p1, :cond_2

    .line 33
    iget-object v2, p0, Lcom/gp/monolith/HighScoreTable;->highScores:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int v1, v2, v5

    .local v1, "j":I
    :goto_2
    if-gt v1, v0, :cond_1

    .line 37
    iget-object v2, p0, Lcom/gp/monolith/HighScoreTable;->highScores:Ljava/util/Vector;

    new-instance v3, Lcom/gp/monolith/HighScore;

    invoke-direct {v3, p1, p2, p3}, Lcom/gp/monolith/HighScore;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v3}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v2, v5

    .line 38
    goto :goto_1

    .line 35
    :cond_1
    iget-object v3, p0, Lcom/gp/monolith/HighScoreTable;->highScores:Ljava/util/Vector;

    iget-object v2, p0, Lcom/gp/monolith/HighScoreTable;->highScores:Ljava/util/Vector;

    sub-int v4, v1, v5

    invoke-virtual {v2, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gp/monolith/HighScore;

    invoke-virtual {v3, v1, v2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 33
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 29
    .end local v1    # "j":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public saveHighScores()V
    .locals 4

    .prologue
    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/gp/monolith/HighScoreTable;->highScoreTableSize:I

    if-lt v0, v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/gp/monolith/HighScoreTable;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    return-void

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/gp/monolith/HighScoreTable;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "score"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/gp/monolith/HighScoreTable;->highScores:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gp/monolith/HighScore;

    invoke-virtual {v1}, Lcom/gp/monolith/HighScore;->getScore()I

    move-result v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 62
    iget-object v2, p0, Lcom/gp/monolith/HighScoreTable;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "name"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/gp/monolith/HighScoreTable;->highScores:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gp/monolith/HighScore;

    invoke-virtual {v1}, Lcom/gp/monolith/HighScore;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 63
    iget-object v2, p0, Lcom/gp/monolith/HighScoreTable;->editor:Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "level"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/gp/monolith/HighScoreTable;->highScores:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gp/monolith/HighScore;

    invoke-virtual {v1}, Lcom/gp/monolith/HighScore;->getLevel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
