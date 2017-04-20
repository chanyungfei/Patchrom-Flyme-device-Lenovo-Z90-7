.class Lcom/android/server/display/RampAnimator$1;
.super Ljava/lang/Object;
.source "RampAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/RampAnimator;


# direct methods
.method constructor <init>(Lcom/android/server/display/RampAnimator;)V
    .locals 0

    .prologue
    .line 131
    .local p0, "this":Lcom/android/server/display/RampAnimator$1;, "Lcom/android/server/display/RampAnimator.1;"
    iput-object p1, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .local p0, "this":Lcom/android/server/display/RampAnimator$1;, "Lcom/android/server/display/RampAnimator.1;"
    const/4 v8, 0x0

    .line 134
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$000(Lcom/android/server/display/RampAnimator;)Landroid/view/Choreographer;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Choreographer;->getFrameTimeNanos()J

    move-result-wide v2

    .line 135
    .local v2, "frameTimeNanos":J
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$100(Lcom/android/server/display/RampAnimator;)J

    move-result-wide v10

    sub-long v10, v2, v10

    long-to-float v9, v10

    const v10, 0x3089705f    # 1.0E-9f

    mul-float v7, v9, v10

    .line 137
    .local v7, "timeDelta":F
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # setter for: Lcom/android/server/display/RampAnimator;->mLastFrameTimeNanos:J
    invoke-static {v9, v2, v3}, Lcom/android/server/display/RampAnimator;->access$102(Lcom/android/server/display/RampAnimator;J)J

    .line 144
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    move-result v6

    .line 145
    .local v6, "scale":F
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-nez v9, :cond_0

    .line 146
    const/4 v6, 0x0

    .line 148
    :cond_0
    const/4 v9, 0x0

    cmpl-float v9, v6, v9

    if-nez v9, :cond_3

    .line 151
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    int-to-float v10, v10

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v9, v10}, Lcom/android/server/display/RampAnimator;->access$302(Lcom/android/server/display/RampAnimator;F)F

    .line 168
    :goto_0
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)I

    move-result v5

    .line 169
    .local v5, "oldCurrentValue":I
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    # setter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v9, v10}, Lcom/android/server/display/RampAnimator;->access$202(Lcom/android/server/display/RampAnimator;I)I

    .line 171
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    if-eq v5, v9, :cond_1

    .line 172
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mProperty:Landroid/util/IntProperty;
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$700(Lcom/android/server/display/RampAnimator;)Landroid/util/IntProperty;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mObject:Ljava/lang/Object;
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$600(Lcom/android/server/display/RampAnimator;)Ljava/lang/Object;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/util/IntProperty;->setValue(Ljava/lang/Object;I)V

    .line 175
    :cond_1
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-eq v9, v10, :cond_7

    .line 176
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # invokes: Lcom/android/server/display/RampAnimator;->postAnimationCallback()V
    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$800(Lcom/android/server/display/RampAnimator;)V

    .line 183
    :cond_2
    :goto_1
    return-void

    .line 154
    .end local v5    # "oldCurrentValue":I
    :cond_3
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-lt v9, v10, :cond_5

    const/4 v1, 0x1

    .line 155
    .local v1, "isIncrease":Z
    :goto_2
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v4

    .line 156
    .local v4, "mNewRate":I
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mRate:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$500(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    const/16 v10, 0x28

    if-ne v9, v10, :cond_4

    if-eqz v1, :cond_4

    .line 157
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v9, v9, -0x14

    div-int/lit8 v9, v9, 0x14

    add-int/lit8 v9, v9, 0x1

    mul-int/lit8 v4, v9, 0xa

    .line 158
    const/16 v9, 0x3c

    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 160
    :cond_4
    int-to-float v9, v4

    mul-float/2addr v9, v7

    div-float v0, v9, v6

    .line 162
    .local v0, "amount":F
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v9}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v9

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mCurrentValue:I
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$200(Lcom/android/server/display/RampAnimator;)I

    move-result v10

    if-le v9, v10, :cond_6

    .line 163
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)F

    move-result v10

    add-float/2addr v10, v0

    iget-object v11, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v9, v10}, Lcom/android/server/display/RampAnimator;->access$302(Lcom/android/server/display/RampAnimator;F)F

    goto/16 :goto_0

    .end local v0    # "amount":F
    .end local v1    # "isIncrease":Z
    .end local v4    # "mNewRate":I
    :cond_5
    move v1, v8

    .line 154
    goto :goto_2

    .line 165
    .restart local v0    # "amount":F
    .restart local v1    # "isIncrease":Z
    .restart local v4    # "mNewRate":I
    :cond_6
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    iget-object v10, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v10}, Lcom/android/server/display/RampAnimator;->access$300(Lcom/android/server/display/RampAnimator;)F

    move-result v10

    sub-float/2addr v10, v0

    iget-object v11, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mTargetValue:I
    invoke-static {v11}, Lcom/android/server/display/RampAnimator;->access$400(Lcom/android/server/display/RampAnimator;)I

    move-result v11

    int-to-float v11, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimatedValue:F
    invoke-static {v9, v10}, Lcom/android/server/display/RampAnimator;->access$302(Lcom/android/server/display/RampAnimator;F)F

    goto/16 :goto_0

    .line 178
    .end local v0    # "amount":F
    .end local v1    # "isIncrease":Z
    .end local v4    # "mNewRate":I
    .restart local v5    # "oldCurrentValue":I
    :cond_7
    iget-object v9, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # setter for: Lcom/android/server/display/RampAnimator;->mAnimating:Z
    invoke-static {v9, v8}, Lcom/android/server/display/RampAnimator;->access$902(Lcom/android/server/display/RampAnimator;Z)Z

    .line 179
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;
    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 180
    iget-object v8, p0, Lcom/android/server/display/RampAnimator$1;->this$0:Lcom/android/server/display/RampAnimator;

    # getter for: Lcom/android/server/display/RampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;
    invoke-static {v8}, Lcom/android/server/display/RampAnimator;->access$1000(Lcom/android/server/display/RampAnimator;)Lcom/android/server/display/RampAnimator$Listener;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/display/RampAnimator$Listener;->onAnimationEnd()V

    goto/16 :goto_1
.end method
