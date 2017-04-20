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

.field private mIsMBNEnable:Z

.field private mNeedHandleModemReadyEvent:Z

.field mPhones:[Lcom/android/internal/telephony/Phone;

.field private mRestoreDdsToPrimarySub:Z

.field private mShowSimInfo:Z

.field private resetFromVSim:Z


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

    .line 106
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

    .line 103
    iput-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->resetFromVSim:Z

    .line 107
    iput-object p1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    .line 108
    sget v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    new-array v1, v1, [Lcom/android/internal/telephony/PhoneProxy;

    iput-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mPhones:[Lcom/android/internal/telephony/Phone;

    .line 109
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mPhones:[Lcom/android/internal/telephony/Phone;

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
    .line 594
    .local p1, "priorities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 595
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

    .line 596
    .local v2, "key":Ljava/lang/Integer;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_0

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 600
    .end local v2    # "key":Ljava/lang/Integer;
    :cond_1
    return v0
.end method

.method public static getInstance()Lcom/android/internal/telephony/primarycard/PrimaryCardController;
    .locals 3

    .prologue
    .line 471
    const-class v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    monitor-enter v1

    .line 472
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->instance:Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    if-nez v0, :cond_0

    .line 473
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "PrimarySubSelectionController was not initialize!"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 475
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
    .line 604
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

    .line 605
    .local v1, "key":Ljava/lang/Integer;
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 609
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
    .line 613
    const/4 v0, -0x1

    .line 615
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

    .line 619
    :goto_0
    return v0

    .line 617
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

    .line 581
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getCount(Ljava/util/Map;I)I

    move-result v0

    .line 582
    .local v0, "count":I
    if-ne v0, v3, :cond_1

    .line 583
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getKey(Ljava/util/Map;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 589
    :cond_0
    :goto_0
    return v1

    .line 584
    :cond_1
    if-gt v0, v3, :cond_0

    .line 586
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    .line 587
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

    .line 156
    if-eqz p2, :cond_0

    array-length v4, p2

    sget v5, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v4, v5, :cond_2

    :cond_0
    move v0, v3

    .line 166
    :cond_1
    :goto_0
    return v0

    .line 158
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

    .line 160
    .local v1, "iccIdInSP":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    sget v4, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v4, :cond_4

    .line 161
    aget-object v2, p2, v0

    .line 162
    .local v2, "sIccid":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 160
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v2    # "sIccid":Ljava/lang/String;
    :cond_4
    move v0, v3

    .line 166
    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 463
    const-class v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    monitor-enter v1

    .line 464
    :try_start_0
    sget-object v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->instance:Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    if-nez v0, :cond_0

    .line 465
    new-instance v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->instance:Lcom/android/internal/telephony/primarycard/PrimaryCardController;

    .line 467
    :cond_0
    monitor-exit v1

    .line 468
    return-void

    .line 467
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
    .line 205
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
    .line 194
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_2

    .line 195
    sget-object v2, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    .line 196
    .local v1, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v2, v3, :cond_1

    .line 197
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

    .line 198
    const/4 v2, 0x0

    .line 202
    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :goto_1
    return v2

    .line 194
    .restart local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    .end local v1    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_2
    const-string v2, "all cards absent"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 202
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isAllCmccCard([Ljava/lang/String;)Z
    .locals 5
    .param p1, "iccid"    # [Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 273
    sget v4, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    new-array v1, v4, [I

    .line 274
    .local v1, "isCmcc":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_1

    .line 275
    aput v3, v1, v0

    .line 276
    aget-object v4, p1, v0

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isCmccCard(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 277
    aput v2, v1, v0

    .line 274
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 279
    :cond_0
    aput v3, v1, v0

    goto :goto_1

    .line 282
    :cond_1
    aget v4, v1, v3

    if-ne v4, v2, :cond_2

    aget v4, v1, v2

    if-ne v4, v2, :cond_2

    .line 284
    :goto_2
    return v2

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method private loadStates([Ljava/lang/String;)V
    .locals 6
    .param p1, "iccid"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 177
    iput-boolean v3, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v4, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v4, :cond_1

    .line 179
    aget-object v4, p1, v0

    invoke-virtual {p0, v0, v4}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isCardsInfoChanged(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 180
    iput-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    .line 178
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isAllCardsAbsent()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mAllCardsAbsent:Z

    .line 185
    aget-object v4, p1, v3

    aget-object v5, p1, v2

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isCross(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 186
    .local v1, "misCross":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadStates:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mAllCardsAbsent:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 189
    iget-boolean v4, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mAllCardsAbsent:Z

    if-nez v4, :cond_2

    :goto_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    .line 191
    return-void

    :cond_2
    move v2, v3

    .line 189
    goto :goto_1
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
    .line 572
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 573
    .local v1, "priorities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    sget v3, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v3, :cond_0

    .line 574
    sget-object v3, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 575
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

    .line 573
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 577
    .end local v2    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_0
    return-object v1
.end method

.method private savePrefNetworkInSetting(II)V
    .locals 6
    .param p1, "slot"    # I
    .param p2, "networkMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 636
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveprefNetworkInSetting: slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " networkmode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 637
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 638
    .local v0, "subContrl":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 639
    .local v1, "subId":[I
    aget v2, v1, v5

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 640
    iget-object v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 646
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, p1, p2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 650
    return-void
.end method

.method private sendMsg()V
    .locals 19

    .prologue
    .line 319
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v14

    .line 320
    .local v14, "smsManager":Landroid/telephony/SmsManager;
    const-string v3, "10690999127107"

    .line 321
    .local v3, "destAddr":Ljava/lang/String;
    const-string v13, ""

    .line 322
    .local v13, "sdAddr":Ljava/lang/String;
    const-string v17, "gsm.imei1"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 323
    .local v4, "imei1":Ljava/lang/String;
    const-string v17, "gsm.imei2"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 324
    .local v5, "imei2":Ljava/lang/String;
    const-string v17, "cdma.meid"

    invoke-static/range {v17 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 325
    .local v12, "meid":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v8

    .line 326
    .local v8, "info0":Landroid/telephony/SubscriptionInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v17

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v9

    .line 327
    .local v9, "info1":Landroid/telephony/SubscriptionInfo;
    const-string v6, ""

    .line 328
    .local v6, "imsi1":Ljava/lang/String;
    const-string v7, ""

    .line 329
    .local v7, "imsi2":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 330
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    .line 332
    :cond_0
    if-eqz v9, :cond_1

    .line 333
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v17

    invoke-virtual {v9}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    .line 335
    :cond_1
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, "body":Ljava/lang/String;
    const-string v17, "persist.radio.ruimenabled"

    const/16 v18, 0x0

    invoke-static/range {v17 .. v18}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .line 338
    .local v11, "isPrimarySubFeatureEnable":Z
    if-eqz v11, :cond_2

    .line 339
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ","

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 341
    :cond_2
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "sendMsg:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 342
    const/4 v10, 0x0

    .line 344
    .local v10, "isChecked":Z
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_4

    .line 345
    const/16 v17, 0x8

    const/16 v18, 0xe

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 346
    .local v15, "subString":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 347
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 348
    .local v16, "value":I
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "value is:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 349
    const-string v17, "86788102"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "86788002"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 350
    :cond_3
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    const/16 v17, 0x1388

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_4

    .line 351
    const/4 v10, 0x1

    .line 361
    .end local v15    # "subString":Ljava/lang/String;
    .end local v16    # "value":I
    :cond_4
    :goto_0
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "isChecked:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 362
    if-eqz v10, :cond_5

    .line 366
    :cond_5
    return-void

    .line 354
    .restart local v15    # "subString":Ljava/lang/String;
    .restart local v16    # "value":I
    :cond_6
    const-string v17, "86776502"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 355
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_4

    const/16 v17, 0xfa0

    move/from16 v0, v16

    move/from16 v1, v17

    if-gt v0, v1, :cond_4

    .line 356
    const/4 v10, 0x1

    goto :goto_0
.end method

.method private sendResponseToTarget(Landroid/os/Message;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "responseCode"    # I

    .prologue
    .line 629
    if-eqz p1, :cond_0

    .line 630
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 631
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 632
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 634
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private updateConfigFeature([Ljava/lang/String;)V
    .locals 2
    .param p1, "iccid"    # [Ljava/lang/String;

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isZoomTdd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isAllCmccCard([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 265
    const-string v0, "persist.radio.primarycard"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 267
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
    .line 234
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v2, 0x10200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 237
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.lenovo.leos.simsettings"

    const-string v4, "com.lenovo.leos.simsettings.NewSimActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 239
    const-string v2, "newslot"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 240
    const-string v2, "name1"

    const/4 v3, 0x0

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getSimName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    const-string v2, "name2"

    const/4 v3, 0x1

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getSimName(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 242
    iget-object v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getDefaultDataPhoneId()I

    move-result v0

    .line 243
    .local v0, "dataSlot":I
    const-string v2, "defaultslot"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 244
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

    .line 245
    iget-object v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 248
    return-void
.end method

.method public clearSaveSubscriptions()V
    .locals 4

    .prologue
    .line 226
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->resetFromVSim:Z

    .line 227
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v1, :cond_0

    .line 228
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

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 231
    :cond_0
    return-void
.end method

.method public configPrimaryLteSub([Ljava/lang/String;)I
    .locals 11
    .param p1, "iccid"    # [Ljava/lang/String;

    .prologue
    const/16 v10, -0x3e9

    const/4 v7, -0x1

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 370
    const-string v8, "persist.radio.enable_mbn"

    invoke-static {v8, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mIsMBNEnable:Z

    .line 372
    const/4 v5, 0x0

    .line 373
    .local v5, "slot":I
    const/4 v4, 0x0

    .line 375
    .local v4, "primarySlot":I
    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getprimarySlot()I

    move-result v4

    .line 376
    move v5, v4

    .line 378
    if-eqz p1, :cond_0

    array-length v8, p1

    const/4 v9, 0x2

    if-ge v8, v9, :cond_1

    :cond_0
    move v6, v5

    .line 445
    :goto_0
    return v6

    .line 380
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->loadStates([Ljava/lang/String;)V

    .line 381
    invoke-direct {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isAllCardsAbsent()Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    .line 382
    goto :goto_0

    .line 383
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isPrimarySetable([Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 384
    const-string v6, "primary is not setable in any sub!"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 386
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->updateConfigFeature([Ljava/lang/String;)V

    :cond_3
    :goto_1
    move v6, v5

    .line 445
    goto :goto_0

    .line 390
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getVSimSlot()I

    move-result v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getVSimSlot()I

    move-result v3

    .line 394
    .local v3, "prefPrimarySlot":I
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "preferred primary slot is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 395
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "is card changed sms test? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 396
    aget-object v8, p1, v6

    aget-object v9, p1, v2

    invoke-virtual {p0, v8, v9}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isCross(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 397
    .local v0, "iscross":Z
    iget-boolean v8, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mIsMBNEnable:Z

    if-nez v8, :cond_9

    if-eqz v0, :cond_9

    .line 398
    const-string v7, "is cross:"

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 399
    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getSavePrimarySlot(I[Ljava/lang/String;)I

    move-result v5

    .line 412
    :cond_5
    :goto_3
    iget-boolean v7, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    if-eqz v7, :cond_3

    if-nez v0, :cond_3

    .line 414
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->updateConfigFeature([Ljava/lang/String;)V

    .line 416
    iput-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mRestoreDdsToPrimarySub:Z

    .line 419
    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getVSimSlot()I

    move-result v7

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->isValidSlotId(I)Z

    move-result v7

    if-nez v7, :cond_6

    iget-boolean v7, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->resetFromVSim:Z

    if-nez v7, :cond_6

    .line 420
    iput-boolean v2, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mShowSimInfo:Z

    .line 422
    :cond_6
    iget-boolean v7, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->resetFromVSim:Z

    if-eqz v7, :cond_7

    .line 423
    iput-boolean v6, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->resetFromVSim:Z

    .line 426
    :cond_7
    iget-object v7, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    .line 427
    iget-object v7, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 436
    aget-object v7, p1, v6

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 437
    .local v2, "phoneId":I
    :goto_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "phoneId is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 438
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 439
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 440
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, p0, v6, v7}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 390
    .end local v0    # "iscross":Z
    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    .end local v2    # "phoneId":I
    .end local v3    # "prefPrimarySlot":I
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getPrefPrimarySlot([Ljava/lang/String;)I

    move-result v3

    goto/16 :goto_2

    .line 401
    .restart local v0    # "iscross":Z
    .restart local v3    # "prefPrimarySlot":I
    :cond_9
    if-ne v3, v7, :cond_b

    iget-boolean v8, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    if-nez v8, :cond_a

    if-ne v4, v7, :cond_b

    .line 404
    :cond_a
    move v5, v4

    goto :goto_3

    .line 407
    :cond_b
    if-eq v3, v7, :cond_5

    iget-boolean v7, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mCardChanged:Z

    if-eqz v7, :cond_5

    .line 408
    move v5, v3

    goto :goto_3

    :cond_c
    move v2, v6

    .line 436
    goto :goto_4
.end method

.method public getMode(ILjava/lang/String;)I
    .locals 5
    .param p1, "slot"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    .line 524
    const/4 v0, -0x1

    .line 525
    .local v0, "mode":I
    if-gez p1, :cond_0

    move v1, v0

    .line 533
    .end local v0    # "mode":I
    .local v1, "mode":I
    :goto_0
    return v1

    .line 528
    .end local v1    # "mode":I
    .restart local v0    # "mode":I
    :cond_0
    if-ltz p1, :cond_1

    sget v3, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge p1, v3, :cond_1

    .line 529
    sget-object v3, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v3, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 530
    .local v2, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    iget-object v3, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/telephony/primarycard/IINList;->getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;

    move-result-object v3

    invoke-virtual {v3, p2, v2}, Lcom/android/internal/telephony/primarycard/IINList;->getIINMode(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v0

    .line 531
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

    .line 533
    .end local v0    # "mode":I
    .restart local v1    # "mode":I
    goto :goto_0
.end method

.method public getPrefPrimarySlot([Ljava/lang/String;)I
    .locals 2
    .param p1, "iccid"    # [Ljava/lang/String;

    .prologue
    .line 558
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

.method public getSimName(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "slot"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    .line 251
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/primarycard/IINList;->getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/internal/telephony/primarycard/IINList;->getSpn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "spn":Ljava/lang/String;
    return-object v0
.end method

.method public getVSimSlot()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 125
    const-string v2, "net.ppp.esim-info"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "esim_info":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVSimSlot:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 127
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 128
    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "values":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-le v2, v4, :cond_0

    .line 130
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 133
    .end local v1    # "values":[Ljava/lang/String;
    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getprimarySlot()I
    .locals 3

    .prologue
    .line 623
    const-string v1, "persist.radio.msim.stackid_0"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 624
    .local v0, "primaryslot":I
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 300
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 301
    .local v0, "ar":Landroid/os/AsyncResult;
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 317
    :cond_0
    :goto_0
    return-void

    .line 303
    :pswitch_0
    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 304
    .local v2, "phoneId":I
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    iget-object v3, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Landroid/telephony/ServiceState;

    .line 305
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

    .line 306
    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_0

    .line 307
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 308
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    if-eqz v1, :cond_1

    .line 309
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 311
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->sendMsg()V

    goto :goto_0

    .line 301
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public isCardChanged()Z
    .locals 1

    .prologue
    .line 448
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

    .line 137
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

    .line 139
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

    .line 140
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 141
    .local v0, "changed":Z
    :cond_0
    :goto_0
    return v0

    .end local v0    # "changed":Z
    :cond_1
    move v0, v2

    .line 140
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
    .line 288
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
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

    .line 292
    :cond_0
    const/4 v0, 0x1

    .line 295
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

    .line 145
    iget-object v3, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "subscription0"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "iccIdInSP":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "subscription1"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 149
    .local v1, "iccIdInSP1":Ljava/lang/String;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 150
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 152
    :cond_0
    return v2
.end method

.method public isPrimaryLteSubEnabled()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 568
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
    .line 562
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->retrievePriorities([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 563
    .local v0, "priorities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v2, -0x1

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->getCount(Ljava/util/Map;I)I

    move-result v1

    .line 564
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
    .line 256
    const-string v1, "ro.product.name"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 257
    .local v0, "name":Ljava/lang/String;
    const-string v1, "zoom_tdd"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 258
    const/4 v1, 0x1

    .line 260
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public savePrimarySlot(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "iccid"    # Ljava/lang/String;
    .param p2, "iccid1"    # Ljava/lang/String;

    .prologue
    .line 451
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

    .line 452
    iget-boolean v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mShowSimInfo:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isAllCardAvaliable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 453
    const-string v1, "ro.lenovo.branch"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "branch":Ljava/lang/String;
    const-string v1, "rom_zoomm_dev"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 455
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->alertSIMChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    .end local v0    # "branch":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mShowSimInfo:Z

    .line 460
    return-void
.end method

.method public saveSubscriptions([Ljava/lang/String;)V
    .locals 4
    .param p1, "iccId"    # [Ljava/lang/String;

    .prologue
    .line 209
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

    .line 222
    :cond_0
    return-void

    .line 212
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge v0, v1, :cond_0

    .line 213
    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 214
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

    .line 215
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

    .line 212
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 218
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
    .line 537
    const/4 v3, -0x1

    .line 538
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

    .line 540
    if-gez p1, :cond_0

    .line 555
    :goto_0
    return-void

    .line 544
    :cond_0
    if-ltz p1, :cond_1

    sget v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge p1, v0, :cond_1

    .line 545
    sget-object v0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v6

    .line 546
    .local v6, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    iget-object v0, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/primarycard/IINList;->getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;

    move-result-object v0

    invoke-virtual {v0, p2, v6}, Lcom/android/internal/telephony/primarycard/IINList;->getIINPrefNetwork(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v3

    .line 547
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 548
    const-string v0, "network mode is -1 , can not set primary card "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 553
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

    .line 554
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
    .locals 10
    .param p1, "slot"    # I
    .param p2, "iccId"    # Ljava/lang/String;
    .param p3, "bootup"    # Z
    .param p4, "callback"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 480
    const/4 v3, -0x1

    .line 481
    .local v3, "network":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreferredNetwork:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 482
    const-string v1, "persist.radio.enable_mbn"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mIsMBNEnable:Z

    .line 483
    const-string v1, "ro.product.name"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 485
    .local v8, "product":Ljava/lang/String;
    if-gez p1, :cond_0

    .line 520
    :goto_0
    return-void

    .line 489
    :cond_0
    if-ltz p1, :cond_3

    sget v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->PHONE_COUNT:I

    if-ge p1, v1, :cond_3

    .line 490
    sget-object v1, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v9

    .line 491
    .local v9, "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/primarycard/IINList;->getDefault(Landroid/content/Context;)Lcom/android/internal/telephony/primarycard/IINList;

    move-result-object v1

    invoke-virtual {v1, p2, v9}, Lcom/android/internal/telephony/primarycard/IINList;->getIINPrefNetwork(Ljava/lang/String;Lcom/android/internal/telephony/uicc/UiccCard;)I

    move-result v3

    .line 492
    const/4 v1, -0x1

    if-ne v3, v1, :cond_3

    .line 493
    const-string v1, "network mode is -1 , can not set primary card "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->logd(Ljava/lang/String;)V

    .line 498
    iget-boolean v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mIsMBNEnable:Z

    if-nez v1, :cond_3

    .line 500
    invoke-virtual {p0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->isZoomTdd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 501
    const/16 v1, 0x14

    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->savePrefNetworkInSetting(II)V

    .line 502
    if-nez p1, :cond_1

    move v7, v0

    .line 503
    .local v7, "otherslot":I
    :cond_1
    invoke-direct {p0, v7, v0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->savePrefNetworkInSetting(II)V

    .line 505
    .end local v7    # "otherslot":I
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->sendResponseToTarget(Landroid/os/Message;I)V

    goto :goto_0

    .line 513
    .end local v9    # "uiccCard":Lcom/android/internal/telephony/uicc/UiccCard;
    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mIsMBNEnable:Z

    if-nez v1, :cond_4

    .line 514
    if-nez p1, :cond_5

    move v6, v0

    .line 515
    .local v6, "other":I
    :goto_1
    const/4 p3, 0x1

    .line 518
    .end local v6    # "other":I
    :cond_4
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

    .line 519
    new-instance v0, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;

    iget-object v1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mContext:Landroid/content/Context;

    move v2, p1

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;-><init>(Landroid/content/Context;IIZLandroid/os/Message;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/primarycard/PrefNetworkRequest;->loop()V

    goto :goto_0

    :cond_5
    move v6, v7

    .line 514
    goto :goto_1
.end method

.method public setRestoreDdsToPrimarySub(Z)V
    .locals 0
    .param p1, "restoreDdsToPrimarySub"    # Z

    .prologue
    .line 173
    iput-boolean p1, p0, Lcom/android/internal/telephony/primarycard/PrimaryCardController;->mRestoreDdsToPrimarySub:Z

    .line 174
    return-void
.end method
