.class public Lcom/android/internal/telephony/ModemBindingPolicyHandler;
.super Landroid/os/Handler;
.source "ModemBindingPolicyHandler.java"


# static fields
.field private static final EVENT_MODEM_RAT_CAPS_AVAILABLE:I = 0x1

.field private static final EVENT_SET_NW_MODE_DONE:I = 0x3

.field private static final EVENT_UPDATE_BINDING_DONE:I = 0x2

.field private static final FAILURE:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "ModemBindingPolicyHandler"

.field private static final NETWORK_MASK_CDMA:I = 0x31f0

.field private static final NETWORK_MASK_CDMA_NO_EVDO:I = 0x70

.field private static final NETWORK_MASK_EVDO_NO_CDMA:I = 0x3180

.field private static final NETWORK_MASK_GLOBAL:I = 0x1bffe

.field private static final NETWORK_MASK_GSM_ONLY:I = 0x10006

.field private static final NETWORK_MASK_GSM_UMTS:I = 0x18e0e

.field private static final NETWORK_MASK_LTE_CDMA_EVDO:I = 0x71f0

.field private static final NETWORK_MASK_LTE_CMDA_EVDO_GSM_WCDMA:I = 0x1fffe

.field private static final NETWORK_MASK_LTE_GSM_WCDMA:I = 0x1ce0e

.field private static final NETWORK_MASK_LTE_ONLY:I = 0x4000

.field private static final NETWORK_MASK_LTE_WCDMA:I = 0xce08

.field private static final NETWORK_MASK_TD_SCDMA_CDMA_EVDO_GSM_WCDMA:I = 0x3bffe

.field private static final NETWORK_MASK_TD_SCDMA_GSM:I = 0x30006

.field private static final NETWORK_MASK_TD_SCDMA_GSM_LTE:I = 0x34006

.field private static final NETWORK_MASK_TD_SCDMA_GSM_WCDMA:I = 0x38e0e

.field private static final NETWORK_MASK_TD_SCDMA_GSM_WCDMA_LTE:I = 0x3ce0e

.field private static final NETWORK_MASK_TD_SCDMA_LTE:I = 0x24000

.field private static final NETWORK_MASK_TD_SCDMA_LTE_CDMA_EVDO_GSM_WCDMA:I = 0x3fffe

.field private static final NETWORK_MASK_TD_SCDMA_ONLY:I = 0x20000

.field private static final NETWORK_MASK_TD_SCDMA_WCDMA:I = 0x28e08

.field private static final NETWORK_MASK_TD_SCDMA_WCDMA_LTE:I = 0x2ce08

.field private static final NETWORK_MASK_WCDMA_ONLY:I = 0x8e08

.field private static final NETWORK_MASK_WCDMA_PREF:I = 0x18e0e

.field private static final SUCCESS:I = 0x1

.field private static mModemStackController:Lcom/android/internal/telephony/ModemStackController;

.field private static sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;


# instance fields
.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentStackId:[I

.field private mIsSetPrefNwModeInProgress:Z

.field private mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

.field private mModemRatCapabilitiesAvailable:Z

.field private mNumOfSetPrefNwModeSuccess:I

.field private mNumPhones:I

.field private mNwModeinSubIdTable:[I

.field private mPrefNwMode:[I

.field private mPreferredStackId:[I

.field private mStoredResponse:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uiccManager"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 202
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 167
    iput v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumOfSetPrefNwModeSuccess:I

    .line 168
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    .line 169
    iput-boolean v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemRatCapabilitiesAvailable:Z

    .line 170
    iput-boolean v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 172
    iget v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    .line 173
    iget v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    .line 174
    iget v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    .line 175
    iget v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNwModeinSubIdTable:[I

    .line 176
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    .line 179
    iput-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    .line 203
    const-string v1, "Constructor - Enter"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 205
    iput-object p3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 206
    iput-object p1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    .line 207
    invoke-static {}, Lcom/android/internal/telephony/ModemStackController;->getInstance()Lcom/android/internal/telephony/ModemStackController;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    .line 208
    iget v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v1, v1, [Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iput-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    .line 210
    sget-object v1, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v1, p0, v4, v3}, Lcom/android/internal/telephony/ModemStackController;->registerForModemRatCapsAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 213
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v1, :cond_0

    .line 214
    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aput v0, v1, v0

    .line 215
    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aput v0, v1, v0

    .line 218
    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNwModeinSubIdTable:[I

    aput v4, v1, v0

    .line 219
    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    :cond_0
    const-string v1, "Constructor - Exit"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 223
    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/ModemBindingPolicyHandler;
    .locals 2

    .prologue
    .line 194
    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemBindingPolicyHdlr.getInstance called before make()"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 197
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    return-object v0
.end method

.method private getNumOfRatSupportedForNwMode(ILcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;)I
    .locals 4
    .param p1, "nwMode"    # I
    .param p2, "modemCaps"    # Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    .prologue
    const v3, 0x18e0e

    .line 527
    const/4 v0, 0x0

    .line 529
    .local v0, "supportedRatMaskForNwMode":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumOfRATsSupportedForNwMode: nwMode["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] modemCaps = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 532
    packed-switch p1, :pswitch_data_0

    .line 652
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNumOfRATsSupportedForNwMode: supportedRatMaskForNwMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 655
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getNumRatSupportedInMask(I)I

    move-result v1

    return v1

    .line 534
    :pswitch_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v3

    .line 536
    goto :goto_0

    .line 539
    :pswitch_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x10006

    and-int v0, v1, v2

    .line 541
    goto :goto_0

    .line 544
    :pswitch_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x8e08

    and-int v0, v1, v2

    .line 546
    goto :goto_0

    .line 549
    :pswitch_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int v0, v1, v3

    .line 551
    goto :goto_0

    .line 554
    :pswitch_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x31f0

    .line 556
    goto :goto_0

    .line 559
    :pswitch_5
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit8 v0, v1, 0x70

    .line 561
    goto :goto_0

    .line 564
    :pswitch_6
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x3180

    .line 566
    goto :goto_0

    .line 569
    :pswitch_7
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x1bffe

    and-int v0, v1, v2

    .line 571
    goto :goto_0

    .line 574
    :pswitch_8
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x71f0

    .line 576
    goto :goto_0

    .line 579
    :pswitch_9
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x1ce0e

    and-int v0, v1, v2

    .line 581
    goto :goto_0

    .line 584
    :pswitch_a
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x1fffe

    and-int v0, v1, v2

    .line 586
    goto :goto_0

    .line 589
    :pswitch_b
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    and-int/lit16 v0, v1, 0x4000

    .line 591
    goto :goto_0

    .line 594
    :pswitch_c
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0xce08

    and-int v0, v1, v2

    .line 596
    goto/16 :goto_0

    .line 599
    :pswitch_d
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const/high16 v2, 0x20000

    and-int v0, v1, v2

    .line 601
    goto/16 :goto_0

    .line 604
    :pswitch_e
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x28e08

    and-int v0, v1, v2

    .line 606
    goto/16 :goto_0

    .line 609
    :pswitch_f
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x24000

    and-int v0, v1, v2

    .line 611
    goto/16 :goto_0

    .line 614
    :pswitch_10
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x30006

    and-int v0, v1, v2

    .line 616
    goto/16 :goto_0

    .line 619
    :pswitch_11
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x34006

    and-int v0, v1, v2

    .line 621
    goto/16 :goto_0

    .line 624
    :pswitch_12
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x38e0e

    and-int v0, v1, v2

    .line 626
    goto/16 :goto_0

    .line 629
    :pswitch_13
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x2ce08

    and-int v0, v1, v2

    .line 631
    goto/16 :goto_0

    .line 634
    :pswitch_14
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x3ce0e

    and-int v0, v1, v2

    .line 636
    goto/16 :goto_0

    .line 639
    :pswitch_15
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x3bffe

    and-int v0, v1, v2

    .line 641
    goto/16 :goto_0

    .line 644
    :pswitch_16
    invoke-virtual {p2}, Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;->getSupportedRatBitMask()I

    move-result v1

    const v2, 0x3fffe

    and-int v0, v1, v2

    .line 646
    goto/16 :goto_0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method private getNumRatSupportedInMask(I)I
    .locals 2
    .param p1, "mask"    # I

    .prologue
    .line 660
    const/4 v0, 0x0

    .line 667
    .local v0, "noOfOnes":I
    :goto_0
    if-eqz p1, :cond_0

    .line 668
    add-int/lit8 v1, p1, -0x1

    and-int/2addr p1, v1

    .line 669
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    :cond_0
    return v0
.end method

.method private handleModemRatCapsAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 332
    iput-boolean v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemRatCapabilitiesAvailable:Z

    .line 334
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updateStackBindingIfRequired(Z)I

    move-result v0

    if-ne v1, v0, :cond_0

    iput-boolean v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 335
    :cond_0
    return-void
.end method

.method private handleSetPreferredNetwork(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    .line 249
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 250
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 251
    .local v2, "index":I
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 252
    iget v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumOfSetPrefNwModeSuccess:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumOfSetPrefNwModeSuccess:I

    .line 254
    iget v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumOfSetPrefNwModeSuccess:I

    iget v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ne v3, v4, :cond_1

    .line 255
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v3, :cond_0

    .line 256
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Updating network mode in DB for slot["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNwModeinSubIdTable:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 258
    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNwModeinSubIdTable:[I

    aget v5, v5, v1

    invoke-static {v3, v4, v1, v5}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    :cond_0
    iput v6, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumOfSetPrefNwModeSuccess:I

    .line 269
    .end local v1    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 265
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to set preferred network mode for slot"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 266
    iput v6, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumOfSetPrefNwModeSuccess:I

    goto :goto_1
.end method

.method private handleUpdateBindingDone(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 272
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 274
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v3, :cond_2

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, "errorCode":I
    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 277
    .local v2, "resp":Landroid/os/Message;
    if-eqz v2, :cond_1

    .line 278
    iget-object v3, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_0

    .line 279
    const/4 v0, 0x2

    .line 281
    :cond_0
    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 282
    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    .end local v0    # "errorCode":I
    .end local v2    # "resp":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private isNwModeSupportedOnStack(II)Z
    .locals 6
    .param p1, "nwMode"    # I
    .param p2, "stackId"    # I

    .prologue
    .line 442
    iget v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    new-array v3, v4, [I

    .line 443
    .local v3, "numRatSupported":[I
    const/4 v2, 0x0

    .line 444
    .local v2, "maxNumRatSupported":I
    const/4 v1, 0x0

    .line 447
    .local v1, "isSupported":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v4, :cond_2

    .line 448
    iget-object v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    aget-object v4, v4, v0

    if-nez v4, :cond_0

    .line 449
    const/4 v4, 0x0

    .line 461
    :goto_1
    return v4

    .line 451
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    aget-object v4, v4, v0

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->getNumOfRatSupportedForNwMode(ILcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;)I

    move-result v4

    aput v4, v3, v0

    .line 452
    aget v4, v3, v0

    if-ge v2, v4, :cond_1

    aget v2, v3, v0

    .line 447
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 456
    :cond_2
    aget v4, v3, p2

    if-ne v4, v2, :cond_3

    const/4 v1, 0x1

    .line 458
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "nwMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", on stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v1, :cond_4

    const-string v4, "Supported"

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    move v4, v1

    .line 461
    goto :goto_1

    .line 458
    :cond_4
    const-string v4, "Not Supported"

    goto :goto_2
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 674
    const-string v0, "ModemBindingPolicyHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 678
    const-string v0, "ModemBindingPolicyHandler"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return-void
.end method

.method public static make(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)Lcom/android/internal/telephony/ModemBindingPolicyHandler;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uiccMgr"    # Lcom/android/internal/telephony/uicc/UiccController;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 184
    const-string v0, "ModemBindingPolicyHandler"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/uicc/UiccController;[Lcom/android/internal/telephony/CommandsInterface;)V

    sput-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    .line 190
    sget-object v0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sModemBindingPolicyHandler:Lcom/android/internal/telephony/ModemBindingPolicyHandler;

    return-object v0

    .line 188
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ModemBindingPolicyHandler.make() should be called once"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private sendResponseToTarget(Landroid/os/Message;I)V
    .locals 2
    .param p1, "response"    # Landroid/os/Message;
    .param p2, "responseCode"    # I

    .prologue
    .line 518
    if-eqz p1, :cond_0

    .line 519
    invoke-static {p2}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    .line 520
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 521
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 523
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method private syncCurrentStackInfo()V
    .locals 4

    .prologue
    .line 339
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    sget-object v2, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/ModemStackController;->getCurrentStackIdForPhoneId(I)I

    move-result v2

    aput v2, v1, v0

    .line 341
    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemCapInfo:[Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v2, v2, v0

    sget-object v3, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    invoke-virtual {v3, v0}, Lcom/android/internal/telephony/ModemStackController;->getModemRatCapsForPhoneId(I)Lcom/android/internal/telephony/ModemStackController$ModemCapabilityInfo;

    move-result-object v3

    aput-object v3, v1, v2

    .line 343
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v1, v1, v0

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v1, v1, v0

    :goto_1
    aput v1, v2, v0

    .line 339
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 343
    goto :goto_1

    .line 345
    :cond_1
    return-void
.end method

.method private syncPreferredNwModeFromDB()V
    .locals 5

    .prologue
    .line 465
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 467
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v0}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    aput v3, v2, v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 465
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :catch_0
    move-exception v1

    .line 470
    .local v1, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 471
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    sget v3, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    aput v3, v2, v0

    goto :goto_1

    .line 474
    .end local v1    # "snfe":Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    return-void
.end method

.method private updatePreferredStackIds()V
    .locals 4

    .prologue
    .line 399
    iget-boolean v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemRatCapabilitiesAvailable:Z

    if-nez v2, :cond_1

    .line 400
    const-string v2, "updatePreferredStackIds: Modem Capabilites are not Available. Return!!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 439
    :cond_0
    return-void

    .line 405
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->syncPreferredNwModeFromDB()V

    .line 406
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->syncCurrentStackInfo()V

    .line 408
    const/4 v0, 0x0

    .local v0, "curPhoneId":I
    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 410
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->isNwModeSupportedOnStack(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 411
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds: current stack["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]supports NwMode["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] on phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 408
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_3
    const/4 v1, 0x0

    .local v1, "otherPhoneId":I
    :goto_1
    iget v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v1, v2, :cond_2

    .line 421
    if-ne v1, v0, :cond_5

    .line 419
    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 423
    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, v0

    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v3, v3, v1

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->isNwModeSupportedOnStack(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 427
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v3, v3, v0

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->isNwModeSupportedOnStack(II)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePreferredStackIds: Cross Binding is possible between phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] and phoneId["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 433
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v3, v3, v1

    aput v3, v2, v0

    .line 434
    iget-object v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    iget-object v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v3, v3, v0

    aput v3, v2, v1

    goto :goto_2
.end method

.method private updateStackBindingIfRequired(Z)I
    .locals 6
    .param p1, "isBootUp"    # Z

    .prologue
    .line 356
    const/4 v1, 0x0

    .line 357
    .local v1, "isUpdateStackBindingRequired":Z
    const/4 v3, 0x0

    .line 359
    .local v3, "response":I
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updatePreferredStackIds()V

    .line 361
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v4, :cond_0

    .line 362
    iget-object v4, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    aget v4, v4, v0

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCurrentStackId:[I

    aget v5, v5, v0

    if-eq v4, v5, :cond_3

    .line 364
    const/4 v1, 0x1

    .line 368
    :cond_0
    if-nez p1, :cond_1

    if-eqz v1, :cond_2

    .line 369
    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 370
    .local v2, "msg":Landroid/os/Message;
    sget-object v4, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mModemStackController:Lcom/android/internal/telephony/ModemStackController;

    iget-object v5, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPreferredStackId:[I

    invoke-virtual {v4, v5, p1, v2}, Lcom/android/internal/telephony/ModemStackController;->updateStackBinding([IZLandroid/os/Message;)I

    move-result v3

    .line 373
    .end local v2    # "msg":Landroid/os/Message;
    :cond_2
    return v3

    .line 361
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 229
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 246
    :goto_0
    return-void

    .line 231
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 232
    .local v0, "ar":Landroid/os/AsyncResult;
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->handleUpdateBindingDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 236
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->handleModemRatCapsAvailable()V

    goto :goto_0

    .line 240
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->handleSetPreferredNetwork(Landroid/os/Message;)V

    goto :goto_0

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setPreferredNetworkType(IILandroid/os/Message;)V
    .locals 4
    .param p1, "networkType"    # I
    .param p2, "phoneId"    # I
    .param p3, "response"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 497
    iget-boolean v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    if-eqz v0, :cond_0

    .line 498
    const-string v0, "setPreferredNetworkType: In Progress:"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 499
    const/4 v0, 0x2

    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 515
    :goto_0
    return-void

    .line 503
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredNetworkType: nwMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", on phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 505
    iput-boolean v3, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 509
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updateStackBindingIfRequired(Z)I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mStoredResponse:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    invoke-interface {v0, p1, p3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 513
    iput-boolean v2, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    goto :goto_0
.end method

.method public setPreferredNetworkType(IIZLandroid/os/Message;)V
    .locals 2
    .param p1, "networkType"    # I
    .param p2, "phoneId"    # I
    .param p3, "bootup"    # Z
    .param p4, "response"    # Landroid/os/Message;

    .prologue
    .line 479
    iget-boolean v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    if-eqz v0, :cond_0

    .line 480
    const-string v0, "setPreferredNetworkType: In Progress:"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->loge(Ljava/lang/String;)V

    .line 481
    const/4 v0, 0x2

    invoke-direct {p0, p4, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->sendResponseToTarget(Landroid/os/Message;I)V

    .line 492
    :goto_0
    return-void

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPreferredNetworkType: nwMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", on phoneId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->logd(Ljava/lang/String;)V

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p2

    invoke-interface {v0, p1, p4}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mIsSetPrefNwModeInProgress:Z

    goto :goto_0
.end method

.method public updatePrefNwTypeIfRequired()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 294
    const/4 v5, 0x0

    .line 295
    .local v5, "updateRequired":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->syncPreferredNwModeFromDB()V

    .line 296
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    .line 297
    .local v2, "subCtrlr":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v6, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v6, :cond_0

    .line 298
    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/SubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 299
    .local v4, "subIdList":[I
    if-eqz v4, :cond_3

    aget v6, v4, v8

    if-lez v6, :cond_3

    .line 300
    aget v3, v4, v8

    .line 301
    .local v3, "subId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 303
    iget-object v6, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNwModeinSubIdTable:[I

    const/16 v7, 0x14

    aput v7, v6, v0

    .line 308
    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNwModeinSubIdTable:[I

    aget v6, v6, v0

    const/4 v7, -0x1

    if-ne v6, v7, :cond_2

    .line 309
    const/4 v5, 0x0

    .line 318
    .end local v3    # "subId":I
    .end local v4    # "subIdList":[I
    :cond_0
    if-eqz v5, :cond_4

    .line 319
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->updateStackBindingIfRequired(Z)I

    move-result v6

    if-nez v6, :cond_4

    .line 323
    const/4 v0, 0x0

    :goto_2
    iget v6, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNumPhones:I

    if-ge v0, v6, :cond_4

    .line 324
    const/4 v6, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 325
    .local v1, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v6, v6, v0

    iget-object v7, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNwModeinSubIdTable:[I

    aget v7, v7, v0

    invoke-interface {v6, v7, v1}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 323
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 306
    .end local v1    # "msg":Landroid/os/Message;
    .restart local v3    # "subId":I
    .restart local v4    # "subIdList":[I
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNwModeinSubIdTable:[I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/SubscriptionController;->getNwMode(I)I

    move-result v7

    aput v7, v6, v0

    goto :goto_1

    .line 312
    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mNwModeinSubIdTable:[I

    aget v6, v6, v0

    iget-object v7, p0, Lcom/android/internal/telephony/ModemBindingPolicyHandler;->mPrefNwMode:[I

    aget v7, v7, v0

    if-eq v6, v7, :cond_3

    .line 313
    const/4 v5, 0x1

    .line 297
    .end local v3    # "subId":I
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 329
    .end local v4    # "subIdList":[I
    :cond_4
    return-void
.end method
