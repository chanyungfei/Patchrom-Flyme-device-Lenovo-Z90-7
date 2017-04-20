.class Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
.super Lcom/android/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field private mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

.field final synthetic this$0:Landroid/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/widget/ActionMenuPresenter;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .locals 11
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subMenu"    # Lcom/android/internal/view/menu/SubMenuBuilder;

    .prologue
    .line 938
    iput-object p1, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    .line 939
    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0x1010444

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 941
    iput-object p3, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 943
    invoke-virtual {p3}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v9

    check-cast v9, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 944
    .local v9, "item":Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v9}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    if-nez v0, :cond_0

    .line 946
    # getter for: Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$1500(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    move-result-object v0

    if-nez v0, :cond_2

    # getter for: Landroid/widget/ActionMenuPresenter;->mMenuView:Lcom/android/internal/view/menu/MenuView;
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$1600(Landroid/widget/ActionMenuPresenter;)Lcom/android/internal/view/menu/MenuView;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 949
    :cond_0
    iget-object v0, p1, Landroid/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, v0}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setCallback(Lcom/android/internal/view/menu/MenuPresenter$Callback;)V

    .line 951
    const/4 v10, 0x0

    .line 952
    .local v10, "preserveIconSpacing":Z
    invoke-virtual {p3}, Lcom/android/internal/view/menu/SubMenuBuilder;->size()I

    move-result v7

    .line 953
    .local v7, "count":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v7, :cond_1

    .line 954
    invoke-virtual {p3, v8}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 955
    .local v6, "childItem":Landroid/view/MenuItem;
    invoke-interface {v6}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 956
    const/4 v10, 0x1

    .line 960
    .end local v6    # "childItem":Landroid/view/MenuItem;
    :cond_1
    invoke-virtual {p0, v10}, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 961
    return-void

    .line 946
    .end local v7    # "count":I
    .end local v8    # "i":I
    .end local v10    # "preserveIconSpacing":Z
    :cond_2
    # getter for: Landroid/widget/ActionMenuPresenter;->mOverflowButton:Landroid/widget/ActionMenuPresenter$OverflowMenuButton;
    invoke-static {p1}, Landroid/widget/ActionMenuPresenter;->access$1500(Landroid/widget/ActionMenuPresenter;)Landroid/widget/ActionMenuPresenter$OverflowMenuButton;

    move-result-object v0

    goto :goto_0

    .line 953
    .restart local v6    # "childItem":Landroid/view/MenuItem;
    .restart local v7    # "count":I
    .restart local v8    # "i":I
    .restart local v10    # "preserveIconSpacing":Z
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 965
    invoke-super {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 966
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Landroid/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0, v1}, Landroid/widget/ActionMenuPresenter;->access$1702(Landroid/widget/ActionMenuPresenter;Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 967
    iget-object v0, p0, Landroid/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Landroid/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 968
    return-void
.end method
