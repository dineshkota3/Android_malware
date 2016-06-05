.class public Lcom/masshabit/common/Level;
.super Ljava/lang/Object;
.source "Level.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Level"


# instance fields
.field public mAnims:Lcom/masshabit/common/resource/AnimationResourceMap;

.field public mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

.field public mBoundaryGeom:Lcom/masshabit/common/physics/CollisionGroup;

.field public mCollisionGeom:Lcom/masshabit/common/physics/CollisionGroup;

.field public mEntities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/masshabit/common/entity/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public mEntityIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/masshabit/common/entity/Entity;",
            ">;"
        }
    .end annotation
.end field

.field public mExitGeom:Lcom/masshabit/common/physics/CollisionGroup;

.field public mHeight:F

.field public mHurtyGeom:Lcom/masshabit/common/physics/CollisionGroup;

.field public mHurtyNPCGeom:Lcom/masshabit/common/physics/CollisionGroup;

.field public mItemGeom:Lcom/masshabit/common/physics/CollisionGroup;

.field public mItemsCollected:I

.field public mLayerIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/masshabit/common/Layer;",
            ">;"
        }
    .end annotation
.end field

.field public mLayers:[Lcom/masshabit/common/Layer;

.field public mLoaded:Z

.field public final mName:Ljava/lang/String;

.field public mNeutralNPCGeom:Lcom/masshabit/common/physics/CollisionGroup;

.field public mPlayerGeom:Lcom/masshabit/common/physics/CollisionGroup;

.field public mTotalItems:I

.field public mWidth:F


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x40

    const/16 v6, 0x20

    const/16 v5, 0x10

    const/16 v4, 0x8

    const/high16 v3, -0x10000

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/common/Level;->mLayerIds:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/common/Level;->mEntities:Ljava/util/ArrayList;

    .line 33
    new-instance v0, Lcom/masshabit/common/physics/CollisionGroup;

    const/16 v1, 0x100

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Lcom/masshabit/common/physics/CollisionGroup;-><init>(II)V

    iput-object v0, p0, Lcom/masshabit/common/Level;->mCollisionGeom:Lcom/masshabit/common/physics/CollisionGroup;

    .line 34
    new-instance v0, Lcom/masshabit/common/physics/CollisionGroup;

    const v1, -0x777778

    invoke-direct {v0, v4, v1}, Lcom/masshabit/common/physics/CollisionGroup;-><init>(II)V

    iput-object v0, p0, Lcom/masshabit/common/Level;->mBoundaryGeom:Lcom/masshabit/common/physics/CollisionGroup;

    .line 35
    new-instance v0, Lcom/masshabit/common/physics/CollisionGroup;

    const/16 v1, 0x80

    invoke-direct {v0, v1, v3}, Lcom/masshabit/common/physics/CollisionGroup;-><init>(II)V

    iput-object v0, p0, Lcom/masshabit/common/Level;->mHurtyGeom:Lcom/masshabit/common/physics/CollisionGroup;

    .line 36
    new-instance v0, Lcom/masshabit/common/physics/CollisionGroup;

    invoke-direct {v0, v5, v3}, Lcom/masshabit/common/physics/CollisionGroup;-><init>(II)V

    iput-object v0, p0, Lcom/masshabit/common/Level;->mHurtyNPCGeom:Lcom/masshabit/common/physics/CollisionGroup;

    .line 37
    new-instance v0, Lcom/masshabit/common/physics/CollisionGroup;

    invoke-direct {v0, v5, v3}, Lcom/masshabit/common/physics/CollisionGroup;-><init>(II)V

    iput-object v0, p0, Lcom/masshabit/common/Level;->mNeutralNPCGeom:Lcom/masshabit/common/physics/CollisionGroup;

    .line 38
    new-instance v0, Lcom/masshabit/common/physics/CollisionGroup;

    const/4 v1, 0x4

    const v2, -0xff0100

    invoke-direct {v0, v1, v2}, Lcom/masshabit/common/physics/CollisionGroup;-><init>(II)V

    iput-object v0, p0, Lcom/masshabit/common/Level;->mPlayerGeom:Lcom/masshabit/common/physics/CollisionGroup;

    .line 39
    new-instance v0, Lcom/masshabit/common/physics/CollisionGroup;

    const/16 v1, 0x80

    const v2, -0xff0001

    invoke-direct {v0, v1, v2}, Lcom/masshabit/common/physics/CollisionGroup;-><init>(II)V

    iput-object v0, p0, Lcom/masshabit/common/Level;->mItemGeom:Lcom/masshabit/common/physics/CollisionGroup;

    .line 40
    new-instance v0, Lcom/masshabit/common/physics/CollisionGroup;

    const/16 v1, -0x100

    invoke-direct {v0, v4, v1}, Lcom/masshabit/common/physics/CollisionGroup;-><init>(II)V

    iput-object v0, p0, Lcom/masshabit/common/Level;->mExitGeom:Lcom/masshabit/common/physics/CollisionGroup;

    .line 45
    new-instance v0, Lcom/masshabit/common/resource/BitmapResourceMap;

    invoke-direct {v0, v6}, Lcom/masshabit/common/resource/BitmapResourceMap;-><init>(I)V

    iput-object v0, p0, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    .line 46
    new-instance v0, Lcom/masshabit/common/resource/AnimationResourceMap;

    iget-object v1, p0, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    invoke-direct {v0, v6, v1}, Lcom/masshabit/common/resource/AnimationResourceMap;-><init>(ILcom/masshabit/common/resource/BitmapResourceMap;)V

    iput-object v0, p0, Lcom/masshabit/common/Level;->mAnims:Lcom/masshabit/common/resource/AnimationResourceMap;

    .line 55
    iput-object p1, p0, Lcom/masshabit/common/Level;->mName:Ljava/lang/String;

    .line 56
    return-void
.end method


# virtual methods
.method public debugDumpResourceMaps()V
    .locals 2

    .prologue
    const-string v1, "Level"

    .line 103
    const-string v0, "Level"

    const-string v0, "Bitmaps:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    invoke-virtual {v0}, Lcom/masshabit/common/resource/BitmapResourceMap;->debugDump()V

    .line 105
    const-string v0, "Level"

    const-string v0, "Animations:"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/masshabit/common/Level;->mAnims:Lcom/masshabit/common/resource/AnimationResourceMap;

    invoke-virtual {v0}, Lcom/masshabit/common/resource/AnimationResourceMap;->debugDump()V

    .line 107
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/masshabit/common/Level;->mEntities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 95
    iget-object v0, p0, Lcom/masshabit/common/Level;->mEntityIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 96
    iget-object v0, p0, Lcom/masshabit/common/Level;->mLayerIds:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 98
    iget-object v0, p0, Lcom/masshabit/common/Level;->mBitmaps:Lcom/masshabit/common/resource/BitmapResourceMap;

    invoke-virtual {v0}, Lcom/masshabit/common/resource/BitmapResourceMap;->destroy()V

    .line 99
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    iput v1, p0, Lcom/masshabit/common/Level;->mItemsCollected:I

    .line 85
    iput v1, p0, Lcom/masshabit/common/Level;->mTotalItems:I

    .line 86
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 88
    iget-object v1, p0, Lcom/masshabit/common/Level;->mLayers:[Lcom/masshabit/common/Layer;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/masshabit/common/Layer;->init()V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-void
.end method

.method public registerGeometry()V
    .locals 3

    .prologue
    .line 60
    sget-object v0, Lcom/masshabit/common/Environment;->sInstance:Lcom/masshabit/common/Environment;

    .line 62
    .local v0, "env":Lcom/masshabit/common/Environment;
    iget-object v1, p0, Lcom/masshabit/common/Level;->mPlayerGeom:Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v1, v1, Lcom/masshabit/common/physics/CollisionGroup;->mCollidesWith:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/masshabit/common/Level;->mCollisionGeom:Lcom/masshabit/common/physics/CollisionGroup;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    iget-object v1, p0, Lcom/masshabit/common/Level;->mPlayerGeom:Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v1, v1, Lcom/masshabit/common/physics/CollisionGroup;->mCollidesWith:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/masshabit/common/Level;->mBoundaryGeom:Lcom/masshabit/common/physics/CollisionGroup;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    iget-object v1, p0, Lcom/masshabit/common/Level;->mPlayerGeom:Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v1, v1, Lcom/masshabit/common/physics/CollisionGroup;->mCollidesWith:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/masshabit/common/Level;->mHurtyGeom:Lcom/masshabit/common/physics/CollisionGroup;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v1, p0, Lcom/masshabit/common/Level;->mPlayerGeom:Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v1, v1, Lcom/masshabit/common/physics/CollisionGroup;->mCollidesWith:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/masshabit/common/Level;->mHurtyNPCGeom:Lcom/masshabit/common/physics/CollisionGroup;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, p0, Lcom/masshabit/common/Level;->mPlayerGeom:Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v1, v1, Lcom/masshabit/common/physics/CollisionGroup;->mCollidesWith:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/masshabit/common/Level;->mNeutralNPCGeom:Lcom/masshabit/common/physics/CollisionGroup;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, p0, Lcom/masshabit/common/Level;->mPlayerGeom:Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v1, v1, Lcom/masshabit/common/physics/CollisionGroup;->mCollidesWith:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/masshabit/common/Level;->mItemGeom:Lcom/masshabit/common/physics/CollisionGroup;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, p0, Lcom/masshabit/common/Level;->mPlayerGeom:Lcom/masshabit/common/physics/CollisionGroup;

    iget-object v1, v1, Lcom/masshabit/common/physics/CollisionGroup;->mCollidesWith:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/masshabit/common/Level;->mExitGeom:Lcom/masshabit/common/physics/CollisionGroup;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    iget-object v2, p0, Lcom/masshabit/common/Level;->mPlayerGeom:Lcom/masshabit/common/physics/CollisionGroup;

    invoke-virtual {v1, v2}, Lcom/masshabit/common/physics/Physics;->registerGroup(Lcom/masshabit/common/physics/CollisionGroup;)V

    .line 72
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    iget-object v2, p0, Lcom/masshabit/common/Level;->mCollisionGeom:Lcom/masshabit/common/physics/CollisionGroup;

    invoke-virtual {v1, v2}, Lcom/masshabit/common/physics/Physics;->registerGroup(Lcom/masshabit/common/physics/CollisionGroup;)V

    .line 73
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    iget-object v2, p0, Lcom/masshabit/common/Level;->mBoundaryGeom:Lcom/masshabit/common/physics/CollisionGroup;

    invoke-virtual {v1, v2}, Lcom/masshabit/common/physics/Physics;->registerGroup(Lcom/masshabit/common/physics/CollisionGroup;)V

    .line 74
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    iget-object v2, p0, Lcom/masshabit/common/Level;->mHurtyGeom:Lcom/masshabit/common/physics/CollisionGroup;

    invoke-virtual {v1, v2}, Lcom/masshabit/common/physics/Physics;->registerGroup(Lcom/masshabit/common/physics/CollisionGroup;)V

    .line 75
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    iget-object v2, p0, Lcom/masshabit/common/Level;->mHurtyNPCGeom:Lcom/masshabit/common/physics/CollisionGroup;

    invoke-virtual {v1, v2}, Lcom/masshabit/common/physics/Physics;->registerGroup(Lcom/masshabit/common/physics/CollisionGroup;)V

    .line 76
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    iget-object v2, p0, Lcom/masshabit/common/Level;->mNeutralNPCGeom:Lcom/masshabit/common/physics/CollisionGroup;

    invoke-virtual {v1, v2}, Lcom/masshabit/common/physics/Physics;->registerGroup(Lcom/masshabit/common/physics/CollisionGroup;)V

    .line 78
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    iget-object v2, p0, Lcom/masshabit/common/Level;->mItemGeom:Lcom/masshabit/common/physics/CollisionGroup;

    invoke-virtual {v1, v2}, Lcom/masshabit/common/physics/Physics;->registerGroup(Lcom/masshabit/common/physics/CollisionGroup;)V

    .line 79
    iget-object v1, v0, Lcom/masshabit/common/Environment;->mPhysics:Lcom/masshabit/common/physics/Physics;

    iget-object v2, p0, Lcom/masshabit/common/Level;->mExitGeom:Lcom/masshabit/common/physics/CollisionGroup;

    invoke-virtual {v1, v2}, Lcom/masshabit/common/physics/Physics;->registerGroup(Lcom/masshabit/common/physics/CollisionGroup;)V

    .line 80
    return-void
.end method
