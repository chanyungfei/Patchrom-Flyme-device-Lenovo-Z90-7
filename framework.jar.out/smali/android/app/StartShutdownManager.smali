.class public Landroid/app/StartShutdownManager;
.super Ljava/lang/Object;
.source "StartShutdownManager.java"


# static fields
.field public static final BOOTMODE_CHARGEIN:I = 0x1

.field public static final BOOTMODE_RESET:I = 0x2

.field public static final BOOTMODE_RTC_ALARM:I = 0x3

.field public static final BOOTMODE_RTC_STARTUP:I = 0x4

.field public static final BOOTMODE_USER:I


# instance fields
.field private mBootMode:I

.field private final mService:Landroid/app/IStartShutdownManager;


# direct methods
.method public constructor <init>(Landroid/app/IStartShutdownManager;)V
    .locals 1
    .param p1, "service"    # Landroid/app/IStartShutdownManager;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Landroid/app/StartShutdownManager;->mBootMode:I

    .line 16
    iput-object p1, p0, Landroid/app/StartShutdownManager;->mService:Landroid/app/IStartShutdownManager;

    .line 18
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Landroid/app/IStartShutdownManager;

    invoke-interface {v0}, Landroid/app/IStartShutdownManager;->getBootMode()I

    move-result v0

    iput v0, p0, Landroid/app/StartShutdownManager;->mBootMode:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public disableAutoShutdown()V
    .locals 1

    .prologue
    .line 149
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Landroid/app/IStartShutdownManager;

    invoke-interface {v0}, Landroid/app/IStartShutdownManager;->disableAutoShutdown()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    return-void

    .line 150
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public disableAutoStart()V
    .locals 1

    .prologue
    .line 126
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Landroid/app/IStartShutdownManager;

    invoke-interface {v0}, Landroid/app/IStartShutdownManager;->disableAutoStart()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public enableAutoShutdown(J)Z
    .locals 3
    .param p1, "timeMillisSeconds"    # J

    .prologue
    .line 141
    :try_start_0
    iget-object v1, p0, Landroid/app/StartShutdownManager;->mService:Landroid/app/IStartShutdownManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IStartShutdownManager;->enableAutoShutdown(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 143
    :goto_0
    return v1

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public enableAutoStart(J)Z
    .locals 3
    .param p1, "timeMillisSeconds"    # J

    .prologue
    .line 118
    :try_start_0
    iget-object v1, p0, Landroid/app/StartShutdownManager;->mService:Landroid/app/IStartShutdownManager;

    invoke-interface {v1, p1, p2}, Landroid/app/IStartShutdownManager;->enableAutoStart(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 120
    :goto_0
    return v1

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getBootMode()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Landroid/app/StartShutdownManager;->mBootMode:I

    return v0
.end method

.method public isAutoShutdownEnable()Z
    .locals 2

    .prologue
    .line 156
    :try_start_0
    iget-object v1, p0, Landroid/app/StartShutdownManager;->mService:Landroid/app/IStartShutdownManager;

    invoke-interface {v1}, Landroid/app/IStartShutdownManager;->isAutoShutdownEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 158
    :goto_0
    return v1

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isAutoStartEnable()Z
    .locals 2

    .prologue
    .line 133
    :try_start_0
    iget-object v1, p0, Landroid/app/StartShutdownManager;->mService:Landroid/app/IStartShutdownManager;

    invoke-interface {v1}, Landroid/app/IStartShutdownManager;->isAutoStartEnable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 135
    :goto_0
    return v1

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBootCompleted()Z
    .locals 2

    .prologue
    .line 28
    const-string/jumbo v0, "sys.power.startup_ready"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isSilentBoot()Z
    .locals 2

    .prologue
    .line 47
    :try_start_0
    iget-object v1, p0, Landroid/app/StartShutdownManager;->mService:Landroid/app/IStartShutdownManager;

    invoke-interface {v1}, Landroid/app/IStartShutdownManager;->isSilentBoot()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 52
    :goto_0
    return v1

    .line 48
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 52
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSilentShutdown()Z
    .locals 2

    .prologue
    .line 66
    :try_start_0
    iget-object v1, p0, Landroid/app/StartShutdownManager;->mService:Landroid/app/IStartShutdownManager;

    invoke-interface {v1}, Landroid/app/IStartShutdownManager;->isSilentShutdown()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 71
    :goto_0
    return v1

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 71
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public launcherReady()V
    .locals 1

    .prologue
    .line 97
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Landroid/app/IStartShutdownManager;

    invoke-interface {v0}, Landroid/app/IStartShutdownManager;->launcherReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public poweroffAlarmAlertFinish()V
    .locals 1

    .prologue
    .line 111
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Landroid/app/IStartShutdownManager;

    invoke-interface {v0}, Landroid/app/IStartShutdownManager;->poweroffAlarmAlertFinish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public poweroffAlarmAlertPrepare()V
    .locals 1

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Landroid/app/IStartShutdownManager;

    invoke-interface {v0}, Landroid/app/IStartShutdownManager;->poweroffAlarmAlertPrepare()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 105
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reboot()V
    .locals 1

    .prologue
    .line 40
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Landroid/app/IStartShutdownManager;

    invoke-interface {v0}, Landroid/app/IStartShutdownManager;->reboot()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setSilentBoot(Z)V
    .locals 2
    .param p1, "silent"    # Z

    .prologue
    .line 57
    :try_start_0
    iget-object v1, p0, Landroid/app/StartShutdownManager;->mService:Landroid/app/IStartShutdownManager;

    invoke-interface {v1, p1}, Landroid/app/IStartShutdownManager;->setSilentBoot(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 60
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSilentShutdown(Z)V
    .locals 2
    .param p1, "silent"    # Z

    .prologue
    .line 76
    :try_start_0
    iget-object v1, p0, Landroid/app/StartShutdownManager;->mService:Landroid/app/IStartShutdownManager;

    invoke-interface {v1, p1}, Landroid/app/IStartShutdownManager;->setSilentShutdown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setSystemBusy(Z)V
    .locals 1
    .param p1, "busy"    # Z

    .prologue
    .line 90
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Landroid/app/IStartShutdownManager;

    invoke-interface {v0, p1}, Landroid/app/IStartShutdownManager;->setSystemBusy(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public shutdown(Z)V
    .locals 1
    .param p1, "needConfirm"    # Z

    .prologue
    .line 33
    :try_start_0
    iget-object v0, p0, Landroid/app/StartShutdownManager;->mService:Landroid/app/IStartShutdownManager;

    invoke-interface {v0, p1}, Landroid/app/IStartShutdownManager;->shutdown(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    goto :goto_0
.end method
