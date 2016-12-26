.class Lcom/lenovo/psswitch/PsAnimationHelper$1;
.super Landroid/os/Handler;
.source "PsAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/psswitch/PsAnimationHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lenovo/psswitch/PsAnimationHelper;


# direct methods
.method constructor <init>(Lcom/lenovo/psswitch/PsAnimationHelper;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/lenovo/psswitch/PsAnimationHelper$1;->this$0:Lcom/lenovo/psswitch/PsAnimationHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 112
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 114
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 152
    :goto_0
    return-void

    .line 116
    :pswitch_0
    const-string v2, "AnimationHelper"

    const-string v3, "MSG_START_ANIM"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v2, p0, Lcom/lenovo/psswitch/PsAnimationHelper$1;->this$0:Lcom/lenovo/psswitch/PsAnimationHelper;

    # getter for: Lcom/lenovo/psswitch/PsAnimationHelper;->parent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/lenovo/psswitch/PsAnimationHelper;->access$000(Lcom/lenovo/psswitch/PsAnimationHelper;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 118
    .local v1, "view":Landroid/view/ViewGroup;
    if-nez v1, :cond_0

    .line 119
    const-string v2, "AnimationHelper"

    const-string v3, "There is no view for aniamtion"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lenovo/psswitch/PsAnimationHelper$1;->this$0:Lcom/lenovo/psswitch/PsAnimationHelper;

    # invokes: Lcom/lenovo/psswitch/PsAnimationHelper;->addView(Landroid/view/ViewGroup;)V
    invoke-static {v2, v1}, Lcom/lenovo/psswitch/PsAnimationHelper;->access$100(Lcom/lenovo/psswitch/PsAnimationHelper;Landroid/view/ViewGroup;)V

    .line 124
    const-string v2, "AnimationHelper"

    const-string v3, "addView"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "AnimationHelper"

    const-string v3, "has added"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 132
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "view":Landroid/view/ViewGroup;
    :pswitch_1
    iget-object v2, p0, Lcom/lenovo/psswitch/PsAnimationHelper$1;->this$0:Lcom/lenovo/psswitch/PsAnimationHelper;

    # getter for: Lcom/lenovo/psswitch/PsAnimationHelper;->parent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/lenovo/psswitch/PsAnimationHelper;->access$000(Lcom/lenovo/psswitch/PsAnimationHelper;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 133
    .restart local v1    # "view":Landroid/view/ViewGroup;
    if-nez v1, :cond_1

    .line 134
    const-string v2, "AnimationHelper"

    const-string v3, "There is no view for aniamtion"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 137
    :cond_1
    invoke-virtual {v1}, Landroid/view/ViewGroup;->invalidate()V

    goto :goto_0

    .line 140
    .end local v1    # "view":Landroid/view/ViewGroup;
    :pswitch_2
    iget-object v2, p0, Lcom/lenovo/psswitch/PsAnimationHelper$1;->this$0:Lcom/lenovo/psswitch/PsAnimationHelper;

    # getter for: Lcom/lenovo/psswitch/PsAnimationHelper;->parent:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/lenovo/psswitch/PsAnimationHelper;->access$000(Lcom/lenovo/psswitch/PsAnimationHelper;)Landroid/view/ViewGroup;

    move-result-object v1

    .line 141
    .restart local v1    # "view":Landroid/view/ViewGroup;
    if-nez v1, :cond_2

    .line 142
    const-string v2, "AnimationHelper"

    const-string v3, "There is no view for aniamtion"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 146
    iget-object v2, p0, Lcom/lenovo/psswitch/PsAnimationHelper$1;->this$0:Lcom/lenovo/psswitch/PsAnimationHelper;

    # invokes: Lcom/lenovo/psswitch/PsAnimationHelper;->removeView(Landroid/view/View;)V
    invoke-static {v2, v1}, Lcom/lenovo/psswitch/PsAnimationHelper;->access$200(Lcom/lenovo/psswitch/PsAnimationHelper;Landroid/view/View;)V

    goto :goto_0

    .line 149
    .end local v1    # "view":Landroid/view/ViewGroup;
    :pswitch_3
    iget-object v2, p0, Lcom/lenovo/psswitch/PsAnimationHelper$1;->this$0:Lcom/lenovo/psswitch/PsAnimationHelper;

    # invokes: Lcom/lenovo/psswitch/PsAnimationHelper;->excuExitAnim()V
    invoke-static {v2}, Lcom/lenovo/psswitch/PsAnimationHelper;->access$300(Lcom/lenovo/psswitch/PsAnimationHelper;)V

    goto :goto_0

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
