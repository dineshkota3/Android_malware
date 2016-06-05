.class public Lcom/gp/monolith/GLTextures;
.super Ljava/lang/Object;
.source "GLTextures.java"


# instance fields
.field private context:Landroid/content/Context;

.field private gl:Ljavax/microedition/khronos/opengles/GL10;

.field private textureFiles:[I

.field private textureMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private textures:[I


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;)V
    .locals 1
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/gp/monolith/GLTextures;->gl:Ljavax/microedition/khronos/opengles/GL10;

    .line 13
    iput-object p2, p0, Lcom/gp/monolith/GLTextures;->context:Landroid/content/Context;

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/gp/monolith/GLTextures;->textureMap:Ljava/util/HashMap;

    .line 15
    return-void
.end method


# virtual methods
.method public add(I)V
    .locals 4
    .param p1, "resource"    # I

    .prologue
    .line 52
    iget-object v2, p0, Lcom/gp/monolith/GLTextures;->textureFiles:[I

    if-nez v2, :cond_0

    .line 54
    const/4 v2, 0x1

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/gp/monolith/GLTextures;->textureFiles:[I

    .line 55
    iget-object v2, p0, Lcom/gp/monolith/GLTextures;->textureFiles:[I

    const/4 v3, 0x0

    aput p1, v2, v3

    .line 67
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v2, p0, Lcom/gp/monolith/GLTextures;->textureFiles:[I

    array-length v2, v2

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [I

    .line 60
    .local v1, "newarray":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/gp/monolith/GLTextures;->textureFiles:[I

    array-length v2, v2

    if-lt v0, v2, :cond_1

    .line 64
    iget-object v2, p0, Lcom/gp/monolith/GLTextures;->textureFiles:[I

    array-length v2, v2

    aput p1, v1, v2

    .line 65
    iput-object v1, p0, Lcom/gp/monolith/GLTextures;->textureFiles:[I

    goto :goto_0

    .line 62
    :cond_1
    iget-object v2, p0, Lcom/gp/monolith/GLTextures;->textureFiles:[I

    aget v2, v2, v0

    aput v2, v1, v0

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public loadTextures()V
    .locals 10

    .prologue
    const/16 v9, 0x2601

    const/4 v8, 0x0

    const/16 v7, 0xde1

    .line 19
    iget-object v4, p0, Lcom/gp/monolith/GLTextures;->textureFiles:[I

    array-length v4, v4

    new-array v3, v4, [I

    .line 20
    .local v3, "tmp_tex":[I
    iget-object v4, p0, Lcom/gp/monolith/GLTextures;->gl:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v5, p0, Lcom/gp/monolith/GLTextures;->textureFiles:[I

    array-length v5, v5

    invoke-interface {v4, v5, v3, v8}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 21
    iput-object v3, p0, Lcom/gp/monolith/GLTextures;->textures:[I

    .line 22
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/gp/monolith/GLTextures;->textureFiles:[I

    array-length v4, v4

    if-lt v1, v4, :cond_0

    .line 34
    return-void

    .line 24
    :cond_0
    iget-object v4, p0, Lcom/gp/monolith/GLTextures;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/gp/monolith/GLTextures;->textureFiles:[I

    aget v5, v5, v1

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 25
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/gp/monolith/GLTextures;->textureMap:Ljava/util/HashMap;

    new-instance v5, Ljava/lang/Integer;

    iget-object v6, p0, Lcom/gp/monolith/GLTextures;->textureFiles:[I

    aget v6, v6, v1

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    aget v2, v3, v1

    .line 28
    .local v2, "tex":I
    iget-object v4, p0, Lcom/gp/monolith/GLTextures;->gl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v4, v7, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 29
    iget-object v4, p0, Lcom/gp/monolith/GLTextures;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x2801

    invoke-interface {v4, v7, v5, v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 30
    iget-object v4, p0, Lcom/gp/monolith/GLTextures;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v5, 0x2800

    invoke-interface {v4, v7, v5, v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 31
    invoke-static {v7, v8, v0, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 32
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 22
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setTexture(I)V
    .locals 5
    .param p1, "id"    # I

    .prologue
    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/gp/monolith/GLTextures;->textureMap:Ljava/util/HashMap;

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 41
    .local v1, "textureid":I
    iget-object v2, p0, Lcom/gp/monolith/GLTextures;->gl:Ljavax/microedition/khronos/opengles/GL10;

    const/16 v3, 0xde1

    iget-object v4, p0, Lcom/gp/monolith/GLTextures;->textures:[I

    aget v4, v4, v1

    invoke-interface {v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "textureid":I
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 46
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
