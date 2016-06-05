.class public interface abstract Lcom/gp/monolith/Game;
.super Ljava/lang/Object;
.source "Game.java"


# static fields
.field public static final GAME_CLASSIC:I = 0x0

.field public static final GAME_MONOLITH:I = 0x1

.field public static final GAME_PUZZLE:I = 0x2

.field public static final STATUS_EVOLVING:I = 0x4

.field public static final STATUS_GAME_OVER:I = 0x3

.field public static final STATUS_PAUSE:I = 0x2

.field public static final STATUS_PLAYING:I = 0x1

.field public static final STATUS_STARTUP:I


# virtual methods
.method public abstract canMoveBlockDown()Z
.end method

.method public abstract clearCompleteLines()V
.end method

.method public abstract clearGrid()V
.end method

.method public abstract flagCompletedLines()V
.end method

.method public abstract gameLoop()V
.end method

.method public abstract getClearedLineCount()I
.end method

.method public abstract getClearedLines()[I
.end method

.method public abstract getCurrentBlock()Lcom/gp/monolith/Block;
.end method

.method public abstract getCurrentStep()I
.end method

.method public abstract getEnergy()I
.end method

.method public abstract getGameType()I
.end method

.method public abstract getGridValue(II)I
.end method

.method public abstract getLevel()I
.end method

.method public abstract getLevelName()Ljava/lang/String;
.end method

.method public abstract getLevels()[I
.end method

.method public abstract getLines()I
.end method

.method public abstract getNextBlock()Lcom/gp/monolith/Block;
.end method

.method public abstract getPreviousGridValue(II)I
.end method

.method public abstract getScore()I
.end method

.method public abstract getStatus()I
.end method

.method public abstract getTimer()I
.end method

.method public abstract initGame(I)V
.end method

.method public abstract isBlockPlaced()Z
.end method

.method public abstract isTimerEnabled()Z
.end method

.method public abstract loadGame(Landroid/content/SharedPreferences;)V
.end method

.method public abstract moveBlockDown()Z
.end method

.method public abstract moveBlockLeft()V
.end method

.method public abstract moveBlockRight()V
.end method

.method public abstract rotateCurrentBlockClockwise()V
.end method

.method public abstract saveGame(Landroid/content/SharedPreferences;)V
.end method

.method public abstract setEnergy(I)V
.end method

.method public abstract setGridValue(III)V
.end method

.method public abstract setLevel(I)V
.end method

.method public abstract setLines(I)V
.end method

.method public abstract setScore(I)V
.end method

.method public abstract setStatus(I)V
.end method

.method public abstract setStep(I)V
.end method

.method public abstract setTimer(I)V
.end method

.method public abstract setTimerEnabled(Z)V
.end method
