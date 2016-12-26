.class public Lcom/android/server/displayeffect/DisplayEffectService;
.super Landroid/app/IDisplayEffectManager$Stub;
.source "DisplayEffectService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayEffectController:Lcom/android/server/displayeffect/DisplayEffectController;

.field public mMode:I

.field private mNativePointer:J

.field public mOldMode:I

.field private final mSetModeDeathHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSetttingMode:I

.field private mSupportedDisplayEffect:[Ljava/lang/String;

.field private mSupportedMode:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "DisplayEffectService"

    sput-object v0, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 51
    invoke-direct {p0}, Landroid/app/IDisplayEffectManager$Stub;-><init>()V

    .line 31
    iput v0, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetttingMode:I

    .line 32
    iput v0, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    .line 33
    iput v0, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mMode:I

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    .line 36
    iput-object v1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    .line 53
    invoke-direct {p0}, Lcom/android/server/displayeffect/DisplayEffectService;->init_native()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mNativePointer:J

    .line 54
    iput-object p1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    .line 55
    new-instance v0, Lcom/android/server/displayeffect/DisplayEffectController;

    invoke-direct {v0, p1, p0}, Lcom/android/server/displayeffect/DisplayEffectController;-><init>(Landroid/content/Context;Lcom/android/server/displayeffect/DisplayEffectService;)V

    iput-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mDisplayEffectController:Lcom/android/server/displayeffect/DisplayEffectController;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/displayeffect/DisplayEffectService;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/displayeffect/DisplayEffectService;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private checkMode(I)Z
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    .line 386
    sget-object v2, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkMode mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "current_display_mode"

    const/4 v4, -0x1

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 388
    .local v0, "curMode":I
    if-ne p1, v0, :cond_1

    .line 389
    sget-object v2, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v3, "Cur mode is set mode."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_0
    :goto_0
    return v1

    .line 391
    :cond_1
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 392
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    array-length v2, v2

    if-ge p1, v2, :cond_0

    if-ltz p1, :cond_0

    .line 393
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private native finalize_native(J)V
.end method

.method private native getCurrentLevel_native(JI)I
.end method

.method private native getLcdBl_native(J)I
.end method

.method private native getMode_native(J)I
.end method

.method private native getSupportedDisplayEffect_native(J)[Ljava/lang/String;
.end method

.method private native getSupportedMaxLevel_native(JI)I
.end method

.method private native getSupportedMode_native(J)[Ljava/lang/String;
.end method

.method private getTopApp()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 408
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    .line 410
    .local v2, "manager":Landroid/app/ActivityManager;
    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {v2, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 411
    .local v1, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    if-eqz v1, :cond_0

    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v4, :cond_1

    .line 412
    :cond_0
    sget-object v4, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v5, "Top activity is null..."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    .end local v1    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :goto_0
    return-object v3

    .line 415
    .restart local v1    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    iget-object v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 417
    .end local v1    # "info":Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_0
    move-exception v0

    .line 419
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    sget-object v4, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v5, "Get Top Activity"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initDisplayEffect(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    .line 78
    const-string v2, "android"

    invoke-virtual {p0, p1, v2}, Lcom/android/server/displayeffect/DisplayEffectService;->setModeToNative(ILjava/lang/String;)I

    move-result v1

    .line 79
    .local v1, "setModeResult":I
    sget-object v2, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initDisplayEffect set mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 82
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 83
    const-string v2, "screen_brightness_mode"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/server/displayeffect/DisplayEffectService;->saveState(Ljava/lang/String;I)V

    .line 85
    const-string v2, "screen_brightness"

    const/16 v3, 0xff

    invoke-virtual {p0, v2, v3}, Lcom/android/server/displayeffect/DisplayEffectService;->saveState(Ljava/lang/String;I)V

    .line 92
    :cond_0
    return-void

    .line 86
    :cond_1
    if-nez p1, :cond_0

    .line 87
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/server/displayeffect/DisplayEffectService;->setDisplayEffect()V

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private native init_native()J
.end method

.method private native setDisplayEffectLevel_native(JII)I
.end method

.method private native setLcdBl_native(JI)I
.end method

.method private native setMode_native(JI)I
.end method


# virtual methods
.method checkDisplayEffectSettingsPermission(Ljava/lang/String;)Z
    .locals 3
    .param p1, "method"    # Ljava/lang/String;

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    const-string v2, "lenovo.permission.MODIFY_DISPAY_EFFECT_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 376
    const/4 v1, 0x1

    .line 382
    :goto_0
    return v1

    .line 378
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Display Effect Settings Permission Denial: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "msg":Ljava/lang/String;
    sget-object v1, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mNativePointer:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/displayeffect/DisplayEffectService;->finalize_native(J)V

    .line 97
    invoke-super {p0}, Landroid/app/IDisplayEffectManager$Stub;->finalize()V

    .line 98
    return-void
.end method

.method public getCurrentLevel(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 147
    iget-wide v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mNativePointer:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/displayeffect/DisplayEffectService;->getCurrentLevel_native(JI)I

    move-result v0

    .line 148
    .local v0, "currentLevel":I
    sget-object v1, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetCurrentLevel Value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return v0
.end method

.method public getMode()I
    .locals 4

    .prologue
    .line 170
    iget-wide v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mNativePointer:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/displayeffect/DisplayEffectService;->getMode_native(J)I

    move-result v0

    .line 171
    .local v0, "getModeResult":I
    sget-object v1, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetMode Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return v0
.end method

.method public getSupportedDisplayEffect()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 114
    iget-wide v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mNativePointer:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/displayeffect/DisplayEffectService;->getSupportedDisplayEffect_native(J)[Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, "supportedDisplayEffect":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 116
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 117
    sget-object v2, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetSupportedDisplayEffect Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v0    # "i":I
    :cond_0
    sget-object v2, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v3, "GetSupportedDisplayEffect is NULL."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    const/4 v1, 0x0

    .end local v1    # "supportedDisplayEffect":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getSupportedMaxLevel(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 141
    iget-wide v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mNativePointer:J

    invoke-direct {p0, v2, v3, p1}, Lcom/android/server/displayeffect/DisplayEffectService;->getSupportedMaxLevel_native(JI)I

    move-result v0

    .line 142
    .local v0, "supportedMaxLevel":I
    sget-object v1, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetSupportedMaxLevel Value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return v0
.end method

.method public getSupportedMode()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 128
    iget-wide v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mNativePointer:J

    invoke-direct {p0, v2, v3}, Lcom/android/server/displayeffect/DisplayEffectService;->getSupportedMode_native(J)[Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "supportedDisplayMode":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 130
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 131
    sget-object v2, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GetSupportedMode Value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    .end local v0    # "i":I
    :cond_0
    sget-object v2, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v3, "GetSupportedMode is NULL."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const/4 v1, 0x0

    .end local v1    # "supportedDisplayMode":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public saveState(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 401
    iget-object v1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    .line 403
    .local v0, "result":Z
    sget-object v1, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Save key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    return-void
.end method

.method setDisplayEffect()V
    .locals 6

    .prologue
    .line 101
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 102
    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    aget-object v4, v4, v0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 105
    .local v1, "level":I
    invoke-virtual {p0, v0, v1}, Lcom/android/server/displayeffect/DisplayEffectService;->setDisplayEffectLevel(II)I

    move-result v2

    .line 106
    .local v2, "result":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 107
    sget-object v3, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v4, "Set display effect level failure."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "level":I
    .end local v2    # "result":I
    :cond_1
    return-void
.end method

.method public setDisplayEffectLevel(II)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "level"    # I

    .prologue
    .line 153
    const-string v2, "setDisplayEffectLevel()"

    invoke-virtual {p0, v2}, Lcom/android/server/displayeffect/DisplayEffectService;->checkDisplayEffectSettingsPermission(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 154
    const/4 v1, -0x3

    .line 166
    :cond_0
    :goto_0
    return v1

    .line 156
    :cond_1
    iget-wide v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mNativePointer:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/android/server/displayeffect/DisplayEffectService;->setDisplayEffectLevel_native(JII)I

    move-result v1

    .line 157
    .local v1, "setDisplayEffectLevelResult":I
    sget-object v2, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetDisplayEffectLevel Result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 159
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_0

    .line 160
    iget-object v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    aget-object v0, v2, p1

    .line 161
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 162
    invoke-virtual {p0, v0, p2}, Lcom/android/server/displayeffect/DisplayEffectService;->saveState(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public setMode(ILandroid/os/IBinder;Ljava/lang/String;)I
    .locals 10
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    const/16 v9, 0x14

    const/4 v8, 0x7

    const/4 v7, 0x2

    const/4 v3, 0x1

    .line 189
    invoke-direct {p0, p1}, Lcom/android/server/displayeffect/DisplayEffectService;->checkMode(I)Z

    move-result v0

    .line 190
    .local v0, "bo":Z
    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 191
    sget-object v4, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v5, "SetMode check unsuccessfully"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v3, -0x4

    .line 231
    :goto_0
    return v3

    .line 195
    :cond_0
    const-string v4, "com.lenovo.screensettings"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetttingMode:I

    if-ne p1, v4, :cond_1

    .line 196
    sget-object v4, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v5, "screensettings set mode unsuccessfully."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 199
    :cond_1
    sget-object v4, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetMode Mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "display_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 203
    .local v1, "mCurrentmode":I
    const-string v4, "com.lenovo.gallery"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eq v1, v9, :cond_2

    if-eq v1, v7, :cond_2

    if-ne p1, v8, :cond_2

    .line 205
    sget-object v4, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v5, "screensettings set mode unsuccessfully."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 208
    :cond_2
    const-string v4, "com.lenovo.gallery"

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-ne v1, v9, :cond_3

    if-ne p1, v8, :cond_3

    .line 210
    sget-object v4, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v5, "set to cameramode"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 p1, 0x6

    .line 214
    :cond_3
    const/4 v2, 0x0

    .line 215
    .local v2, "newModeOwnerPid":I
    const/4 v3, -0x1

    .line 217
    .local v3, "setModeResult":I
    iget-object v5, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    monitor-enter v5

    .line 218
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {p0, p1, p2, v4, p3}, Lcom/android/server/displayeffect/DisplayEffectService;->setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I

    move-result v2

    .line 219
    if-eqz v2, :cond_5

    .line 220
    const/4 v3, 0x1

    .line 222
    const-string v4, "com.lenovo.screensettings"

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 223
    iput p1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetttingMode:I

    .line 224
    const-string v4, "display_mode"

    invoke-virtual {p0, v4, p1}, Lcom/android/server/displayeffect/DisplayEffectService;->saveState(Ljava/lang/String;I)V

    .line 226
    :cond_4
    iget v4, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mMode:I

    iget v6, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    if-eq v4, v6, :cond_5

    .line 227
    iget-object v4, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mDisplayEffectController:Lcom/android/server/displayeffect/DisplayEffectController;

    iget v6, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mMode:I

    invoke-virtual {v4, v6, p3}, Lcom/android/server/displayeffect/DisplayEffectController;->modeChange(ILjava/lang/String;)V

    .line 230
    :cond_5
    monitor-exit v5

    goto/16 :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method setModeInt(ILandroid/os/IBinder;ILjava/lang/String;)I
    .locals 18
    .param p1, "mode"    # I
    .param p2, "cb"    # Landroid/os/IBinder;
    .param p3, "pid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v9, 0x0

    .line 236
    .local v9, "newModeOwnerPid":I
    if-nez p2, :cond_0

    .line 237
    sget-object v15, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v16, "setModeInt() called with null binder."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v9

    .line 318
    .end local v9    # "newModeOwnerPid":I
    .local v10, "newModeOwnerPid":I
    :goto_0
    return v10

    .line 241
    .end local v10    # "newModeOwnerPid":I
    .restart local v9    # "newModeOwnerPid":I
    :cond_0
    const/4 v6, 0x0

    .line 242
    .local v6, "hdlr":Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 243
    .local v8, "iter":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 244
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;

    .line 245
    .local v5, "h":Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    invoke-virtual {v5}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->getPid()I

    move-result v15

    move/from16 v0, p3

    if-ne v15, v0, :cond_1

    .line 246
    move-object v6, v5

    .line 247
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 250
    :try_start_0
    invoke-virtual {v6}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v15, v6, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v5    # "h":Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    :cond_2
    :goto_1
    const/4 v13, -0x1

    .line 262
    .local v13, "status":I
    :cond_3
    const/4 v15, -0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_a

    .line 263
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "display_mode"

    const/16 v17, -0x1

    invoke-static/range {v15 .. v17}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    .line 264
    .local v12, "settingMode":I
    invoke-direct/range {p0 .. p0}, Lcom/android/server/displayeffect/DisplayEffectService;->getTopApp()Ljava/lang/String;

    move-result-object v11

    .line 265
    .local v11, "packagename":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_5

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_5

    .line 266
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-ge v7, v15, :cond_6

    .line 267
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;

    invoke-virtual {v15}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 268
    .local v14, "tmpPackagename":Ljava/lang/String;
    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 269
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v15, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "hdlr":Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    check-cast v6, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;

    .line 270
    .restart local v6    # "hdlr":Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    invoke-virtual {v6}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->getBinder()Landroid/os/IBinder;

    move-result-object p2

    .line 271
    invoke-virtual {v6}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->getMode()I

    move-result p1

    .line 266
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 251
    .end local v7    # "i":I
    .end local v11    # "packagename":Ljava/lang/String;
    .end local v12    # "settingMode":I
    .end local v13    # "status":I
    .end local v14    # "tmpPackagename":Ljava/lang/String;
    .restart local v5    # "h":Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    :catch_0
    move-exception v4

    .line 253
    .local v4, "e":Ljava/util/NoSuchElementException;
    sget-object v15, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v16, "NoSuchElement"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 273
    .end local v4    # "e":Ljava/util/NoSuchElementException;
    .end local v5    # "h":Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    .restart local v7    # "i":I
    .restart local v11    # "packagename":Ljava/lang/String;
    .restart local v12    # "settingMode":I
    .restart local v13    # "status":I
    .restart local v14    # "tmpPackagename":Ljava/lang/String;
    :cond_4
    move/from16 p1, v12

    goto :goto_3

    .line 277
    .end local v7    # "i":I
    .end local v14    # "tmpPackagename":Ljava/lang/String;
    :cond_5
    move/from16 p1, v12

    .line 293
    .end local v11    # "packagename":Ljava/lang/String;
    .end local v12    # "settingMode":I
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mMode:I

    move/from16 v0, p1

    if-eq v0, v15, :cond_d

    .line 294
    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/displayeffect/DisplayEffectService;->setModeToNative(ILjava/lang/String;)I

    move-result v13

    .line 295
    const/4 v15, -0x1

    if-lt v13, v15, :cond_c

    .line 296
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/displayeffect/DisplayEffectService;->mMode:I

    .line 297
    const/4 v13, 0x1

    .line 307
    :cond_7
    :goto_5
    const/4 v15, 0x1

    if-eq v13, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_3

    .line 309
    :cond_8
    const/4 v15, 0x1

    if-ne v13, v15, :cond_9

    .line 310
    const/4 v15, -0x1

    move/from16 v0, p1

    if-eq v0, v15, :cond_9

    .line 311
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 312
    sget-object v15, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    const-string v16, "setMode() different from INVALID_MODE with empty mode client stack."

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_6
    move v10, v9

    .line 318
    .end local v9    # "newModeOwnerPid":I
    .restart local v10    # "newModeOwnerPid":I
    goto/16 :goto_0

    .line 280
    .end local v10    # "newModeOwnerPid":I
    .restart local v9    # "newModeOwnerPid":I
    :cond_a
    if-nez v6, :cond_b

    .line 281
    new-instance v6, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;

    .end local v6    # "hdlr":Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;-><init>(Lcom/android/server/displayeffect/DisplayEffectService;Landroid/os/IBinder;ILjava/lang/String;)V

    .line 284
    .restart local v6    # "hdlr":Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;
    :cond_b
    :try_start_1
    sget-object v15, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "linkToDeath pid: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->getPid()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " packageName: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v6}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->getPackageName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v15}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 290
    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->setMode(I)V

    goto/16 :goto_4

    .line 286
    :catch_1
    move-exception v4

    .line 287
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v15, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setMode() could not link to "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " binder death."

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 299
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_c
    if-eqz v6, :cond_7

    .line 300
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 301
    const/4 v15, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v6, v15}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto/16 :goto_5

    .line 305
    :cond_d
    const/4 v13, 0x1

    goto/16 :goto_5

    .line 314
    :cond_e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/displayeffect/DisplayEffectService;->mSetModeDeathHandlers:Ljava/util/ArrayList;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;

    invoke-virtual {v15}, Lcom/android/server/displayeffect/DisplayEffectService$SetModeDeathHandler;->getPid()I

    move-result v9

    goto/16 :goto_6
.end method

.method setModeToNative(ILjava/lang/String;)I
    .locals 4
    .param p1, "mode"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 176
    iget v1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mMode:I

    iput v1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    .line 177
    iget-wide v2, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mNativePointer:J

    const/16 v1, 0x14

    if-ne p1, v1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-direct {p0, v2, v3, v1}, Lcom/android/server/displayeffect/DisplayEffectService;->setMode_native(JI)I

    move-result v0

    .line 178
    .local v0, "result":I
    sget-object v1, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SetModeToNative mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " by packageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , Result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " OldMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mOldMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 182
    iput p1, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mMode:I

    .line 183
    const-string v1, "current_display_mode"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/displayeffect/DisplayEffectService;->saveState(Ljava/lang/String;I)V

    .line 185
    :cond_0
    return v0

    .end local v0    # "result":I
    :cond_1
    move v1, p1

    .line 177
    goto :goto_0
.end method

.method public systemReady()V
    .locals 6

    .prologue
    .line 61
    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "display_mode"

    const/4 v5, 0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 65
    .local v1, "initDisplayMode":I
    invoke-virtual {p0}, Lcom/android/server/displayeffect/DisplayEffectService;->getSupportedMode()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedMode:[Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lcom/android/server/displayeffect/DisplayEffectService;->getSupportedDisplayEffect()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    .line 67
    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 68
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mSupportedDisplayEffect:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 69
    invoke-virtual {p0, v0}, Lcom/android/server/displayeffect/DisplayEffectService;->getSupportedMaxLevel(I)I

    move-result v2

    .line 70
    .local v2, "result":I
    sget-object v3, Lcom/android/server/displayeffect/DisplayEffectService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GetSupportedMaxLevel Result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    .end local v2    # "result":I
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/server/displayeffect/DisplayEffectService;->initDisplayEffect(I)V

    .line 74
    .end local v0    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/android/server/displayeffect/DisplayEffectService;->mDisplayEffectController:Lcom/android/server/displayeffect/DisplayEffectController;

    invoke-virtual {v3}, Lcom/android/server/displayeffect/DisplayEffectController;->systemReady()V

    .line 75
    return-void
.end method
