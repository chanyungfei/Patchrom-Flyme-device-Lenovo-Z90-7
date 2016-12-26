.class final Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BackLightPropertiesDeath"
.end annotation


# instance fields
.field public mBinder:Landroid/os/IBinder;

.field public mGamma:F

.field public mMaximum:I

.field public mMinimum:I

.field public mOwnerPid:I

.field public mPackageName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Ljava/lang/String;IFII)V
    .locals 2
    .param p2, "binder"    # Landroid/os/IBinder;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "ownerPid"    # I
    .param p5, "gamma"    # F
    .param p6, "minimum"    # I
    .param p7, "maximum"    # I

    .prologue
    const/4 v1, -0x1

    .line 4347
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4342
    const/high16 v0, 0x7fc00000    # NaNf

    iput v0, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mGamma:F

    .line 4343
    iput v1, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mMinimum:I

    .line 4344
    iput v1, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mMaximum:I

    .line 4348
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mBinder:Landroid/os/IBinder;

    .line 4349
    iput-object p3, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mPackageName:Ljava/lang/String;

    .line 4350
    iput p4, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mOwnerPid:I

    .line 4351
    iput p5, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mGamma:F

    .line 4352
    iput p6, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mMinimum:I

    .line 4353
    iput p7, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mMaximum:I

    .line 4354
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 4385
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set BackLight Properties, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is died, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4387
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/power/PowerManagerService;->mBackLightPropertiesDeath:Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;
    invoke-static {v0, v1}, Lcom/android/server/power/PowerManagerService;->access$7102(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;)Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;

    .line 4388
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->this$0:Lcom/android/server/power/PowerManagerService;

    # getter for: Lcom/android/server/power/PowerManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$7200(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v0

    const/high16 v1, 0x7fc00000    # NaNf

    invoke-virtual {v0, v1, v3, v3}, Landroid/hardware/display/DisplayManagerInternal;->setBackLightProperties(FII)V

    .line 4391
    return-void
.end method

.method public hasSameProperties(Ljava/lang/String;IFII)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerPid"    # I
    .param p3, "gamma"    # F
    .param p4, "minimum"    # I
    .param p5, "maximum"    # I

    .prologue
    .line 4358
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mOwnerPid:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mGamma:F

    cmpl-float v0, v0, p3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mMinimum:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mMaximum:I

    if-ne v0, p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateProperties(Ljava/lang/String;IFII)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "ownerPid"    # I
    .param p3, "gamma"    # F
    .param p4, "minimum"    # I
    .param p5, "maximum"    # I

    .prologue
    .line 4365
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4366
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing BlackLight Properties packageName changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4370
    :cond_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mOwnerPid:I

    if-eq v0, p2, :cond_1

    .line 4371
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing BlackLight Properties pid changed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mOwnerPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4375
    :cond_1
    iput p3, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mGamma:F

    .line 4376
    iput p4, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mMinimum:I

    .line 4377
    iput p5, p0, Lcom/android/server/power/PowerManagerService$BackLightPropertiesDeath;->mMaximum:I

    .line 4380
    return-void
.end method
