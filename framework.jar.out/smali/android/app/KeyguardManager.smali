.class public Landroid/app/KeyguardManager;
.super Ljava/lang/Object;
.source "KeyguardManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/KeyguardManager$OnKeyguardExitResult;,
        Landroid/app/KeyguardManager$KeyguardLock;
    }
.end annotation


# static fields
.field public static final ACTION_CONFIRM_DEVICE_CREDENTIAL:Ljava/lang/String; = "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

.field private static final COVER_APP:I = 0x2

.field public static final EXTRA_DESCRIPTION:Ljava/lang/String; = "android.app.extra.DESCRIPTION"

.field public static final EXTRA_TITLE:Ljava/lang/String; = "android.app.extra.TITLE"

.field private static final QQ_APP:I = 0x1

.field private static final QQ_PACKAGE_NAME:Ljava/lang/String; = "com.tencent.mobileqq"


# instance fields
.field private mTrustManager:Landroid/app/trust/ITrustManager;

.field private mWM:Landroid/view/IWindowManager;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 172
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    .line 173
    const-string/jumbo v0, "trust"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    .line 175
    return-void
.end method

.method static synthetic access$000(Landroid/app/KeyguardManager;)Landroid/view/IWindowManager;
    .locals 1
    .param p0, "x0"    # Landroid/app/KeyguardManager;

    .prologue
    .line 50
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    return-object v0
.end method

.method private checkAppType()I
    .locals 6

    .prologue
    .line 360
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 361
    .local v1, "myUid":I
    const/16 v4, 0x3e8

    if-eq v1, v4, :cond_1

    .line 362
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    .line 363
    .local v3, "userId":I
    const/4 v2, -0x1

    .line 365
    .local v2, "qqUid":I
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const-string v5, "com.tencent.mobileqq"

    invoke-interface {v4, v5, v3}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 368
    :goto_0
    if-ne v1, v2, :cond_0

    .line 369
    const/4 v4, 0x1

    .line 378
    .end local v2    # "qqUid":I
    .end local v3    # "userId":I
    :goto_1
    return v4

    .line 371
    .restart local v2    # "qqUid":I
    .restart local v3    # "userId":I
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 372
    .local v0, "app":Landroid/app/Application;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/keyguard/KeyguardCoverAppUtils;->isCoverAppLock(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 374
    const/4 v4, 0x2

    goto :goto_1

    .line 378
    .end local v0    # "app":Landroid/app/Application;
    .end local v2    # "qqUid":I
    .end local v3    # "userId":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 366
    .restart local v2    # "qqUid":I
    .restart local v3    # "userId":I
    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public createConfirmDeviceCredentialIntent(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 84
    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 90
    :goto_0
    return-object v0

    .line 85
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.CONFIRM_DEVICE_CREDENTIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.app.extra.TITLE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 87
    const-string v1, "android.app.extra.DESCRIPTION"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 89
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V
    .locals 2
    .param p1, "callback"    # Landroid/app/KeyguardManager$OnKeyguardExitResult;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 342
    :try_start_0
    iget-object v0, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    new-instance v1, Landroid/app/KeyguardManager$1;

    invoke-direct {v1, p0, p1}, Landroid/app/KeyguardManager$1;-><init>(Landroid/app/KeyguardManager;Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->exitKeyguardSecurely(Landroid/view/IOnKeyguardExitResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    return-void

    .line 349
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public inKeyguardRestrictedInputMode()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 251
    :try_start_0
    invoke-direct {p0}, Landroid/app/KeyguardManager;->checkAppType()I

    move-result v0

    .line 252
    .local v0, "appType":I
    if-ne v0, v3, :cond_0

    .line 253
    const-string v3, "KeyguardManager"

    const-string/jumbo v4, "qq,inKeyguardRestrictedInputMode,false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v0    # "appType":I
    :goto_0
    return v2

    .line 255
    .restart local v0    # "appType":I
    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v2, v3

    .line 256
    goto :goto_0

    .line 260
    :cond_1
    iget-object v3, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->inKeyguardRestrictedInputMode()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 261
    .end local v0    # "appType":I
    :catch_0
    move-exception v1

    .line 262
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isDeviceLocked()Z
    .locals 1

    .prologue
    .line 274
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceLocked(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 284
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    invoke-interface {v1, p1}, Landroid/app/trust/ITrustManager;->isDeviceLocked(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 286
    :goto_0
    return v1

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDeviceSecure()Z
    .locals 1

    .prologue
    .line 299
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    return v0
.end method

.method public isDeviceSecure(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 309
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mTrustManager:Landroid/app/trust/ITrustManager;

    invoke-interface {v1, p1}, Landroid/app/trust/ITrustManager;->isDeviceSecure(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 311
    :goto_0
    return v1

    .line 310
    :catch_0
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isKeyguardLocked()Z
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 207
    :try_start_0
    invoke-direct {p0}, Landroid/app/KeyguardManager;->checkAppType()I

    move-result v0

    .line 208
    .local v0, "appType":I
    if-ne v0, v3, :cond_0

    .line 209
    const-string v3, "KeyguardManager"

    const-string/jumbo v4, "qq,isKeyguardLocked,false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    .end local v0    # "appType":I
    :goto_0
    return v2

    .line 211
    .restart local v0    # "appType":I
    :cond_0
    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v2, v3

    .line 212
    goto :goto_0

    .line 216
    :cond_1
    iget-object v3, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v3}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 217
    .end local v0    # "appType":I
    :catch_0
    move-exception v1

    .line 218
    .local v1, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public isKeyguardSecure()Z
    .locals 2

    .prologue
    .line 232
    :try_start_0
    iget-object v1, p0, Landroid/app/KeyguardManager;->mWM:Landroid/view/IWindowManager;

    invoke-interface {v1}, Landroid/view/IWindowManager;->isKeyguardSecure()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 234
    :goto_0
    return v1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    new-instance v0, Landroid/app/KeyguardManager$KeyguardLock;

    invoke-direct {v0, p0, p1}, Landroid/app/KeyguardManager$KeyguardLock;-><init>(Landroid/app/KeyguardManager;Ljava/lang/String;)V

    return-object v0
.end method
