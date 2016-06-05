.class public final Lcom/keji/danti/util/ak;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    sget v0, Lcom/keji/danti/util/pc;->a:I

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const-string v0, "308201903081faa00302010202044e97c4a6300d06092a864886f70d0101050500300c310a300806035504061301303020170d3131313031343035313230365a180f32313232303931373035313230365a300c310a3008060355040613013030819f300d06092a864886f70d010101050003818d0030818902818100d7441743f2a509ecbd44e30c0b0e6aea6423d7126a87eb4ad5a61a4d189ee90aa89b696c254a05f268186816fec00187417f26a6c209ddbabd2b53cad2c051dfc8172ededc8394d13de55e3c7044c7ec568e5c710f9a16b6a94aa5c87b2350a2ce1d2bb0c8f0a520f9a29f83f672e6506da562596171ef2f88442d4ce05b65ab0203010001300d06092a864886f70d01010505000381810014333b1d8b1f2b9210ac9562d94df3cbad3066cd0d5565929d2a5d1293bc6fbbaa5ce9e6bc1cca1d6fe5e328877434af82a900a44c68c6b87890bba9828bbf341ddba28d4a308155f4a1b04189d808e5dab28ebaa3f16af003e636b1d328053af6fd8dabffd202158f08e704d54e33790793a3ada348840c26fd9f078f437f1e"

    invoke-static {p0}, Lcom/keji/danti/util/ak;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
