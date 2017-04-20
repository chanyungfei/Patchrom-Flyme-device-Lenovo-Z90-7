.class Landroid/widget/Editor$SelectionEndHandleView;
.super Landroid/widget/Editor$HandleView;
.source "Editor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectionEndHandleView"
.end annotation


# instance fields
.field private mInWord:Z

.field private mLanguageDirectionChanged:Z

.field private mPrevX:F

.field private final mTextViewEdgeSlop:F

.field private final mTextViewLocation:[I

.field private mTouchWordDelta:F

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p2, "drawableLtr"    # Landroid/graphics/drawable/Drawable;
    .param p3, "drawableRtl"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v1, 0x0

    .line 4380
    iput-object p1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    .line 4381
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Editor$HandleView;-><init>(Landroid/widget/Editor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4367
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mInWord:Z

    .line 4373
    iput-boolean v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    .line 4378
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    .line 4382
    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {p1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 4384
    .local v0, "viewConfiguration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    int-to-float v1, v1

    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewEdgeSlop:F

    .line 4385
    return-void
.end method

.method private positionAndAdjustForCrossingHandles(I)V
    .locals 3
    .param p1, "offset"    # I

    .prologue
    .line 4559
    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    .line 4560
    .local v0, "selectionStart":I
    if-gt p1, v0, :cond_0

    .line 4562
    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x1

    # invokes: Landroid/widget/Editor;->getNextCursorOffset(IZ)I
    invoke-static {v1, v0, v2}, Landroid/widget/Editor;->access$4000(Landroid/widget/Editor;IZ)I

    move-result p1

    .line 4563
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4565
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/widget/Editor$SelectionEndHandleView;->positionAtCursorOffset(IZ)V

    .line 4566
    return-void
.end method

.method private positionNearEdgeOfScrollingView(FZ)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "atRtl"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 4591
    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 4593
    if-eqz p2, :cond_1

    .line 4594
    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    aget v4, v4, v3

    iget-object v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v5

    add-int v0, v4, v5

    .line 4595
    .local v0, "leftEdge":I
    int-to-float v4, v0

    iget v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewEdgeSlop:F

    add-float/2addr v4, v5

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 4601
    .end local v0    # "leftEdge":I
    .local v1, "nearEdge":Z
    :goto_0
    return v1

    .end local v1    # "nearEdge":Z
    .restart local v0    # "leftEdge":I
    :cond_0
    move v1, v3

    .line 4595
    goto :goto_0

    .line 4597
    .end local v0    # "leftEdge":I
    :cond_1
    iget-object v4, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewLocation:[I

    aget v4, v4, v3

    iget-object v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 4599
    .local v2, "rightEdge":I
    int-to-float v4, v2

    iget v5, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTextViewEdgeSlop:F

    sub-float/2addr v4, v5

    cmpl-float v4, p1, v4

    if-lez v4, :cond_2

    .restart local v1    # "nearEdge":Z
    :goto_1
    goto :goto_0

    .end local v1    # "nearEdge":Z
    :cond_2
    move v1, v3

    goto :goto_1
.end method


# virtual methods
.method public getCurrentCursorOffset()I
    .locals 1

    .prologue
    .line 4403
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    return v0
.end method

.method protected getHorizontalGravity(Z)I
    .locals 1
    .param p1, "isRtlRun"    # Z

    .prologue
    .line 4398
    if-eqz p1, :cond_0

    const/4 v0, 0x5

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method protected getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "isRtlRun"    # Z

    .prologue
    .line 4389
    if-eqz p2, :cond_0

    .line 4390
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    .line 4392
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 4580
    invoke-super {p0, p1}, Landroid/widget/Editor$HandleView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 4581
    .local v0, "superResult":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    if-nez v1, :cond_0

    .line 4584
    const/4 v1, 0x0

    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4585
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    .line 4587
    :cond_0
    return v0
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 1
    .param p1, "offset"    # I
    .param p2, "parentScrolled"    # Z

    .prologue
    .line 4574
    invoke-super {p0, p1, p2}, Landroid/widget/Editor$HandleView;->positionAtCursorOffset(IZ)V

    .line 4575
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getWordIteratorWithText()Landroid/text/method/WordIterator;
    invoke-static {v0}, Landroid/widget/Editor;->access$4100(Landroid/widget/Editor;)Landroid/text/method/WordIterator;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/method/WordIterator;->isBoundary(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->mInWord:Z

    .line 4576
    return-void

    .line 4575
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updatePosition(FF)V
    .locals 24
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 4418
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v11

    .line 4419
    .local v11, "layout":Landroid/text/Layout;
    if-nez v11, :cond_0

    .line 4422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->getOffsetForPosition(FF)I

    move-result v22

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4556
    :goto_0
    return-void

    .line 4426
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    move/from16 v22, v0

    const/16 v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1

    .line 4427
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLineAtCoordinate(F)I

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    .line 4430
    :cond_1
    const/4 v15, 0x0

    .line 4431
    .local v15, "positionCursor":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v18

    .line 4432
    .local v18, "selectionStart":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, p2

    # invokes: Landroid/widget/Editor;->getCurrentLineAdjustedForSlop(Landroid/text/Layout;IF)I
    invoke-static {v0, v11, v1, v2}, Landroid/widget/Editor;->access$3700(Landroid/widget/Editor;Landroid/text/Layout;IF)I

    move-result v6

    .line 4433
    .local v6, "currLine":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v8

    .line 4435
    .local v8, "initialOffset":I
    move/from16 v0, v18

    if-gt v8, v0, :cond_2

    .line 4438
    move/from16 v0, v18

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v6

    .line 4439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v8

    .line 4442
    :cond_2
    move v13, v8

    .line 4443
    .local v13, "offset":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/widget/Editor;->getWordEnd(I)I
    invoke-static {v0, v13}, Landroid/widget/Editor;->access$3800(Landroid/widget/Editor;I)I

    move-result v7

    .line 4444
    .local v7, "end":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    # invokes: Landroid/widget/Editor;->getWordStart(I)I
    invoke-static {v0, v13}, Landroid/widget/Editor;->access$3900(Landroid/widget/Editor;I)I

    move-result v19

    .line 4446
    .local v19, "start":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    move/from16 v22, v0

    const/high16 v23, -0x40800000    # -1.0f

    cmpl-float v22, v22, v23

    if-nez v22, :cond_3

    .line 4447
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    .line 4450
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v16

    .line 4451
    .local v16, "selectionEnd":I
    move/from16 v0, v16

    invoke-virtual {v11, v0}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v17

    .line 4452
    .local v17, "selectionEndRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v5

    .line 4453
    .local v5, "atRtl":Z
    invoke-virtual {v11, v13}, Landroid/text/Layout;->isLevelBoundary(I)Z

    move-result v10

    .line 4459
    .local v10, "isLvlBoundary":Z
    if-nez v10, :cond_5

    if-eqz v17, :cond_4

    if-eqz v5, :cond_5

    :cond_4
    if-nez v17, :cond_6

    if-eqz v5, :cond_6

    .line 4462
    :cond_5
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    .line 4463
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4464
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    goto/16 :goto_0

    .line 4466
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    move/from16 v22, v0

    if-eqz v22, :cond_7

    if-nez v10, :cond_7

    .line 4469
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4470
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4471
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mLanguageDirectionChanged:Z

    goto/16 :goto_0

    .line 4474
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    move/from16 v22, v0

    sub-float v21, p1, v22

    .line 4475
    .local v21, "xDiff":F
    if-eqz v5, :cond_c

    .line 4476
    const/16 v22, 0x0

    cmpg-float v22, v21, v22

    if-ltz v22, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_b

    :cond_8
    const/4 v9, 0x1

    .line 4482
    .local v9, "isExpanding":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/TextView;->getHorizontallyScrolling()Z

    move-result v22

    if-eqz v22, :cond_11

    .line 4483
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v1, v5}, Landroid/widget/Editor$SelectionEndHandleView;->positionNearEdgeOfScrollingView(FZ)Z

    move-result v22

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    if-eqz v5, :cond_f

    const/16 v22, -0x1

    :goto_2
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->canScrollHorizontally(I)Z

    move-result v22

    if-eqz v22, :cond_11

    if-eqz v9, :cond_9

    move/from16 v0, v16

    if-gt v13, v0, :cond_a

    :cond_9
    if-nez v9, :cond_11

    .line 4489
    :cond_a
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4490
    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToLeftOf(I)I

    move-result v12

    .line 4492
    .local v12, "nextOffset":I
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    goto/16 :goto_0

    .line 4476
    .end local v9    # "isExpanding":Z
    .end local v12    # "nextOffset":I
    :cond_b
    const/4 v9, 0x0

    goto :goto_1

    .line 4478
    :cond_c
    const/16 v22, 0x0

    cmpl-float v22, v21, v22

    if-gtz v22, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_e

    :cond_d
    const/4 v9, 0x1

    .restart local v9    # "isExpanding":Z
    :goto_4
    goto :goto_1

    .end local v9    # "isExpanding":Z
    :cond_e
    const/4 v9, 0x0

    goto :goto_4

    .line 4483
    .restart local v9    # "isExpanding":Z
    :cond_f
    const/16 v22, 0x1

    goto :goto_2

    .line 4490
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getOffsetToRightOf(I)I

    move-result v12

    goto :goto_3

    .line 4497
    :cond_11
    if-eqz v9, :cond_1a

    .line 4499
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mInWord:Z

    move/from16 v22, v0

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_15

    .line 4503
    :cond_12
    move/from16 v20, v7

    .line 4504
    .local v20, "wordEndOnCurrLine":I
    if-eqz v11, :cond_13

    invoke-virtual {v11, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v22

    move/from16 v0, v22

    if-eq v0, v6, :cond_13

    .line 4505
    invoke-virtual {v11, v6}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v20

    .line 4507
    :cond_13
    sub-int v22, v20, v19

    div-int/lit8 v22, v22, 0x2

    add-int v14, v19, v22

    .line 4508
    .local v14, "offsetThresholdToSnap":I
    if-ge v13, v14, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v6, v0, :cond_18

    .line 4511
    :cond_14
    move v13, v7

    .line 4516
    .end local v14    # "offsetThresholdToSnap":I
    .end local v20    # "wordEndOnCurrLine":I
    :cond_15
    :goto_5
    if-le v13, v8, :cond_19

    .line 4517
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 4518
    .local v4, "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v22

    sub-float v22, v4, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4523
    .end local v4    # "adjustedX":F
    :goto_6
    const/4 v15, 0x1

    .line 4551
    :cond_16
    :goto_7
    if-eqz v15, :cond_17

    .line 4552
    move-object/from16 v0, p0

    iput v6, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousLineTouched:I

    .line 4553
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Landroid/widget/Editor$SelectionEndHandleView;->positionAndAdjustForCrossingHandles(I)V

    .line 4555
    :cond_17
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mPrevX:F

    goto/16 :goto_0

    .line 4513
    .restart local v14    # "offsetThresholdToSnap":I
    .restart local v20    # "wordEndOnCurrLine":I
    :cond_18
    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    goto :goto_5

    .line 4521
    .end local v14    # "offsetThresholdToSnap":I
    .end local v20    # "wordEndOnCurrLine":I
    :cond_19
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    goto :goto_6

    .line 4525
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    move/from16 v23, v0

    add-float v23, v23, p1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Landroid/widget/TextView;->getOffsetAtCoordinate(IF)I

    move-result v3

    .line 4527
    .local v3, "adjustedOffset":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-lt v3, v0, :cond_1b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_1e

    .line 4529
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPrevLine:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-ge v6, v0, :cond_1d

    .line 4531
    move v13, v7

    .line 4532
    if-le v13, v8, :cond_1c

    .line 4533
    invoke-virtual {v11, v13}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v4

    .line 4534
    .restart local v4    # "adjustedX":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v22, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v22 .. v22}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v22

    sub-float v22, v4, v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    .line 4542
    .end local v4    # "adjustedX":F
    :goto_8
    const/4 v15, 0x1

    goto :goto_7

    .line 4537
    :cond_1c
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    goto :goto_8

    .line 4540
    :cond_1d
    move v13, v3

    goto :goto_8

    .line 4543
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v3, v0, :cond_16

    .line 4546
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->mPreviousOffset:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v11, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    move-object/from16 v23, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v23 .. v23}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->convertToLocalHorizontalCoordinate(F)F

    move-result v23

    sub-float v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$SelectionEndHandleView;->mTouchWordDelta:F

    goto/16 :goto_7
.end method

.method public updateSelection(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 4408
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    iget-object v1, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$700(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 4410
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 4411
    iget-object v0, p0, Landroid/widget/Editor$SelectionEndHandleView;->this$0:Landroid/widget/Editor;

    iget-object v0, v0, Landroid/widget/Editor;->mTextActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 4413
    :cond_0
    invoke-virtual {p0}, Landroid/widget/Editor$SelectionEndHandleView;->updateDrawable()V

    .line 4414
    return-void
.end method
