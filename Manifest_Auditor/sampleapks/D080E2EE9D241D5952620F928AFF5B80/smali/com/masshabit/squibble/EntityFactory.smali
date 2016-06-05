.class public Lcom/masshabit/squibble/EntityFactory;
.super Ljava/lang/Object;
.source "EntityFactory.java"

# interfaces
.implements Lcom/masshabit/common/entity/IEntityFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/masshabit/common/entity/Entity;
    .locals 3
    .param p1, "entityType"    # Ljava/lang/String;
    .param p2, "elem"    # Lorg/w3c/dom/Element;

    .prologue
    .line 17
    const/4 v1, 0x0

    .line 18
    .local v1, "entity":Lcom/masshabit/common/entity/Entity;
    const-string v2, "item"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 20
    new-instance v1, Lcom/masshabit/squibble/ItemEntity;

    .end local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    invoke-direct {v1}, Lcom/masshabit/squibble/ItemEntity;-><init>()V

    .line 79
    .restart local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    :cond_0
    :goto_0
    return-object v1

    .line 22
    :cond_1
    const-string v2, "animation"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 24
    new-instance v1, Lcom/masshabit/common/entity/AnimatedEntity;

    .end local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    invoke-direct {v1}, Lcom/masshabit/common/entity/AnimatedEntity;-><init>()V

    .restart local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    goto :goto_0

    .line 26
    :cond_2
    const-string v2, "player"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 28
    new-instance v1, Lcom/masshabit/squibble/Player;

    .end local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    invoke-direct {v1}, Lcom/masshabit/squibble/Player;-><init>()V

    .restart local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    goto :goto_0

    .line 30
    :cond_3
    const-string v2, "npc"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 32
    new-instance v1, Lcom/masshabit/squibble/NPC;

    .end local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    invoke-direct {v1}, Lcom/masshabit/squibble/NPC;-><init>()V

    .restart local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    goto :goto_0

    .line 34
    :cond_4
    const-string v2, "map_player"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 36
    new-instance v1, Lcom/masshabit/squibble/WorldMapPlayer;

    .end local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    invoke-direct {v1}, Lcom/masshabit/squibble/WorldMapPlayer;-><init>()V

    .restart local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    goto :goto_0

    .line 38
    :cond_5
    const-string v2, "camera"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 40
    new-instance v1, Lcom/masshabit/squibble/CameraPositionEntity;

    .end local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    invoke-direct {v1}, Lcom/masshabit/squibble/CameraPositionEntity;-><init>()V

    .restart local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    goto :goto_0

    .line 42
    :cond_6
    const-string v2, "map_node"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 44
    new-instance v1, Lcom/masshabit/squibble/WorldMapNode;

    .end local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    invoke-direct {v1}, Lcom/masshabit/squibble/WorldMapNode;-><init>()V

    .restart local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    goto :goto_0

    .line 46
    :cond_7
    const-string v2, "map_path"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 48
    const-string v2, "d"

    invoke-interface {p2, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/masshabit/common/curve/CurveParser;->parse(Ljava/lang/String;)Lcom/masshabit/common/curve/PolyCubicBezier;

    move-result-object v0

    .line 49
    .local v0, "curve":Lcom/masshabit/common/curve/PolyCubicBezier;
    new-instance v1, Lcom/masshabit/squibble/WorldMapPath;

    .end local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    invoke-direct {v1, v0}, Lcom/masshabit/squibble/WorldMapPath;-><init>(Lcom/masshabit/common/curve/PolyCubicBezier;)V

    .line 50
    .restart local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    goto :goto_0

    .line 51
    .end local v0    # "curve":Lcom/masshabit/common/curve/PolyCubicBezier;
    :cond_8
    const-string v2, "map_hud"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 53
    new-instance v1, Lcom/masshabit/squibble/WorldMapHud;

    .end local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    invoke-direct {v1}, Lcom/masshabit/squibble/WorldMapHud;-><init>()V

    .restart local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    goto :goto_0

    .line 55
    :cond_9
    const-string v2, "mute"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 57
    new-instance v1, Lcom/masshabit/squibble/MuteEntity;

    .end local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    invoke-direct {v1}, Lcom/masshabit/squibble/MuteEntity;-><init>()V

    .restart local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    goto/16 :goto_0

    .line 59
    :cond_a
    const-string v2, "player_select_panel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 61
    new-instance v1, Lcom/masshabit/squibble/PlayerSelectPanel;

    .end local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    invoke-direct {v1}, Lcom/masshabit/squibble/PlayerSelectPanel;-><init>()V

    .restart local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    goto/16 :goto_0

    .line 63
    :cond_b
    const-string v2, "main_button_panel"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 65
    new-instance v1, Lcom/masshabit/squibble/MainButtonPanel;

    .end local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    invoke-direct {v1}, Lcom/masshabit/squibble/MainButtonPanel;-><init>()V

    .restart local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    goto/16 :goto_0

    .line 67
    :cond_c
    const-string v2, "button"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 69
    new-instance v1, Lcom/masshabit/squibble/ButtonEntity;

    .end local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    invoke-direct {v1}, Lcom/masshabit/squibble/ButtonEntity;-><init>()V

    .restart local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    goto/16 :goto_0

    .line 71
    :cond_d
    const-string v2, "hidable"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 73
    new-instance v1, Lcom/masshabit/squibble/HidableEntity;

    .end local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    invoke-direct {v1}, Lcom/masshabit/squibble/HidableEntity;-><init>()V

    .restart local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    goto/16 :goto_0

    .line 75
    :cond_e
    const-string v2, "position"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 77
    new-instance v1, Lcom/masshabit/squibble/PositionEntity;

    .end local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    invoke-direct {v1}, Lcom/masshabit/squibble/PositionEntity;-><init>()V

    .restart local v1    # "entity":Lcom/masshabit/common/entity/Entity;
    goto/16 :goto_0
.end method
