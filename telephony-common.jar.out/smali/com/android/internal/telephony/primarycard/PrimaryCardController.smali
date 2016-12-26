.class public Lcom/android/internal/telephony/primarycard/PrimaryCardController;
.super Landroid/os/Handler;
.source "PrimaryCardController.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final EVENT_SERVICE_STATE_CHENGED:I = 0x0

.field static final MULTI_MODE:Z

.field static final PHONE_COUNT:I

.field static final TAG:Ljava/lang/String; = "PrimaryCardController"

.field private static instance:Lcom/android/internal/telephony/primarycard/PrimaryCardController;

.field private static mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# instance fields
.field private mAllCardsAbsent:Z

.field private mCardChanged:Z

.field private final mContext:Landroid/content/Context;

.field private mIccLoaded:[Z

.field private final mIsMBNEnable:Z

.field mModemStackController:Lcom/android/internal/telephony/ModemStackController;

.field private mNeedHandleModemReadyEvent:Z

.field mPhones:[Lcom/android/internal/telephony/Phone;

.field private mRestoreDdsToPrimarySub:Z

.field private mShowSimInfo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    .line 87
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->MULTI_MODE:Z

    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 105
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 92
    iput-boolean v3, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mAllCardsAbsent:Z

    .line 93
    iput-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    .line 94
    iput-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mNeedHandleModemReadyEvent:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mRestoreDdsToPrimarySub:Z

    .line 100
    iput-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mShowSimInfo:Z

    .line 102
    const-string v1, "persist.radio.enable_mbn"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mIsMBNEnable:Z

    .line 106
    iput-object p1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    .line 107
    sget v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    new-array v1, v1, [Lcom/android/internal/telephony/PhoneProxy;

    iput-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 108
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 109
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    .line 110
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 111
    sget v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mIccLoaded:[Z

    .line 112
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mIccLoaded:[Z

    aput-boolean v2, v1, v0

    .line 112
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method private getCount(Ljava/util/Map;I)I
    .locals 4
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)I"
        }
    .end annotation

    .prologue
    .line 548
    .local p1, "priorities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 549
    .local v0, "count":I
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 550
    .local v2, "key":Ljava/lang/Integer;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 554
    .end local v2    # "key":Ljava/lang/Integer;
    :cond_1
    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/primarycard/PrimaryCardController;
    .locals 3

    .prologue
    .line 437
    const-class v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    monitor-enter v1

    .line 438
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->instance:Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    if-nez v0, :cond_0

    .line 439
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "PrimarySubSelectionController was not initialize!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 442
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 441
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->instance:Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method private getKey(Ljava/util/Map;I)Ljava/lang/Integer;
    .locals 3
    .param p2, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 559
    .local v1, "key":Ljava/lang/Integer;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 563
    .end local v1    # "key":Ljava/lang/Integer;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getPreferredNetworkFromDb(I)I
    .locals 3
    .param p1, "sub"    # I

    .prologue
    .line 567
    const/4 v0, -0x1

    .line 569
    .local v0, "nwMode":I
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "preferred_network_mode"

    invoke-static {v1, v2, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 573
    :goto_0
    return v0

    .line 571
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getPriority(Ljava/util/Map;Ljava/lang/Integer;)I
    .locals 4
    .param p2, "higherPriority"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/Integer;",
            ")I"
        }
    .end annotation

    .prologue
    .local p1, "priorities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v3, 0x1

    const/4 v1, -0x1

    .line 535
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getCount(Ljava/util/Map;I)I

    move-result v0

    .line 536
    .local v0, "count":I
    if-ne v0, v3, :cond_1

    .line 537
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getKey(Ljava/util/Map;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 543
    :cond_0
    :goto_0
    return v1

    .line 538
    :cond_1
    if-gt v0, v3, :cond_0

    .line 540
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 541
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getPriority(Ljava/util/Map;Ljava/lang/Integer;)I

    move-result v1

    goto :goto_0
.end method

.method private getSavePrimarySlot(I[Ljava/lang/String;)I
    .locals 7
    .param p1, "slot"    # I
    .param p2, "iccid"    # [Ljava/lang/String;

    .prologue
    const/4 v3, -0x1

    .line 143
    if-eqz p2, :cond_0

    array-length v4, p2

    sget v5, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v4, v5, :cond_2

    :cond_0
    move v0, v3

    .line 153
    :cond_1
    :goto_0
    return v0

    .line 145
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "subscription"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    .local v1, "iccIdInSP":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v4, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v4, :cond_4

    .line 148
    aget-object v2, p2, v0

    .line 149
    .local v2, "sIccid":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 147
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "sIccid":Ljava/lang/String;
    :cond_4
    move v0, v3

    .line 153
    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 429
    const-class v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    monitor-enter v1

    .line 430
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->instance:Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->instance:Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    .line 433
    :cond_0
    monitor-exit v1

    .line 434
    return-void

    .line 433
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isAllCardAvaliable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "iccid1"    # Ljava/lang/String;

    .prologue
    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isAllCardsAbsent()Z
    .locals 4

    .prologue
    .line 174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_2

    .line 175
    sget-object v2, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 176
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_1

    .line 177
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "card state on sub"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not absent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 178
    const/4 v2, 0x0

    .line 182
    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :goto_1
    return v2

    .line 174
    .restart local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_2
    const-string v2, "all cards absent"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 182
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isAllCmccCard([Ljava/lang/String;)Z
    .locals 5
    .param p1, "iccid"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 248
    sget v4, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    new-array v1, v4, [I

    .line 249
    .local v1, "isCmcc":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 250
    aput v3, v1, v0

    .line 251
    aget-object v4, p1, v0

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isCmccCard(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    aput v2, v1, v0

    .line 249
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 254
    :cond_0
    aput v3, v1, v0

    goto :goto_1

    .line 257
    :cond_1
    aget v4, v1, v3

    if-ne v4, v2, :cond_2

    aget v4, v1, v2

    if-ne v4, v2, :cond_2

    .line 259
    :goto_2
    return v2

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private loadStates([Ljava/lang/String;)V
    .locals 2
    .param p1, "iccid"    # [Ljava/lang/String;

    .prologue
    .line 164
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v1, :cond_1

    .line 166
    aget-object v1, p1, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isCardsInfoChanged(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    .line 165
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 170
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isAllCardsAbsent()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mAllCardsAbsent:Z

    .line 171
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 119
    const-string v0, "PrimaryCardController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void
.end method

.method private retrievePriorities([Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "iccId"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 526
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 527
    .local v1, "priorities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v3, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v3, :cond_0

    .line 528
    sget-object v3, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 529
    .local v2, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/telephony/primarycard/IINList;->getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/telephony/primarycard/IINList;->getIINPriority(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 531
    .end local v2    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_0
    return-object v1
.end method

.method private sendMsg()V
    .locals 19

    .prologue
    .line 294
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    .line 295
    .local v2, "smsManager":Landroid/telephony/SmsManager;
    const-string v3, "10690999127107"

    .line 296
    .local v3, "destAddr":Ljava/lang/String;
    const-string v4, ""

    .line 297
    .local v4, "sdAddr":Ljava/lang/String;
    const-string v6, "gsm.imei1"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 298
    .local v8, "imei1":Ljava/lang/String;
    const-string v6, "gsm.imei2"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 299
    .local v9, "imei2":Ljava/lang/String;
    const-string v6, "cdma.meid"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 300
    .local v16, "meid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v12

    .line 301
    .local v12, "info0":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v13

    .line 302
    .local v13, "info1":Landroid/telephony/SubscriptionInfo;
    const-string v10, ""

    .line 303
    .local v10, "imsi1":Ljava/lang/String;
    const-string v11, ""

    .line 304
    .local v11, "imsi2":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 305
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v12}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v10

    .line 307
    :cond_0
    if-eqz v13, :cond_1

    .line 308
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v11

    .line 310
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 311
    .local v5, "body":Ljava/lang/String;
    const-string v6, "persist.radio.ruimenabled"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 313
    .local v15, "isPrimarySubFeatureEnable":Z
    if-eqz v15, :cond_2

    .line 314
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 316
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "sendMsg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 317
    const/4 v14, 0x0

    .line 318
    .local v14, "isChecked":Z
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 319
    const/16 v6, 0x8

    const/16 v7, 0xe

    invoke-virtual {v8, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 320
    .local v17, "subString":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 321
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 322
    .local v18, "value":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "value is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 323
    const-string v6, "86788102"

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "86788002"

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 324
    :cond_3
    const/4 v6, 0x1

    move/from16 v0, v18

    if-lt v0, v6, :cond_4

    const/16 v6, 0x1388

    move/from16 v0, v18

    if-gt v0, v6, :cond_4

    .line 325
    const/4 v14, 0x1

    .line 335
    .end local v17    # "subString":Ljava/lang/String;
    .end local v18    # "value":I
    :cond_4
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isChecked:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 336
    if-eqz v14, :cond_5

    .line 337
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 340
    :cond_5
    return-void

    .line 328
    .restart local v17    # "subString":Ljava/lang/String;
    .restart local v18    # "value":I
    :cond_6
    const-string v6, "86776502"

    invoke-virtual {v8, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 329
    const/4 v6, 0x1

    move/from16 v0, v18

    if-lt v0, v6, :cond_4

    const/16 v6, 0xfa0

    move/from16 v0, v18

    if-gt v0, v6, :cond_4

    .line 330
    const/4 v14, 0x1

    goto :goto_0
.end method

.method private updateConfigFeature([Ljava/lang/String;)V
    .locals 2
    .param p1, "iccid"    # [Ljava/lang/String;

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isZoomTdd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isAllCmccCard([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    const-string v0, "persist.radio.primarycard"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    const-string v0, "persist.radio.primarycard"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected alertSIMChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "iccid1"    # Ljava/lang/String;

    .prologue
    .line 206
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 207
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 209
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.lenovo.leos.simsettings"

    const-string v4, "com.lenovo.leos.simsettings.NewSimActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 211
    const-string v2, "newslot"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 212
    const-string v2, "name1"

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getSimName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const-string v2, "name2"

    const/4 v3, 0x1

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getSimName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 215
    .local v0, "dataSlot":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 216
    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getPrimarySlot()I

    move-result v0

    .line 218
    :cond_0
    const-string v2, "defaultslot"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default slot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 223
    return-void
.end method

.method public configPrimaryLteSub([Ljava/lang/String;)I
    .locals 13
    .param p1, "iccid"    # [Ljava/lang/String;

    .prologue
    const/16 v12, -0x3e9

    const/4 v3, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 343
    const/4 v6, -0x1

    .line 344
    .local v6, "slot":I
    const/4 v5, 0x0

    .line 345
    .local v5, "primarySlot":I
    if-eqz p1, :cond_0

    array-length v10, p1

    const/4 v11, 0x2

    if-ge v10, v11, :cond_1

    :cond_0
    move v8, v6

    .line 409
    :goto_0
    return v8

    .line 347
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->loadStates([Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isAllCardsAbsent()Z

    move-result v10

    if-eqz v10, :cond_2

    move v8, v9

    .line 349
    goto :goto_0

    .line 350
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isPrimarySetable([Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 351
    const-string v8, "primary is not setable in any sub!"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 353
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->updateConfigFeature([Ljava/lang/String;)V

    :cond_3
    :goto_1
    move v8, v6

    .line 409
    goto :goto_0

    .line 356
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getPrefPrimarySlot([Ljava/lang/String;)I

    move-result v4

    .line 357
    .local v4, "prefPrimarySlot":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getPrimarySlot()I

    move-result v5

    .line 358
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "preferred primary slot is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 359
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "primary slot is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 360
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "is card changed sms test? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 362
    aget-object v10, p1, v8

    aget-object v11, p1, v3

    invoke-virtual {p0, v10, v11}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isCross(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 363
    .local v0, "iscross":Z
    iget-boolean v10, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mIsMBNEnable:Z

    if-nez v10, :cond_a

    if-eqz v0, :cond_a

    .line 364
    const-string v10, "is cross:"

    invoke-direct {p0, v10}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 365
    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getSavePrimarySlot(I[Ljava/lang/String;)I

    move-result v6

    .line 373
    :cond_5
    :goto_2
    iget-boolean v10, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    if-eqz v10, :cond_3

    if-nez v0, :cond_3

    .line 375
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->updateConfigFeature([Ljava/lang/String;)V

    .line 377
    iput-boolean v3, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mRestoreDdsToPrimarySub:Z

    .line 378
    iput-boolean v3, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mShowSimInfo:Z

    .line 379
    invoke-static {}, Lcom/android/internal/telephony/infocollect/InfoCollector;->isFeatureOpen()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 380
    invoke-static {}, Lcom/android/internal/telephony/infocollect/InfoCollector;->getInstance()Lcom/android/internal/telephony/infocollect/InfoCollector;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/infocollect/InfoCollector;->simTypeCollect([Ljava/lang/String;)V

    .line 382
    :cond_6
    iget-object v10, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    .line 383
    iget-object v10, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v10

    invoke-virtual {v10, v12}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 384
    iget-boolean v10, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mIsMBNEnable:Z

    if-nez v10, :cond_7

    .line 385
    iget-object v10, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "multi_sim_data_call"

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 388
    :cond_7
    sget-object v10, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v10, v6}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v7

    .line 389
    .local v7, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    iget-object v10, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/internal/telephony/primarycard/IINList;->getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;

    move-result-object v10

    aget-object v11, p1, v6

    invoke-virtual {v10, v11, v7}, Lcom/android/internal/telephony/primarycard/IINList;->getIINPrefNetwork(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v1

    .line 390
    .local v1, "network":I
    if-ne v1, v9, :cond_8

    .line 391
    const/16 v1, 0x16

    .line 393
    :cond_8
    if-eq v4, v5, :cond_9

    .line 394
    iget-object v9, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "preferred_network_mode"

    invoke-static {v9, v10, v6, v1}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 400
    :cond_9
    aget-object v9, p1, v8

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_d

    .line 401
    .local v3, "phoneId":I
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "phoneId is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 402
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 403
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v2, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 404
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v2, p0, v8, v9}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 367
    .end local v1    # "network":I
    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v3    # "phoneId":I
    .end local v7    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_a
    if-ne v4, v9, :cond_c

    iget-boolean v10, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    if-nez v10, :cond_b

    if-ne v5, v9, :cond_c

    .line 368
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 369
    :cond_c
    if-eq v4, v9, :cond_5

    iget-boolean v10, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    if-eqz v10, :cond_5

    .line 370
    move v6, v4

    goto/16 :goto_2

    .restart local v1    # "network":I
    .restart local v7    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_d
    move v3, v8

    .line 400
    goto :goto_3
.end method

.method public getMode(ILjava/lang/String;)I
    .locals 5
    .param p1, "slot"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    .line 473
    const/4 v0, -0x1

    .line 474
    .local v0, "mode":I
    if-gez p1, :cond_0

    move v1, v0

    .line 482
    .end local v0    # "mode":I
    .local v1, "mode":I
    :goto_0
    return v1

    .line 477
    .end local v1    # "mode":I
    .restart local v0    # "mode":I
    :cond_0
    if-ltz p1, :cond_1

    sget v3, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge p1, v3, :cond_1

    .line 478
    sget-object v3, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 479
    .local v2, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    iget-object v3, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/telephony/primarycard/IINList;->getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/android/internal/telephony/primarycard/IINList;->getIINMode(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v0

    .line 480
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .end local v2    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_1
    move v1, v0

    .line 482
    .end local v0    # "mode":I
    .restart local v1    # "mode":I
    goto :goto_0
.end method

.method public getPrefPrimarySlot([Ljava/lang/String;)I
    .locals 2
    .param p1, "iccid"    # [Ljava/lang/String;

    .prologue
    .line 507
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->retrievePriorities([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/primarycard/IINList;->getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/primarycard/IINList;->getHighestPriority()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getPriority(Ljava/util/Map;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public getPrimarySlot()I
    .locals 1

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/ModemStackController;->getPrimarySub()I

    move-result v0

    return v0
.end method

.method public getSimName(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "slot"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    .line 226
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/primarycard/IINList;->getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/primarycard/IINList;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "spn":Ljava/lang/String;
    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 275
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 276
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 278
    :pswitch_0
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 279
    .local v2, "phoneId":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v3, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/ServiceState;

    .line 280
    .local v3, "state":Landroid/telephony/ServiceState;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 281
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_0

    .line 282
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 283
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_1

    .line 284
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 286
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->sendMsg()V

    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isCardChanged()Z
    .locals 1

    .prologue
    .line 412
    iget-boolean v0, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    return v0
.end method

.method protected isCardsInfoChanged(ILjava/lang/String;)Z
    .locals 6
    .param p1, "sub"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 124
    iget-object v3, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subscription"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "iccIdInSP":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " icc id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", icc id in sp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 127
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 128
    .local v0, "changed":Z
    :cond_0
    :goto_0
    return v0

    .end local v0    # "changed":Z
    :cond_1
    move v0, v2

    .line 127
    goto :goto_0

    :cond_2
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method isCmccCard(Ljava/lang/String;)Z
    .locals 1
    .param p1, "iccid"    # Ljava/lang/String;

    .prologue
    .line 263
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 264
    const-string v0, "898600"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "898602"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "898607"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    :cond_0
    const/4 v0, 0x1

    .line 270
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isCross(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p1, "iccId0"    # Ljava/lang/String;
    .param p2, "iccId1"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 132
    iget-object v3, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "subscription0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "iccIdInSP":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "subscription1"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "iccIdInSP1":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 137
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 139
    :cond_0
    return v2
.end method

.method public isPrimaryLteSubEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 517
    const-string v2, "persist.radio.primarycard"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-le v2, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isPrimarySetable([Ljava/lang/String;)Z
    .locals 3
    .param p1, "iccid"    # [Ljava/lang/String;

    .prologue
    .line 511
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->retrievePriorities([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 512
    .local v0, "priorities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getCount(Ljava/util/Map;I)I

    move-result v1

    .line 513
    .local v1, "unsetableCount":I
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isZoomTdd()Z
    .locals 3

    .prologue
    .line 231
    const-string v1, "ro.product.name"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "name":Ljava/lang/String;
    const-string v1, "zoom_tdd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    const/4 v1, 0x1

    .line 235
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savePrimarySlot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "iccid1"    # Ljava/lang/String;

    .prologue
    .line 415
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_high_level_network_slot"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 416
    .local v0, "saveSlot":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current primary sub:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 417
    const/4 v1, -0x4

    if-eq v0, v1, :cond_0

    .line 418
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save primary sub:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getPrimarySlot()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 419
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_high_level_network_slot"

    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getPrimarySlot()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 421
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigLteDone isManualConfigMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mShowSimInfo:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isAllCardAvaliable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 422
    iget-boolean v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mShowSimInfo:Z

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isAllCardAvaliable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 423
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->alertSIMChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mShowSimInfo:Z

    .line 426
    return-void
.end method

.method public saveSubscriptions([Ljava/lang/String;)V
    .locals 4
    .param p1, "iccId"    # [Ljava/lang/String;

    .prologue
    .line 189
    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    :cond_0
    return-void

    .line 192
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v1, :cond_0

    .line 193
    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "save subscription on sub"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iccId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscription"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 192
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "subscription"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1
.end method

.method public setPreferredNetwork(ILjava/lang/String;Landroid/os/Message;)V
    .locals 7
    .param p1, "slot"    # I
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/os/Message;

    .prologue
    .line 486
    const/4 v3, -0x1

    .line 487
    .local v3, "network":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredNetwork:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 489
    if-gez p1, :cond_0

    .line 504
    :goto_0
    return-void

    .line 493
    :cond_0
    if-ltz p1, :cond_1

    sget v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge p1, v0, :cond_1

    .line 494
    sget-object v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    .line 495
    .local v6, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    iget-object v0, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/primarycard/IINList;->getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;

    move-result-object v0

    invoke-virtual {v0, p2, v6}, Lcom/android/internal/telephony/primarycard/IINList;->getIINPrefNetwork(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v3

    .line 496
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 497
    const-string v0, "network mode is -1 , can not set primary card "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 502
    .end local v6    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set primary card for sub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 503
    new-instance v0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;-><init>(Landroid/content/Context;IIZLandroid/os/Message;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->loop()V

    goto :goto_0
.end method

.method public setPreferredNetwork(ILjava/lang/String;ZLandroid/os/Message;)V
    .locals 8
    .param p1, "slot"    # I
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "bootup"    # Z
    .param p4, "callback"    # Landroid/os/Message;

    .prologue
    .line 446
    const/4 v3, -0x1

    .line 447
    .local v3, "network":I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredNetwork:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 449
    if-gez p1, :cond_0

    .line 469
    :goto_0
    return-void

    .line 453
    :cond_0
    if-ltz p1, :cond_1

    sget v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge p1, v0, :cond_1

    .line 454
    sget-object v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v7

    .line 455
    .local v7, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    iget-object v0, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/primarycard/IINList;->getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;

    move-result-object v0

    invoke-virtual {v0, p2, v7}, Lcom/android/internal/telephony/primarycard/IINList;->getIINPrefNetwork(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v3

    .line 456
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 457
    const-string v0, "network mode is -1 , can not set primary card "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 462
    .end local v7    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mIsMBNEnable:Z

    if-nez v0, :cond_2

    .line 463
    if-nez p1, :cond_3

    const/4 v6, 0x1

    .line 464
    .local v6, "other":I
    :goto_1
    const/4 p3, 0x1

    .line 467
    .end local v6    # "other":I
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set primary card for sub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", network="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 468
    new-instance v0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    move v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;-><init>(Landroid/content/Context;IIZLandroid/os/Message;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->loop()V

    goto :goto_0

    .line 463
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method public setRestoreDdsToPrimarySub(Z)V
    .locals 0
    .param p1, "restoreDdsToPrimarySub"    # Z

    .prologue
    .line 160
    iput-boolean p1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mRestoreDdsToPrimarySub:Z

    .line 161
    return-void
.end method
