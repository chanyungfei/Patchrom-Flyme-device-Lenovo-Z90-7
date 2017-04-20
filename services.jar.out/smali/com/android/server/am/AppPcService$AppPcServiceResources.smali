.class Lcom/android/server/am/AppPcService$AppPcServiceResources;
.super Ljava/lang/Object;
.source "AppPcService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppPcServiceResources"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppPcService$AppPcServiceResources$id;,
        Lcom/android/server/am/AppPcService$AppPcServiceResources$layout;,
        Lcom/android/server/am/AppPcService$AppPcServiceResources$string;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2600
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2694
    return-void
.end method

.method public static getLayoutFromSecurityApp(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 2638
    invoke-static {p0}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getSecurityAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2639
    .local v0, "appContext":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 2650
    :cond_0
    :goto_0
    return-object v4

    .line 2642
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2643
    .local v3, "res":Landroid/content/res/Resources;
    const-string v5, "layout"

    # getter for: Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$3500()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2644
    .local v1, "id":I
    if-eqz v1, :cond_0

    .line 2647
    invoke-virtual {p0}, Landroid/content/Context;->getThemeResId()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/content/Context;->setTheme(I)V

    .line 2648
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2649
    .local v2, "inflater":Landroid/view/LayoutInflater;
    invoke-virtual {v2, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2650
    .local v4, "view":Landroid/view/View;
    goto :goto_0
.end method

.method private static getSecurityAppContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2603
    const/4 v0, 0x0

    .line 2605
    .local v0, "appContext":Landroid/content/Context;
    :try_start_0
    # getter for: Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$3500()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2610
    :goto_0
    return-object v0

    .line 2607
    :catch_0
    move-exception v1

    .line 2608
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "Security_AppPcService"

    const-string v3, "getSecurityAppContext error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2614
    invoke-static {p0}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getSecurityAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2615
    .local v0, "appContext":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 2623
    :cond_0
    :goto_0
    return-object v3

    .line 2618
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2619
    .local v2, "res":Landroid/content/res/Resources;
    const-string v4, "string"

    # getter for: Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$3500()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2620
    .local v1, "id":I
    if-eqz v1, :cond_0

    .line 2623
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static varargs getStringFromSecurityApp(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "formatArgs"    # [Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 2626
    invoke-static {p0}, Lcom/android/server/am/AppPcService$AppPcServiceResources;->getSecurityAppContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    .line 2627
    .local v0, "appContext":Landroid/content/Context;
    if-nez v0, :cond_1

    .line 2635
    :cond_0
    :goto_0
    return-object v3

    .line 2630
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 2631
    .local v2, "res":Landroid/content/res/Resources;
    const-string v4, "string"

    # getter for: Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$3500()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p1, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2632
    .local v1, "id":I
    if-eqz v1, :cond_0

    .line 2635
    invoke-virtual {v2, v1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getVersionCodeFromSecurityApp(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 2701
    const/4 v3, 0x0

    .line 2702
    .local v3, "versionCode":I
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 2706
    .local v2, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    # getter for: Lcom/android/server/am/AppPcService;->sSecurityPkg:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/AppPcService;->access$3500()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 2707
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_0

    .line 2708
    iget v3, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2716
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v3

    .line 2711
    :catch_0
    move-exception v0

    .line 2712
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 2713
    const/4 v3, -0x1

    goto :goto_0
.end method
