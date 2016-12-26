.class public Landroid/media/AudioRecord;
.super Ljava/lang/Object;
.source "AudioRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/AudioRecord$NativeEventHandler;,
        Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    }
.end annotation


# static fields
.field private static final AUDIORECORD_ERROR_SETUP_INVALIDCHANNELMASK:I = -0x11

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDFORMAT:I = -0x12

.field private static final AUDIORECORD_ERROR_SETUP_INVALIDSOURCE:I = -0x13

.field private static final AUDIORECORD_ERROR_SETUP_NATIVEINITFAILED:I = -0x14

.field private static final AUDIORECORD_ERROR_SETUP_ZEROFRAMECOUNT:I = -0x10

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x2

.field public static final ERROR_INVALID_OPERATION:I = -0x3

.field private static final NATIVE_EVENT_MARKER:I = 0x2

.field private static final NATIVE_EVENT_NEW_POS:I = 0x3

.field public static final RECORDSTATE_RECORDING:I = 0x3

.field public static final RECORDSTATE_STOPPED:I = 0x1

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUBMIX_FIXED_VOLUME:Ljava/lang/String; = "fixedVolume"

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "android.media.AudioRecord"


# instance fields
.field private mAudioAttributes:Landroid/media/AudioAttributes;

.field private mAudioFormat:I

.field private mChannelCount:I

.field private mChannelMask:I

.field private mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

.field private final mICallBack:Landroid/os/IBinder;

.field private mInitializationLooper:Landroid/os/Looper;

.field mIsLv:Z

.field private mIsSubmixFullVolume:Z

.field private mNativeBufferSizeInBytes:I

.field private mNativeCallbackCookie:J

.field private mNativeRecorderInJavaObj:J

.field private mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

.field private final mPositionListenerLock:Ljava/lang/Object;

.field private mRecordSource:I

.field private mRecordingState:I

.field private final mRecordingStateLock:Ljava/lang/Object;

.field private mSampleRate:I

.field private mSessionId:I

.field private mState:I


# direct methods
.method public constructor <init>(IIIII)V
    .locals 3
    .param p1, "audioSource"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "channelConfig"    # I
    .param p4, "audioFormat"    # I
    .param p5, "bufferSizeInBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    new-instance v1, Landroid/media/AudioFormat$Builder;

    invoke-direct {v1}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v2, 0x1

    invoke-static {p3, v2}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p5, v2}, Landroid/media/AudioRecord;-><init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V

    .line 246
    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;Landroid/media/AudioFormat;II)V
    .locals 15
    .param p1, "attributes"    # Landroid/media/AudioAttributes;
    .param p2, "format"    # Landroid/media/AudioFormat;
    .param p3, "bufferSizeInBytes"    # I
    .param p4, "sessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    .line 167
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 171
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    .line 178
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 182
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    .line 186
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 190
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 194
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 198
    const/4 v1, 0x0

    iput v1, p0, Landroid/media/AudioRecord;->mSessionId:I

    .line 203
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 725
    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    iput-object v1, p0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    .line 271
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 273
    if-nez p1, :cond_0

    .line 274
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal null AudioAttributes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 276
    :cond_0
    if-nez p2, :cond_1

    .line 277
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Illegal null AudioFormat"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 281
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    if-nez v1, :cond_2

    .line 282
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    .line 286
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_8

    .line 287
    new-instance v10, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v10}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 288
    .local v10, "filteredAttr":Landroid/media/AudioAttributes$Builder;
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getTags()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 289
    .local v14, "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 290
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 291
    .local v13, "tag":Ljava/lang/String;
    const-string v1, "fixedVolume"

    invoke-virtual {v13, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    .line 293
    const-string v1, "android.media.AudioRecord"

    const-string v2, "Will record from REMOTE_SUBMIX at full fixed volume"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 295
    :cond_3
    invoke-virtual {v10, v13}, Landroid/media/AudioAttributes$Builder;->addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    goto :goto_0

    .line 298
    .end local v13    # "tag":Ljava/lang/String;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v1

    invoke-virtual {v10, v1}, Landroid/media/AudioAttributes$Builder;->setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    .line 299
    invoke-virtual {v10}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v1

    iput-object v1, p0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    .line 304
    .end local v10    # "filteredAttr":Landroid/media/AudioAttributes$Builder;
    .end local v14    # "tagsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    const/4 v12, 0x0

    .line 305
    .local v12, "rate":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_9

    .line 308
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getSampleRate()I

    move-result v12

    .line 316
    :cond_5
    :goto_2
    const/4 v9, 0x1

    .line 317
    .local v9, "encoding":I
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getPropertySetMask()I

    move-result v1

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getEncoding()I

    move-result v9

    .line 322
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/media/AudioAttributes;->getCapturePreset()I

    move-result v1

    invoke-direct {p0, v1, v12, v9}, Landroid/media/AudioRecord;->audioParamCheck(III)V

    .line 324
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v1

    invoke-static {v1}, Landroid/media/AudioFormat;->channelCountFromInChannelMask(I)I

    move-result v1

    iput v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    .line 325
    invoke-virtual/range {p2 .. p2}, Landroid/media/AudioFormat;->getChannelMask()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/media/AudioRecord;->getChannelMaskFromLegacyConfig(IZ)I

    move-result v1

    iput v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

    .line 327
    move/from16 v0, p3

    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->audioBuffSizeCheck(I)V

    .line 329
    const/4 v1, 0x1

    new-array v8, v1, [I

    .line 330
    .local v8, "session":[I
    const/4 v1, 0x0

    aput p4, v8, v1

    .line 333
    const-string v1, "android.media.AudioRecord"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in AudioRecord channelConfig:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/AudioRecord;->mChannelMask:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-direct {p0}, Landroid/media/AudioRecord;->isCallerLevoice()Z

    move-result v1

    iput-boolean v1, p0, Landroid/media/AudioRecord;->mIsLv:Z

    .line 335
    iget-boolean v1, p0, Landroid/media/AudioRecord;->mIsLv:Z

    if-eqz v1, :cond_7

    .line 336
    iget v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

    const/high16 v2, 0x40000000    # 2.0f

    or-int/2addr v1, v2

    iput v1, p0, Landroid/media/AudioRecord;->mChannelMask:I

    .line 341
    :cond_7
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    iget v4, p0, Landroid/media/AudioRecord;->mSampleRate:I

    iget v5, p0, Landroid/media/AudioRecord;->mChannelMask:I

    iget v6, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    iget v7, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Landroid/media/AudioRecord;->native_setup(Ljava/lang/Object;Ljava/lang/Object;IIII[I)I

    move-result v11

    .line 344
    .local v11, "initResult":I
    if-eqz v11, :cond_a

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when initializing native AudioRecord object."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    .line 352
    :goto_3
    return-void

    .line 301
    .end local v8    # "session":[I
    .end local v9    # "encoding":I
    .end local v11    # "initResult":I
    .end local v12    # "rate":I
    :cond_8
    move-object/from16 v0, p1

    iput-object v0, p0, Landroid/media/AudioRecord;->mAudioAttributes:Landroid/media/AudioAttributes;

    goto/16 :goto_1

    .line 310
    .restart local v12    # "rate":I
    :cond_9
    invoke-static {}, Landroid/media/AudioSystem;->getPrimaryOutputSamplingRate()I

    move-result v12

    .line 311
    if-gtz v12, :cond_5

    .line 312
    const v12, 0xac44

    goto/16 :goto_2

    .line 349
    .restart local v8    # "session":[I
    .restart local v9    # "encoding":I
    .restart local v11    # "initResult":I
    :cond_a
    const/4 v1, 0x0

    aget v1, v8, v1

    iput v1, p0, Landroid/media/AudioRecord;->mSessionId:I

    .line 351
    const/4 v1, 0x1

    iput v1, p0, Landroid/media/AudioRecord;->mState:I

    goto :goto_3
.end method

.method static synthetic access$000(Landroid/media/AudioRecord;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioRecord;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Landroid/media/AudioRecord;)Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .locals 1
    .param p0, "x0"    # Landroid/media/AudioRecord;

    .prologue
    .line 55
    iget-object v0, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-static {p0}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    return-void
.end method

.method private audioBuffSizeCheck(I)V
    .locals 3
    .param p1, "audioBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 442
    iget v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    iget v2, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    invoke-static {v2}, Landroid/media/AudioFormat;->getBytesPerSample(I)I

    move-result v2

    mul-int v0, v1, v2

    .line 445
    .local v0, "frameSizeInBytes":I
    iget v1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_0

    iget v1, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 447
    iget v1, p0, Landroid/media/AudioRecord;->mChannelCount:I

    mul-int/lit8 v0, v1, 0x1

    .line 449
    :cond_0
    rem-int v1, p1, v0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ge p1, v1, :cond_2

    .line 450
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid audio buffer size."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 453
    :cond_2
    iput p1, p0, Landroid/media/AudioRecord;->mNativeBufferSizeInBytes:I

    .line 454
    return-void
.end method

.method private audioParamCheck(III)V
    .locals 3
    .param p1, "audioSource"    # I
    .param p2, "sampleRateInHz"    # I
    .param p3, "audioFormat"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 394
    if-ltz p1, :cond_0

    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v0

    if-le p1, v0, :cond_1

    const/16 v0, 0x7ce

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7cf

    if-eq p1, v0, :cond_1

    .line 398
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid audio source."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_1
    iput p1, p0, Landroid/media/AudioRecord;->mRecordSource:I

    .line 404
    const/16 v0, 0xfa0

    if-lt p2, v0, :cond_2

    const v0, 0xbb80

    if-le p2, v0, :cond_3

    .line 405
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hz is not a supported sample rate."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 408
    :cond_3
    iput p2, p0, Landroid/media/AudioRecord;->mSampleRate:I

    .line 412
    sparse-switch p3, :sswitch_data_0

    .line 427
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported sample encoding. Should be ENCODING_PCM_8BIT or ENCODING_PCM_16BIT."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 414
    :sswitch_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    .line 430
    :goto_0
    return-void

    .line 424
    :sswitch_1
    iput p3, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    goto :goto_0

    .line 412
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_1
        0x64 -> :sswitch_1
        0x65 -> :sswitch_1
        0x66 -> :sswitch_1
        0x67 -> :sswitch_1
        0x68 -> :sswitch_1
        0x69 -> :sswitch_1
    .end sparse-switch
.end method

.method private static getChannelMaskFromLegacyConfig(IZ)I
    .locals 3
    .param p0, "inChannelConfig"    # I
    .param p1, "allowLegacyConfig"    # Z

    .prologue
    .line 360
    sparse-switch p0, :sswitch_data_0

    .line 374
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported channel configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 364
    :sswitch_0
    const/16 v0, 0x10

    .line 377
    .local v0, "mask":I
    :goto_0
    if-nez p1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    .line 380
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported deprecated configuration."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 368
    .end local v0    # "mask":I
    :sswitch_1
    const/16 v0, 0xc

    .line 369
    .restart local v0    # "mask":I
    goto :goto_0

    .line 371
    .end local v0    # "mask":I
    :sswitch_2
    move v0, p0

    .line 372
    .restart local v0    # "mask":I
    goto :goto_0

    .line 383
    :cond_1
    return v0

    .line 360
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x30 -> :sswitch_2
    .end sparse-switch
.end method

.method public static getMinBufferSize(III)I
    .locals 5
    .param p0, "sampleRateInHz"    # I
    .param p1, "channelConfig"    # I
    .param p2, "audioFormat"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, -0x2

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, "channelCount":I
    sparse-switch p1, :sswitch_data_0

    .line 606
    const-string v3, "getMinBufferSize(): Invalid channel configuration."

    invoke-static {v3}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 630
    :cond_0
    :goto_0
    return v1

    .line 594
    :sswitch_0
    const/4 v0, 0x1

    .line 611
    :goto_1
    const/4 v4, 0x2

    if-eq p2, v4, :cond_1

    const/16 v4, 0x64

    if-eq p2, v4, :cond_1

    const/16 v4, 0x65

    if-eq p2, v4, :cond_1

    const/16 v4, 0x66

    if-eq p2, v4, :cond_1

    const/16 v4, 0x67

    if-eq p2, v4, :cond_1

    const/16 v4, 0x68

    if-eq p2, v4, :cond_1

    const/16 v4, 0x69

    if-eq p2, v4, :cond_1

    .line 618
    const-string v3, "getMinBufferSize(): Invalid audio format."

    invoke-static {v3}, Landroid/media/AudioRecord;->loge(Ljava/lang/String;)V

    move v1, v2

    .line 619
    goto :goto_0

    .line 599
    :sswitch_1
    const/4 v0, 0x2

    .line 600
    goto :goto_1

    .line 602
    :sswitch_2
    const/4 v0, 0x6

    .line 603
    goto :goto_1

    .line 622
    :cond_1
    invoke-static {p0, v0, p2}, Landroid/media/AudioRecord;->native_get_min_buff_size(III)I

    move-result v1

    .line 623
    .local v1, "size":I
    if-nez v1, :cond_2

    move v1, v2

    .line 624
    goto :goto_0

    .line 626
    :cond_2
    if-ne v1, v3, :cond_0

    move v1, v3

    .line 627
    goto :goto_0

    .line 590
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0xc -> :sswitch_1
        0x10 -> :sswitch_0
        0x30 -> :sswitch_1
        0xfc -> :sswitch_2
    .end sparse-switch
.end method

.method private handleFullVolumeRec(Z)V
    .locals 5
    .param p1, "starting"    # Z

    .prologue
    .line 727
    iget-boolean v3, p0, Landroid/media/AudioRecord;->mIsSubmixFullVolume:Z

    if-nez v3, :cond_0

    .line 737
    :goto_0
    return-void

    .line 730
    :cond_0
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 731
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v2

    .line 733
    .local v2, "ias":Landroid/media/IAudioService;
    :try_start_0
    iget-object v3, p0, Landroid/media/AudioRecord;->mICallBack:Landroid/os/IBinder;

    invoke-interface {v2, p1, v3}, Landroid/media/IAudioService;->forceRemoteSubmixFullVolume(ZLandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 734
    :catch_0
    move-exception v1

    .line 735
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "android.media.AudioRecord"

    const-string v4, "Error talking to AudioService when handling full submix volume"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private isAudioRecordAllowed()Z
    .locals 2

    .prologue
    .line 644
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    .line 645
    .local v0, "packageName":Ljava/lang/String;
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->native_check_permission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isCallerLevoice()Z
    .locals 6

    .prologue
    .line 1057
    const-string v3, "android.media.AudioRecord"

    const-string v4, "in isCallerLevoice"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    const/4 v2, 0x0

    .line 1059
    .local v2, "rv":Z
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    .line 1060
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1061
    .local v1, "packageName":Ljava/lang/String;
    const-string v3, "android.media.AudioRecord"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the caller is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1062
    const-string v3, "com.lenovo.freecall"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1063
    const/4 v2, 0x1

    .line 1065
    :cond_0
    const-string v3, "android.media.AudioRecord"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "out isCallerLevoice "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    return v2
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1046
    const-string v0, "android.media.AudioRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 1050
    const-string v0, "android.media.AudioRecord"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    return-void
.end method

.method private final native native_check_permission(Ljava/lang/String;)I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_get_marker_pos()I
.end method

.method private static final native native_get_min_buff_size(III)I
.end method

.method private final native native_get_pos_update_period()I
.end method

.method private final native native_read_in_byte_array([BII)I
.end method

.method private final native native_read_in_direct_buffer(Ljava/lang/Object;I)I
.end method

.method private final native native_read_in_short_array([SII)I
.end method

.method private final native native_release()V
.end method

.method private final native native_set_marker_pos(I)I
.end method

.method private final native native_set_pos_update_period(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;Ljava/lang/Object;IIII[I)I
.end method

.method private final native native_start(II)I
.end method

.method private final native native_stop()V
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 4
    .param p0, "audiorecord_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 987
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "audiorecord_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioRecord;

    .line 988
    .local v1, "recorder":Landroid/media/AudioRecord;
    if-nez v1, :cond_1

    .line 1000
    :cond_0
    :goto_0
    return-void

    .line 992
    :cond_1
    iget-boolean v2, v1, Landroid/media/AudioRecord;->mIsLv:Z

    if-eqz v2, :cond_2

    const-string v2, "android.media.AudioRecord"

    const-string v3, "in postEventFromNative"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    :cond_2
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    if-eqz v2, :cond_0

    .line 995
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/AudioRecord$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 997
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {v2, v0}, Landroid/media/AudioRecord$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 484
    invoke-virtual {p0}, Landroid/media/AudioRecord;->release()V

    .line 485
    return-void
.end method

.method public getAudioFormat()I
    .locals 1

    .prologue
    .line 511
    iget v0, p0, Landroid/media/AudioRecord;->mAudioFormat:I

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 640
    iget v0, p0, Landroid/media/AudioRecord;->mSessionId:I

    return v0
.end method

.method public getAudioSource()I
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Landroid/media/AudioRecord;->mRecordSource:I

    return v0
.end method

.method public getChannelConfiguration()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Landroid/media/AudioRecord;->mChannelMask:I

    return v0
.end method

.method public getChannelCount()I
    .locals 1

    .prologue
    .line 527
    iget v0, p0, Landroid/media/AudioRecord;->mChannelCount:I

    return v0
.end method

.method public getNotificationMarkerPosition()I
    .locals 1

    .prologue
    .line 557
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_marker_pos()I

    move-result v0

    return v0
.end method

.method public getPositionNotificationPeriod()I
    .locals 1

    .prologue
    .line 564
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_get_pos_update_period()I

    move-result v0

    return v0
.end method

.method public getRecordingState()I
    .locals 2

    .prologue
    .line 548
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 549
    :try_start_0
    iget v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    monitor-exit v1

    return v0

    .line 550
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    .line 495
    iget v0, p0, Landroid/media/AudioRecord;->mSampleRate:I

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 539
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    return v0
.end method

.method public read(Ljava/nio/ByteBuffer;I)I
    .locals 2
    .param p1, "audioBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "sizeInBytes"    # I

    .prologue
    .line 805
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 806
    const/4 v0, -0x3

    .line 813
    :goto_0
    return v0

    .line 809
    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_2

    .line 810
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 813
    :cond_2
    invoke-direct {p0, p1, p2}, Landroid/media/AudioRecord;->native_read_in_direct_buffer(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "audioData"    # [B
    .param p2, "offsetInBytes"    # I
    .param p3, "sizeInBytes"    # I

    .prologue
    .line 753
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 754
    const/4 v0, -0x3

    .line 763
    :goto_0
    return v0

    .line 757
    :cond_0
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 760
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 763
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioRecord;->native_read_in_byte_array([BII)I

    move-result v0

    goto :goto_0
.end method

.method public read([SII)I
    .locals 2
    .param p1, "audioData"    # [S
    .param p2, "offsetInShorts"    # I
    .param p3, "sizeInShorts"    # I

    .prologue
    .line 778
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 779
    const/4 v0, -0x3

    .line 788
    :goto_0
    return v0

    .line 782
    :cond_0
    if-eqz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    add-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    .line 785
    :cond_1
    const/4 v0, -0x2

    goto :goto_0

    .line 788
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Landroid/media/AudioRecord;->native_read_in_short_array([SII)I

    move-result v0

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 465
    iget-boolean v0, p0, Landroid/media/AudioRecord;->mIsLv:Z

    if-eqz v0, :cond_0

    const-string v0, "android.media.AudioRecord"

    const-string v1, "in release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioRecord;->stop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    :goto_0
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_release()V

    .line 474
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/AudioRecord;->mState:I

    .line 476
    iget-boolean v0, p0, Landroid/media/AudioRecord;->mIsLv:Z

    if-eqz v0, :cond_1

    const-string v0, "android.media.AudioRecord"

    const-string/jumbo v1, "out release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_1
    return-void

    .line 470
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setNotificationMarkerPosition(I)I
    .locals 1
    .param p1, "markerInFrames"    # I

    .prologue
    .line 873
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v0, :cond_0

    .line 874
    const/4 v0, -0x3

    .line 876
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_marker_pos(I)I

    move-result v0

    goto :goto_0
.end method

.method public setPositionNotificationPeriod(I)I
    .locals 1
    .param p1, "periodInFrames"    # I

    .prologue
    .line 889
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-nez v0, :cond_0

    .line 890
    const/4 v0, -0x3

    .line 892
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Landroid/media/AudioRecord;->native_set_pos_update_period(I)I

    move-result v0

    goto :goto_0
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .prologue
    .line 826
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/media/AudioRecord;->setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V

    .line 827
    return-void
.end method

.method public setRecordPositionUpdateListener(Landroid/media/AudioRecord$OnRecordPositionUpdateListener;Landroid/os/Handler;)V
    .locals 3
    .param p1, "listener"    # Landroid/media/AudioRecord$OnRecordPositionUpdateListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 839
    iget-object v1, p0, Landroid/media/AudioRecord;->mPositionListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 841
    :try_start_0
    iget-boolean v0, p0, Landroid/media/AudioRecord;->mIsLv:Z

    if-eqz v0, :cond_0

    const-string v0, "android.media.AudioRecord"

    const-string v2, "in setRecordPositionUpdateListener"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    :cond_0
    if-nez p1, :cond_1

    .line 843
    const-string v0, "android.media.AudioRecord"

    const-string v2, "in setRecordPositionUpdateListener null listener provided"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 847
    :cond_1
    iput-object p1, p0, Landroid/media/AudioRecord;->mPositionListener:Landroid/media/AudioRecord$OnRecordPositionUpdateListener;

    .line 849
    if-eqz p1, :cond_3

    .line 850
    if-eqz p2, :cond_2

    .line 851
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    .line 859
    :goto_0
    monitor-exit v1

    .line 861
    return-void

    .line 854
    :cond_2
    new-instance v0, Landroid/media/AudioRecord$NativeEventHandler;

    iget-object v2, p0, Landroid/media/AudioRecord;->mInitializationLooper:Landroid/os/Looper;

    invoke-direct {v0, p0, p0, v2}, Landroid/media/AudioRecord$NativeEventHandler;-><init>(Landroid/media/AudioRecord;Landroid/media/AudioRecord;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;

    goto :goto_0

    .line 859
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 857
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroid/media/AudioRecord;->mEventHandler:Landroid/media/AudioRecord$NativeEventHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public startRecording()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 656
    invoke-direct {p0}, Landroid/media/AudioRecord;->isAudioRecordAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 657
    const-string v0, "android.media.AudioRecord"

    const-string v1, "User permission denied!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    :goto_0
    return-void

    .line 660
    :cond_0
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_1

    .line 661
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 666
    :cond_1
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 667
    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, v0, v2}, Landroid/media/AudioRecord;->hook_native_start(II)I

    move-result v0

    if-nez v0, :cond_2

    .line 668
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 669
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 677
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 673
    :cond_2
    :try_start_1
    const-string v0, "in startRecording error"

    invoke-static {v0}, Landroid/media/AudioRecord;->logd(Ljava/lang/String;)V

    .line 674
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "startRecording() record start error"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
.end method

.method public startRecording(Landroid/media/MediaSyncEvent;)V
    .locals 3
    .param p1, "syncEvent"    # Landroid/media/MediaSyncEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 689
    invoke-direct {p0}, Landroid/media/AudioRecord;->isAudioRecordAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    const-string v0, "android.media.AudioRecord"

    const-string v1, "User permission denied!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :goto_0
    return-void

    .line 693
    :cond_0
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_1

    .line 694
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "startRecording() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 699
    :cond_1
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 700
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroid/media/MediaSyncEvent;->getAudioSessionId()I

    move-result v2

    invoke-direct {p0, v0, v2}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v0

    if-nez v0, :cond_2

    .line 701
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 702
    const/4 v0, 0x3

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 704
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 713
    iget v0, p0, Landroid/media/AudioRecord;->mState:I

    if-eq v0, v1, :cond_0

    .line 714
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "stop() called on an uninitialized AudioRecord."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 718
    :cond_0
    iget-object v1, p0, Landroid/media/AudioRecord;->mRecordingStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 719
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Landroid/media/AudioRecord;->handleFullVolumeRec(Z)V

    .line 720
    invoke-direct {p0}, Landroid/media/AudioRecord;->native_stop()V

    .line 721
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/AudioRecord;->mRecordingState:I

    .line 722
    monitor-exit v1

    .line 723
    return-void

    .line 722
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private hook_native_start(II)I
    .locals 1
    .param p1, "syncEvent"    # I
    .param p2, "sessionId"    # I

    .prologue
    const/16 v0, 0x1b

    invoke-static {v0}, Lmeizu/security/FlymePermissionManager;->isFlymePermissionGranted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/media/AudioRecord;->native_start(II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method
