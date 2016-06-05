.class public Lcom/masshabit/common/curve/CurveParser;
.super Ljava/lang/Object;
.source "CurveParser.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "CurveParser"

.field protected static final TOKEN_MATCHER:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const-string v0, "([McCsSz])|([-]?[\\d.]+)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/masshabit/common/curve/CurveParser;->TOKEN_MATCHER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/masshabit/common/curve/PolyCubicBezier;
    .locals 10
    .param p0, "definition"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 122
    const-string v7, "\\s+"

    const-string v8, ""

    invoke-virtual {p0, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 124
    sget-object v7, Lcom/masshabit/common/curve/CurveParser;->TOKEN_MATCHER:Ljava/util/regex/Pattern;

    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 125
    .local v4, "m":Ljava/util/regex/Matcher;
    new-instance v2, Ljava/util/ArrayList;

    const/16 v7, 0x8

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v2, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v5, 0x0

    .line 128
    .local v5, "previousCommand":Ljava/lang/Character;
    const/4 v1, 0x0

    .line 130
    .local v1, "command":Ljava/lang/Character;
    new-instance v0, Lcom/masshabit/common/curve/PolyCubicBezier;

    invoke-direct {v0}, Lcom/masshabit/common/curve/PolyCubicBezier;-><init>()V

    .line 131
    .local v0, "c":Lcom/masshabit/common/curve/PolyCubicBezier;
    iput-boolean v9, v0, Lcom/masshabit/common/curve/PolyCubicBezier;->mLoop:Z

    .line 133
    :goto_0
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 135
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v6

    .line 136
    .local v6, "s":Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 138
    .local v3, "letter":C
    sparse-switch v3, :sswitch_data_0

    .line 157
    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 147
    :sswitch_0
    if-eqz v1, :cond_0

    .line 149
    invoke-static {v0, v5, v1, v2}, Lcom/masshabit/common/curve/CurveParser;->processCommand(Lcom/masshabit/common/curve/PolyCubicBezier;Ljava/lang/Character;Ljava/lang/Character;Ljava/util/ArrayList;)V

    .line 151
    :cond_0
    move-object v5, v1

    .line 152
    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 153
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 161
    .end local v3    # "letter":C
    .end local v6    # "s":Ljava/lang/String;
    :cond_1
    if-eqz v1, :cond_2

    .line 163
    invoke-static {v0, v5, v1, v2}, Lcom/masshabit/common/curve/CurveParser;->processCommand(Lcom/masshabit/common/curve/PolyCubicBezier;Ljava/lang/Character;Ljava/lang/Character;Ljava/util/ArrayList;)V

    .line 166
    :cond_2
    invoke-virtual {v0}, Lcom/masshabit/common/curve/PolyCubicBezier;->estimateLength()V

    .line 167
    return-object v0

    .line 138
    nop

    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_0
        0x4d -> :sswitch_0
        0x53 -> :sswitch_0
        0x5a -> :sswitch_0
        0x63 -> :sswitch_0
        0x73 -> :sswitch_0
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method protected static processCommand(Lcom/masshabit/common/curve/PolyCubicBezier;Ljava/lang/Character;Ljava/lang/Character;Ljava/util/ArrayList;)V
    .locals 11
    .param p0, "pc"    # Lcom/masshabit/common/curve/PolyCubicBezier;
    .param p1, "previousCommand"    # Ljava/lang/Character;
    .param p2, "command"    # Ljava/lang/Character;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/masshabit/common/curve/PolyCubicBezier;",
            "Ljava/lang/Character;",
            "Ljava/lang/Character;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 23
    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized curve command: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v7}, Ljunit/framework/Assert;->assertTrue(Ljava/lang/String;Z)V

    .line 118
    .end local p0    # "pc":Lcom/masshabit/common/curve/PolyCubicBezier;
    :goto_0
    return-void

    .line 26
    .restart local p0    # "pc":Lcom/masshabit/common/curve/PolyCubicBezier;
    :sswitch_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v8, :cond_0

    move v2, v6

    :goto_1
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 27
    new-instance v0, Lcom/masshabit/common/curve/CubicBezier;

    invoke-direct {v0}, Lcom/masshabit/common/curve/CubicBezier;-><init>()V

    .line 28
    .local v0, "c":Lcom/masshabit/common/curve/CubicBezier;
    iget-object v3, v0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 29
    iget-object v3, v0, Lcom/masshabit/common/curve/CubicBezier;->mP2:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v3, v4, v2}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 30
    iget-object v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    :cond_0
    move v2, v7

    .line 26
    goto :goto_1

    .line 34
    :sswitch_1
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    move v2, v6

    :goto_2
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 35
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v2

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_2

    .line 37
    iget-object v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/curve/CubicBezier;

    .line 38
    .local v1, "last":Lcom/masshabit/common/curve/CubicBezier;
    new-instance v0, Lcom/masshabit/common/curve/CubicBezier;

    invoke-direct {v0}, Lcom/masshabit/common/curve/CubicBezier;-><init>()V

    .line 39
    .restart local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, v1, Lcom/masshabit/common/curve/CubicBezier;->mP4:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v2, v3}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 40
    iget-object v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    .end local v1    # "last":Lcom/masshabit/common/curve/CubicBezier;
    :goto_3
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP2:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, v0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "pc":Lcom/masshabit/common/curve/PolyCubicBezier;
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 47
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP4:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, v0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    invoke-virtual {p3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    const/4 v5, 0x5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 48
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP3:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, v0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    goto/16 :goto_0

    .end local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    .restart local p0    # "pc":Lcom/masshabit/common/curve/PolyCubicBezier;
    :cond_1
    move v2, v7

    .line 34
    goto/16 :goto_2

    .line 44
    :cond_2
    iget-object v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/curve/CubicBezier;

    .restart local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    goto :goto_3

    .line 52
    .end local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    :sswitch_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    move v2, v6

    :goto_4
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 53
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v2

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_4

    .line 55
    iget-object v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/curve/CubicBezier;

    .line 56
    .restart local v1    # "last":Lcom/masshabit/common/curve/CubicBezier;
    new-instance v0, Lcom/masshabit/common/curve/CubicBezier;

    invoke-direct {v0}, Lcom/masshabit/common/curve/CubicBezier;-><init>()V

    .line 57
    .restart local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, v1, Lcom/masshabit/common/curve/CubicBezier;->mP4:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v2, v3}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 58
    iget-object v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    .end local v1    # "last":Lcom/masshabit/common/curve/CubicBezier;
    :goto_5
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP2:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "pc":Lcom/masshabit/common/curve/PolyCubicBezier;
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 65
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP4:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/4 v4, 0x5

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 66
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP3:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    goto/16 :goto_0

    .end local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    .restart local p0    # "pc":Lcom/masshabit/common/curve/PolyCubicBezier;
    :cond_3
    move v2, v7

    .line 52
    goto :goto_4

    .line 62
    :cond_4
    iget-object v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/curve/CubicBezier;

    .restart local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    goto :goto_5

    .line 70
    .end local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    :sswitch_3
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v10, :cond_5

    move v2, v6

    :goto_6
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 71
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v2

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_6

    .line 73
    iget-object v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/curve/CubicBezier;

    .line 74
    .restart local v1    # "last":Lcom/masshabit/common/curve/CubicBezier;
    new-instance v0, Lcom/masshabit/common/curve/CubicBezier;

    invoke-direct {v0}, Lcom/masshabit/common/curve/CubicBezier;-><init>()V

    .line 75
    .restart local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, v1, Lcom/masshabit/common/curve/CubicBezier;->mP4:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v2, v3}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 76
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP2:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, v1, Lcom/masshabit/common/curve/CubicBezier;->mP3:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v2, v3}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 77
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP2:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, v1, Lcom/masshabit/common/curve/CubicBezier;->mP4:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v2, v3}, Lcom/masshabit/common/physics/Vector2;->subtract(Lcom/masshabit/common/physics/Vector2;)V

    .line 78
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP2:Lcom/masshabit/common/physics/Vector2;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, v3}, Lcom/masshabit/common/physics/Vector2;->multiply(F)V

    .line 79
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP2:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, v1, Lcom/masshabit/common/curve/CubicBezier;->mP4:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v2, v3}, Lcom/masshabit/common/physics/Vector2;->add(Lcom/masshabit/common/physics/Vector2;)V

    .line 80
    iget-object v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    .end local v1    # "last":Lcom/masshabit/common/curve/CubicBezier;
    :goto_7
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP4:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, v0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "pc":Lcom/masshabit/common/curve/PolyCubicBezier;
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 87
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP3:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, v0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    iget v3, v3, Lcom/masshabit/common/physics/Vector2;->x:F

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    iget-object v4, v0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    iget v4, v4, Lcom/masshabit/common/physics/Vector2;->y:F

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    goto/16 :goto_0

    .end local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    .restart local p0    # "pc":Lcom/masshabit/common/curve/PolyCubicBezier;
    :cond_5
    move v2, v7

    .line 70
    goto/16 :goto_6

    .line 84
    :cond_6
    iget-object v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/curve/CubicBezier;

    .restart local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    goto :goto_7

    .line 91
    .end local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    :sswitch_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v2, v10, :cond_7

    move v2, v6

    :goto_8
    invoke-static {v2}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 92
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result v2

    const/16 v3, 0x4d

    if-eq v2, v3, :cond_8

    .line 94
    iget-object v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/masshabit/common/curve/CubicBezier;

    .line 95
    .restart local v1    # "last":Lcom/masshabit/common/curve/CubicBezier;
    new-instance v0, Lcom/masshabit/common/curve/CubicBezier;

    invoke-direct {v0}, Lcom/masshabit/common/curve/CubicBezier;-><init>()V

    .line 96
    .restart local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP1:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, v1, Lcom/masshabit/common/curve/CubicBezier;->mP4:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v2, v3}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 97
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP2:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, v1, Lcom/masshabit/common/curve/CubicBezier;->mP3:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v2, v3}, Lcom/masshabit/common/physics/Vector2;->set(Lcom/masshabit/common/physics/Vector2;)V

    .line 98
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP2:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, v1, Lcom/masshabit/common/curve/CubicBezier;->mP4:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v2, v3}, Lcom/masshabit/common/physics/Vector2;->subtract(Lcom/masshabit/common/physics/Vector2;)V

    .line 99
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP2:Lcom/masshabit/common/physics/Vector2;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v2, v3}, Lcom/masshabit/common/physics/Vector2;->multiply(F)V

    .line 100
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP2:Lcom/masshabit/common/physics/Vector2;

    iget-object v3, v1, Lcom/masshabit/common/curve/CubicBezier;->mP4:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {v2, v3}, Lcom/masshabit/common/physics/Vector2;->add(Lcom/masshabit/common/physics/Vector2;)V

    .line 101
    iget-object v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    .end local v1    # "last":Lcom/masshabit/common/curve/CubicBezier;
    :goto_9
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP4:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0    # "pc":Lcom/masshabit/common/curve/PolyCubicBezier;
    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    .line 108
    iget-object v2, v0, Lcom/masshabit/common/curve/CubicBezier;->mP3:Lcom/masshabit/common/physics/Vector2;

    invoke-virtual {p3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/masshabit/common/physics/Vector2;->set(FF)V

    goto/16 :goto_0

    .end local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    .restart local p0    # "pc":Lcom/masshabit/common/curve/PolyCubicBezier;
    :cond_7
    move v2, v7

    .line 91
    goto :goto_8

    .line 105
    :cond_8
    iget-object v2, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mCurves:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/masshabit/common/curve/CubicBezier;

    .restart local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    goto :goto_9

    .line 112
    .end local v0    # "c":Lcom/masshabit/common/curve/CubicBezier;
    :sswitch_5
    iput-boolean v6, p0, Lcom/masshabit/common/curve/PolyCubicBezier;->mLoop:Z

    goto/16 :goto_0

    .line 23
    :sswitch_data_0
    .sparse-switch
        0x43 -> :sswitch_2
        0x4d -> :sswitch_0
        0x53 -> :sswitch_4
        0x63 -> :sswitch_1
        0x73 -> :sswitch_3
        0x7a -> :sswitch_5
    .end sparse-switch
.end method
