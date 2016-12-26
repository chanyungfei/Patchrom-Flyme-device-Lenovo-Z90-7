.class public Lcom/lenovo/memoryclean/MemoryCleanApi;
.super Ljava/lang/Object;
.source "MemoryCleanApi.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "MemoryCleanApi"


# instance fields
.field private mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

.field private mContext:Landroid/content/Context;

.field private mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

.field private mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

.field private mSystemApp:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSystemApp:Ljava/util/HashSet;

    return-void
.end method

.method private ActivityManagerRemoveTask(Landroid/app/ActivityManager;I)V
    .locals 10
    .param p1, "am"    # Landroid/app/ActivityManager;
    .param p2, "taskId"    # I

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 269
    const-string v3, "android.app.ActivityManager"

    const-string v4, "removeTask"

    new-array v5, v9, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v7

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v8

    invoke-static {v3, v4, v5}, Lcom/lenovo/memoryclean/LoadMethod;->isMethodExisted(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Z

    move-result v0

    .line 272
    .local v0, "isMethodExisted":Z
    if-nez v0, :cond_0

    .line 274
    new-array v2, v8, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    .line 275
    .local v2, "types":[Ljava/lang/Class;
    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    .line 276
    .local v1, "params":[Ljava/lang/Object;
    const-string v3, "android.app.ActivityManager"

    const-string v4, "removeTask"

    invoke-static {p1, v3, v4, v2, v1}, Lcom/lenovo/memoryclean/LoadMethod;->MethodInvoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    :goto_0
    return-void

    .line 278
    .end local v1    # "params":[Ljava/lang/Object;
    .end local v2    # "types":[Ljava/lang/Class;
    :cond_0
    new-array v2, v9, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v7

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v8

    .line 279
    .restart local v2    # "types":[Ljava/lang/Class;
    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v8

    .line 280
    .restart local v1    # "params":[Ljava/lang/Object;
    const-string v3, "android.app.ActivityManager"

    const-string v4, "removeTask"

    invoke-static {p1, v3, v4, v2, v1}, Lcom/lenovo/memoryclean/LoadMethod;->MethodInvoke(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private getIgnorePkgename(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 577
    const-string v10, "MemoryCleanApi"

    const-string v11, "getNeedHidePkgename begin"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 580
    .local v5, "packageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v4, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    .local v4, "intent":Landroid/content/Intent;
    const-string v10, "android.intent.category.HOME"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 582
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v4, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 583
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_0

    .line 584
    iget-object v10, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 585
    const-string v10, "MemoryCleanApi"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "launch package:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    :cond_0
    const-string v10, "input_method"

    invoke-virtual {p1, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 597
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v3

    .line 598
    .local v3, "inputMethodInfos":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 599
    .local v1, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 600
    const-string v10, "MemoryCleanApi"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "input package:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 605
    .end local v1    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_1
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v9

    .line 611
    .local v9, "wm":Landroid/app/WallpaperManager;
    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v7

    .line 612
    .local v7, "wallInfo":Landroid/app/WallpaperInfo;
    if-nez v7, :cond_3

    .line 613
    const-string v10, "MemoryCleanApi"

    const-string v11, "Not live wallpaper"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_2
    :goto_1
    const-string v10, "MemoryCleanApi"

    const-string v11, "getNeedHidePkgename end"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    return-object v5

    .line 615
    :cond_3
    invoke-virtual {v7}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 616
    .local v8, "wallPkg":Ljava/lang/String;
    const-string v10, "MemoryCleanApi"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "live wallpaper wallPkg is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 618
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getMemInfoForPid(Landroid/content/Context;I)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pid"    # I

    .prologue
    const/4 v6, 0x0

    .line 181
    const/4 v5, 0x1

    new-array v2, v5, [I

    aput p2, v2, v6

    .line 183
    .local v2, "pids":[I
    const-string v5, "activity"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 184
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;

    move-result-object v1

    .line 185
    .local v1, "mem":[Landroid/os/Debug$MemoryInfo;
    const/4 v3, 0x0

    .line 186
    .local v3, "totalClear":I
    array-length v5, v1

    if-lez v5, :cond_0

    .line 187
    aget-object v5, v1, v6

    invoke-virtual {v5}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result v4

    .line 188
    .local v4, "totalPss":I
    if-lez v4, :cond_0

    .line 189
    move v3, v4

    .line 192
    .end local v4    # "totalPss":I
    :cond_0
    return v3
.end method

.method private initSystemApps()V
    .locals 6

    .prologue
    .line 72
    iget-object v4, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSystemApp:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 83
    :cond_0
    return-void

    .line 75
    :cond_1
    iget-object v4, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 76
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, "packs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 78
    .local v2, "pi":Landroid/content/pm/PackageInfo;
    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-nez v4, :cond_3

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 80
    :cond_3
    iget-object v4, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSystemApp:Ljava/util/HashSet;

    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private isApplicationCanBeRemoved(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 694
    iget-object v1, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSystemApp:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 695
    invoke-static {p2}, Lcom/lenovo/memoryclean/Utils;->isInControllableSystemApps(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 700
    :cond_0
    :goto_0
    return v0

    .line 698
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isCurrentHomeActivity(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "component"    # Landroid/content/ComponentName;
    .param p2, "homeInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    const/4 v1, 0x0

    .line 633
    if-nez p2, :cond_0

    .line 634
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 635
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object p2

    .line 638
    .end local v0    # "pm":Landroid/content/pm/PackageManager;
    :cond_0
    if-eqz p2, :cond_1

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private static loadFirstTask(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 531
    const-string v7, "activity"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 533
    .local v0, "am":Landroid/app/ActivityManager;
    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v0, v8, v8, v7}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v4

    .line 535
    .local v4, "recentTasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 536
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 538
    .local v3, "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v1, Landroid/content/Intent;

    iget-object v7, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 539
    .local v1, "intent":Landroid/content/Intent;
    iget-object v7, v3, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v7, :cond_0

    .line 540
    iget-object v7, v3, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 555
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-static {p0, v7, v6}, Lcom/lenovo/memoryclean/MemoryCleanApi;->isCurrentHomeActivity(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 568
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    :goto_0
    return-object v6

    .line 559
    .restart local v1    # "intent":Landroid/content/Intent;
    .restart local v3    # "recentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_2
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const v8, -0x200001

    and-int/2addr v7, v8

    const/high16 v8, 0x10000000

    or-int/2addr v7, v8

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 561
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 562
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {v2, v1, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 564
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_1

    .line 565
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/lenovo/memoryclean/MemoryCleanApi;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-static {}, Lcom/lenovo/memoryclean/Version;->printfVersion()V

    .line 54
    new-instance v0, Lcom/lenovo/memoryclean/MemoryCleanApi;

    invoke-direct {v0}, Lcom/lenovo/memoryclean/MemoryCleanApi;-><init>()V

    .line 55
    .local v0, "api":Lcom/lenovo/memoryclean/MemoryCleanApi;
    iput-object p0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    .line 57
    new-instance v1, Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/LockPkgApi;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    .line 58
    new-instance v1, Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/AutoBootApi;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    .line 59
    new-instance v1, Lcom/lenovo/memoryclean/SuperWhiteListApi;

    invoke-direct {v1, p0}, Lcom/lenovo/memoryclean/SuperWhiteListApi;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

    .line 61
    return-object v0
.end method


# virtual methods
.method public cleanMemory()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 266
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/lenovo/memoryclean/MemoryCleanApi;->cleanMemory(Ljava/util/HashSet;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public cleanMemory(Ljava/util/HashSet;)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    .local p1, "ignoreList":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .line 290
    .local v20, "start":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/lenovo/memoryclean/AutoBootApi;->loadFromDbIfNeed()V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lcom/lenovo/memoryclean/LockPkgApi;->loadWhiteFromDbIfNeed()V

    .line 292
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 293
    .local v11, "ignorePackageName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v17, 0x0

    .line 294
    .local v17, "recentTasks":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/memoryclean/RecentTask;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/lenovo/memoryclean/RecentTask;->getRecentTask(Landroid/content/Context;)Ljava/util/List;

    move-result-object v17

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/lenovo/memoryclean/MemoryCleanApi;->getIgnorePkgename(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 299
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 300
    .local v10, "ignoreListSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 301
    if-eqz p1, :cond_0

    .line 302
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 304
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/lenovo/memoryclean/MemoryCleanApi;->loadFirstTask(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 306
    .local v5, "firstTaskPkgName":Ljava/lang/String;
    const-string v24, "MemoryCleanApi"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "recentTasks.size = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 308
    .local v6, "end":J
    sub-long v6, v6, v20

    .line 309
    const-string v24, "MemoryCleanApi"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cleanMemory time 1 = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const-string v25, "activity"

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 311
    .local v2, "am":Landroid/app/ActivityManager;
    if-eqz v17, :cond_2

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v24

    if-lez v24, :cond_2

    .line 312
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/lenovo/memoryclean/RecentTask;

    .line 314
    .local v22, "td":Lcom/lenovo/memoryclean/RecentTask;
    const-string v24, "MemoryCleanApi"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "td.mPackageName = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Lcom/lenovo/memoryclean/LockPkgApi;->isInLockList(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_1

    .line 322
    move-object/from16 v0, v22

    iget v0, v0, Lcom/lenovo/memoryclean/RecentTask;->mPersistentTaskId:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v2, v1}, Lcom/lenovo/memoryclean/MemoryCleanApi;->ActivityManagerRemoveTask(Landroid/app/ActivityManager;I)V

    goto :goto_0

    .line 326
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v22    # "td":Lcom/lenovo/memoryclean/RecentTask;
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 327
    sub-long v6, v6, v20

    .line 328
    const-string v24, "MemoryCleanApi"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cleanMemory time 2 = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {v2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v18

    .line 331
    .local v18, "runningAppProcessInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v19, Ljava/util/HashSet;

    invoke-direct/range {v19 .. v19}, Ljava/util/HashSet;-><init>()V

    .line 332
    .local v19, "runningPackageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 333
    .local v23, "whiteRunningPackageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v4, "cleanedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 338
    .local v16, "rapInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

    move-object/from16 v24, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v10}, Lcom/lenovo/memoryclean/SuperWhiteListApi;->isInSuperWhiteProcess(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 339
    const-string v24, "MemoryCleanApi"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cleanMemory ignore rapInfo.processName = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 342
    :cond_4
    move-object/from16 v0, v16

    iget-object v15, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .line 343
    .local v15, "pkgNames":[Ljava/lang/String;
    move-object v3, v15

    .local v3, "arr$":[Ljava/lang/String;
    array-length v13, v3

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v13, :cond_3

    aget-object v14, v3, v9

    .line 344
    .local v14, "pkgName":Ljava/lang/String;
    const-string v24, "MemoryCleanApi"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "RunningApp pkgName="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    if-eqz v5, :cond_6

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_6

    .line 343
    :cond_5
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 350
    :cond_6
    invoke-virtual {v10, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/lenovo/memoryclean/SuperWhiteListApi;->isInSuperWhiteList(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Lcom/lenovo/memoryclean/LockPkgApi;->isInLockList(Ljava/lang/String;)Z

    move-result v24

    if-nez v24, :cond_5

    .line 360
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/lenovo/memoryclean/MemoryCleanApi;->isInWhiteList(Ljava/lang/String;)Z

    move-result v12

    .line 361
    .local v12, "inWhiteList":Z
    if-nez v12, :cond_7

    .line 363
    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 365
    :cond_7
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 369
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v12    # "inWhiteList":Z
    .end local v13    # "len$":I
    .end local v14    # "pkgName":Ljava/lang/String;
    .end local v15    # "pkgNames":[Ljava/lang/String;
    .end local v16    # "rapInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 370
    sub-long v6, v6, v20

    .line 371
    const-string v24, "MemoryCleanApi"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cleanMemory time 3 = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    const-string v24, "MemoryCleanApi"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "runningPackageNames.size = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual/range {v19 .. v19}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 374
    .restart local v14    # "pkgName":Ljava/lang/String;
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v14}, Lcom/lenovo/memoryclean/MemoryCleanApi;->isApplicationCanBeRemoved(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 376
    invoke-virtual {v2, v14}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    .line 377
    const-string v24, "MemoryCleanApi"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "forceStopPackage  pkgName="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 379
    :cond_9
    invoke-virtual {v2, v14}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 380
    const-string v24, "MemoryCleanApi"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "killBackgroundProcesses  pkgName="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 383
    .end local v14    # "pkgName":Ljava/lang/String;
    :cond_a
    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 384
    .restart local v14    # "pkgName":Ljava/lang/String;
    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-virtual {v2, v14}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    .line 386
    const-string v24, "MemoryCleanApi"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "killBackgroundProcesses  pkgName="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 455
    .end local v14    # "pkgName":Ljava/lang/String;
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 456
    sub-long v6, v6, v20

    .line 457
    const-string v24, "MemoryCleanApi"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cleanMemory time 4 = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v24, "MemoryCleanApi"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "whiteRunningPackageNames.size = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v23 .. v23}, Ljava/util/HashSet;->size()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->clear()V

    .line 461
    const/16 v18, 0x0

    .line 463
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 464
    sub-long v6, v6, v20

    .line 465
    const-string v24, "MemoryCleanApi"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "cleanMemory time total = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    return-object v4
.end method

.method public forceCleanMemory(Ljava/util/List;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 475
    .local p1, "pkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v10}, Lcom/lenovo/memoryclean/AutoBootApi;->loadFromDbIfNeed()V

    .line 476
    iget-object v10, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v10}, Lcom/lenovo/memoryclean/LockPkgApi;->loadWhiteFromDbIfNeed()V

    .line 478
    iget-object v10, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    const-string v11, "activity"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 479
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v10, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/lenovo/memoryclean/RecentTask;->getRecentTask(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 480
    .local v6, "recentTasks":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/memoryclean/RecentTask;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 481
    .local v7, "runningPackageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 482
    .local v9, "whiteRunningPackageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 484
    .local v1, "cleanedPackageNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 486
    .local v5, "pkgName":Ljava/lang/String;
    iget-object v10, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

    invoke-virtual {v10, v5}, Lcom/lenovo/memoryclean/SuperWhiteListApi;->isInSuperWhiteList(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 489
    iget-object v10, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v10, v5}, Lcom/lenovo/memoryclean/AutoBootApi;->isInAutoBootAbleList(Ljava/lang/String;)Z

    move-result v4

    .line 490
    .local v4, "inAutoBootAbleList":Z
    if-nez v4, :cond_1

    .line 492
    invoke-virtual {v7, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 494
    :cond_1
    invoke-virtual {v9, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 497
    .end local v4    # "inAutoBootAbleList":Z
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 498
    .restart local v5    # "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    iget-object v10, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10, v5}, Lcom/lenovo/memoryclean/MemoryCleanApi;->isApplicationCanBeRemoved(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 500
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 502
    :cond_3
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_1

    .line 505
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_4
    invoke-virtual {v9}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 506
    .restart local v5    # "pkgName":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    invoke-virtual {v0, v5}, Landroid/app/ActivityManager;->killBackgroundProcesses(Ljava/lang/String;)V

    goto :goto_2

    .line 513
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_5
    const-string v10, "MemoryCleanApi"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "recentTasks.size = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    if-eqz v6, :cond_8

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_8

    .line 515
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 516
    .restart local v5    # "pkgName":Ljava/lang/String;
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/lenovo/memoryclean/RecentTask;

    .line 517
    .local v8, "td":Lcom/lenovo/memoryclean/RecentTask;
    iget-object v10, v8, Lcom/lenovo/memoryclean/RecentTask;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 519
    iget v10, v8, Lcom/lenovo/memoryclean/RecentTask;->mPersistentTaskId:I

    invoke-direct {p0, v0, v10}, Lcom/lenovo/memoryclean/MemoryCleanApi;->ActivityManagerRemoveTask(Landroid/app/ActivityManager;I)V

    goto :goto_3

    .line 524
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v8    # "td":Lcom/lenovo/memoryclean/RecentTask;
    :cond_8
    return-object v1
.end method

.method public getCleanAbleInfo()Ljava/util/HashMap;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/memoryclean/AutoBootApi;->loadFromDbIfNeed()V

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/lenovo/memoryclean/LockPkgApi;->loadWhiteFromDbIfNeed()V

    .line 103
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 104
    .local v11, "ignorePackageName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/lenovo/memoryclean/MemoryCleanApi;->getIgnorePkgename(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 108
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 109
    .local v10, "ignoreListSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v10, v11}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/lenovo/memoryclean/MemoryCleanApi;->loadFirstTask(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 113
    .local v7, "firstTaskPkgName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const-string v26, "activity"

    invoke-virtual/range {v25 .. v26}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager;

    .line 114
    .local v4, "am":Landroid/app/ActivityManager;
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v23

    .line 118
    .local v23, "runningAppProcessInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v14, "mapPidPkgRunningProcess":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v17, Ljava/util/HashMap;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashMap;-><init>()V

    .line 120
    .local v17, "pkgMemMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 124
    .local v21, "rapInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 126
    .local v20, "procressName":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    move-object/from16 v19, v0

    .line 127
    .local v19, "pkgNames":[Ljava/lang/String;
    const/16 v25, 0x0

    aget-object v22, v19, v25

    .line 128
    .local v22, "realPkgName":Ljava/lang/String;
    move-object/from16 v5, v19

    .local v5, "arr$":[Ljava/lang/String;
    array-length v13, v5

    .local v13, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_1
    if-ge v9, v13, :cond_1

    aget-object v18, v5, v9

    .line 129
    .local v18, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 130
    move-object/from16 v22, v20

    .line 134
    .end local v18    # "pkgName":Ljava/lang/String;
    :cond_1
    if-eqz v7, :cond_2

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 139
    :cond_2
    move-object/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_0

    .line 147
    move-object/from16 v0, v21

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 128
    .restart local v18    # "pkgName":Ljava/lang/String;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 154
    .end local v5    # "arr$":[Ljava/lang/String;
    .end local v9    # "i$":I
    .end local v13    # "len$":I
    .end local v18    # "pkgName":Ljava/lang/String;
    .end local v19    # "pkgNames":[Ljava/lang/String;
    .end local v20    # "procressName":Ljava/lang/String;
    .end local v21    # "rapInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v22    # "realPkgName":Ljava/lang/String;
    :cond_4
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->clear()V

    .line 155
    const/16 v23, 0x0

    .line 156
    invoke-virtual {v14}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 157
    .local v12, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;>;"
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_6

    .line 158
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 159
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 160
    .local v16, "pid":I
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 161
    .restart local v18    # "pkgName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 162
    .local v15, "memory":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/lenovo/memoryclean/MemoryCleanApi;->getMemInfoForPid(Landroid/content/Context;I)I

    move-result v15

    .line 163
    const-string v25, "MemoryCleanApi"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v28

    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " pid == "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " packageName == "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " memory == "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_5

    .line 166
    invoke-virtual/range {v17 .. v18}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 167
    .local v24, "value":I
    add-int v15, v15, v24

    .line 169
    .end local v24    # "value":I
    :cond_5
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 172
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v15    # "memory":I
    .end local v16    # "pid":I
    .end local v18    # "pkgName":Ljava/lang/String;
    :cond_6
    return-object v17
.end method

.method public getRunningAppCount()I
    .locals 2

    .prologue
    .line 89
    iget-object v1, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/lenovo/memoryclean/RecentTask;->getRecentTask(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 90
    .local v0, "recentTasks":Ljava/util/List;, "Ljava/util/List<Lcom/lenovo/memoryclean/RecentTask;>;"
    if-eqz v0, :cond_0

    .line 91
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 93
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/AutoBootApi;->loadFromDbIfNeed()V

    .line 66
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/LockPkgApi;->loadWhiteFromDbIfNeed()V

    .line 67
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mSuperWhiteListApi:Lcom/lenovo/memoryclean/SuperWhiteListApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/SuperWhiteListApi;->init()V

    .line 68
    invoke-direct {p0}, Lcom/lenovo/memoryclean/MemoryCleanApi;->initSystemApps()V

    .line 69
    invoke-static {}, Lcom/lenovo/memoryclean/Utils;->initControllableSystemApps()V

    .line 70
    return-void
.end method

.method public isInHideWhiteList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 222
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 223
    .local v0, "ignorePackageName":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/lenovo/memoryclean/MemoryCleanApi;->getIgnorePkgename(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 224
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public isInLockList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 209
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0, p1}, Lcom/lenovo/memoryclean/LockPkgApi;->isInLockList(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isInWhiteList(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 201
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v0, p1}, Lcom/lenovo/memoryclean/AutoBootApi;->isInAutoBootAbleList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0, p1}, Lcom/lenovo/memoryclean/LockPkgApi;->isInLockList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lockPkg(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 234
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0, p1}, Lcom/lenovo/memoryclean/LockPkgApi;->lockPkg(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public registerContentObserve()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/AutoBootApi;->registerContentObserve()V

    .line 251
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/LockPkgApi;->registerContentObserve()V

    .line 252
    return-void
.end method

.method public unLockPkg(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0, p1}, Lcom/lenovo/memoryclean/LockPkgApi;->unLockPkg(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public unRegisterContentObserve()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mAutoBootApi:Lcom/lenovo/memoryclean/AutoBootApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/AutoBootApi;->unRegisterContentObserve()V

    .line 259
    iget-object v0, p0, Lcom/lenovo/memoryclean/MemoryCleanApi;->mLockPkgApi:Lcom/lenovo/memoryclean/LockPkgApi;

    invoke-virtual {v0}, Lcom/lenovo/memoryclean/LockPkgApi;->unRegisterContentObserve()V

    .line 260
    return-void
.end method
