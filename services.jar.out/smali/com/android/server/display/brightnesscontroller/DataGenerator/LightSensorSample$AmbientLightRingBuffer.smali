.class final Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;
.super Ljava/lang/Object;
.source "LightSensorSample.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AmbientLightRingBuffer"
.end annotation


# static fields
.field private static final BUFFER_SLACK:F = 1.5f

.field private static final DEFAULT_CAPACITY:I


# instance fields
.field private mCapacity:I

.field private mCount:I

.field private mEnd:I

.field private mRingLux:[F

.field private mRingTime:[J

.field private mStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 596
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    sput v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->DEFAULT_CAPACITY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 610
    sget v0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->DEFAULT_CAPACITY:I

    invoke-direct {p0, v0}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;-><init>(I)V

    .line 611
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    iput p1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCapacity:I

    .line 615
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCapacity:I

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingLux:[F

    .line 616
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCapacity:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingTime:[J

    .line 617
    return-void
.end method

.method private offsetOf(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 729
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 730
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 732
    :cond_1
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    add-int/2addr p1, v0

    .line 733
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCapacity:I

    if-lt p1, v0, :cond_2

    .line 734
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCapacity:I

    sub-int/2addr p1, v0

    .line 736
    :cond_2
    return p1
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 701
    iput v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    .line 702
    iput v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mEnd:I

    .line 703
    iput v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    .line 704
    return-void
.end method

.method public getLux(I)F
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingLux:[F

    invoke-direct {p0, p1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->offsetOf(I)I

    move-result v1

    aget v0, v0, v1

    return v0
.end method

.method public getTime(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingTime:[J

    invoke-direct {p0, p1}, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->offsetOf(I)I

    move-result v1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 697
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public prune(J)V
    .locals 5
    .param p1, "horizon"    # J

    .prologue
    .line 658
    iget v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    if-nez v1, :cond_2

    .line 690
    :cond_0
    :goto_0
    return-void

    .line 683
    .local v0, "next":I
    :cond_1
    iput v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    .line 684
    iget v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    .line 662
    .end local v0    # "next":I
    :cond_2
    iget v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_4

    .line 663
    iget v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    add-int/lit8 v0, v1, 0x1

    .line 664
    .restart local v0    # "next":I
    iget v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCapacity:I

    if-lt v0, v1, :cond_3

    .line 665
    iget v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCapacity:I

    sub-int/2addr v0, v1

    .line 667
    :cond_3
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingTime:[J

    aget-wide v2, v1, v0

    cmp-long v1, v2, p1

    if-lez v1, :cond_1

    .line 687
    .end local v0    # "next":I
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingTime:[J

    iget v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    aget-wide v2, v1, v2

    cmp-long v1, v2, p1

    if-gez v1, :cond_0

    .line 688
    iget-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingTime:[J

    iget v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    aput-wide p1, v1, v2

    goto :goto_0
.end method

.method public push(JF)V
    .locals 9
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    const/4 v7, 0x0

    .line 628
    iget v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mEnd:I

    .line 629
    .local v4, "next":I
    iget v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    iget v6, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCapacity:I

    if-ne v5, v6, :cond_1

    .line 630
    iget v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCapacity:I

    mul-int/lit8 v3, v5, 0x2

    .line 632
    .local v3, "newSize":I
    new-array v1, v3, [F

    .line 633
    .local v1, "newRingLux":[F
    new-array v2, v3, [J

    .line 634
    .local v2, "newRingTime":[J
    iget v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCapacity:I

    iget v6, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    sub-int v0, v5, v6

    .line 635
    .local v0, "length":I
    iget-object v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingLux:[F

    iget v6, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    invoke-static {v5, v6, v1, v7, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 636
    iget-object v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingTime:[J

    iget v6, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    invoke-static {v5, v6, v2, v7, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 637
    iget v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    if-eqz v5, :cond_0

    .line 638
    iget-object v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingLux:[F

    iget v6, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    invoke-static {v5, v7, v1, v0, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 639
    iget-object v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingTime:[J

    iget v6, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    invoke-static {v5, v7, v2, v0, v6}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 641
    :cond_0
    iput-object v1, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingLux:[F

    .line 642
    iput-object v2, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingTime:[J

    .line 644
    iget v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCapacity:I

    .line 645
    iput v3, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCapacity:I

    .line 646
    iput v7, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    .line 648
    .end local v0    # "length":I
    .end local v1    # "newRingLux":[F
    .end local v2    # "newRingTime":[J
    .end local v3    # "newSize":I
    :cond_1
    iget-object v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingTime:[J

    aput-wide p1, v5, v4

    .line 649
    iget-object v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingLux:[F

    aput p3, v5, v4

    .line 650
    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mEnd:I

    .line 651
    iget v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mEnd:I

    iget v6, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCapacity:I

    if-ne v5, v6, :cond_2

    .line 652
    iput v7, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mEnd:I

    .line 654
    :cond_2
    iget v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    .line 655
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 708
    iget v3, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCapacity:I

    iget v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    sub-int v0, v3, v4

    .line 709
    .local v0, "length":I
    iget v3, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    new-array v1, v3, [F

    .line 710
    .local v1, "lux":[F
    iget v3, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    new-array v2, v3, [J

    .line 712
    .local v2, "time":[J
    iget v3, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    if-gt v3, v0, :cond_0

    .line 713
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingLux:[F

    iget v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    iget v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    invoke-static {v3, v4, v1, v6, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 714
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingTime:[J

    iget v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    iget v5, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    invoke-static {v3, v4, v2, v6, v5}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 722
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AmbientLightRingBuffer{mCapacity="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCapacity:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mEnd:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCount="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRingLux="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRingTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 716
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingLux:[F

    iget v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    invoke-static {v3, v4, v1, v6, v0}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 717
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingLux:[F

    iget v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    sub-int/2addr v4, v0

    invoke-static {v3, v6, v1, v0, v4}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 719
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingTime:[J

    iget v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mStart:I

    invoke-static {v3, v4, v2, v6, v0}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 720
    iget-object v3, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mRingTime:[J

    iget v4, p0, Lcom/android/server/display/brightnesscontroller/DataGenerator/LightSensorSample$AmbientLightRingBuffer;->mCount:I

    sub-int/2addr v4, v0

    invoke-static {v3, v6, v2, v0, v4}, Ljava/lang/System;->arraycopy([JI[JII)V

    goto :goto_0
.end method
