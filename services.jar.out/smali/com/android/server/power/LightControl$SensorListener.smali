.class Lcom/android/server/power/LightControl$SensorListener;
.super Ljava/lang/Object;
.source "LightControl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/LightControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/LightControl;

.field time:J


# direct methods
.method constructor <init>(Lcom/android/server/power/LightControl;)V
    .locals 2

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/LightControl$SensorListener;->time:J

    return-void
.end method

.method private toProcessByLightSensor(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 339
    iget-object v0, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    float-to-int v1, v1

    # setter for: Lcom/android/server/power/LightControl;->mLightSensorValue:I
    invoke-static {v0, v1}, Lcom/android/server/power/LightControl;->access$002(Lcom/android/server/power/LightControl;I)I

    .line 340
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    # getter for: Lcom/android/server/power/LightControl;->printLastTimeLight:J
    invoke-static {v2}, Lcom/android/server/power/LightControl;->access$500(Lcom/android/server/power/LightControl;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 341
    const-string v0, "LightControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "light sensor value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    # getter for: Lcom/android/server/power/LightControl;->mLightSensorValue:I
    invoke-static {v2}, Lcom/android/server/power/LightControl;->access$000(Lcom/android/server/power/LightControl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    iget-boolean v2, v2, Lcom/android/server/power/LightControl;->mIsEnveloped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isDark:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    # getter for: Lcom/android/server/power/LightControl;->isDark:Z
    invoke-static {v2}, Lcom/android/server/power/LightControl;->access$200(Lcom/android/server/power/LightControl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    iget-object v0, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/power/LightControl;->printLastTimeLight:J
    invoke-static {v0, v2, v3}, Lcom/android/server/power/LightControl;->access$502(Lcom/android/server/power/LightControl;J)J

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    # getter for: Lcom/android/server/power/LightControl;->mLightSensorValue:I
    invoke-static {v0}, Lcom/android/server/power/LightControl;->access$000(Lcom/android/server/power/LightControl;)I

    move-result v0

    const/16 v1, 0xa

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    # getter for: Lcom/android/server/power/LightControl;->mLightSensorValue:I
    invoke-static {v0}, Lcom/android/server/power/LightControl;->access$000(Lcom/android/server/power/LightControl;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 347
    iget-object v0, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    # getter for: Lcom/android/server/power/LightControl;->isDark:Z
    invoke-static {v0}, Lcom/android/server/power/LightControl;->access$200(Lcom/android/server/power/LightControl;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    # getter for: Lcom/android/server/power/LightControl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/LightControl;->access$600(Lcom/android/server/power/LightControl;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 351
    iget-object v0, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    # getter for: Lcom/android/server/power/LightControl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/power/LightControl;->access$600(Lcom/android/server/power/LightControl;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 361
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    invoke-virtual {v0, v4}, Lcom/android/server/power/LightControl;->controlLight(Z)V

    .line 362
    return-void

    .line 355
    :cond_2
    iget-object v0, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/power/LightControl;->isDark:Z
    invoke-static {v0, v1}, Lcom/android/server/power/LightControl;->access$202(Lcom/android/server/power/LightControl;Z)Z

    goto :goto_0

    .line 359
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    # setter for: Lcom/android/server/power/LightControl;->isDark:Z
    invoke-static {v0, v4}, Lcom/android/server/power/LightControl;->access$202(Lcom/android/server/power/LightControl;Z)Z

    goto :goto_0
.end method

.method private toProcessByProximitySensor(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x0

    .line 371
    iget-object v0, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    float-to-int v1, v1

    # setter for: Lcom/android/server/power/LightControl;->mPSensorValue:I
    invoke-static {v0, v1}, Lcom/android/server/power/LightControl;->access$102(Lcom/android/server/power/LightControl;I)I

    .line 372
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    # getter for: Lcom/android/server/power/LightControl;->printLastTimePsensor:J
    invoke-static {v2}, Lcom/android/server/power/LightControl;->access$700(Lcom/android/server/power/LightControl;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 373
    const-string v0, "LightControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "proximity sensor value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    # getter for: Lcom/android/server/power/LightControl;->mPSensorValue:I
    invoke-static {v2}, Lcom/android/server/power/LightControl;->access$100(Lcom/android/server/power/LightControl;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/power/LightControl;->printLastTimePsensor:J
    invoke-static {v0, v2, v3}, Lcom/android/server/power/LightControl;->access$702(Lcom/android/server/power/LightControl;J)J

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    # getter for: Lcom/android/server/power/LightControl;->mPSensorValue:I
    invoke-static {v0}, Lcom/android/server/power/LightControl;->access$100(Lcom/android/server/power/LightControl;)I

    move-result v0

    if-nez v0, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    iput-boolean v4, v0, Lcom/android/server/power/LightControl;->mIsEnveloped:Z

    .line 382
    :goto_0
    const-string v0, "LightControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsEnveloped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    iget-boolean v2, v2, Lcom/android/server/power/LightControl;->mIsEnveloped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isDard: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    # getter for: Lcom/android/server/power/LightControl;->isDark:Z
    invoke-static {v2}, Lcom/android/server/power/LightControl;->access$200(Lcom/android/server/power/LightControl;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v0, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    invoke-virtual {v0, v4}, Lcom/android/server/power/LightControl;->controlLight(Z)V

    .line 384
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/LightControl$SensorListener;->this$0:Lcom/android/server/power/LightControl;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/power/LightControl;->mIsEnveloped:Z

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 310
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 314
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 315
    .local v0, "type":I
    packed-switch v0, :pswitch_data_0

    .line 330
    :goto_0
    :pswitch_0
    return-void

    .line 318
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/power/LightControl$SensorListener;->toProcessByLightSensor(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 323
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/power/LightControl$SensorListener;->toProcessByProximitySensor(Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 315
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
