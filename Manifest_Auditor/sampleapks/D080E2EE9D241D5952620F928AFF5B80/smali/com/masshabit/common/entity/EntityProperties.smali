.class public Lcom/masshabit/common/entity/EntityProperties;
.super Ljava/lang/Object;
.source "EntityProperties.java"


# instance fields
.field public animationFile:Ljava/lang/String;

.field public autoFlip:Ljava/lang/Boolean;

.field public collisionHeight:Ljava/lang/Float;

.field public collisionRadius:Ljava/lang/Float;

.field public collisionWidth:Ljava/lang/Float;

.field public connections:Ljava/lang/String;

.field public grapple:Ljava/lang/Boolean;

.field public href:Ljava/lang/String;

.field public hurty:Ljava/lang/Boolean;

.field public id:Ljava/lang/String;

.field public parallaxX:Ljava/lang/Float;

.field public parallaxY:Ljava/lang/Float;

.field public path:Ljava/lang/String;

.field public pathOffsetX:Ljava/lang/Float;

.field public pathOffsetY:Ljava/lang/Float;

.field public shadow:Ljava/lang/Boolean;

.field public speed:Ljava/lang/Float;

.field public type:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "href"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/masshabit/common/entity/EntityProperties;->id:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/masshabit/common/entity/EntityProperties;->href:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/masshabit/common/entity/EntityProperties;
    .locals 13
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "href"    # Ljava/lang/String;
    .param p2, "onclick"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x1

    const-string v12, ""

    .line 83
    new-instance v5, Lcom/masshabit/common/entity/EntityProperties;

    const-string v9, ""

    invoke-virtual {v12, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    const/4 v9, 0x0

    :goto_0
    invoke-direct {v5, p0, v9}, Lcom/masshabit/common/entity/EntityProperties;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    .local v5, "props":Lcom/masshabit/common/entity/EntityProperties;
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "statements":[Ljava/lang/String;
    move-object v0, v7

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_10

    aget-object v6, v0, v1

    .line 87
    .local v6, "statement":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 88
    const-string v9, ""

    invoke-virtual {v6, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 85
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v5    # "props":Lcom/masshabit/common/entity/EntityProperties;
    .end local v6    # "statement":Ljava/lang/String;
    .end local v7    # "statements":[Ljava/lang/String;
    :cond_1
    move-object v9, p1

    .line 83
    goto :goto_0

    .line 91
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    .restart local v5    # "props":Lcom/masshabit/common/entity/EntityProperties;
    .restart local v6    # "statement":Ljava/lang/String;
    .restart local v7    # "statements":[Ljava/lang/String;
    :cond_2
    const-string v9, ":"

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "parts":[Ljava/lang/String;
    const/4 v9, 0x0

    aget-object v9, v4, v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "name":Ljava/lang/String;
    const-string v8, ""

    .line 95
    .local v8, "value":Ljava/lang/String;
    array-length v9, v4

    if-le v9, v11, :cond_3

    .line 97
    aget-object v9, v4, v11

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 100
    :cond_3
    const-string v9, "type"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 102
    iput-object v8, v5, Lcom/masshabit/common/entity/EntityProperties;->type:Ljava/lang/String;

    goto :goto_2

    .line 104
    :cond_4
    const-string v9, "animationfile"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 106
    iput-object v8, v5, Lcom/masshabit/common/entity/EntityProperties;->animationFile:Ljava/lang/String;

    goto :goto_2

    .line 108
    :cond_5
    const-string v9, "collisionradius"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 110
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iput-object v9, v5, Lcom/masshabit/common/entity/EntityProperties;->collisionRadius:Ljava/lang/Float;

    goto :goto_2

    .line 112
    :cond_6
    const-string v9, "collisionwidth"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 114
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iput-object v9, v5, Lcom/masshabit/common/entity/EntityProperties;->collisionWidth:Ljava/lang/Float;

    goto :goto_2

    .line 116
    :cond_7
    const-string v9, "collisionheight"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 118
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iput-object v9, v5, Lcom/masshabit/common/entity/EntityProperties;->collisionHeight:Ljava/lang/Float;

    goto :goto_2

    .line 120
    :cond_8
    const-string v9, "parallax_x"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 122
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iput-object v9, v5, Lcom/masshabit/common/entity/EntityProperties;->parallaxX:Ljava/lang/Float;

    goto :goto_2

    .line 124
    :cond_9
    const-string v9, "parallax_y"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 126
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    iput-object v9, v5, Lcom/masshabit/common/entity/EntityProperties;->parallaxY:Ljava/lang/Float;

    goto/16 :goto_2

    .line 128
    :cond_a
    const-string v9, "connections"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 130
    iput-object v8, v5, Lcom/masshabit/common/entity/EntityProperties;->connections:Ljava/lang/String;

    goto/16 :goto_2

    .line 132
    :cond_b
    const-string v9, "path"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 134
    iput-object v8, v5, Lcom/masshabit/common/entity/EntityProperties;->path:Ljava/lang/String;

    goto/16 :goto_2

    .line 136
    :cond_c
    const-string v9, "hurty"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 138
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v5, Lcom/masshabit/common/entity/EntityProperties;->hurty:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 140
    :cond_d
    const-string v9, "grapple"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    .line 142
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v5, Lcom/masshabit/common/entity/EntityProperties;->grapple:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 144
    :cond_e
    const-string v9, "autoflip"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 146
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v5, Lcom/masshabit/common/entity/EntityProperties;->autoFlip:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 148
    :cond_f
    const-string v9, "shadow"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 150
    invoke-static {v8}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    iput-object v9, v5, Lcom/masshabit/common/entity/EntityProperties;->shadow:Ljava/lang/Boolean;

    goto/16 :goto_2

    .line 154
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "parts":[Ljava/lang/String;
    .end local v6    # "statement":Ljava/lang/String;
    .end local v8    # "value":Ljava/lang/String;
    :cond_10
    return-object v5
.end method
