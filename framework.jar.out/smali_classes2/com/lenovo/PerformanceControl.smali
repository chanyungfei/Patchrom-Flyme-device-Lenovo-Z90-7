.class public Lcom/lenovo/PerformanceControl;
.super Ljava/lang/Object;
.source "PerformanceControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lenovo/PerformanceControl$PerformaceControlHandler;,
        Lcom/lenovo/PerformanceControl$SettingsObserver;
    }
.end annotation


# static fields
.field private static final CHARGING_DEF_VALUE:Ljava/lang/String; = "1500000"

.field private static final DATA_PERF_PATCH:Ljava/lang/String; = "/data/system/perf-restrictions.xml"

.field private static final DEBUG:Z = true

.field private static final FPS_DEF_RATE:Ljava/lang/String; = "60"

.field private static final GPU_DEF_FREQ:Ljava/lang/String; = "0"

.field private static final LCD_DEF_DEF_VALUE:Ljava/lang/String; = "163"

.field private static final LIMIT_CHARGING_TAG:Ljava/lang/String; = "charging-pkglist"

.field private static final LIMIT_CPU_TAG:Ljava/lang/String; = "cpu-pkglist"

.field private static final LIMIT_FPS_TAG:Ljava/lang/String; = "fps-pkglist"

.field private static final LIMIT_GPU_TAG:Ljava/lang/String; = "gpu-pkglist"

.field private static final LIMIT_LCD_TAG:Ljava/lang/String; = "lcd-pkglist"

.field private static final MAX_CPU_DEF_FREQ:Ljava/lang/String; = "4294967295"

.field private static final MIN_CPU_DEF_FREQ:Ljava/lang/String; = "4294967295"

.field private static final MSG_COPY_FILE:I = 0x4

.field private static final MSG_HIGH_PERF_MODE:I = 0x2

.field private static final MSG_INIT_ARR_LIST:I = 0x1

.field private static final MSG_NORMAL_PERF_MODE:I = 0x3

.field private static final PERF_PATCH:Ljava/lang/String; = "/system/etc/perf-restrictions.xml"

.field private static final PP_HELPER:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/rq-stats/pp_helper"

.field private static final TAG:Ljava/lang/String; = "PerformaceControl"

.field private static final THERMAL_CTR_TAG:Ljava/lang/String; = "thermalctr-pkg"


# instance fields
.field private LIMITCHARGINGMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private LIMITCPUMAXFREQMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private LIMITCPUMINFREQMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private LIMITFPSMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private LIMITGPUMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private LIMITLCDMAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private THERMALCTRLIST:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mCtrThermalEnable:Z

.field private mCtrThermalFlag:Z

.field private mHandler:Landroid/os/Handler;

.field private mLastFps_gpu:Ljava/lang/String;

.field private mLastFps_maxCpu:Ljava/lang/String;

.field private mLastFps_minCpu:Ljava/lang/String;

.field private mLastValue_charging:Ljava/lang/String;

.field private mLastValue_fps:Ljava/lang/String;

.field private mLastValue_lcd:Ljava/lang/String;

.field private mLimitChargingEnable:Z

.field private mLimitCpuEnable:Z

.field private mLimitEnable:Z

.field private mLimitFpsEnable:Z

.field private mLimitGpuEnable:Z

.field private mLimitLcdEnable:Z

.field private mPerfMode:Z

.field private mPf:Lorg/codeaurora/Performance;

.field mSettingsObserver:Lcom/lenovo/PerformanceControl$SettingsObserver;

.field private mThermalWhiteListed:Z

.field private misFirstBoot:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lenovo/PerformanceControl;->THERMALCTRLIST:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/PerformanceControl;->LIMITCPUMAXFREQMAP:Ljava/util/Map;

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/PerformanceControl;->LIMITCPUMINFREQMAP:Ljava/util/Map;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/PerformanceControl;->LIMITGPUMAP:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/PerformanceControl;->LIMITLCDMAP:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/PerformanceControl;->LIMITCHARGINGMAP:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/lenovo/PerformanceControl;->LIMITFPSMAP:Ljava/util/Map;

    .line 69
    iput-object v2, p0, Lcom/lenovo/PerformanceControl;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object v2, p0, Lcom/lenovo/PerformanceControl;->mPf:Lorg/codeaurora/Performance;

    .line 71
    iput-boolean v1, p0, Lcom/lenovo/PerformanceControl;->mPerfMode:Z

    .line 72
    iput-boolean v1, p0, Lcom/lenovo/PerformanceControl;->mThermalWhiteListed:Z

    .line 73
    iput-boolean v1, p0, Lcom/lenovo/PerformanceControl;->mCtrThermalFlag:Z

    .line 75
    const-string v0, "4294967295"

    iput-object v0, p0, Lcom/lenovo/PerformanceControl;->mLastFps_maxCpu:Ljava/lang/String;

    .line 76
    const-string v0, "4294967295"

    iput-object v0, p0, Lcom/lenovo/PerformanceControl;->mLastFps_minCpu:Ljava/lang/String;

    .line 77
    const-string v0, "0"

    iput-object v0, p0, Lcom/lenovo/PerformanceControl;->mLastFps_gpu:Ljava/lang/String;

    .line 78
    const-string v0, "163"

    iput-object v0, p0, Lcom/lenovo/PerformanceControl;->mLastValue_lcd:Ljava/lang/String;

    .line 79
    const-string v0, "1500000"

    iput-object v0, p0, Lcom/lenovo/PerformanceControl;->mLastValue_charging:Ljava/lang/String;

    .line 80
    const-string v0, "60"

    iput-object v0, p0, Lcom/lenovo/PerformanceControl;->mLastValue_fps:Ljava/lang/String;

    .line 82
    iput-boolean v1, p0, Lcom/lenovo/PerformanceControl;->mLimitEnable:Z

    .line 83
    iput-boolean v1, p0, Lcom/lenovo/PerformanceControl;->mLimitCpuEnable:Z

    .line 84
    iput-boolean v1, p0, Lcom/lenovo/PerformanceControl;->mLimitGpuEnable:Z

    .line 85
    iput-boolean v1, p0, Lcom/lenovo/PerformanceControl;->mLimitLcdEnable:Z

    .line 86
    iput-boolean v1, p0, Lcom/lenovo/PerformanceControl;->mLimitChargingEnable:Z

    .line 87
    iput-boolean v1, p0, Lcom/lenovo/PerformanceControl;->mLimitFpsEnable:Z

    .line 88
    iput-boolean v1, p0, Lcom/lenovo/PerformanceControl;->mCtrThermalEnable:Z

    .line 90
    iput-boolean v1, p0, Lcom/lenovo/PerformanceControl;->misFirstBoot:Z

    .line 133
    iput-object p1, p0, Lcom/lenovo/PerformanceControl;->mContext:Landroid/content/Context;

    .line 134
    new-instance v0, Lorg/codeaurora/Performance;

    invoke-direct {v0}, Lorg/codeaurora/Performance;-><init>()V

    iput-object v0, p0, Lcom/lenovo/PerformanceControl;->mPf:Lorg/codeaurora/Performance;

    .line 136
    new-instance v0, Lcom/lenovo/PerformanceControl$PerformaceControlHandler;

    invoke-direct {v0, p0, p2}, Lcom/lenovo/PerformanceControl$PerformaceControlHandler;-><init>(Lcom/lenovo/PerformanceControl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/lenovo/PerformanceControl;->mHandler:Landroid/os/Handler;

    .line 137
    return-void
.end method

.method static synthetic access$000(Lcom/lenovo/PerformanceControl;)V
    .locals 0
    .param p0, "x0"    # Lcom/lenovo/PerformanceControl;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/lenovo/PerformanceControl;->pullParseXML()V

    return-void
.end method

.method static synthetic access$100(Lcom/lenovo/PerformanceControl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/lenovo/PerformanceControl;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/lenovo/PerformanceControl;->misFirstBoot:Z

    return v0
.end method

.method private pullParseXML()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v10, 0x2

    const/4 v12, 0x1

    .line 346
    const/4 v5, 0x0

    .line 348
    .local v5, "str":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v9, "/data/system/perf-restrictions.xml"

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 349
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_f

    .line 350
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 351
    .end local v5    # "str":Ljava/io/FileInputStream;
    .local v6, "str":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 352
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v9, 0x0

    invoke-interface {v4, v6, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 356
    :cond_0
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    .local v8, "type":I
    if-eq v8, v10, :cond_1

    if-ne v8, v12, :cond_0

    .line 360
    :cond_1
    if-eq v8, v10, :cond_4

    .line 401
    if-eqz v6, :cond_2

    .line 403
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v5, v6

    .line 409
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "str":Ljava/io/FileInputStream;
    .end local v8    # "type":I
    .restart local v5    # "str":Ljava/io/FileInputStream;
    :cond_3
    :goto_1
    return-void

    .line 404
    .end local v5    # "str":Ljava/io/FileInputStream;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "str":Ljava/io/FileInputStream;
    .restart local v8    # "type":I
    :catch_0
    move-exception v0

    .line 405
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "PerformaceControl"

    const-string v10, "Close Input IOException."

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 363
    .end local v0    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v1

    .line 364
    .local v1, "eventType":I
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 366
    .local v3, "outerDepth":I
    :cond_5
    :goto_2
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v12, :cond_e

    if-ne v1, v13, :cond_6

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v3, :cond_e

    .line 368
    :cond_6
    if-eq v1, v13, :cond_5

    const/4 v9, 0x4

    if-eq v1, v9, :cond_5

    .line 372
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 374
    .local v7, "tagName":Ljava/lang/String;
    const-string v9, "PerformaceControl"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TagName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "AttributeCount="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    const-string v9, "thermalctr-pkg"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 377
    invoke-direct {p0, v4}, Lcom/lenovo/PerformanceControl;->readThermalCtrWhiteList(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 394
    .end local v1    # "eventType":I
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_1
    move-exception v0

    move-object v5, v6

    .line 395
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "str":Ljava/io/FileInputStream;
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v5    # "str":Ljava/io/FileInputStream;
    :goto_3
    :try_start_4
    const-string v9, "PerformaceControl"

    const-string v10, "XmlPullParserException"

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 401
    if-eqz v5, :cond_3

    .line 403
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 404
    :catch_2
    move-exception v0

    .line 405
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "PerformaceControl"

    const-string v10, "Close Input IOException."

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 378
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "str":Ljava/io/FileInputStream;
    .restart local v1    # "eventType":I
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_7
    :try_start_6
    const-string v9, "cpu-pkglist"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 379
    invoke-direct {p0, v4}, Lcom/lenovo/PerformanceControl;->readLimitCpuWhiteList(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 396
    .end local v1    # "eventType":I
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_3
    move-exception v0

    move-object v5, v6

    .line 397
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "str":Ljava/io/FileInputStream;
    .local v0, "e":Ljava/io/FileNotFoundException;
    .restart local v5    # "str":Ljava/io/FileInputStream;
    :goto_4
    :try_start_7
    const-string v9, "PerformaceControl"

    const-string v10, "/system/etc/perf-restrictions.xml Not Found."

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 401
    if-eqz v5, :cond_3

    .line 403
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_1

    .line 404
    :catch_4
    move-exception v0

    .line 405
    .local v0, "e":Ljava/io/IOException;
    const-string v9, "PerformaceControl"

    const-string v10, "Close Input IOException."

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 380
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "str":Ljava/io/FileInputStream;
    .restart local v1    # "eventType":I
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_8
    :try_start_9
    const-string v9, "gpu-pkglist"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 381
    iget-object v9, p0, Lcom/lenovo/PerformanceControl;->LIMITGPUMAP:Ljava/util/Map;

    const-string v10, "freq"

    invoke-direct {p0, v4, v9, v10}, Lcom/lenovo/PerformanceControl;->readLimitWhiteList(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 398
    .end local v1    # "eventType":I
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catch_5
    move-exception v0

    move-object v5, v6

    .line 399
    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "str":Ljava/io/FileInputStream;
    .restart local v0    # "e":Ljava/io/IOException;
    .restart local v5    # "str":Ljava/io/FileInputStream;
    :goto_5
    :try_start_a
    const-string v9, "PerformaceControl"

    const-string v10, "IOException."

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 401
    if-eqz v5, :cond_3

    .line 403
    :try_start_b
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto/16 :goto_1

    .line 404
    :catch_6
    move-exception v0

    .line 405
    const-string v9, "PerformaceControl"

    const-string v10, "Close Input IOException."

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 382
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "str":Ljava/io/FileInputStream;
    .restart local v1    # "eventType":I
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_9
    :try_start_c
    const-string v9, "lcd-pkglist"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 383
    iget-object v9, p0, Lcom/lenovo/PerformanceControl;->LIMITLCDMAP:Ljava/util/Map;

    const-string v10, "current"

    invoke-direct {p0, v4, v9, v10}, Lcom/lenovo/PerformanceControl;->readLimitWhiteList(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_2

    .line 401
    .end local v1    # "eventType":I
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "tagName":Ljava/lang/String;
    .end local v8    # "type":I
    :catchall_0
    move-exception v9

    move-object v5, v6

    .end local v2    # "file":Ljava/io/File;
    .end local v6    # "str":Ljava/io/FileInputStream;
    .restart local v5    # "str":Ljava/io/FileInputStream;
    :goto_6
    if-eqz v5, :cond_a

    .line 403
    :try_start_d
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 406
    :cond_a
    :goto_7
    throw v9

    .line 384
    .end local v5    # "str":Ljava/io/FileInputStream;
    .restart local v1    # "eventType":I
    .restart local v2    # "file":Ljava/io/File;
    .restart local v3    # "outerDepth":I
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "str":Ljava/io/FileInputStream;
    .restart local v7    # "tagName":Ljava/lang/String;
    .restart local v8    # "type":I
    :cond_b
    :try_start_e
    const-string v9, "charging-pkglist"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 385
    iget-object v9, p0, Lcom/lenovo/PerformanceControl;->LIMITCHARGINGMAP:Ljava/util/Map;

    const-string v10, "current"

    invoke-direct {p0, v4, v9, v10}, Lcom/lenovo/PerformanceControl;->readLimitWhiteList(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 386
    :cond_c
    const-string v9, "fps-pkglist"

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 387
    iget-object v9, p0, Lcom/lenovo/PerformanceControl;->LIMITFPSMAP:Ljava/util/Map;

    const-string v10, "fps"

    invoke-direct {p0, v4, v9, v10}, Lcom/lenovo/PerformanceControl;->readLimitWhiteList(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 389
    :cond_d
    invoke-static {v4}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_2

    .line 392
    .end local v7    # "tagName":Ljava/lang/String;
    :cond_e
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-object v5, v6

    .line 401
    .end local v1    # "eventType":I
    .end local v3    # "outerDepth":I
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "str":Ljava/io/FileInputStream;
    .end local v8    # "type":I
    .restart local v5    # "str":Ljava/io/FileInputStream;
    :cond_f
    if-eqz v5, :cond_3

    .line 403
    :try_start_f
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    goto/16 :goto_1

    .line 404
    :catch_7
    move-exception v0

    .line 405
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v9, "PerformaceControl"

    const-string v10, "Close Input IOException."

    invoke-static {v9, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 404
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "file":Ljava/io/File;
    :catch_8
    move-exception v0

    .line 405
    .restart local v0    # "e":Ljava/io/IOException;
    const-string v10, "PerformaceControl"

    const-string v11, "Close Input IOException."

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 401
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v9

    goto :goto_6

    .line 398
    :catch_9
    move-exception v0

    goto :goto_5

    .line 396
    :catch_a
    move-exception v0

    goto/16 :goto_4

    .line 394
    :catch_b
    move-exception v0

    goto/16 :goto_3
.end method

.method private readLimitCpuWhiteList(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 11
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x0

    .line 433
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    .line 436
    .local v3, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    if-ne v5, v10, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v3, :cond_3

    .line 437
    :cond_1
    if-eq v5, v10, :cond_0

    const/4 v6, 0x4

    if-eq v5, v6, :cond_0

    .line 440
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    .line 441
    .local v4, "tagName":Ljava/lang/String;
    const-string v6, "pkg"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 442
    const-string v6, "name"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 443
    .local v2, "name":Ljava/lang/String;
    const-string v6, "maxfreq"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, "maxFreq":Ljava/lang/String;
    const-string v6, "minfreq"

    invoke-interface {p1, v9, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "minFreq":Ljava/lang/String;
    iget-object v6, p0, Lcom/lenovo/PerformanceControl;->LIMITCPUMAXFREQMAP:Ljava/util/Map;

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    iget-object v6, p0, Lcom/lenovo/PerformanceControl;->LIMITCPUMINFREQMAP:Ljava/util/Map;

    invoke-interface {v6, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v6, "PerformaceControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ReadLimitWhiteList, name= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", maxFreq= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", minFreq= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 451
    .end local v0    # "maxFreq":Ljava/lang/String;
    .end local v1    # "minFreq":Ljava/lang/String;
    .end local v2    # "name":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 454
    .end local v4    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private readLimitWhiteList(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/Map;Ljava/lang/String;)V
    .locals 10
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "attTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 458
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 461
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v5, 0x1

    if-eq v3, v5, :cond_3

    if-ne v3, v8, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v1, :cond_3

    .line 462
    :cond_1
    if-eq v3, v8, :cond_0

    const/4 v5, 0x4

    if-eq v3, v5, :cond_0

    .line 465
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 466
    .local v2, "tagName":Ljava/lang/String;
    const-string v5, "pkg"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 467
    const-string v5, "name"

    invoke-interface {p1, v9, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 468
    .local v0, "name":Ljava/lang/String;
    invoke-interface {p1, v9, p3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 469
    .local v4, "value":Ljava/lang/String;
    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string v5, "PerformaceControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ReadLimitWhiteList, name= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", value= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 474
    .end local v0    # "name":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 477
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private readThermalCtrWhiteList(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x3

    .line 413
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 416
    .local v1, "outerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    if-ne v3, v7, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_3

    .line 417
    :cond_1
    if-eq v3, v7, :cond_0

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    .line 420
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 421
    .local v2, "tagName":Ljava/lang/String;
    const-string v4, "pkg"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 422
    const/4 v4, 0x0

    const-string v5, "name"

    invoke-interface {p1, v4, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 423
    .local v0, "name":Ljava/lang/String;
    iget-object v4, p0, Lcom/lenovo/PerformanceControl;->THERMALCTRLIST:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 424
    const-string v4, "PerformaceControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReadThermalCtrWhiteList, name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 426
    .end local v0    # "name":Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 429
    .end local v2    # "tagName":Ljava/lang/String;
    :cond_3
    return-void
.end method


# virtual methods
.method public foregroundActivitiesChanged(Ljava/lang/String;)V
    .locals 19
    .param p1, "fgActivityPkgName"    # Ljava/lang/String;

    .prologue
    .line 201
    const-string v16, "PerformaceControl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "ForegroundActivitiesChanged, packageName= "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    if-nez p1, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    const-string v15, ""

    .line 206
    .local v15, "setTokernel":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/PerformanceControl;->mCtrThermalEnable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    .line 207
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/PerformanceControl;->mPerfMode:Z

    move/from16 v16, v0

    if-eqz v16, :cond_d

    .line 208
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->THERMALCTRLIST:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_2

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->THERMALCTRLIST:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/PerformanceControl;->mThermalWhiteListed:Z

    .line 211
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/PerformanceControl;->mThermalWhiteListed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 213
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/PerformanceControl;->mCtrThermalFlag:Z

    move/from16 v16, v0

    if-nez v16, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/PerformanceControl;->mThermalWhiteListed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_c

    .line 214
    const-string v16, "com.lenovo.scg"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->mPf:Lorg/codeaurora/Performance;

    move-object/from16 v16, v0

    const/16 v17, 0xbb8

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_0

    invoke-virtual/range {v16 .. v18}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    .line 221
    :goto_2
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/PerformanceControl;->mCtrThermalFlag:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v6    # "i":I
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/PerformanceControl;->mLimitCpuEnable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 254
    const-string v13, "4294967295"

    .line 255
    .local v13, "maxCpuFreq":Ljava/lang/String;
    const-string v14, "4294967295"

    .line 256
    .local v14, "minCpuFreq":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->LIMITCPUMAXFREQMAP:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    .line 257
    .local v10, "isLimitCpuExist":Z
    if-eqz v10, :cond_12

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->LIMITCPUMAXFREQMAP:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13    # "maxCpuFreq":Ljava/lang/String;
    check-cast v13, Ljava/lang/String;

    .line 259
    .restart local v13    # "maxCpuFreq":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->LIMITCPUMINFREQMAP:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14    # "minCpuFreq":Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 264
    .restart local v14    # "minCpuFreq":Ljava/lang/String;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->mLastFps_maxCpu:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v13, v0, :cond_4

    .line 265
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "b"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 266
    const-string v16, "PerformaceControl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Set cpu seq to: b"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/lenovo/PerformanceControl;->mLastFps_maxCpu:Ljava/lang/String;

    .line 269
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->mLastFps_minCpu:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v14, v0, :cond_5

    .line 270
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "p"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 271
    const-string v16, "PerformaceControl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Set cpu seq to: p"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/lenovo/PerformanceControl;->mLastFps_minCpu:Ljava/lang/String;

    .line 275
    .end local v10    # "isLimitCpuExist":Z
    .end local v13    # "maxCpuFreq":Ljava/lang/String;
    .end local v14    # "minCpuFreq":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/PerformanceControl;->mLimitGpuEnable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 276
    const-string v5, "0"

    .line 277
    .local v5, "gpuFreq":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->LIMITGPUMAP:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    .line 278
    .local v9, "isGpuExist":Z
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_13

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->LIMITGPUMAP:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "gpuFreq":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .line 283
    .restart local v5    # "gpuFreq":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->mLastFps_gpu:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v5, v0, :cond_6

    .line 284
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "g"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 285
    const-string v16, "PerformaceControl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Set gpu seq to: g"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/lenovo/PerformanceControl;->mLastFps_gpu:Ljava/lang/String;

    .line 289
    .end local v5    # "gpuFreq":Ljava/lang/String;
    .end local v9    # "isGpuExist":Z
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/PerformanceControl;->mLimitLcdEnable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 290
    const-string v12, "163"

    .line 291
    .local v12, "lcdFps":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->LIMITLCDMAP:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    .line 292
    .local v11, "islcdExist":Z
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v11, v0, :cond_14

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->LIMITLCDMAP:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .end local v12    # "lcdFps":Ljava/lang/String;
    check-cast v12, Ljava/lang/String;

    .line 297
    .restart local v12    # "lcdFps":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->mLastValue_lcd:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v12, v0, :cond_7

    .line 298
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "d"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 299
    const-string v16, "PerformaceControl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Set lcd seq to: d"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/lenovo/PerformanceControl;->mLastValue_lcd:Ljava/lang/String;

    .line 303
    .end local v11    # "islcdExist":Z
    .end local v12    # "lcdFps":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/PerformanceControl;->mLimitChargingEnable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 304
    const-string v2, "1500000"

    .line 305
    .local v2, "chargingValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->LIMITCHARGINGMAP:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    .line 306
    .local v7, "isChargingExist":Z
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v7, v0, :cond_15

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->LIMITCHARGINGMAP:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "chargingValue":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 311
    .restart local v2    # "chargingValue":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->mLastValue_charging:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v2, v0, :cond_8

    .line 312
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "c"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ","

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 313
    const-string v16, "PerformaceControl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Set pow seq to: c"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/lenovo/PerformanceControl;->mLastValue_charging:Ljava/lang/String;

    .line 317
    .end local v2    # "chargingValue":Ljava/lang/String;
    .end local v7    # "isChargingExist":Z
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/PerformanceControl;->mLimitFpsEnable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 318
    const-string v4, "60"

    .line 319
    .local v4, "fpsValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->LIMITFPSMAP:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    .line 320
    .local v8, "isFpsExist":Z
    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v8, v0, :cond_16

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->LIMITFPSMAP:Ljava/util/Map;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "fpsValue":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 325
    .restart local v4    # "fpsValue":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->mLastValue_fps:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    if-eq v4, v0, :cond_9

    .line 326
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Landroid/view/Choreographer;->setVsyncType(I)V

    .line 327
    const-string v16, "PerformaceControl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Set fps rate to: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/lenovo/PerformanceControl;->mLastValue_fps:Ljava/lang/String;

    .line 331
    .end local v4    # "fpsValue":Ljava/lang/String;
    .end local v8    # "isFpsExist":Z
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/PerformanceControl;->mLimitEnable:Z

    move/from16 v16, v0

    if-eqz v16, :cond_0

    .line 332
    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_17

    .line 334
    :try_start_1
    const-string v16, "/sys/devices/system/cpu/cpu0/rq-stats/pp_helper"

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 338
    :goto_9
    const-string v16, "PerformaceControl"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Set total seq: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 208
    .restart local v6    # "i":I
    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 218
    :cond_b
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->mPf:Lorg/codeaurora/Performance;

    move-object/from16 v16, v0

    const v17, 0x36ee80

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_1

    invoke-virtual/range {v16 .. v18}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 249
    .end local v6    # "i":I
    :catch_0
    move-exception v3

    .line 250
    .local v3, "e":Ljava/io/IOException;
    const-string v16, "PerformaceControl"

    const-string v17, "StringToFile Fail."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 222
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "i":I
    :cond_c
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/PerformanceControl;->mCtrThermalFlag:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/PerformanceControl;->mThermalWhiteListed:Z

    move/from16 v16, v0

    if-nez v16, :cond_3

    .line 223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->mPf:Lorg/codeaurora/Performance;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 224
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/PerformanceControl;->mCtrThermalFlag:Z

    goto/16 :goto_3

    .line 227
    .end local v6    # "i":I
    :cond_d
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->THERMALCTRLIST:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_e

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->THERMALCTRLIST:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/CharSequence;

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/PerformanceControl;->mThermalWhiteListed:Z

    .line 230
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/PerformanceControl;->mThermalWhiteListed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_f

    .line 232
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/PerformanceControl;->mCtrThermalFlag:Z

    move/from16 v16, v0

    if-nez v16, :cond_11

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/PerformanceControl;->mThermalWhiteListed:Z

    move/from16 v16, v0

    if-eqz v16, :cond_11

    .line 233
    const-string v16, "/sys/devices/system/cpu/cpu0/rq-stats/pp_helper"

    const-string v17, "M1,T-10000"

    invoke-static/range {v16 .. v17}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const-string v16, "com.lenovo.scg"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_10

    .line 235
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->mPf:Lorg/codeaurora/Performance;

    move-object/from16 v16, v0

    const/16 v17, 0xbb8

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_2

    invoke-virtual/range {v16 .. v18}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    .line 241
    :goto_b
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/PerformanceControl;->mCtrThermalFlag:Z

    goto/16 :goto_3

    .line 227
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 238
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->mPf:Lorg/codeaurora/Performance;

    move-object/from16 v16, v0

    const v17, 0x36ee80

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [I

    move-object/from16 v18, v0

    fill-array-data v18, :array_3

    invoke-virtual/range {v16 .. v18}, Lorg/codeaurora/Performance;->perfLockAcquire(I[I)I

    goto :goto_b

    .line 242
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/PerformanceControl;->mCtrThermalFlag:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/lenovo/PerformanceControl;->mThermalWhiteListed:Z

    move/from16 v16, v0

    if-nez v16, :cond_3

    .line 243
    const-string v16, "/sys/devices/system/cpu/cpu0/rq-stats/pp_helper"

    const-string v17, "M0,T10000"

    invoke-static/range {v16 .. v17}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/lenovo/PerformanceControl;->mPf:Lorg/codeaurora/Performance;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lorg/codeaurora/Performance;->perfLockRelease()I

    .line 245
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/lenovo/PerformanceControl;->mCtrThermalFlag:Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    .line 261
    .end local v6    # "i":I
    .restart local v10    # "isLimitCpuExist":Z
    .restart local v13    # "maxCpuFreq":Ljava/lang/String;
    .restart local v14    # "minCpuFreq":Ljava/lang/String;
    :cond_12
    const-string v13, "4294967295"

    .line 262
    const-string v14, "4294967295"

    goto/16 :goto_4

    .line 281
    .end local v10    # "isLimitCpuExist":Z
    .end local v13    # "maxCpuFreq":Ljava/lang/String;
    .end local v14    # "minCpuFreq":Ljava/lang/String;
    .restart local v5    # "gpuFreq":Ljava/lang/String;
    .restart local v9    # "isGpuExist":Z
    :cond_13
    const-string v5, "0"

    goto/16 :goto_5

    .line 295
    .end local v5    # "gpuFreq":Ljava/lang/String;
    .end local v9    # "isGpuExist":Z
    .restart local v11    # "islcdExist":Z
    .restart local v12    # "lcdFps":Ljava/lang/String;
    :cond_14
    const-string v12, "163"

    goto/16 :goto_6

    .line 309
    .end local v11    # "islcdExist":Z
    .end local v12    # "lcdFps":Ljava/lang/String;
    .restart local v2    # "chargingValue":Ljava/lang/String;
    .restart local v7    # "isChargingExist":Z
    :cond_15
    const-string v2, "1500000"

    goto/16 :goto_7

    .line 323
    .end local v2    # "chargingValue":Ljava/lang/String;
    .end local v7    # "isChargingExist":Z
    .restart local v4    # "fpsValue":Ljava/lang/String;
    .restart local v8    # "isFpsExist":Z
    :cond_16
    const-string v4, "60"

    goto/16 :goto_8

    .line 335
    .end local v4    # "fpsValue":Ljava/lang/String;
    .end local v8    # "isFpsExist":Z
    :catch_1
    move-exception v3

    .line 336
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v16, "PerformaceControl"

    const-string v17, "StringToFile Fail."

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 340
    .end local v3    # "e":Ljava/io/IOException;
    :cond_17
    const-string v16, "PerformaceControl"

    const-string v17, "total seq is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 215
    nop

    :array_0
    .array-data 4
        0x702
        0x1e01
        0x20b
        0x30b
        0x1c00
    .end array-data

    .line 218
    :array_1
    .array-data 4
        0x702
        0x1e01
        0x20b
        0x30b
        0x1c00
    .end array-data

    .line 235
    :array_2
    .array-data 4
        0x702
        0x1e01
        0x20b
        0x30b
        0x1c00
    .end array-data

    .line 238
    :array_3
    .array-data 4
        0x702
        0x1e01
        0x20b
        0x30b
        0x1c00
    .end array-data
.end method

.method public systemReady()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 140
    new-instance v2, Lcom/lenovo/PerformanceControl$SettingsObserver;

    iget-object v3, p0, Lcom/lenovo/PerformanceControl;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3}, Lcom/lenovo/PerformanceControl$SettingsObserver;-><init>(Lcom/lenovo/PerformanceControl;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/lenovo/PerformanceControl;->mSettingsObserver:Lcom/lenovo/PerformanceControl$SettingsObserver;

    .line 141
    iget-object v2, p0, Lcom/lenovo/PerformanceControl;->mSettingsObserver:Lcom/lenovo/PerformanceControl$SettingsObserver;

    invoke-virtual {v2}, Lcom/lenovo/PerformanceControl$SettingsObserver;->observe()V

    .line 143
    const-string v2, "persist.debug.limit.enabled"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/PerformanceControl;->mLimitEnable:Z

    .line 144
    const-string v2, "persist.sys.thermalenabled"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/PerformanceControl;->mCtrThermalEnable:Z

    .line 145
    const-string v2, "persist.debug.cpu.limit"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/PerformanceControl;->mLimitCpuEnable:Z

    .line 146
    const-string v2, "persist.debug.gpu.limit"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/PerformanceControl;->mLimitGpuEnable:Z

    .line 147
    const-string v2, "persist.debug.lcd.limit"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/PerformanceControl;->mLimitLcdEnable:Z

    .line 148
    const-string v2, "persist.debug.pow.limit"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/PerformanceControl;->mLimitChargingEnable:Z

    .line 149
    const-string v2, "persist.debug.fps.limit"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/PerformanceControl;->mLimitFpsEnable:Z

    .line 151
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 153
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    :try_start_0
    invoke-interface {v1}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z

    move-result v2

    iput-boolean v2, p0, Lcom/lenovo/PerformanceControl;->misFirstBoot:Z

    .line 154
    const-string v2, "PerformaceControl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ">>>>>> isFirstBoot = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/lenovo/PerformanceControl;->misFirstBoot:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    iget-object v2, p0, Lcom/lenovo/PerformanceControl;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 160
    return-void

    .line 155
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateSettings()V
    .locals 10

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v2, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v3, 0x1

    .line 114
    iget-object v4, p0, Lcom/lenovo/PerformanceControl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 115
    .local v1, "resolver":Landroid/content/ContentResolver;
    const-string v4, "performance_mode_enabled"

    const/4 v5, -0x2

    invoke-static {v1, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/lenovo/PerformanceControl;->mPerfMode:Z

    .line 116
    iget-boolean v2, p0, Lcom/lenovo/PerformanceControl;->mPerfMode:Z

    if-eqz v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/lenovo/PerformanceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    iget-object v2, p0, Lcom/lenovo/PerformanceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 119
    iget-object v2, p0, Lcom/lenovo/PerformanceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 120
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 121
    iget-object v2, p0, Lcom/lenovo/PerformanceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 129
    :goto_0
    return-void

    .line 123
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    iget-object v2, p0, Lcom/lenovo/PerformanceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 124
    iget-object v2, p0, Lcom/lenovo/PerformanceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 125
    iget-object v2, p0, Lcom/lenovo/PerformanceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 126
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0, v3}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 127
    iget-object v2, p0, Lcom/lenovo/PerformanceControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method
