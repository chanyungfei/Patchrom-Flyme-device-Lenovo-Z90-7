.class public Lcom/android/server/lights/LightsControl;
.super Ljava/lang/Object;
.source "LightsControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/lights/LightsControl$SensorListener;,
        Lcom/android/server/lights/LightsControl$LightsHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_BRIGHTNESS:I = 0xfa

.field private static final BUTTON_BRIGHTNESS_3SECOND:I = 0x0

.field private static final BUTTON_BRIGHTNESS_AUTOMATIC:I = 0x5

.field private static final BUTTON_BRIGHTNESS_CLOSE:I = 0x2

.field private static final BUTTON_BRIGHTNESS_OPEN:I = 0x1

.field private static final BUTTON_TIMEOUT:I = 0xbb8

.field private static final CHANGE_BBL_LUX:I = 0xa

.field private static final CHANGE_BBL_TIME:I = 0x7d0

.field private static final MSG_BBL_TIMEOUT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "LightsControl"


# instance fields
.field private mButtonBrightnessMode:I

.field private mButtonLight:Lcom/android/server/lights/Light;

.field private mContext:Landroid/content/Context;

.field private mLastSetBBTime:J

.field private mLightHandler:Landroid/os/Handler;

.field private mLightSensor:Landroid/hardware/Sensor;

.field private mLightsService:Lcom/android/server/lights/LightsManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSensorEnabled:Z

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorMgr:Landroid/hardware/SensorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ls"    # Lcom/android/server/lights/LightsManager;

    .prologue
    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object v2, p0, Lcom/android/server/lights/LightsControl;->mLightSensor:Landroid/hardware/Sensor;

    .line 49
    new-instance v1, Lcom/android/server/lights/LightsControl$LightsHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/lights/LightsControl$LightsHandler;-><init>(Lcom/android/server/lights/LightsControl;Lcom/android/server/lights/LightsControl$1;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsControl;->mLightHandler:Landroid/os/Handler;

    .line 50
    iput-object p1, p0, Lcom/android/server/lights/LightsControl;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/android/server/lights/LightsControl;->mLightsService:Lcom/android/server/lights/LightsManager;

    .line 52
    iget-object v1, p0, Lcom/android/server/lights/LightsControl;->mLightsService:Lcom/android/server/lights/LightsManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/lights/LightsControl;->mButtonLight:Lcom/android/server/lights/Light;

    .line 54
    iget-object v1, p0, Lcom/android/server/lights/LightsControl;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/lights/LightsControl;->mPowerManager:Landroid/os/PowerManager;

    .line 57
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/lights/LightsControl;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 59
    iget-object v1, p0, Lcom/android/server/lights/LightsControl;->mSensorMgr:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/lights/LightsControl;->mLightSensor:Landroid/hardware/Sensor;

    .line 62
    new-instance v1, Lcom/android/server/lights/LightsControl$SensorListener;

    invoke-direct {v1, p0}, Lcom/android/server/lights/LightsControl$SensorListener;-><init>(Lcom/android/server/lights/LightsControl;)V

    iput-object v1, p0, Lcom/android/server/lights/LightsControl;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 65
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/android/server/lights/LightsControl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/lights/LightsControl$1;

    invoke-direct {v2, p0}, Lcom/android/server/lights/LightsControl$1;-><init>(Lcom/android/server/lights/LightsControl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/lights/LightsControl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/lights/LightsControl;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/android/server/lights/LightsControl;->enabledSensor(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/lights/LightsControl;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsControl;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/lights/LightsControl;->mButtonLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/lights/LightsControl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsControl;

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/android/server/lights/LightsControl;->mLastSetBBTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/lights/LightsControl;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsControl;
    .param p1, "x1"    # J

    .prologue
    .line 17
    iput-wide p1, p0, Lcom/android/server/lights/LightsControl;->mLastSetBBTime:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/android/server/lights/LightsControl;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/lights/LightsControl;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/server/lights/LightsControl;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method private enabledSensor(Z)V
    .locals 4
    .param p1, "enables"    # Z

    .prologue
    const/4 v3, 0x0

    .line 109
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/server/lights/LightsControl;->mButtonBrightnessMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 110
    iget-boolean v0, p0, Lcom/android/server/lights/LightsControl;->mSensorEnabled:Z

    if-nez v0, :cond_0

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsControl;->mSensorEnabled:Z

    .line 112
    iget-object v0, p0, Lcom/android/server/lights/LightsControl;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsControl;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/lights/LightsControl;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/lights/LightsControl;->mSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 120
    iput-boolean v3, p0, Lcom/android/server/lights/LightsControl;->mSensorEnabled:Z

    .line 121
    iget-object v0, p0, Lcom/android/server/lights/LightsControl;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/lights/LightsControl;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0
.end method


# virtual methods
.method public controlLight(I)V
    .locals 4
    .param p1, "buttonBrightnessMode"    # I

    .prologue
    const/16 v1, 0xfa

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 84
    iput p1, p0, Lcom/android/server/lights/LightsControl;->mButtonBrightnessMode:I

    .line 85
    packed-switch p1, :pswitch_data_0

    .line 106
    :goto_0
    :pswitch_0
    return-void

    .line 87
    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/lights/LightsControl;->enabledSensor(Z)V

    .line 88
    iget-object v0, p0, Lcom/android/server/lights/LightsControl;->mLightHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 89
    iget-object v0, p0, Lcom/android/server/lights/LightsControl;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 90
    iget-object v0, p0, Lcom/android/server/lights/LightsControl;->mLightHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/lights/LightsControl;->mLightHandler:Landroid/os/Handler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 95
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/server/lights/LightsControl;->enabledSensor(Z)V

    .line 96
    iget-object v0, p0, Lcom/android/server/lights/LightsControl;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    goto :goto_0

    .line 99
    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/server/lights/LightsControl;->enabledSensor(Z)V

    .line 100
    iget-object v0, p0, Lcom/android/server/lights/LightsControl;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 103
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/android/server/lights/LightsControl;->enabledSensor(Z)V

    goto :goto_0

    .line 85
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
