.class Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "StorageMeasurement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/StorageMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatsObserver"
.end annotation


# instance fields
.field private final mCurrentUser:I

.field private final mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

.field private final mFinished:Landroid/os/Message;

.field private final mIsInternal:Z

.field private mRemaining:I


# direct methods
.method public constructor <init>(ZLcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;ILandroid/os/Message;I)V
    .locals 0
    .param p1, "isInternal"    # Z
    .param p2, "details"    # Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;
    .param p3, "currentUser"    # I
    .param p4, "finished"    # Landroid/os/Message;
    .param p5, "remaining"    # I

    .prologue
    .line 311
    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    .line 312
    iput-boolean p1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mIsInternal:Z

    .line 313
    iput-object p2, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    .line 314
    iput p3, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mCurrentUser:I

    .line 315
    iput-object p4, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mFinished:Landroid/os/Message;

    .line 316
    iput p5, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mRemaining:I

    .line 317
    return-void
.end method

.method private addStatsLocked(Landroid/content/pm/PackageStats;)V
    .locals 14
    .param p1, "stats"    # Landroid/content/pm/PackageStats;

    .prologue
    .line 332
    iget-boolean v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mIsInternal:Z

    if-eqz v6, :cond_2

    .line 333
    iget-wide v2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 334
    .local v2, "codeSize":J
    iget-wide v4, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 335
    .local v4, "dataSize":J
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    .line 336
    .local v0, "cacheSize":J
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 339
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v6, v8

    add-long/2addr v2, v6

    .line 340
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    iget-wide v8, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    .line 341
    iget-wide v6, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v6

    .line 345
    :cond_0
    iget v6, p1, Landroid/content/pm/PackageStats;->userHandle:I

    iget v7, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mCurrentUser:I

    if-ne v6, v7, :cond_1

    .line 346
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    add-long/2addr v8, v2

    iput-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    .line 347
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    add-long/2addr v8, v4

    iput-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    .line 352
    :cond_1
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-object v6, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->usersSize:Landroid/util/SparseLongArray;

    iget v7, p1, Landroid/content/pm/PackageStats;->userHandle:I

    # invokes: Lcom/android/settings/deviceinfo/StorageMeasurement;->addValue(Landroid/util/SparseLongArray;IJ)V
    invoke-static {v6, v7, v4, v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->access$000(Landroid/util/SparseLongArray;IJ)V

    .line 355
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    add-long/2addr v8, v0

    iput-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    .line 363
    .end local v0    # "cacheSize":J
    .end local v2    # "codeSize":J
    .end local v4    # "dataSize":J
    :goto_0
    return-void

    .line 359
    :cond_2
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v12, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v10, v12

    iget-wide v12, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v10, v12

    iget-wide v12, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v10, v12

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->appsSize:J

    .line 361
    iget-object v6, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    iget-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    iget-wide v10, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v8, v10

    iput-wide v8, v6, Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;->cacheSize:J

    goto :goto_0
.end method


# virtual methods
.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 2
    .param p1, "stats"    # Landroid/content/pm/PackageStats;
    .param p2, "succeeded"    # Z

    .prologue
    .line 321
    iget-object v1, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mDetails:Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementDetails;

    monitor-enter v1

    .line 322
    if-eqz p2, :cond_0

    .line 323
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->addStatsLocked(Landroid/content/pm/PackageStats;)V

    .line 325
    :cond_0
    iget v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mRemaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mRemaining:I

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/android/settings/deviceinfo/StorageMeasurement$StatsObserver;->mFinished:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 328
    :cond_1
    monitor-exit v1

    .line 329
    return-void

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
