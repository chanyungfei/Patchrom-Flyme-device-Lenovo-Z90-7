.class Lcom/android/server/lights/LightsControl$SensorListener;
.super Ljava/lang/Object;
.source "LightsControl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SensorListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsControl;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsControl;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/server/lights/LightsControl$SensorListener;->this$0:Lcom/android/server/lights/LightsControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private handleLightSensorEvent(JF)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    const/high16 v4, 0x41200000    # 10.0f

    .line 165
    iget-object v0, p0, Lcom/android/server/lights/LightsControl$SensorListener;->this$0:Lcom/android/server/lights/LightsControl;

    # getter for: Lcom/android/server/lights/LightsControl;->mLastSetBBTime:J
    invoke-static {v0}, Lcom/android/server/lights/LightsControl;->access$300(Lcom/android/server/lights/LightsControl;)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 166
    cmpl-float v0, p3, v4

    if-lez v0, :cond_2

    .line 167
    iget-object v0, p0, Lcom/android/server/lights/LightsControl$SensorListener;->this$0:Lcom/android/server/lights/LightsControl;

    # getter for: Lcom/android/server/lights/LightsControl;->mButtonLight:Lcom/android/server/lights/Light;
    invoke-static {v0}, Lcom/android/server/lights/LightsControl;->access$200(Lcom/android/server/lights/LightsControl;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    .line 171
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/lights/LightsControl$SensorListener;->this$0:Lcom/android/server/lights/LightsControl;

    # setter for: Lcom/android/server/lights/LightsControl;->mLastSetBBTime:J
    invoke-static {v0, p1, p2}, Lcom/android/server/lights/LightsControl;->access$302(Lcom/android/server/lights/LightsControl;J)J

    .line 173
    :cond_1
    return-void

    .line 168
    :cond_2
    cmpg-float v0, p3, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/lights/LightsControl$SensorListener;->this$0:Lcom/android/server/lights/LightsControl;

    # getter for: Lcom/android/server/lights/LightsControl;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/lights/LightsControl;->access$400(Lcom/android/server/lights/LightsControl;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/server/lights/LightsControl$SensorListener;->this$0:Lcom/android/server/lights/LightsControl;

    # getter for: Lcom/android/server/lights/LightsControl;->mButtonLight:Lcom/android/server/lights/Light;
    invoke-static {v0}, Lcom/android/server/lights/LightsControl;->access$200(Lcom/android/server/lights/LightsControl;)Lcom/android/server/lights/Light;

    move-result-object v0

    const/16 v1, 0xfa

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 143
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 147
    iget-object v4, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 148
    .local v1, "type":I
    packed-switch v1, :pswitch_data_0

    .line 161
    :goto_0
    :pswitch_0
    return-void

    .line 150
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 151
    .local v2, "time":J
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v0, v4, v5

    .line 152
    .local v0, "lux":F
    invoke-direct {p0, v2, v3, v0}, Lcom/android/server/lights/LightsControl$SensorListener;->handleLightSensorEvent(JF)V

    goto :goto_0

    .line 148
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
