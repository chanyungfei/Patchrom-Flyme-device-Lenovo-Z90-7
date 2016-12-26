.class public Lcom/android/internal/telephony/infocollect/InfoCollector;
.super Ljava/lang/Object;
.source "InfoCollector.java"


# static fields
.field private static final PLMN_TABLE_TYPE1:[Ljava/lang/String;

.field private static final PLMN_TABLE_TYPE2:[Ljava/lang/String;

.field private static final PLMN_TABLE_TYPE3:[Ljava/lang/String;

.field private static final PROJECT_SIM_NUM:I

.field private static final SIM_ABSENT:I = 0xff

.field private static final SIM_OP_INFO_OP01:I = 0x20

.field private static final SIM_OP_INFO_OP02:I = 0x30

.field private static final SIM_OP_INFO_OP03:I = 0x40

.field private static final SIM_OP_INFO_OVERSEA:I = 0x10

.field private static final SIM_OP_INFO_UNKNOWN:I = 0x0

.field private static final SIM_TYPE_CSIM:I = 0x2

.field private static final SIM_TYPE_OTHER:I = 0x0

.field private static final SIM_TYPE_RUIM:I = 0x1

.field private static final SIM_TYPE_SIM:I = 0x1

.field private static final SIM_TYPE_USIM:I = 0x2

.field private static final SLOT_0:I = 0x0

.field private static final SLOT_1:I = 0x1

.field private static final TAG:Ljava/lang/String; = "InfoCollector"

.field private static sInstance:Lcom/android/internal/telephony/infocollect/InfoCollector;


# instance fields
.field private destinateType:I

.field private orignalType:I

.field private simOpInfo:[I

.field private simSwitching:Z

.field private simType:[I

.field private startTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 29
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/infocollect/InfoCollector;->PROJECT_SIM_NUM:I

    .line 39
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "898600"

    aput-object v1, v0, v2

    const-string v1, "898602"

    aput-object v1, v0, v3

    const-string v1, "898607"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/infocollect/InfoCollector;->PLMN_TABLE_TYPE1:[Ljava/lang/String;

    .line 41
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "898601"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/infocollect/InfoCollector;->PLMN_TABLE_TYPE2:[Ljava/lang/String;

    .line 43
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "898603"

    aput-object v1, v0, v2

    const-string v1, "898611"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/internal/telephony/infocollect/InfoCollector;->PLMN_TABLE_TYPE3:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v3, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->orignalType:I

    .line 35
    iput v3, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->destinateType:I

    .line 55
    sget v1, Lcom/android/internal/telephony/infocollect/InfoCollector;->PROJECT_SIM_NUM:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    .line 56
    sget v1, Lcom/android/internal/telephony/infocollect/InfoCollector;->PROJECT_SIM_NUM:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    .line 57
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/infocollect/InfoCollector;->PROJECT_SIM_NUM:I

    if-ge v0, v1, :cond_0

    .line 58
    iget-object v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    const/16 v2, 0xff

    aput v2, v1, v0

    .line 59
    iget-object v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    aput v3, v1, v0

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 61
    :cond_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simSwitching:Z

    .line 62
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/infocollect/InfoCollector;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/internal/telephony/infocollect/InfoCollector;->sInstance:Lcom/android/internal/telephony/infocollect/InfoCollector;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/internal/telephony/infocollect/InfoCollector;

    invoke-direct {v0}, Lcom/android/internal/telephony/infocollect/InfoCollector;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/infocollect/InfoCollector;->sInstance:Lcom/android/internal/telephony/infocollect/InfoCollector;

    .line 51
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/infocollect/InfoCollector;->sInstance:Lcom/android/internal/telephony/infocollect/InfoCollector;

    return-object v0
.end method

.method private initSimTypeAndOpInfo([Ljava/lang/String;)V
    .locals 10
    .param p1, "iccIds"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 65
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    array-length v4, v4

    new-array v2, v4, [Ljava/lang/String;

    .line 66
    .local v2, "strIccId":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    array-length v4, v4

    new-array v3, v4, [Ljava/lang/String;

    .line 68
    .local v3, "strSimType":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v7, :cond_b

    .line 69
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/telephony/TelephonyManager;->getSimAppType(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 70
    aget-object v4, v3, v0

    const-string v5, "SIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 71
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aput v9, v4, v0

    .line 81
    :goto_1
    const-string v4, "InfoCollector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SimType["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", simType["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    aget-object v1, p1, v0

    .line 84
    .local v1, "iccid":Ljava/lang/String;
    const-string v4, ""

    aput-object v4, v2, v0

    .line 85
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 86
    const/4 v4, 0x6

    invoke-virtual {v1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 88
    :cond_0
    const-string v4, "InfoCollector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccid["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-string v4, "898600"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "898602"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "898607"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 91
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    const/16 v5, 0x20

    aput v5, v4, v0

    .line 68
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 72
    .end local v1    # "iccid":Ljava/lang/String;
    :cond_3
    aget-object v4, v3, v0

    const-string v5, "USIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 73
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aput v7, v4, v0

    goto/16 :goto_1

    .line 74
    :cond_4
    aget-object v4, v3, v0

    const-string v5, "RUIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 75
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aput v9, v4, v0

    goto/16 :goto_1

    .line 76
    :cond_5
    aget-object v4, v3, v0

    const-string v5, "CSIM"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 77
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aput v7, v4, v0

    goto/16 :goto_1

    .line 79
    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aput v8, v4, v0

    goto/16 :goto_1

    .line 92
    .restart local v1    # "iccid":Ljava/lang/String;
    :cond_7
    const-string v4, "898601"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 93
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    const/16 v5, 0x30

    aput v5, v4, v0

    goto :goto_2

    .line 94
    :cond_8
    const-string v4, "898603"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "898611"

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 96
    :cond_9
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    const/16 v5, 0x40

    aput v5, v4, v0

    goto :goto_2

    .line 97
    :cond_a
    aget-object v4, v2, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 98
    iget-object v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    const/16 v5, 0x10

    aput v5, v4, v0

    goto :goto_2

    .line 101
    .end local v1    # "iccid":Ljava/lang/String;
    :cond_b
    const-string v4, "InfoCollector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimInfo(simOpInfo): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const-string v4, "InfoCollector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimInfo(simType): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method public static isFeatureOpen()Z
    .locals 2

    .prologue
    .line 176
    const-string v0, "ro.lenovo.datamining"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public endSimSwitch()V
    .locals 10

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simSwitching:Z

    if-eqz v0, :cond_0

    .line 124
    const-wide/16 v4, 0x0

    .line 125
    .local v4, "regTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v8, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->startTime:J

    sub-long v2, v0, v8

    .line 126
    .local v2, "durationTime":J
    const-string v0, "InfoCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "endSimSwitch... orignalType="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->orignalType:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " destinateType="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v7, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->destinateType:I

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v7, " durationTime="

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :try_start_0
    iget v0, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->orignalType:I

    iget v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->destinateType:I

    invoke-static/range {v0 .. v5}, Lcom/lenovo/datamining/avatar/phone/PhoneDataCollect;->simSwitchInfo(IIJJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_2

    .line 140
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simSwitching:Z

    .line 142
    .end local v2    # "durationTime":J
    .end local v4    # "regTime":J
    :cond_0
    return-void

    .line 136
    .restart local v2    # "durationTime":J
    .restart local v4    # "regTime":J
    :catch_0
    move-exception v6

    .line 137
    .local v6, "e":Ljava/lang/Throwable;
    :goto_1
    const-string v0, "InfoCollector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Alert! -> "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 136
    .end local v6    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v6

    goto :goto_1

    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method public simTypeCollect([Ljava/lang/String;)V
    .locals 9
    .param p1, "iccid"    # [Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 145
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/infocollect/InfoCollector;->initSimTypeAndOpInfo([Ljava/lang/String;)V

    .line 146
    iget-object v5, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aget v5, v5, v7

    iget-object v6, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    aget v6, v6, v7

    or-int v3, v5, v6

    .line 147
    .local v3, "sim1Type":I
    iget-object v5, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aget v5, v5, v8

    iget-object v6, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    aget v6, v6, v8

    or-int v4, v5, v6

    .line 148
    .local v4, "sim2Type":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    .line 150
    .local v1, "hasSim1":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    .line 152
    .local v2, "hasSim2":Z
    if-nez v1, :cond_0

    .line 153
    const/16 v3, 0xff

    .line 155
    :cond_0
    if-nez v2, :cond_1

    .line 156
    const/16 v4, 0xff

    .line 159
    :cond_1
    const-string v5, "InfoCollector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simTypeCollect... sim1Type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " sim2Type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    :try_start_0
    invoke-static {v3, v4}, Lcom/lenovo/datamining/avatar/phone/PhoneDataCollect;->simTypeInfo(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_2

    .line 172
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Throwable;
    :goto_1
    const-string v5, "InfoCollector"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Alert! -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 168
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public startSimSwitch(I)V
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 106
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    .line 107
    .local v0, "slotId":I
    iput-boolean v3, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simSwitching:Z

    .line 108
    if-nez v0, :cond_1

    .line 109
    iget-object v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    aget v2, v2, v3

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->orignalType:I

    .line 110
    iget-object v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    aget v2, v2, v4

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->destinateType:I

    .line 116
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->startTime:J

    .line 117
    const-string v1, "InfoCollector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startSimSwitch... startTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->startTime:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " orignalType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->orignalType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " destinateType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->destinateType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 111
    :cond_1
    if-ne v0, v3, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aget v1, v1, v4

    iget-object v2, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    aget v2, v2, v4

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->orignalType:I

    .line 113
    iget-object v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simType:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->simOpInfo:[I

    aget v2, v2, v3

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/infocollect/InfoCollector;->destinateType:I

    goto :goto_0
.end method
