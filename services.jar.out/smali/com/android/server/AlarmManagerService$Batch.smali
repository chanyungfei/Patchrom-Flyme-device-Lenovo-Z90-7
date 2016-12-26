.class final Lcom/android/server/AlarmManagerService$Batch;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Batch"
.end annotation


# instance fields
.field final alarms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/AlarmManagerService$Alarm;",
            ">;"
        }
    .end annotation
.end field

.field end:J

.field standalone:Z

.field start:J

.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 2

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 268
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 269
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 270
    return-void
.end method

.method constructor <init>(Lcom/android/server/AlarmManagerService;Lcom/android/server/AlarmManagerService$Alarm;)V
    .locals 2
    .param p2, "seed"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    .line 273
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 274
    iget-wide v0, p2, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iput-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 275
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    return-void
.end method


# virtual methods
.method add(Lcom/android/server/AlarmManagerService$Alarm;)Z
    .locals 6
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 301
    .local v1, "newStart":Z
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    sget-object v3, Lcom/android/server/AlarmManagerService;->sIncreasingTimeOrder:Lcom/android/server/AlarmManagerService$IncreasingTimeOrder;

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 302
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 303
    rsub-int/lit8 v2, v0, 0x0

    add-int/lit8 v0, v2, -0x1

    .line 305
    :cond_0
    iget-object v2, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 309
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 310
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 311
    const/4 v1, 0x1

    .line 313
    :cond_1
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iget-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 314
    iget-wide v2, p1, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    iput-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 320
    :cond_2
    return v1
.end method

.method alarmAndPowerOn()Z
    .locals 7

    .prologue
    .line 486
    const/4 v2, 0x0

    .line 487
    .local v2, "alarm":Z
    const/4 v4, 0x0

    .line 488
    .local v4, "powerOn":Z
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 489
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 490
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 492
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 493
    const/4 v2, 0x1

    .line 497
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 498
    iget-object v5, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 500
    .restart local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v5, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x6

    if-ne v5, v6, :cond_3

    .line 501
    const/4 v4, 0x1

    .line 505
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    if-eqz v2, :cond_4

    if-eqz v4, :cond_4

    const/4 v5, 0x1

    :goto_2
    return v5

    .line 489
    .restart local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 497
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 505
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    const/4 v5, 0x0

    goto :goto_2
.end method

.method canHold(JJ)Z
    .locals 3
    .param p1, "whenElapsed"    # J
    .param p3, "maxWhen"    # J

    .prologue
    .line 295
    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    cmp-long v0, v0, p1

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    cmp-long v0, v0, p3

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method get(I)Lcom/android/server/AlarmManagerService$Alarm;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    return-object v0
.end method

.method getWhenByElapsedTime(J)J
    .locals 5
    .param p1, "whenElapsed"    # J

    .prologue
    .line 287
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v1, v2, p1

    if-nez v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    iget-wide v2, v1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    .line 291
    :goto_1
    return-wide v2

    .line 287
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_1
    const-wide/16 v2, 0x0

    goto :goto_1
.end method

.method hasPackage(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 436
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 437
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 438
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 439
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 440
    const/4 v3, 0x1

    .line 443
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_1
    return v3

    .line 437
    .restart local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 443
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method hasRtcAlarms()Z
    .locals 5

    .prologue
    .line 460
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 461
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 462
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 466
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 468
    :cond_0
    const/4 v3, 0x1

    .line 471
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_1
    return v3

    .line 461
    .restart local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 471
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method hasWakeups()Z
    .locals 4

    .prologue
    .line 447
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 448
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 449
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 451
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_0

    .line 452
    const/4 v3, 0x1

    .line 455
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_1
    return v3

    .line 448
    .restart local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 455
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method remove(I)Z
    .locals 10
    .param p1, "userHandle"    # I

    .prologue
    .line 406
    const/4 v1, 0x0

    .line 407
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 408
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 409
    .local v4, "newEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 410
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 411
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_1

    .line 412
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 413
    const/4 v1, 0x1

    .line 414
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_0

    .line 415
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    const/4 v8, 0x1

    # setter for: Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z
    invoke-static {v3, v8}, Lcom/android/server/AlarmManagerService;->access$102(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_0

    .line 418
    :cond_1
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v8, v6

    if-lez v3, :cond_2

    .line 419
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 421
    :cond_2
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_3

    .line 422
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 424
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 427
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_4
    if-eqz v1, :cond_5

    .line 429
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 430
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 432
    :cond_5
    return v1
.end method

.method remove(Landroid/app/PendingIntent;)Z
    .locals 13
    .param p1, "operation"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v12, 0x1

    .line 324
    const/4 v2, 0x0

    .line 325
    .local v2, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 326
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 330
    .local v4, "newEnd":J
    const/4 v3, 0x0

    .local v3, "i":I
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_8

    .line 331
    const/4 v1, 0x0

    .line 332
    .local v1, "canceled":Z
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 333
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v10}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v9

    .line 334
    .local v9, "sender":Landroid/content/IIntentSender;
    instance-of v10, v9, Lcom/android/server/am/PendingIntentRecord;

    if-eqz v10, :cond_1

    move-object v8, v9

    .line 335
    check-cast v8, Lcom/android/server/am/PendingIntentRecord;

    .line 336
    .local v8, "rec":Lcom/android/server/am/PendingIntentRecord;
    invoke-virtual {v8}, Lcom/android/server/am/PendingIntentRecord;->canceled()Z

    move-result v1

    .line 338
    .end local v8    # "rec":Lcom/android/server/am/PendingIntentRecord;
    :cond_1
    iget-object v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v10, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    if-eqz v1, :cond_5

    .line 339
    :cond_2
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 340
    const/4 v2, 0x1

    .line 341
    iget v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_3

    iget v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_4

    .line 342
    :cond_3
    # setter for: Lcom/android/server/AlarmManagerService;->mRemoveRtcAlarm:Z
    invoke-static {v12}, Lcom/android/server/AlarmManagerService;->access$002(Z)Z

    .line 347
    :cond_4
    iget-object v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v10, :cond_0

    .line 348
    iget-object v10, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    # setter for: Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z
    invoke-static {v10, v12}, Lcom/android/server/AlarmManagerService;->access$102(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_0

    .line 351
    :cond_5
    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v10, v10, v6

    if-lez v10, :cond_6

    .line 352
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 354
    :cond_6
    iget-wide v10, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v10, v10, v4

    if-gez v10, :cond_7

    .line 355
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 357
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 360
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    .end local v1    # "canceled":Z
    .end local v9    # "sender":Landroid/content/IIntentSender;
    :cond_8
    if-eqz v2, :cond_9

    .line 362
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 363
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 365
    :cond_9
    return v2
.end method

.method remove(Ljava/lang/String;)Z
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    .line 369
    const/4 v1, 0x0

    .line 370
    .local v1, "didRemove":Z
    const-wide/16 v6, 0x0

    .line 371
    .local v6, "newStart":J
    const-wide v4, 0x7fffffffffffffffL

    .line 372
    .local v4, "newEnd":J
    const/4 v2, 0x0

    .local v2, "i":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 373
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$Alarm;

    .line 374
    .local v0, "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 375
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 376
    const/4 v1, 0x1

    .line 379
    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v8, 0x4

    if-eq v3, v8, :cond_1

    iget v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v8, 0x6

    if-ne v3, v8, :cond_2

    .line 380
    :cond_1
    # setter for: Lcom/android/server/AlarmManagerService;->mRemoveRtcAlarm:Z
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$002(Z)Z

    .line 384
    :cond_2
    iget-object v3, v0, Lcom/android/server/AlarmManagerService$Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v3, :cond_0

    .line 385
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->this$0:Lcom/android/server/AlarmManagerService;

    # setter for: Lcom/android/server/AlarmManagerService;->mNextAlarmClockMayChange:Z
    invoke-static {v3, v10}, Lcom/android/server/AlarmManagerService;->access$102(Lcom/android/server/AlarmManagerService;Z)Z

    goto :goto_0

    .line 388
    :cond_3
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    cmp-long v3, v8, v6

    if-lez v3, :cond_4

    .line 389
    iget-wide v6, v0, Lcom/android/server/AlarmManagerService$Alarm;->whenElapsed:J

    .line 391
    :cond_4
    iget-wide v8, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    cmp-long v3, v8, v4

    if-gez v3, :cond_5

    .line 392
    iget-wide v4, v0, Lcom/android/server/AlarmManagerService$Alarm;->maxWhen:J

    .line 394
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    .end local v0    # "alarm":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_6
    if-eqz v1, :cond_7

    .line 399
    iput-wide v6, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    .line 400
    iput-wide v4, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    .line 402
    :cond_7
    return v1
.end method

.method rtcAlarm()Lcom/android/server/AlarmManagerService$Alarm;
    .locals 5

    .prologue
    .line 508
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 509
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 510
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 512
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 516
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_0
    :goto_1
    return-object v1

    .line 509
    .restart local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 516
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method rtcType()I
    .locals 5

    .prologue
    .line 475
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 476
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 477
    iget-object v3, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/AlarmManagerService$Alarm;

    .line 479
    .local v1, "a":Lcom/android/server/AlarmManagerService$Alarm;
    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 480
    :cond_0
    iget v3, v1, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    .line 483
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :goto_1
    return v3

    .line 476
    .restart local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 483
    .end local v1    # "a":Lcom/android/server/AlarmManagerService$Alarm;
    :cond_2
    const/4 v3, -0x1

    goto :goto_1
.end method

.method size()I
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Batch;->alarms:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 521
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 522
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v1, "Batch{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    const-string v1, " num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/AlarmManagerService$Batch;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 524
    const-string v1, " start="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->start:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 525
    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/AlarmManagerService$Batch;->end:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 526
    iget-boolean v1, p0, Lcom/android/server/AlarmManagerService$Batch;->standalone:Z

    if-eqz v1, :cond_0

    .line 527
    const-string v1, " STANDALONE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 530
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
