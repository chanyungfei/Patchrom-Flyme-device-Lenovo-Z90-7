.class public Landroid/provider/MultiSIMUtils;
.super Ljava/lang/Object;
.source "MultiSIMUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MultiSIMUtils"

.field protected static MAX_PHONE_COUNT_DS:I

.field protected static isMultiSimEnabled:Z

.field private static mContext:Landroid/content/Context;

.field protected static multiSimConfigProp:Ljava/lang/String;

.field private static sInstance:Landroid/provider/MultiSIMUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    const-string v0, "dsda"

    const-string v1, "persist.dsds.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Landroid/provider/MultiSIMUtils;->isMultiSimEnabled:Z

    .line 36
    const-string v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/provider/MultiSIMUtils;->multiSimConfigProp:Ljava/lang/String;

    .line 37
    const/4 v0, 0x2

    sput v0, Landroid/provider/MultiSIMUtils;->MAX_PHONE_COUNT_DS:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sput-object p1, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    .line 43
    return-void
.end method

.method private getCurrentPhoneType(I)I
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, "propVal":Ljava/lang/String;
    const-string v3, "gsm.current.phone-type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "prop":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 94
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 95
    .local v2, "values":[Ljava/lang/String;
    if-ltz p1, :cond_0

    array-length v3, v2

    if-ge p1, v3, :cond_0

    aget-object v3, v2, p1

    if-eqz v3, :cond_0

    .line 96
    aget-object v1, v2, p1

    .line 99
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method public static getDefault(Landroid/content/Context;)Landroid/provider/MultiSIMUtils;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    sget-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    if-nez v0, :cond_0

    .line 47
    new-instance v0, Landroid/provider/MultiSIMUtils;

    invoke-direct {v0, p0}, Landroid/provider/MultiSIMUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    .line 49
    :cond_0
    sget-object v0, Landroid/provider/MultiSIMUtils;->sInstance:Landroid/provider/MultiSIMUtils;

    return-object v0
.end method

.method public static getNetworkType(I)I
    .locals 2
    .param p0, "subscription"    # I

    .prologue
    .line 212
    const/4 v1, 0x0

    .line 213
    .local v1, "type":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 214
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v1

    .line 218
    :cond_0
    return v1
.end method


# virtual methods
.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 12
    .param p1, "PhoneId"    # I

    .prologue
    const v5, 0x7fffffff

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 103
    const/4 v2, 0x0

    .line 104
    .local v2, "location":Landroid/telephony/CellLocation;
    const-string v4, "MultiSIMUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCellLocation PhoneId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Phone type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getCurrentPhoneType(I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez p1, :cond_4

    .line 107
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getCurrentPhoneType(I)I

    move-result v4

    if-ne v4, v8, :cond_1

    .line 108
    const-string v4, "ril.p0.gsm"

    const-string v5, "-1_-1_-1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 109
    .local v3, "mStr":Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "array":[Ljava/lang/String;
    const-string v4, "lac"

    aget-object v5, v0, v11

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    const-string v4, "cid"

    aget-object v5, v0, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 112
    const-string v4, "psc"

    aget-object v5, v0, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    new-instance v2, Landroid/telephony/gsm/GsmCellLocation;

    .end local v2    # "location":Landroid/telephony/CellLocation;
    invoke-direct {v2, v1}, Landroid/telephony/gsm/GsmCellLocation;-><init>(Landroid/os/Bundle;)V

    .line 154
    .end local v0    # "array":[Ljava/lang/String;
    .end local v3    # "mStr":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 116
    .restart local v2    # "location":Landroid/telephony/CellLocation;
    :cond_1
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getCurrentPhoneType(I)I

    move-result v4

    if-ne v4, v9, :cond_0

    .line 117
    const-string v4, "ril.p0.cdma"

    const-string v6, "-1_-1_-1_-1_-1"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .restart local v3    # "mStr":Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 119
    .restart local v0    # "array":[Ljava/lang/String;
    const-string v4, "baseStationId"

    aget-object v6, v0, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v6, "baseStationLatitude"

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v10, :cond_3

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_1
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string v4, "baseStationLongitude"

    aget-object v6, v0, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v10, :cond_2

    aget-object v5, v0, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_2
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    const-string v4, "systemId"

    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 123
    const-string v4, "networkId"

    const/4 v5, 0x4

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v2    # "location":Landroid/telephony/CellLocation;
    invoke-direct {v2, v1}, Landroid/telephony/cdma/CdmaCellLocation;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    .restart local v2    # "location":Landroid/telephony/CellLocation;
    :cond_3
    move v4, v5

    .line 120
    goto :goto_1

    .line 129
    .end local v0    # "array":[Ljava/lang/String;
    .end local v3    # "mStr":Ljava/lang/String;
    :cond_4
    if-ne p1, v8, :cond_0

    .line 130
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getCurrentPhoneType(I)I

    move-result v4

    if-ne v4, v8, :cond_5

    .line 131
    const-string v4, "ril.p1.gsm"

    const-string v5, "-1_-1_-1"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 132
    .restart local v3    # "mStr":Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 133
    .restart local v0    # "array":[Ljava/lang/String;
    const-string v4, "lac"

    aget-object v5, v0, v11

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 134
    const-string v4, "cid"

    aget-object v5, v0, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 135
    const-string v4, "psc"

    aget-object v5, v0, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 136
    new-instance v2, Landroid/telephony/gsm/GsmCellLocation;

    .end local v2    # "location":Landroid/telephony/CellLocation;
    invoke-direct {v2, v1}, Landroid/telephony/gsm/GsmCellLocation;-><init>(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 139
    .end local v0    # "array":[Ljava/lang/String;
    .end local v3    # "mStr":Ljava/lang/String;
    .restart local v2    # "location":Landroid/telephony/CellLocation;
    :cond_5
    invoke-direct {p0, p1}, Landroid/provider/MultiSIMUtils;->getCurrentPhoneType(I)I

    move-result v4

    if-ne v4, v9, :cond_0

    .line 140
    const-string v4, "ril.p1.cdma"

    const-string v6, "-1_-1_-1_-1_-1"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 141
    .restart local v3    # "mStr":Ljava/lang/String;
    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 142
    .restart local v0    # "array":[Ljava/lang/String;
    const-string v4, "baseStationId"

    aget-object v6, v0, v11

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 143
    const-string v6, "baseStationLatitude"

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v10, :cond_7

    aget-object v4, v0, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_2
    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 144
    const-string v4, "baseStationLongitude"

    aget-object v6, v0, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eq v6, v10, :cond_6

    aget-object v5, v0, v9

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    :cond_6
    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 145
    const-string v4, "systemId"

    const/4 v5, 0x3

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 146
    const-string v4, "networkId"

    const/4 v5, 0x4

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 147
    new-instance v2, Landroid/telephony/cdma/CdmaCellLocation;

    .end local v2    # "location":Landroid/telephony/CellLocation;
    invoke-direct {v2, v1}, Landroid/telephony/cdma/CdmaCellLocation;-><init>(Landroid/os/Bundle;)V

    goto/16 :goto_0

    .restart local v2    # "location":Landroid/telephony/CellLocation;
    :cond_7
    move v4, v5

    .line 143
    goto :goto_2
.end method

.method public getDataSubscriberId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 290
    .local v1, "subid":I
    :try_start_0
    sget-object v2, Landroid/provider/MultiSIMUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "multi_sim_data_call"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 295
    :goto_0
    const-string v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current data subid is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0, v1}, Landroid/provider/MultiSIMUtils;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "MultiSIMUtils"

    const-string v3, "getDataSubscriberId error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 3
    .param p1, "subscription"    # I

    .prologue
    .line 238
    const/4 v0, 0x0

    .line 240
    .local v0, "str":Ljava/lang/String;
    if-nez p1, :cond_1

    const-string v1, "ct"

    const-string v2, "ro.lenovo.operator"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 241
    const-string v1, "cdma.meid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    :cond_0
    :goto_0
    return-object v0

    .line 242
    :cond_1
    if-nez p1, :cond_2

    .line 243
    const-string v1, "gsm.imei1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 244
    :cond_2
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 245
    const-string v1, "gsm.imei2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getDevicePn()Ljava/lang/String;
    .locals 5

    .prologue
    .line 305
    const/4 v1, 0x0

    .line 306
    .local v1, "str":Ljava/lang/String;
    const-string v2, "gsm.sn1"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "sn":Ljava/lang/String;
    const/4 v2, 0x0

    const/16 v3, 0x17

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 308
    const-string v2, "MultiSIMUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sn is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-object v1
.end method

.method public getDeviceSn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "str":Ljava/lang/String;
    const-string v1, "sys.customsn.showcode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    return-object v0
.end method

.method public getIMEI(I)Ljava/lang/String;
    .locals 2
    .param p1, "slot"    # I

    .prologue
    .line 313
    const/4 v0, 0x0

    .line 314
    .local v0, "str":Ljava/lang/String;
    if-nez p1, :cond_1

    .line 315
    const-string v1, "gsm.imei1"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    :cond_0
    :goto_0
    return-object v0

    .line 316
    :cond_1
    const/4 v1, 0x1

    if-ne v1, p1, :cond_0

    .line 317
    const-string v1, "gsm.imei2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getMEID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 323
    const/4 v0, 0x0

    .line 324
    .local v0, "str":Ljava/lang/String;
    const-string v1, "cdma.meid"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    return-object v0
.end method

.method public getNetworkOperator(I)Ljava/lang/String;
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    .line 225
    const/4 v2, 0x0

    .line 226
    .local v2, "type":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 227
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 228
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 229
    if-eqz v0, :cond_0

    .line 230
    const/4 v3, 0x0

    aget v3, v1, v3

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForSubscription(I)Ljava/lang/String;

    move-result-object v2

    .line 233
    :cond_0
    return-object v2
.end method

.method public getPhoneCount()I
    .locals 3

    .prologue
    .line 57
    const/4 v0, 0x1

    .line 59
    .local v0, "count":I
    const-string v1, "dsds"

    sget-object v2, Landroid/provider/MultiSIMUtils;->multiSimConfigProp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dsda"

    sget-object v2, Landroid/provider/MultiSIMUtils;->multiSimConfigProp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 60
    :cond_0
    sget v0, Landroid/provider/MultiSIMUtils;->MAX_PHONE_COUNT_DS:I

    .line 62
    :cond_1
    return v0
.end method

.method public getPhoneType(I)I
    .locals 2
    .param p1, "subscription"    # I

    .prologue
    .line 180
    const/4 v1, 0x0

    .line 181
    .local v1, "type":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 183
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v1

    .line 187
    :cond_0
    return v1
.end method

.method public getSIMContactsUri(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 159
    const-string v0, "content://iccmsim/adn"

    .line 161
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "content://iccmsim/adn_sub2"

    goto :goto_0
.end method

.method public getSIMSMSUri(I)Ljava/lang/String;
    .locals 1
    .param p1, "subscription"    # I

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScAddress(I)Ljava/lang/String;
    .locals 6
    .param p1, "subscription"    # I

    .prologue
    .line 276
    const/4 v0, 0x0

    .line 277
    .local v0, "str":Ljava/lang/String;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    .line 278
    .local v1, "subId":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 279
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 280
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    const/4 v3, 0x0

    aget v3, v1, v3

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/telephony/SmsManager;->getSmscOnIcc(J)Ljava/lang/String;

    move-result-object v0

    .line 283
    :cond_0
    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    .line 251
    const/4 v1, 0x0

    .line 252
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 253
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 254
    .local v2, "subId":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 255
    if-eqz v0, :cond_0

    .line 256
    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 259
    :cond_0
    return-object v1
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    .line 263
    const/4 v1, 0x0

    .line 264
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 265
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 266
    .local v2, "subId":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 267
    if-eqz v0, :cond_0

    .line 268
    const/4 v3, 0x0

    aget v3, v2, v3

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    :cond_0
    return-object v1
.end method

.method public getSimState(I)I
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 80
    const/4 v1, 0x0

    .line 81
    .local v1, "state":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 83
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 86
    :cond_0
    return v1
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 7
    .param p1, "subscription"    # I

    .prologue
    const/4 v6, 0x0

    .line 66
    const/4 v1, 0x0

    .line 67
    .local v1, "str":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 68
    .local v0, "mTelephonyMgr":Landroid/telephony/TelephonyManager;
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 69
    .local v2, "subId":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-lez v3, :cond_0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    const-string v3, "MultiSIMUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSubscriberId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    aget v3, v2, v6

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v1

    .line 75
    :cond_0
    return-object v1
.end method
