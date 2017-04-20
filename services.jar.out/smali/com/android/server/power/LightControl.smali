.class public Lcom/android/server/power/LightControl;
.super Ljava/lang/Object;
.source "LightControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/LightControl$SensorListener;,
        Lcom/android/server/power/LightControl$SettingsObserver;
    }
.end annotation


# static fields
.field private static final BUTTON_BRIGHTNESS_MODE_AUTOMATIC:I = 0x5

.field private static final BUTTON_BRIGHTNESS_MODE_CLOSE:I = 0x2

.field private static final BUTTON_BRIGHTNESS_MODE_OPEN:I = 0x1

.field private static final BUTTON_BRIGHTNESS_MODE_THREE_SECOND:I = 0x0

.field public static final BUTTON_LIGHT_ENABLE:Ljava/lang/String; = "keyboard_lights_enabled"

.field private static final DEBUG_SPEW:Z = true

.field private static final LIGHT_SENSOR_CHANGE:I = 0x3e8

.field private static final MSG_BBL_TIMEOUT:I = 0x1

.field private static final PRINT_LOG_TIME:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "LightControl"

.field private static final TIME_OF_ENABLE:J = 0xbb8L

.field private static final WAIT_TIME:I = 0x3e8

.field private static instance:Lcom/android/server/power/LightControl;


# instance fields
.field private isDark:Z

.field private lastSetTime:J

.field private lightSensor:Landroid/hardware/Sensor;

.field private mButtonBrightness:I

.field private mButtonBrightnessModeSetting:I

.field private mButtonLight:Lcom/android/server/lights/Light;

.field private mButtonLightTimeout:I

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field public mIsEnveloped:Z

.field private mIsOn:Z

.field private mLightSensorValue:I

.field private mLightsService:Lcom/android/server/lights/LightsManager;

.field private mPSensorValue:I

.field private mPowerManager:Landroid/os/PowerManager;

.field private mSensorListener:Landroid/hardware/SensorEventListener;

.field private mSensorMgr:Landroid/hardware/SensorManager;

.field private mSettingsObserver:Lcom/android/server/power/LightControl$SettingsObserver;

.field private printLastTimeLight:J

.field private printLastTimePsensor:J

.field private proximitySensor:Landroid/hardware/Sensor;

.field private resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ls"    # Lcom/android/server/lights/LightsManager;

    .prologue
    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/server/power/LightControl;->mButtonBrightnessModeSetting:I

    .line 53
    iput-object v6, p0, Lcom/android/server/power/LightControl;->lightSensor:Landroid/hardware/Sensor;

    .line 54
    iput-object v6, p0, Lcom/android/server/power/LightControl;->proximitySensor:Landroid/hardware/Sensor;

    .line 60
    iput-boolean v4, p0, Lcom/android/server/power/LightControl;->isDark:Z

    .line 64
    iput-boolean v4, p0, Lcom/android/server/power/LightControl;->mIsEnveloped:Z

    .line 68
    iput-wide v2, p0, Lcom/android/server/power/LightControl;->lastSetTime:J

    .line 72
    iput-boolean v4, p0, Lcom/android/server/power/LightControl;->mIsOn:Z

    .line 80
    iput-wide v2, p0, Lcom/android/server/power/LightControl;->printLastTimeLight:J

    .line 82
    iput-wide v2, p0, Lcom/android/server/power/LightControl;->printLastTimePsensor:J

    .line 91
    const/16 v1, 0xbb8

    iput v1, p0, Lcom/android/server/power/LightControl;->mButtonLightTimeout:I

    .line 92
    iput v5, p0, Lcom/android/server/power/LightControl;->mLightSensorValue:I

    .line 94
    iput v5, p0, Lcom/android/server/power/LightControl;->mPSensorValue:I

    .line 116
    iput-object p2, p0, Lcom/android/server/power/LightControl;->mLightsService:Lcom/android/server/lights/LightsManager;

    .line 117
    iput-object p1, p0, Lcom/android/server/power/LightControl;->mContext:Landroid/content/Context;

    .line 118
    iget-object v1, p0, Lcom/android/server/power/LightControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/LightControl;->resolver:Landroid/content/ContentResolver;

    .line 119
    iget-object v1, p0, Lcom/android/server/power/LightControl;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/server/power/LightControl;->mPowerManager:Landroid/os/PowerManager;

    .line 121
    new-instance v1, Lcom/android/server/power/LightControl$1;

    invoke-direct {v1, p0}, Lcom/android/server/power/LightControl$1;-><init>(Lcom/android/server/power/LightControl;)V

    iput-object v1, p0, Lcom/android/server/power/LightControl;->mHandler:Landroid/os/Handler;

    .line 136
    new-instance v1, Lcom/android/server/power/LightControl$SettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/power/LightControl$SettingsObserver;-><init>(Lcom/android/server/power/LightControl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/power/LightControl;->mSettingsObserver:Lcom/android/server/power/LightControl$SettingsObserver;

    .line 137
    iget-object v1, p0, Lcom/android/server/power/LightControl;->resolver:Landroid/content/ContentResolver;

    const-string v2, "keyboard_lights_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/server/power/LightControl;->mButtonBrightnessModeSetting:I

    .line 142
    iget-object v1, p0, Lcom/android/server/power/LightControl;->mLightsService:Lcom/android/server/lights/LightsManager;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/LightControl;->mButtonLight:Lcom/android/server/lights/Light;

    .line 144
    const/16 v1, 0xf

    iput v1, p0, Lcom/android/server/power/LightControl;->mButtonBrightness:I

    .line 146
    iget-object v1, p0, Lcom/android/server/power/LightControl;->resolver:Landroid/content/ContentResolver;

    const-string v2, "keyboard_lights_enabled"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/LightControl;->mSettingsObserver:Lcom/android/server/power/LightControl$SettingsObserver;

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 150
    const-string v1, "LightControl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LightControl: mButtonBrightnessModeSetting="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/power/LightControl;->mButtonBrightnessModeSetting:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const-string v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/power/LightControl;->mSensorMgr:Landroid/hardware/SensorManager;

    .line 156
    iget-object v1, p0, Lcom/android/server/power/LightControl;->mSensorMgr:Landroid/hardware/SensorManager;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/LightControl;->proximitySensor:Landroid/hardware/Sensor;

    .line 157
    iget-object v1, p0, Lcom/android/server/power/LightControl;->mSensorMgr:Landroid/hardware/SensorManager;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/LightControl;->lightSensor:Landroid/hardware/Sensor;

    .line 158
    new-instance v1, Lcom/android/server/power/LightControl$SensorListener;

    invoke-direct {v1, p0}, Lcom/android/server/power/LightControl$SensorListener;-><init>(Lcom/android/server/power/LightControl;)V

    iput-object v1, p0, Lcom/android/server/power/LightControl;->mSensorListener:Landroid/hardware/SensorEventListener;

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/android/server/power/LightControl;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/power/LightControl$2;

    invoke-direct {v2, p0}, Lcom/android/server/power/LightControl$2;-><init>(Lcom/android/server/power/LightControl;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    const-string v1, "LightControl"

    const-string v2, "onrecive-systemread-->"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0, v4}, Lcom/android/server/power/LightControl;->controlLight(Z)V

    .line 185
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/LightControl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LightControl;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/server/power/LightControl;->mLightSensorValue:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/server/power/LightControl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/LightControl;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/android/server/power/LightControl;->mLightSensorValue:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/power/LightControl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LightControl;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/server/power/LightControl;->mPSensorValue:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/power/LightControl;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/LightControl;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/android/server/power/LightControl;->mPSensorValue:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/power/LightControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LightControl;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/server/power/LightControl;->isDark:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/power/LightControl;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/LightControl;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/server/power/LightControl;->isDark:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/power/LightControl;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LightControl;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/power/LightControl;->mButtonLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/LightControl;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/power/LightControl;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/server/power/LightControl;->enabledLightSensor(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/power/LightControl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/LightControl;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/android/server/power/LightControl;->printLastTimeLight:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/server/power/LightControl;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LightControl;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/android/server/power/LightControl;->printLastTimeLight:J

    return-wide p1
.end method

.method static synthetic access$600(Lcom/android/server/power/LightControl;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LightControl;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/server/power/LightControl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/power/LightControl;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/server/power/LightControl;

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/android/server/power/LightControl;->printLastTimePsensor:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/android/server/power/LightControl;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/server/power/LightControl;
    .param p1, "x1"    # J

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/android/server/power/LightControl;->printLastTimePsensor:J

    return-wide p1
.end method

.method private enabledLightSensor(Z)V
    .locals 5
    .param p1, "enables"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 188
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/android/server/power/LightControl;->mButtonBrightnessModeSetting:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 189
    iget-object v0, p0, Lcom/android/server/power/LightControl;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/LightControl;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/LightControl;->lightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 191
    iget-object v0, p0, Lcom/android/server/power/LightControl;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/LightControl;->mSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/server/power/LightControl;->proximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 199
    :goto_0
    if-eqz p1, :cond_0

    .line 200
    invoke-virtual {p0, v3}, Lcom/android/server/power/LightControl;->controlLight(Z)V

    .line 202
    :cond_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/LightControl;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/LightControl;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/power/LightControl;->mSensorMgr:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/power/LightControl;->mSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 196
    iput-boolean v3, p0, Lcom/android/server/power/LightControl;->isDark:Z

    .line 197
    iput-boolean v3, p0, Lcom/android/server/power/LightControl;->mIsEnveloped:Z

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/server/power/LightControl;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/android/server/power/LightControl;->instance:Lcom/android/server/power/LightControl;

    return-object v0
.end method

.method public static setInstance(Lcom/android/server/power/LightControl;)V
    .locals 0
    .param p0, "_instance"    # Lcom/android/server/power/LightControl;

    .prologue
    .line 112
    sput-object p0, Lcom/android/server/power/LightControl;->instance:Lcom/android/server/power/LightControl;

    .line 113
    return-void
.end method


# virtual methods
.method public controlLight(Z)V
    .locals 10
    .param p1, "isClickButton"    # Z

    .prologue
    const-wide/16 v8, 0xbb8

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 231
    if-eqz p1, :cond_6

    .line 232
    const-string v2, "LightControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setButtonBrightness mButtonLight, mButtonBrightnessModeSetting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/LightControl;->mButtonBrightnessModeSetting:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "-isClickButton--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget v2, p0, Lcom/android/server/power/LightControl;->mButtonBrightnessModeSetting:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 237
    iget-object v2, p0, Lcom/android/server/power/LightControl;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    iget v2, p0, Lcom/android/server/power/LightControl;->mButtonBrightnessModeSetting:I

    if-ne v2, v7, :cond_4

    .line 239
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 240
    .local v0, "endTime":J
    iget-wide v2, p0, Lcom/android/server/power/LightControl;->lastSetTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v8

    if-gtz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/power/LightControl;->mIsOn:Z

    if-nez v2, :cond_0

    .line 241
    :cond_2
    iput-wide v0, p0, Lcom/android/server/power/LightControl;->lastSetTime:J

    .line 242
    iget-boolean v2, p0, Lcom/android/server/power/LightControl;->isDark:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/power/LightControl;->mIsEnveloped:Z

    if-eqz v2, :cond_3

    .line 243
    iget-object v2, p0, Lcom/android/server/power/LightControl;->mButtonLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/power/LightControl;->mButtonBrightness:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 244
    iput-boolean v5, p0, Lcom/android/server/power/LightControl;->mIsOn:Z

    goto :goto_0

    .line 246
    :cond_3
    iput-boolean v6, p0, Lcom/android/server/power/LightControl;->mIsOn:Z

    .line 247
    iget-object v2, p0, Lcom/android/server/power/LightControl;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 252
    .end local v0    # "endTime":J
    :cond_4
    iget v2, p0, Lcom/android/server/power/LightControl;->mButtonBrightnessModeSetting:I

    if-nez v2, :cond_5

    .line 253
    iget-object v2, p0, Lcom/android/server/power/LightControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 254
    iget-object v2, p0, Lcom/android/server/power/LightControl;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/server/power/LightControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget v4, p0, Lcom/android/server/power/LightControl;->mButtonLightTimeout:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 258
    :cond_5
    iget-object v2, p0, Lcom/android/server/power/LightControl;->mButtonLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/power/LightControl;->mButtonBrightness:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setBrightness(I)V

    goto :goto_0

    .line 261
    :cond_6
    iget v2, p0, Lcom/android/server/power/LightControl;->mButtonBrightnessModeSetting:I

    if-ne v2, v5, :cond_7

    .line 262
    iget-object v2, p0, Lcom/android/server/power/LightControl;->mButtonLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/power/LightControl;->mButtonBrightness:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setBrightness(I)V

    goto :goto_0

    .line 263
    :cond_7
    iget v2, p0, Lcom/android/server/power/LightControl;->mButtonBrightnessModeSetting:I

    if-ne v2, v7, :cond_a

    .line 264
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 265
    .restart local v0    # "endTime":J
    const-string v2, "LightControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mIsOn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/LightControl;->mIsOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isDark: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/LightControl;->isDark:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsEnveloped:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/power/LightControl;->mIsEnveloped:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-wide v2, p0, Lcom/android/server/power/LightControl;->lastSetTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v8

    if-gtz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/server/power/LightControl;->mIsOn:Z

    if-nez v2, :cond_0

    .line 267
    :cond_8
    iput-wide v0, p0, Lcom/android/server/power/LightControl;->lastSetTime:J

    .line 268
    iget-boolean v2, p0, Lcom/android/server/power/LightControl;->isDark:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/server/power/LightControl;->mIsEnveloped:Z

    if-eqz v2, :cond_9

    .line 269
    iget-object v2, p0, Lcom/android/server/power/LightControl;->mButtonLight:Lcom/android/server/lights/Light;

    iget v3, p0, Lcom/android/server/power/LightControl;->mButtonBrightness:I

    invoke-virtual {v2, v3}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 270
    iput-boolean v5, p0, Lcom/android/server/power/LightControl;->mIsOn:Z

    goto/16 :goto_0

    .line 272
    :cond_9
    iget-object v2, p0, Lcom/android/server/power/LightControl;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    .line 273
    iput-boolean v6, p0, Lcom/android/server/power/LightControl;->mIsOn:Z

    goto/16 :goto_0

    .line 277
    .end local v0    # "endTime":J
    :cond_a
    iget-object v2, p0, Lcom/android/server/power/LightControl;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v2}, Lcom/android/server/lights/Light;->turnOff()V

    goto/16 :goto_0
.end method

.method public handleSettingsChangedLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 286
    iget-object v0, p0, Lcom/android/server/power/LightControl;->resolver:Landroid/content/ContentResolver;

    const-string v1, "keyboard_lights_enabled"

    const/4 v2, -0x2

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/power/LightControl;->mButtonBrightnessModeSetting:I

    .line 290
    iget v0, p0, Lcom/android/server/power/LightControl;->mButtonBrightnessModeSetting:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 291
    invoke-direct {p0, v3}, Lcom/android/server/power/LightControl;->enabledLightSensor(Z)V

    .line 292
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/power/LightControl;->enabledLightSensor(Z)V

    .line 296
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/server/power/LightControl;->controlLight(Z)V

    .line 298
    const-string v0, "LightControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSettingsChangedLocked: mButtonBrightnessModeSetting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/LightControl;->mButtonBrightnessModeSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void

    .line 294
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/server/power/LightControl;->enabledLightSensor(Z)V

    goto :goto_0
.end method

.method public setButtonLights(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/server/power/LightControl;->mButtonLight:Lcom/android/server/lights/Light;

    invoke-virtual {v0, p1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    .line 206
    return-void
.end method

.method public setmButtonBrightness(I)V
    .locals 0
    .param p1, "mButtonBrightness"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/android/server/power/LightControl;->mButtonBrightness:I

    .line 103
    return-void
.end method
